/* global $ */
$(document).ready(function () {
    var $searchWidget = $('#search_widget');
    var $searchBox    = $searchWidget.find('input[type=text]');
    var searchURL     = $searchWidget.attr('data-search-controller-url');
    var $clearButton  = $searchWidget.find('i.clear');

    $.widget('prestashop.psBlockSearchAutocomplete', $.ui.autocomplete, {
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
            
            // Add wishlist button
            var $wishlistBtn = $('<div>').addClass('product-wishlist');
            var $heartBtn = $('<button>').attr('type', 'button').addClass('wishlist-btn').attr('aria-label', 'Dodaj do ulubionych');
            var heartSvg = '<svg aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24"><path fill="#8593a3" d="M12 21a1 1 0 0 1-.486-.126C11.126 20.658 2 15.514 2 9c0-3.665 2.218-5.425 4.293-5.849 2.171-.44 4.328.402 5.707 2.113 1.38-1.712 3.537-2.552 5.707-2.113C19.782 3.575 22 5.335 22 9.001c0 6.513-9.126 11.657-9.515 11.873A1 1 0 0 1 12 21M7.4 5.041q-.368 0-.707.07C5.007 5.456 4 6.91 4 9.001c0 4.584 6.197 8.728 8 9.836 1.804-1.108 8-5.252 8-9.837 0-2.09-1.007-3.544-2.693-3.889-1.482-.3-3.479.346-4.387 2.475a1 1 0 0 1-1.84 0C10.31 5.78 8.755 5.04 7.4 5.04"></path></svg>';
            $heartBtn.html(heartSvg);
            $wishlistBtn.append($heartBtn);
            
            // Assemble product row
            $productRow.append($link).append($wishlistBtn);
            
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
            var url = ui.item.url;
            window.location.href = url;
        },
        open: function () {
            $('body').addClass('search-dropdown-open');
        },
        close: function () {
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
});
