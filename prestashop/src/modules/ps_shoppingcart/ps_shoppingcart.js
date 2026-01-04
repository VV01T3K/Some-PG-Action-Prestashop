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

// Quantity Stepper - Update decrement button appearance for a single stepper
function updateDecrementButtonAppearanceForStepper(stepper) {
  if (!stepper) return;
  
  const quantityDiv = stepper.querySelector('.js-cart-line-product-quantity');
  const decrementBtn = stepper.querySelector('[data-testid="quantity-stepper-decrement"]');
  const svg = decrementBtn?.querySelector('svg');
  
  if (!quantityDiv || !decrementBtn || !svg) return;
  
  const quantityText = quantityDiv.textContent.trim().replace(/\s+/g, '');
  const currentQuantity = parseInt(quantityText, 10);
  
  if (isNaN(currentQuantity)) return;
  
  if (currentQuantity <= 1) {
    // Show delete/trash icon
    svg.innerHTML = '<path fill="#505862" d="M14.8 22H9.2c-1.24 0-1.922 0-2.565-.33a3.04 3.04 0 0 1-1.305-1.302C5 19.72 5 19.038 5 17.8V7H4a1 1 0 1 1 0-2h3.013c.02-.458.072-.806.21-1.146A3.06 3.06 0 0 1 8.838 2.23C9.404 2 9.97 2 11 2h2c1.03 0 1.596 0 2.146.223a3.05 3.05 0 0 1 1.623 1.613c.143.352.198.704.218 1.164H20a1 1 0 1 1 0 2h-1v10.8c0 1.239 0 1.92-.33 2.565a3.04 3.04 0 0 1-1.303 1.304C16.722 22 16.04 22 14.8 22M7 7v10.8c0 .866 0 1.44.11 1.655.093.182.253.341.437.436C7.76 20 8.333 20 9.2 20h5.6c.867 0 1.44 0 1.655-.11.182-.094.342-.253.436-.437.109-.214.109-.787.109-1.653V7zm2.014-2h5.971a1.4 1.4 0 0 0-.062-.394 1.02 1.02 0 0 0-.547-.537C14.206 4 13.726 4 13 4h-2c-.726 0-1.205 0-1.394.077a1.03 1.03 0 0 0-.537.547c-.029.072-.046.2-.055.376M14 18a1 1 0 0 1-1-1v-7a1 1 0 1 1 2 0v7a1 1 0 0 1-1 1m-4 0a1 1 0 0 1-1-1v-7a1 1 0 1 1 2 0v7a1 1 0 0 1-1 1"></path>';
    decrementBtn.setAttribute('aria-label', 'Delete product');
  } else {
    // Show minus icon
    svg.innerHTML = '<path fill="#505862" d="M18 13H6a1 1 0 1 1 0-2h12a1 1 0 1 1 0 2"></path>';
    decrementBtn.setAttribute('aria-label', 'Decrease quantity');
  }
}

// Delete button handler
document.addEventListener('click', (e) => {
  const deleteBtn = e.target.closest('[data-testid="cart-item-remove-btn"]');
  if (!deleteBtn) return;

  e.preventDefault();
  e.stopPropagation();

  const removeUrl = deleteBtn.getAttribute('data-remove-url');
  if (!removeUrl) {
    return;
  }

  if (deleteBtn.dataset.deleting === 'true') {
    return;
  }

  deleteBtn.dataset.deleting = 'true';

  const productRow = deleteBtn.closest('[data-testid="product-row"]');
  const reasonData = {
    idProduct: parseInt(deleteBtn.getAttribute('data-product-id'), 10) || 0,
    idProductAttribute: parseInt(deleteBtn.getAttribute('data-product-attribute-id'), 10) || 0,
    idCustomization: parseInt(deleteBtn.getAttribute('data-customization-id'), 10) || 0,
    linkAction: 'delete-from-cart'
  };

  handleCartLineDeletion(removeUrl, {
    productRow,
    reasonData,
    onComplete: () => {
      deleteBtn.dataset.deleting = 'false';
    }
  });
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
    const productRow = stepper.closest('[data-testid="product-row"]');
    const reasonData = {
      idProduct: parseInt(stepper.getAttribute('data-product-id'), 10) || 0,
      idProductAttribute: parseInt(stepper.getAttribute('data-attribute-id'), 10) || 0,
      idCustomization: 0,
      linkAction: 'delete-from-cart'
    };

    handleCartLineDeletion(deleteUrl, {
      productRow,
      reasonData,
      onComplete: () => {
        stepper.dataset.updating = 'false';
      }
    });
    return;
  }

  // Update the UI immediately
  quantityDiv.textContent = newQuantity;
  updateDecrementButtonAppearance();
  updateCartProductCount();

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
  
  // Update cart badge and aria-label with new total quantity
  const cartLink = document.querySelector('[data-testid="shopping-cart"]');
  if (cartLink) {
    const currentAriaLabel = cartLink.getAttribute('aria-label');
    const match = currentAriaLabel.match(/zawierającego (\d+)/);
    if (match) {
      const oldTotalQty = parseInt(match[1], 10);
      const newTotalQty = oldTotalQty + (newQuantity - currentQuantity);
      const productWord = newTotalQty === 1 ? 'produkt' : 'produkt(ów)';
      const newLabel = `Link do koszyka zawierającego ${newTotalQty} ${productWord}`;
      cartLink.setAttribute('aria-label', newLabel);
      
      // Also update badge immediately with TOTAL QUANTITY
      const badgeElements = document.querySelectorAll('[data-testid="cart-button-badge-text"], .cart-products-count');
      badgeElements.forEach((element) => {
        element.textContent = newTotalQty;
      });
    }
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

function getCartFooterElement() {
  return document.getElementById('cart-floating-footer');
}

function setCartFooterVisibility(visible) {
  const footer = getCartFooterElement();
  if (!footer) return;

  footer.classList.toggle('cart-footer--hidden', !visible);
  document.body.classList.toggle('cart-footer-visible', visible);
}

function ensureCartFooterVisible() {
  setCartFooterVisibility(true);
}

function syncCartFooterPadding() {
  const footer = getCartFooterElement();
  if (!footer) return;

  const isHidden = footer.classList.contains('cart-footer--hidden');
  document.body.classList.toggle('cart-footer-visible', !isHidden);
}

function buildAjaxCartUrl(rawUrl) {
  if (!rawUrl) {
    return null;
  }

  try {
    const parsed = new URL(rawUrl, window.location.origin);
    parsed.searchParams.set('ajax', '1');
    parsed.searchParams.set('action', 'update');
    return parsed.toString();
  } catch (error) {
    return null;
  }
}

function removeCartProductRow(rowElement) {
  if (!rowElement) return;

  const listItem = rowElement.closest('.cart-item');
  if (listItem) {
    const possibleSeparator = listItem.nextElementSibling;
    listItem.remove();
    if (possibleSeparator && possibleSeparator.tagName === 'HR') {
      possibleSeparator.remove();
    }
  } else {
    rowElement.remove();
  }
}

function toggleCartEmptyState() {
  const cartOverview = document.querySelector('.cart-overview');
  if (!cartOverview) return;

  const productRows = cartOverview.querySelectorAll('[data-testid="product-row"]');
  const emptyMessage = cartOverview.querySelector('.no-items');
  const hasProducts = productRows.length > 0;
  const cartItemsList = cartOverview.querySelector('.cart-items');

  if (!hasProducts) {
    if (emptyMessage) {
      emptyMessage.style.display = 'inline-block';
    } else {
      const fallback = cartOverview.getAttribute('data-empty-label') || 'There are no more items in your cart';
      const span = document.createElement('span');
      span.className = 'no-items';
      span.textContent = fallback;
      cartOverview.appendChild(span);
    }

    if (cartItemsList) {
      cartItemsList.style.display = 'none';
    }

    setCartFooterVisibility(false);
  } else {
    if (emptyMessage) {
      emptyMessage.style.display = 'none';
    }
    if (cartItemsList) {
      cartItemsList.style.display = '';
    }
  }
}

function emitPrestashopUpdateCart(reasonData, responseData) {
  if (!(window.prestashop && window.prestashop.emit)) {
    return;
  }

  const defaultReason = {
    idCustomization: 0,
    idProductAttribute: 0,
    idProduct: 0,
    linkAction: 'delete-from-cart'
  };

  window.prestashop.emit('updateCart', {
    reason: Object.assign({}, defaultReason, reasonData || {}),
    resp: responseData
  });
}

function handleCartLineDeletion(removeUrl, options = {}) {
  const { productRow, reasonData, onComplete } = options;

  if (!removeUrl) {
    if (typeof onComplete === 'function') {
      onComplete();
    }
    return;
  }

  const ajaxUrl = buildAjaxCartUrl(removeUrl);

  if (!ajaxUrl) {
    if (typeof onComplete === 'function') {
      onComplete();
    }
    window.location.href = removeUrl;
    return;
  }

  fetch(ajaxUrl, {
    method: 'GET',
    headers: {
      'Accept': 'application/json'
    },
    credentials: 'same-origin'
  })
  .then(response => {
    const contentType = response.headers.get('content-type') || '';
    if (contentType.includes('application/json')) {
      return response.json();
    }
    return response.text().then(text => ({ raw: text }));
  })
  .then(data => {
    if (data && data.hasError) {
      throw new Error((data.errors && data.errors.join(', ')) || 'Error removing product');
    }

    removeCartProductRow(productRow);

    document.dispatchEvent(new CustomEvent('cartQuantityUpdated', {
      detail: { response: data }
    }));

    toggleCartEmptyState();
    emitPrestashopUpdateCart(reasonData, data);
  })
  .catch(error => {
    console.error('Failed to remove product via AJAX', error);
    window.location.href = removeUrl;
  })
  .finally(() => {
    if (typeof onComplete === 'function') {
      onComplete();
    }
  });
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
  .catch(error => {
  });
}

function updateCartProductCount() {
  const cartProductCountElement = document.getElementById('cart-product-count');
  
  // Count the number of distinct products and sum total quantity
  const cartOverview = document.querySelector('.cart-overview');
  if (!cartOverview) {
    console.warn('Cart overview not found');
    return;
  }
  
  const productRows = cartOverview.querySelectorAll('[data-testid="product-row"]');
  const productCount = productRows.length;
  
  // Calculate total quantity by summing all product quantities
  let totalQuantity = 0;
  productRows.forEach((row) => {
    const quantityDiv = row.querySelector('.js-cart-line-product-quantity');
    if (quantityDiv) {
      const quantityText = quantityDiv.textContent.trim().replace(/\s+/g, '');
      const quantity = parseInt(quantityText, 10);
      if (!isNaN(quantity)) {
        totalQuantity += quantity;
      }
    }
  });
  
  // Update all cart badge elements in header with TOTAL QUANTITY
  const badgeElements = document.querySelectorAll('[data-testid="cart-button-badge-text"], .cart-products-count');
  badgeElements.forEach((element) => {
    const oldValue = element.textContent;
    element.textContent = totalQuantity;
  });
  
  // Update cart page count element with NUMBER OF DISTINCT PRODUCTS
  if (cartProductCountElement) {
    const productWord = productCount === 1 ? 'produkt' : 'produkty';
    cartProductCountElement.textContent = `${productCount} ${productWord}`;
  }
}

$(document).ready(function() {
  prestashop.blockcart = prestashop.blockcart || {};

  // Initialize decrement button appearance
  updateDecrementButtonAppearance();
  
  // Watch for quantity changes using MutationObserver (backup mechanism)
  const cartOverview = document.querySelector('.cart-overview');
  if (cartOverview) {
    const observer = new MutationObserver(function(mutations) {
      let shouldUpdate = false;
      
      mutations.forEach(function(mutation) {
        if (mutation.type === 'characterData' || 
            (mutation.type === 'childList' && mutation.target.closest('[data-testid="product-row"]'))) {
          shouldUpdate = true;
        }
      });
      
      if (shouldUpdate) {
        setTimeout(() => {
          updateCartTotal();
          updateCartProductCount();
        }, 100);
      }
    });
    
    observer.observe(cartOverview, {
      subtree: true,
      characterData: true,
      childList: true
    });
  }
  
  // Listen for cart quantity updates and update price
  document.addEventListener('cartQuantityUpdated', (e) => {
    updateCartTotal();
    updateCartProductCount();
    ensureCartFooterVisible();
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
        var newBlockcart = $(resp.preview).find('.blockcart');
        $('.blockcart').replaceWith(newBlockcart);
        
        // Update all buttons after cart refresh
        setTimeout(function() {
          updateDecrementButtonAppearance();
          syncCartFooterPadding();
        }, 100);
      }).fail(function (resp) {
        prestashop.emit('handleError', { eventType: 'updateShoppingCart', resp: resp });
      });
    }
  );
});
