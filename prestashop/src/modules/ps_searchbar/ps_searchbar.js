/* global $ */
$(document).ready(function () {
    var $searchWidget = $('#search_widget');
    var $searchBox    = $searchWidget.find('input[type=text]');
    var searchURL     = $searchWidget.attr('data-search-controller-url');
    var $clearButton  = $searchWidget.find('i.clear');

    $.widget('prestashop.psBlockSearchAutocomplete', $.ui.autocomplete, {
        _close: function(event) {
            // Don't close if interacting with heart button
            if (window.preventSearchAutocompleteClose) {
                window.preventSearchAutocompleteClose = false;
                return;
            }
            this._superApply(arguments);
        },
        _renderItem: function (ul, product) {
            var image = (product.cover) ? product.cover.bySize.small_default.url : prestashop.urls.no_picture_image.bySize.small_default.url;

            // Build the product row structure similar to Action.pl
            var $li = $("<li>").addClass("search-result-item");

            var $productRow = $('<div>').addClass('product-row');

            var $link = $('<a>').attr('href', product.url).addClass('product-link');

            // Image container
            var $imageContainer = $('<div>').addClass('product-image-container');
            var $img = $('<img>').attr('src', image).attr('alt', product.name).addClass('product-image');
            $imageContainer.append($img);

            // Product details container
            var $detailsContainer = $('<div>').addClass('product-details');

            // Product title
            var $title = $('<p>').addClass('product-title').text(product.name);

            // Product description (if available)
            var $description = $('<p>').addClass('product-description');
            if (product.description_short) {
                var tempDiv = document.createElement('div');
                tempDiv.innerHTML = product.description_short;
                var plainText = tempDiv.textContent || tempDiv.innerText || '';
                $description.text(plainText.substring(0, 100));
            }

            // Price container
            var $priceContainer = $('<div>').addClass('product-price-container');
            var $priceWrapper = $('<div>').addClass('product-price-wrapper');

            if (product.price) {
                var $priceLabel = $('<span>').addClass('product-price-label').text(product.price);
                var $priceAmount = $('<div>').addClass('product-price-amount').text(product.price);
                $priceWrapper.append($priceLabel).append($priceAmount);
            }

            $priceContainer.append($priceWrapper);

            // Assemble details
            $detailsContainer.append($title).append($description).append($priceContainer);

            // Assemble link
            $link.append($imageContainer).append($detailsContainer);

            // Assemble product row
            $productRow.append($link);

            // Cart heart button
            var isInCart = window.searchCartProductIds && window.searchCartProductIds.includes(parseInt(product.id_product));
            var $heartBtn = $('<button>')
                .attr('type', 'button')
                .attr('data-testid', 'cart-heart-button')
                .attr('data-product-id', product.id_product)
                .attr('data-minimal-quantity', product.minimal_quantity || 1)
                .addClass('cart-heart-btn search-cart-heart')
                .addClass(isInCart ? 'is-in-cart' : '')
                .attr('aria-label', 'Dodaj do koszyka')
                .attr('aria-pressed', isInCart ? 'true' : 'false')
                .html(
                    '<svg class="heart-outline" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">' +
                    '<path fill="#8593a3" d="M12 21a1 1 0 0 1-.486-.126C11.126 20.658 2 15.514 2 9c0-3.665 2.218-5.425 4.293-5.849 2.171-.44 4.328.402 5.707 2.113 1.38-1.712 3.537-2.552 5.707-2.113C19.782 3.575 22 5.335 22 9.001c0 6.513-9.126 11.657-9.515 11.873A1 1 0 0 1 12 21M7.4 5.041q-.368 0-.707.07C5.007 5.456 4 6.91 4 9.001c0 4.584 6.197 8.728 8 9.836 1.804-1.108 8-5.252 8-9.837 0-2.09-1.007-3.544-2.693-3.889-1.482-.3-3.479.346-4.387 2.475a1 1 0 0 1-1.84 0C10.31 5.78 8.755 5.04 7.4 5.04"></path>' +
                    '</svg>' +
                    '<svg class="heart-hover" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">' +
                    '<path fill="#8593a3" d="M12 21a1 1 0 0 1-.486-.126C11.126 20.658 2 15.514 2 9c0-3.665 2.218-5.425 4.293-5.849 2.171-.44 4.328.402 5.707 2.113 1.38-1.712 3.537-2.552 5.707-2.113C19.782 3.575 22 5.335 22 9.001c0 6.513-9.126 11.657-9.515 11.873A1 1 0 0 1 12 21"></path>' +
                    '</svg>' +
                    '<svg class="heart-filled" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">' +
                    '<path fill="#ff8200" d="M12 21a1 1 0 0 1-.486-.126C11.126 20.658 2 15.514 2 9c0-3.665 2.218-5.425 4.293-5.849 2.171-.44 4.328.402 5.707 2.113 1.38-1.712 3.537-2.552 5.707-2.113C19.782 3.575 22 5.335 22 9.001c0 6.513-9.126 11.657-9.515 11.873A1 1 0 0 1 12 21"></path>' +
                    '</svg>'
                );

            $productRow.append($heartBtn);

            $li.append($productRow);

            return $li.appendTo(ul);
        }
    });

    var isMobile = function() {
        return $(window).width() < 768;
    };
    var autocompletePosition = function() {
      return {
        my: 'right+0 top+12',
        at: 'right bottom',
        of: isMobile() ? '.header-top' : '#search_widget',
      };
    };

    $searchBox.psBlockSearchAutocomplete({
        position: autocompletePosition(),
        source: function (query, response) {
            $.post(searchURL, {
                s: query.term,
                resultsPerPage: 10
            }, null, 'json')
            .then(function (resp) {
                response(resp.products);
            })
            .fail(response);
        },
        select: function (event, ui) {
            // Don't navigate if clicking the heart button
            if ($(event.originalEvent.target).closest('.search-cart-heart').length) {
                return false;
            }
            var url = ui.item.url;
            window.location.href = url;
        },
        open: function () {
            $('body').addClass('search-dropdown-open');
        },
        close: function (event) {
            // Don't close if we're clicking on the heart button
            if (window.preventSearchAutocompleteClose) {
                window.preventSearchAutocompleteClose = false;
                return false;
            }
            $('body').removeClass('search-dropdown-open');
        },
    }).psBlockSearchAutocomplete("widget").addClass('searchbar-autocomplete');

    $(window).on("resize", function() {
      $searchBox.psBlockSearchAutocomplete({
        position: autocompletePosition(),
      });
      $searchBox.trigger("keyup");
    });

    $clearButton.on("click", function() {
        $searchBox.val("");
        $clearButton.hide();
    });

    $searchBox.on("keyup", function() {
        $clearButton.toggle($searchBox.val() !== "" && isMobile());
    });

    // Initialize cart product IDs for search results
    window.searchCartProductIds = [];

    // Flag to prevent autocomplete close when clicking heart (global for access in close handler)
    window.preventSearchAutocompleteClose = false;

    // Fetch cart contents for search
    function fetchSearchCartContents() {
        if (window.prestashop && window.prestashop.cart && window.prestashop.cart.products) {
            window.searchCartProductIds = window.prestashop.cart.products.map(function(p) {
                return parseInt(p.id_product);
            });
            updateSearchHeartButtons();
            return;
        }

        // Fetch cart via AJAX
        var cartUrl = prestashop.urls.pages.cart;
        $.ajax({
            url: cartUrl,
            method: 'POST',
            data: { ajax: 1, action: 'refresh' },
            dataType: 'json'
        }).done(function(data) {
            if (data.cart && data.cart.products) {
                window.searchCartProductIds = data.cart.products.map(function(p) {
                    return parseInt(p.id_product);
                });
            }
            updateSearchHeartButtons();
        }).fail(function() {
            updateSearchHeartButtons();
        });
    }

    // Update heart button states in search results
    function updateSearchHeartButtons() {
        $('.search-cart-heart').each(function() {
            var $btn = $(this);
            var productId = parseInt($btn.attr('data-product-id'));
            if (window.searchCartProductIds.includes(productId)) {
                $btn.addClass('is-in-cart').attr('aria-pressed', 'true');
            } else {
                $btn.removeClass('is-in-cart').attr('aria-pressed', 'false');
            }
        });
    }

    // Use capture phase to intercept events before jQuery UI autocomplete
    document.addEventListener('mousedown', function(e) {
        if (e.target.closest('.search-cart-heart')) {
            e.stopPropagation();
            e.stopImmediatePropagation();
            window.preventSearchAutocompleteClose = true;
        }
    }, true); // true = capture phase

    document.addEventListener('click', function(e) {
        var heartBtn = e.target.closest('.search-cart-heart');
        if (heartBtn) {
            e.stopPropagation();
            e.stopImmediatePropagation();
            e.preventDefault();

            // Handle cart action directly here
            var $btn = $(heartBtn);
            if ($btn.hasClass('is-loading')) return;

            var productId = $btn.attr('data-product-id');
            if (!productId) return;

            $btn.addClass('is-loading');
            var cartUrl = prestashop.urls.pages.cart;
            var staticToken = prestashop.static_token;

            if ($btn.hasClass('is-in-cart')) {
                // Remove from cart
                $.ajax({
                    url: cartUrl,
                    method: 'POST',
                    data: {
                        id_product: productId,
                        delete: 1,
                        action: 'update',
                        token: staticToken,
                        ajax: 1
                    },
                    dataType: 'json'
                }).done(function(data) {
                    $btn.removeClass('is-loading');
                    if (!data.hasError) {
                        window.searchCartProductIds = window.searchCartProductIds.filter(function(id) {
                            return id !== parseInt(productId);
                        });
                        $btn.removeClass('is-in-cart').attr('aria-pressed', 'false');
                        if (window.prestashop && window.prestashop.emit) {
                            window.prestashop.emit('updateCart', {
                                reason: { idProduct: parseInt(productId), idProductAttribute: 0, idCustomization: 0, linkAction: 'delete-from-cart' },
                                resp: data
                            });
                        }
                    }
                }).fail(function() {
                    $btn.removeClass('is-loading');
                });
            } else {
                // Add to cart
                var minimalQty = parseInt($btn.attr('data-minimal-quantity')) || 1;
                $.ajax({
                    url: cartUrl,
                    method: 'POST',
                    data: {
                        id_product: productId,
                        qty: minimalQty,
                        add: 1,
                        action: 'update',
                        token: staticToken,
                        ajax: 1
                    },
                    dataType: 'json'
                }).done(function(data) {
                    $btn.removeClass('is-loading');
                    if (!data.hasError) {
                        if (!window.searchCartProductIds.includes(parseInt(productId))) {
                            window.searchCartProductIds.push(parseInt(productId));
                        }
                        $btn.addClass('is-in-cart').attr('aria-pressed', 'true');
                        if (window.prestashop && window.prestashop.emit) {
                            window.prestashop.emit('updateCart', {
                                reason: { idProduct: parseInt(productId), idProductAttribute: 0, idCustomization: 0, linkAction: 'add-to-cart' },
                                resp: data
                            });
                        }
                    }
                }).fail(function() {
                    $btn.removeClass('is-loading');
                });
            }

            // Keep focus on search to prevent close
            $searchBox.focus();
        }
    }, true); // true = capture phase

    // Listen for cart updates
    if (window.prestashop && typeof window.prestashop.on === 'function') {
        window.prestashop.on('updateCart', function() {
            setTimeout(fetchSearchCartContents, 100);
        });
    }

    // Initial fetch
    fetchSearchCartContents();
});
