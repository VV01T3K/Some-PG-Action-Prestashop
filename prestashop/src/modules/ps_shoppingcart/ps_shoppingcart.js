/**
 * 2007-2020 PrestaShop and Contributors
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License 3.0 (AFL-3.0)
 * that is bundled with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * https://opensource.org/licenses/AFL-3.0
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@prestashop.com so we can send you a copy immediately.
 *
 * @author    PrestaShop SA <contact@prestashop.com>
 * @copyright 2007-2020 PrestaShop SA and Contributors
 * @license   https://opensource.org/licenses/AFL-3.0 Academic Free License 3.0 (AFL-3.0)
 * International Registered Trademark & Property of PrestaShop SA
 */

/**
 * This module exposes an extension point through `showModal` function.
 *
 * If you want to customize the way the modal window is displayed, you need to do:
 *
 * prestashop.blockcart = prestashop.blockcart || {};
 * prestashop.blockcart.showModal = function myOwnShowModal (modalHTML) {
 *   // your own code
 *   // please not that it is your responsibility to handle the modal "close" behavior
 * };
 *
 * Warning: your custom JavaScript needs to be included **before** this file.
 * The safest way to do so is to place your "override" inside the theme main JavaScript file.
 *
 */

// Quantity Stepper - Update decrement button appearance based on quantity
function updateDecrementButtonAppearance() {
  document.querySelectorAll('[data-testid="quantity-stepper"]').forEach((stepper) => {
    const quantityDiv = stepper.querySelector('.js-cart-line-product-quantity');
    const decrementBtn = stepper.querySelector('[data-testid="quantity-stepper-decrement"]');
    const svg = decrementBtn.querySelector('svg');
    
    const currentQuantity = parseInt(quantityDiv.textContent, 10);
    
    if (currentQuantity <= 1) {
      // Show delete/trash icon
      svg.innerHTML = '<path fill="#505862" d="M14.8 22H9.2c-1.24 0-1.922 0-2.565-.33a3.04 3.04 0 0 1-1.305-1.302C5 19.72 5 19.038 5 17.8V7H4a1 1 0 1 1 0-2h3.013c.02-.458.072-.806.21-1.146A3.06 3.06 0 0 1 8.838 2.23C9.404 2 9.97 2 11 2h2c1.03 0 1.596 0 2.146.223a3.05 3.05 0 0 1 1.623 1.613c.143.352.198.704.218 1.164H20a1 1 0 1 1 0 2h-1v10.8c0 1.239 0 1.92-.33 2.565a3.04 3.04 0 0 1-1.303 1.304C16.722 22 16.04 22 14.8 22M7 7v10.8c0 .866 0 1.44.11 1.655.093.182.253.341.437.436C7.76 20 8.333 20 9.2 20h5.6c.867 0 1.44 0 1.655-.11.182-.094.342-.253.436-.437.109-.214.109-.787.109-1.653V7zm2.014-2h5.971a1.4 1.4 0 0 0-.062-.394 1.02 1.02 0 0 0-.547-.537C14.206 4 13.726 4 13 4h-2c-.726 0-1.205 0-1.394.077a1.03 1.03 0 0 0-.537.547c-.029.072-.046.2-.055.376M14 18a1 1 0 0 1-1-1v-7a1 1 0 1 1 2 0v7a1 1 0 0 1-1 1m-4 0a1 1 0 0 1-1-1v-7a1 1 0 1 1 2 0v7a1 1 0 0 1-1 1"></path>';
      decrementBtn.setAttribute('aria-label', 'Delete product');
    } else {
      // Show minus icon
      svg.innerHTML = '<path fill="#505862" d="M18 13H6a1 1 0 1 1 0-2h12a1 1 0 1 1 0 2"></path>';
      decrementBtn.setAttribute('aria-label', 'Decrease quantity');
    }
  });
}

// Delete button handler
document.addEventListener('click', (e) => {
  const deleteBtn = e.target.closest('[data-testid="cart-item-remove-btn"]');
  if (!deleteBtn) return;

  e.preventDefault();
  e.stopPropagation();

  const removeUrl = deleteBtn.getAttribute('data-remove-url');
  if (removeUrl) {
    window.location.href = removeUrl;
  }
});

// Quantity Stepper - Handle +/- buttons for cart quantity
document.addEventListener('click', (e) => {
  const stepper = e.target.closest('[data-testid="quantity-stepper"]');
  if (!stepper) return;

  const decrementBtn = e.target.closest('[data-testid="quantity-stepper-decrement"]');
  const incrementBtn = e.target.closest('[data-testid="quantity-stepper-increment"]');

  if (!decrementBtn && !incrementBtn) return;

  e.preventDefault();
  e.stopPropagation();

  const quantityDiv = stepper.querySelector('.js-cart-line-product-quantity');
  const updateUrl = quantityDiv?.getAttribute('data-update-url');
  const deleteUrl = stepper?.getAttribute('data-delete-url');
  
  if (!updateUrl) return;

  // Prevent double clicks
  if (stepper.dataset.updating === 'true') {
    return;
  }

  let currentQuantity = parseInt(quantityDiv.textContent, 10);
  let newQuantity = currentQuantity;
  
  // Handle decrement button
  if (decrementBtn) {
    newQuantity = Math.max(0, currentQuantity - 1);
  }

  // Handle increment button
  if (incrementBtn) {
    newQuantity = currentQuantity + 1;
  }

  // Only proceed if quantity actually changed
  if (newQuantity === currentQuantity) return;

  // Mark as updating
  stepper.dataset.updating = 'true';

  // If quantity reaches 0 or we're decrementing from 1, delete the product
  if (newQuantity === 0 && deleteUrl) {
    // Delete the product
    window.location.href = deleteUrl;
    return;
  }

  // Update the UI immediately
  quantityDiv.textContent = newQuantity;
  updateDecrementButtonAppearance();

  // Update price display with local calculation
  const cartTotalPriceElement = getCartTotalPriceElement();
  if (cartTotalPriceElement) {
    const productPrice = getProductPrice(stepper);
    const quantityDifference = newQuantity - currentQuantity;
    const priceChange = productPrice * quantityDifference;
    const currentTotal = getCurrentPrice();
    const newTotal = currentTotal + priceChange;
    cartTotalPriceElement.textContent = formatPrice(newTotal);
  }

  // Send update to server
  // Calculate the difference between old and new quantity
  const difference = Math.abs(newQuantity - currentQuantity);
  const operation = newQuantity < currentQuantity ? 'down' : 'up';
  
  // Construct URL with qty and op parameters
  const urlWithQuantity = updateUrl + (updateUrl.includes('?') ? '&' : '?') + 'qty=' + difference + '&op=' + operation;
  
  // Use fetch instead of jQuery AJAX
  fetch(urlWithQuantity, {
    method: 'GET',
    headers: {
      'Accept': 'application/json',
    },
  })
  .then(response => {
    const contentType = response.headers.get('content-type');
    if (contentType && contentType.includes('application/json')) {
      return response.json();
    } else {
      return response.text();
    }
  })
  .then(data => {
    // Update successful - emit custom event for price update
    document.dispatchEvent(new CustomEvent('cartQuantityUpdated', {
      detail: { newQuantity: newQuantity, response: data }
    }));
  })
  .catch(error => {
    // Revert on error
    quantityDiv.textContent = currentQuantity;
    updateDecrementButtonAppearance();
  })
  .finally(() => {
    // Mark as not updating
    stepper.dataset.updating = 'false';
  });
});

// Price update utilities
function getCartTotalPriceElement() {
  return document.getElementById('cart-total-price');
}

function getCartRefreshUrl() {
  const element = getCartTotalPriceElement();
  return element ? element.getAttribute('data-cart-refresh-url') : null;
}

// Parse price string and convert to number
function parsePrice(priceStr) {
  if (!priceStr) return 0;
  // Handle both . and , as decimal separator
  return parseFloat(priceStr.replace(/\s/g, '').replace(',', '.'));
}

// Format price for display
function formatPrice(price) {
  return price.toFixed(2).replace('.', ',') + ' zł';
}

// Get current displayed price as number
function getCurrentPrice() {
  const cartTotalPriceElement = getCartTotalPriceElement();
  if (!cartTotalPriceElement) return 0;
  const priceText = cartTotalPriceElement.textContent.trim();
  return parsePrice(priceText);
}

// Get product price from cart line
function getProductPrice(stepper) {
  const productLine = stepper.closest('.product-line-grid');
  if (!productLine) return 0;
  
  const priceElement = productLine.querySelector('.product-price span.price');
  if (priceElement) {
    return parsePrice(priceElement.textContent);
  }
  return 0;
}

function updateCartTotal() {
  const cartTotalPriceElement = getCartTotalPriceElement();
  const cartRefreshUrl = getCartRefreshUrl();
  
  if (!cartRefreshUrl || !cartTotalPriceElement) {
    return;
  }
  
  fetch(cartRefreshUrl, {
    method: 'GET',
    headers: {
      'Accept': 'application/json',
    },
  })
  .then(response => {
    return response.json();
  })
  .then(data => {
    // Try to extract price from cart_summary_items_subtotal
    if (data.cart_summary_items_subtotal) {
      const parser = new DOMParser();
      const doc = parser.parseFromString(data.cart_summary_items_subtotal, 'text/html');
      const priceSpan = doc.querySelector('.value');
      
      if (priceSpan) {
        let newPrice = priceSpan.textContent.trim();
        newPrice = newPrice.replace('.', ',') + ' zł';
        cartTotalPriceElement.textContent = newPrice;
        return;
      }
    }
  })
  .catch(error => {});
}

$(document).ready(function () {
  prestashop.blockcart = prestashop.blockcart || {};

  // Initialize decrement button appearance
  updateDecrementButtonAppearance();
  
  // Listen for cart quantity updates and update price
  document.addEventListener('cartQuantityUpdated', (e) => {
    updateCartTotal();
  });

  var showModal = prestashop.blockcart.showModal || function (modal) {
    var $body = $('body');
    $body.append(modal);
    $body.one('click', '#blockcart-modal', function (event) {
      if (event.target.id === 'blockcart-modal') {
        $(event.target).remove();
      }
    });
  };

  prestashop.on(
    'updateCart',
    function (event) {
      var refreshURL = $('.blockcart').data('refresh-url');
      var requestData = {};
      if (event && event.reason && typeof event.resp !== 'undefined' && !event.resp.hasError) {
        requestData = {
          id_customization: event.reason.idCustomization,
          id_product_attribute: event.reason.idProductAttribute,
          id_product: event.reason.idProduct,
          action: event.reason.linkAction
        };
      }
      if (event && event.resp && event.resp.hasError) {
        prestashop.emit('showErrorNextToAddtoCartButton', { errorMessage: event.resp.errors.join('<br/>')});
      }
      $.post(refreshURL, requestData).then(function (resp) {
        var html = $('<div />').append($.parseHTML(resp.preview));
        $('.blockcart').replaceWith($(resp.preview).find('.blockcart'));
        if (resp.modal) {
          showModal(resp.modal);
        }
      }).fail(function (resp) {
        prestashop.emit('handleError', { eventType: 'updateShoppingCart', resp: resp });
      });
    }
  );
});
