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
            
            // Assemble product row
            $productRow.append($link);
            
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
