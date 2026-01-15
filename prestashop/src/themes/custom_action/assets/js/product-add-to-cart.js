/**
 * Enhanced Add to Cart functionality
 * Handles form submission with debouncing and stock validation
 * Uses AJAX to prevent page reloads and properly track stock
 */

(function() {
  'use strict';

  // Configuration
  const DEBOUNCE_DELAY = 500; // milliseconds to wait before allowing another submission
  const LOADING_CLASS = 'is-loading';
  const DEBUG = false; // Enable detailed logging

  let isSubmitting = false;
  let lastSubmitTime = 0;
  // Track pending quantity that's being added (not yet confirmed by server)
  let pendingQuantity = 0;
  // Cache the last known cart quantity to handle when prestashop.cart is temporarily unavailable
  let lastKnownCartQuantity = 0;

  function log(...args) {
    if (DEBUG) {
      console.log('[AddToCart]', ...args);
    }
  }

  function logState(context) {
    if (DEBUG) {
      console.log(`[AddToCart][${context}] State: isSubmitting=${isSubmitting}, pendingQuantity=${pendingQuantity}, lastSubmitTime=${lastSubmitTime}`);
    }
  }

  /**
   * Initialize add-to-cart functionality
   */
  function init() {
    log('=== INIT STARTED ===');

    const form = document.getElementById('add-to-cart-or-refresh');
    if (!form) {
      log('Form not found, aborting init');
      return;
    }
    log('Form found:', form);

    const addToCartBtn = form.querySelector('[data-button-action="add-to-cart"]');
    const quantityInput = document.getElementById('quantity_wanted');

    if (!addToCartBtn || !quantityInput) {
      log('Button or input not found. Button:', addToCartBtn, 'Input:', quantityInput);
      return;
    }

    log('Button found:', addToCartBtn);
    log('Quantity input found:', quantityInput);
    log('Input data-stock:', quantityInput.dataset.stock);
    log('Input max:', quantityInput.getAttribute('max'));
    log('Input value:', quantityInput.value);

    // Intercept the button click BEFORE PrestaShop's core.js handles it
    // We use capture phase to ensure we run first
    addToCartBtn.addEventListener('click', handleButtonClick, true);
    log('Click handler attached to button (capture phase)');

    // Also listen to form submit as backup
    form.addEventListener('submit', handleFormSubmit);
    log('Submit handler attached to form');

    // Validate quantity on input change
    quantityInput.addEventListener('change', validateQuantity);
    quantityInput.addEventListener('input', validateQuantity);
    log('Input validation handlers attached');

    // Check prestashop object
    log('window.prestashop:', window.prestashop);
    if (window.prestashop) {
      log('prestashop.cart:', window.prestashop.cart);
      log('prestashop.product:', window.prestashop.product);
    }

    // Listen for cart updates to recalculate available stock
    if (window.prestashop && typeof window.prestashop.on === 'function') {
      window.prestashop.on('updateCart', function(event) {
        log('=== updateCart EVENT RECEIVED ===');
        log('Event data:', event);

        // Only clear pending if we have valid cart data
        // This prevents re-enabling the button during cart refresh
        if (window.prestashop.cart && window.prestashop.cart.products) {
          log('Cart data available, clearing pending quantity');
          pendingQuantity = 0;
        } else {
          log('Cart data not available yet, keeping pending quantity');
        }

        setTimeout(() => {
          recalculateAvailableStock();
          // Reset submitting state after cart update
          isSubmitting = false;
          logState('after updateCart');
        }, 300);
      });
      log('updateCart listener registered');

      // Listen for product updates (variant changes, etc.)
      window.prestashop.on('updatedProduct', function(event) {
        log('=== updatedProduct EVENT RECEIVED ===');
        log('Event data:', event);
        pendingQuantity = 0;
        setTimeout(() => {
          recalculateAvailableStock();
        }, 100);
      });
      log('updatedProduct listener registered');
    } else {
      log('WARNING: prestashop.on not available!');
    }

    // Initial stock calculation on page load
    log('Scheduling initial stock calculation...');
    setTimeout(() => {
      log('Running initial stock calculation');
      recalculateAvailableStock();
    }, 100);

    log('=== INIT COMPLETED ===');
  }

  /**
   * Recalculate available stock after cart update
   */
  function recalculateAvailableStock() {
    log('=== recalculateAvailableStock CALLED ===');
    logState('recalculateAvailableStock start');

    const quantityInput = document.getElementById('quantity_wanted');
    const addToCartBtn = document.querySelector('[data-button-action="add-to-cart"]');

    if (!quantityInput || !addToCartBtn) {
      log('Elements not found. Input:', quantityInput, 'Button:', addToCartBtn);
      return;
    }

    // Get total stock from data attribute
    const totalStock = parseInt(quantityInput.dataset.stock, 10) || 0;
    log('Total stock from data-stock:', totalStock);

    if (totalStock === 0) {
      log('Total stock is 0, skipping calculation');
      return;
    }

    // Get current cart quantity for this product
    const cartQuantity = getCartQuantityForProduct();
    // Account for pending quantity that hasn't been confirmed yet
    const availableStock = Math.max(0, totalStock - cartQuantity - pendingQuantity);

    log(`Stock calculation: Total=${totalStock} - InCart=${cartQuantity} - Pending=${pendingQuantity} = Available=${availableStock}`);

    // Update max attribute
    quantityInput.setAttribute('max', availableStock);
    log('Updated max attribute to:', availableStock);

    // Adjust current value if needed
    const currentQty = parseInt(quantityInput.value, 10);
    log('Current quantity value:', currentQty);

    if (currentQty > availableStock && availableStock > 0) {
      quantityInput.value = availableStock;
      log('Adjusted quantity to available stock:', availableStock);
      showError(`Dostępna ilość: ${availableStock}`);
    } else if (availableStock === 0 && currentQty > 0) {
      quantityInput.value = 1; // Reset to 1 for when stock becomes available
      log('Reset quantity to 1 (no stock available)');
    }

    // Disable button if no stock available
    if (availableStock <= 0) {
      log('No stock available, disabling button');
      addToCartBtn.disabled = true;
      if (cartQuantity + pendingQuantity >= totalStock) {
        showError('Wszystkie dostępne sztuki są już w koszyku');
      }
    } else {
      // Only re-enable if we're not in the middle of a submission
      if (!isSubmitting) {
        log('Stock available and not submitting, enabling button');
        addToCartBtn.disabled = false;
      } else {
        log('Stock available but still submitting, keeping button state');
      }
    }

    // Reset button text if not submitting
    if (!isSubmitting) {
      const btnText = addToCartBtn.querySelector('.truncate');
      if (btnText && btnText.dataset.originalText) {
        btnText.textContent = btnText.dataset.originalText;
        log('Reset button text to:', btnText.dataset.originalText);
      }
    }

    log('Button disabled state:', addToCartBtn.disabled);
    logState('recalculateAvailableStock end');
  }

  /**
   * Handle button click - intercepts before PrestaShop's handler
   */
  function handleButtonClick(event) {
    log('=== BUTTON CLICK INTERCEPTED ===');
    logState('handleButtonClick start');

    const addToCartBtn = event.currentTarget;
    const quantityInput = document.getElementById('quantity_wanted');

    // Check if button should be disabled (stock exhausted)
    const totalStock = parseInt(quantityInput.dataset.stock, 10) || 0;
    const cartQuantity = getCartQuantityForProduct();
    const availableStock = Math.max(0, totalStock - cartQuantity - pendingQuantity);

    log(`Button click validation: Total=${totalStock}, InCart=${cartQuantity}, Pending=${pendingQuantity}, Available=${availableStock}`);

    if (availableStock <= 0) {
      log('BLOCKING CLICK: No stock available');
      event.preventDefault();
      event.stopPropagation();
      event.stopImmediatePropagation();
      addToCartBtn.disabled = true;
      showError('Brak dostępnych sztuk');
      return false;
    }

    // Check quantity
    const quantity = parseInt(quantityInput.value, 10);
    if (quantity > availableStock) {
      log('BLOCKING CLICK: Quantity exceeds available');
      event.preventDefault();
      event.stopPropagation();
      event.stopImmediatePropagation();
      showError(`Dostępna ilość: ${availableStock}`);
      quantityInput.value = availableStock;
      return false;
    }

    // Allow the click to proceed, but track pending quantity
    log('Click allowed, tracking pending quantity');
    pendingQuantity += quantity;
    log(`Pending quantity now: ${pendingQuantity}`);

    // Update max immediately
    const newAvailable = availableStock - quantity;
    quantityInput.setAttribute('max', newAvailable);

    if (newAvailable <= 0) {
      log('This will exhaust stock, disabling button after event');
      // Disable after a tiny delay to let the click event complete
      setTimeout(() => {
        addToCartBtn.disabled = true;
        showError('Wszystkie dostępne sztuki są już w koszyku');
      }, 100);
    }

    // Let PrestaShop handle the actual add-to-cart
    return true;
  }

  /**
   * Handle form submission with debouncing and validation
   */
  function handleFormSubmit(event) {
    log('=== FORM SUBMIT TRIGGERED ===');
    logState('handleFormSubmit start');

    const form = event.target;
    const addToCartBtn = form.querySelector('[data-button-action="add-to-cart"]');
    const quantityInput = document.getElementById('quantity_wanted');

    // Prevent default - we'll handle submission via AJAX
    event.preventDefault();
    event.stopPropagation();
    log('Default prevented, propagation stopped');

    // Check if already submitting
    if (isSubmitting) {
      log('BLOCKED: Already submitting');
      showError('Poczekaj, dodawanie do koszyka...');
      return false;
    }

    // Debounce: Check if enough time has passed since last submit
    const currentTime = Date.now();
    const timeSinceLastSubmit = currentTime - lastSubmitTime;
    log(`Time since last submit: ${timeSinceLastSubmit}ms (threshold: ${DEBOUNCE_DELAY}ms)`);

    if (timeSinceLastSubmit < DEBOUNCE_DELAY) {
      log('BLOCKED: Debounce - too soon since last submit');
      showError('Zbyt szybko! Poczekaj chwilę...');
      return false;
    }

    // Set submitting state
    isSubmitting = true;
    lastSubmitTime = currentTime;
    log('Submitting state set to true');

    // Add loading state to button
    addToCartBtn.classList.add(LOADING_CLASS);
    addToCartBtn.disabled = true;
    log('Button disabled and loading class added');

    // Store original button text
    const btnText = addToCartBtn.querySelector('.truncate');
    const originalText = btnText ? btnText.textContent : '';
    if (btnText) {
      btnText.dataset.originalText = originalText;
      btnText.textContent = 'Sprawdzanie...';
      log('Button text changed to "Sprawdzanie..."');
    }

    // Validate and submit via AJAX
    log('Calling validateAndSubmitAjax...');
    validateAndSubmitAjax(form, quantityInput, addToCartBtn, btnText, originalText);

    return false;
  }

  /**
   * Validate stock and submit via AJAX
   */
  function validateAndSubmitAjax(form, quantityInput, addToCartBtn, btnText, originalText) {
    log('=== validateAndSubmitAjax CALLED ===');

    const quantity = parseInt(quantityInput.value, 10);
    const minQuantity = parseInt(quantityInput.getAttribute('min'), 10) || 1;
    const totalStock = parseInt(quantityInput.dataset.stock, 10) || 0;
    const cartQuantity = getCartQuantityForProduct();
    const availableStock = Math.max(0, totalStock - cartQuantity - pendingQuantity);

    log('Validation data:');
    log(`  - Requested quantity: ${quantity}`);
    log(`  - Min quantity: ${minQuantity}`);
    log(`  - Total stock: ${totalStock}`);
    log(`  - In cart: ${cartQuantity}`);
    log(`  - Pending: ${pendingQuantity}`);
    log(`  - Available: ${availableStock}`);

    // Validate minimum quantity
    if (isNaN(quantity) || quantity < minQuantity) {
      log('VALIDATION FAILED: Below minimum quantity');
      resetSubmitState(addToCartBtn, btnText, originalText);
      showError(`Minimalna ilość to ${minQuantity}`);
      quantityInput.value = minQuantity;
      return;
    }

    // Check if no stock available
    if (availableStock <= 0) {
      log('VALIDATION FAILED: No stock available');
      isSubmitting = false;
      addToCartBtn.classList.remove(LOADING_CLASS);
      addToCartBtn.disabled = true; // Keep disabled!
      if (btnText) {
        btnText.textContent = originalText;
      }
      showError('Brak dostępnych sztuk');
      return;
    }

    // Check if requested quantity exceeds available
    if (quantity > availableStock) {
      log('VALIDATION FAILED: Quantity exceeds available stock');
      resetSubmitState(addToCartBtn, btnText, originalText);
      showError(`Dostępna ilość: ${availableStock}`);
      quantityInput.value = availableStock;
      return;
    }

    // Validation passed - submit via AJAX
    log('VALIDATION PASSED - Submitting via AJAX');
    if (btnText) {
      btnText.textContent = 'Dodawanie...';
    }

    // Mark this quantity as pending BEFORE sending request
    pendingQuantity += quantity;
    log(`Pending quantity increased to: ${pendingQuantity}`);

    // Update UI immediately to prevent over-ordering
    const newAvailable = availableStock - quantity;
    quantityInput.setAttribute('max', newAvailable);
    log(`Updated max to: ${newAvailable}`);

    if (newAvailable <= 0) {
      addToCartBtn.disabled = true;
      log('All stock will be used after this add, button disabled');
    }

    // Submit via AJAX using fetch
    const formData = new FormData(form);
    formData.append('ajax', '1');
    formData.append('action', 'update');

    log('Sending AJAX request to:', form.action);
    log('Form data entries:');
    for (let [key, value] of formData.entries()) {
      log(`  - ${key}: ${value}`);
    }

    fetch(form.action, {
      method: 'POST',
      body: formData,
      credentials: 'same-origin'
    })
    .then(response => {
      log('Response received, status:', response.status);
      return response.json();
    })
    .then(data => {
      log('=== AJAX RESPONSE ===');
      log('Response data:', JSON.stringify(data, null, 2));

      if (data.success) {
        log('SUCCESS: Item added to cart');

        // Success! Trigger PrestaShop's updateCart event
        if (window.prestashop && typeof window.prestashop.emit === 'function') {
          log('Emitting updateCart event');
          window.prestashop.emit('updateCart', {
            reason: data,
            resp: data
          });
        } else {
          log('WARNING: Cannot emit updateCart - prestashop.emit not available');
        }

        // Reset quantity input to 1 for next addition
        if (newAvailable > 0) {
          quantityInput.value = 1;
          log('Reset quantity input to 1');
        }

        // Show success briefly
        if (btnText) {
          btnText.textContent = 'Dodano!';
          log('Button text changed to "Dodano!"');
          setTimeout(() => {
            if (btnText.dataset.originalText) {
              btnText.textContent = btnText.dataset.originalText;
              log('Button text restored to original');
            }
          }, 1500);
        }
      } else {
        log('FAILED: Server returned success=false');
        log('Errors:', data.errors);

        // Failed - restore pending quantity
        pendingQuantity = Math.max(0, pendingQuantity - quantity);
        log(`Pending quantity restored to: ${pendingQuantity}`);
        recalculateAvailableStock();

        const errorMsg = data.errors ? data.errors.join(', ') : 'Nie udało się dodać do koszyka';
        showError(errorMsg);
        resetSubmitState(addToCartBtn, btnText, originalText);
      }
    })
    .catch(error => {
      log('=== AJAX ERROR ===');
      log('Error:', error);

      // Failed - restore pending quantity
      pendingQuantity = Math.max(0, pendingQuantity - quantity);
      log(`Pending quantity restored to: ${pendingQuantity}`);
      recalculateAvailableStock();

      showError('Wystąpił błąd. Spróbuj ponownie.');
      resetSubmitState(addToCartBtn, btnText, originalText);
    })
    .finally(() => {
      log('=== AJAX FINALLY ===');
      addToCartBtn.classList.remove(LOADING_CLASS);
      log('Loading class removed from button');

      // Note: isSubmitting will be reset by the updateCart event handler
      // This ensures we wait for the cart to actually update
      setTimeout(() => {
        // Fallback: reset submitting state if updateCart event didn't fire
        if (isSubmitting) {
          log('Fallback: updateCart event did not fire, resetting state');
          isSubmitting = false;
          recalculateAvailableStock();
        }
        logState('after finally timeout');
      }, 2000);
    });
  }

  /**
   * Get quantity of this product in cart
   */
  function getCartQuantityForProduct() {
    log('=== getCartQuantityForProduct CALLED ===');

    // Try to get from prestashop.cart
    if (window.prestashop && window.prestashop.cart && window.prestashop.cart.products) {
      const productId = getProductId();
      const productAttributeId = getProductAttributeId();

      log(`Looking for product ID: ${productId}, attribute ID: ${productAttributeId}`);
      log('Cart products:', JSON.stringify(window.prestashop.cart.products, null, 2));

      for (const product of window.prestashop.cart.products) {
        if (parseInt(product.id_product) === productId) {
          // If we have variants, check attribute ID too
          if (productAttributeId && product.id_product_attribute) {
            if (parseInt(product.id_product_attribute) === productAttributeId) {
              const qty = parseInt(product.quantity, 10) || 0;
              log(`Found matching product with attribute, quantity: ${qty}`);
              // Cache this value
              lastKnownCartQuantity = qty;
              return qty;
            }
          } else {
            const qty = parseInt(product.quantity, 10) || 0;
            log(`Found matching product, quantity: ${qty}`);
            // Cache this value
            lastKnownCartQuantity = qty;
            return qty;
          }
        }
      }
      log('Product not found in cart');
      // Product not in cart, so quantity is 0
      lastKnownCartQuantity = 0;
    } else {
      log('Cart data not available. prestashop:', !!window.prestashop, 'cart:', !!(window.prestashop && window.prestashop.cart));
      log('Using cached cart quantity:', lastKnownCartQuantity);
      // Cart data temporarily unavailable - use cached value
      return lastKnownCartQuantity;
    }
    return 0;
  }

  /**
   * Get current product ID
   */
  function getProductId() {
    const productIdInput = document.getElementById('product_page_product_id');
    if (productIdInput) {
      const id = parseInt(productIdInput.value, 10);
      log('Product ID from input:', id);
      return id;
    }
    if (window.prestashop && window.prestashop.product) {
      const id = parseInt(window.prestashop.product.id, 10);
      log('Product ID from prestashop.product:', id);
      return id;
    }
    log('Product ID not found');
    return 0;
  }

  /**
   * Get current product attribute ID (for variants)
   */
  function getProductAttributeId() {
    if (window.prestashop && window.prestashop.product) {
      const id = parseInt(window.prestashop.product.id_product_attribute, 10) || 0;
      log('Product attribute ID:', id);
      return id;
    }
    log('Product attribute ID not available');
    return 0;
  }

  /**
   * Reset submit state
   */
  function resetSubmitState(addToCartBtn, btnText, originalText) {
    log('=== resetSubmitState CALLED ===');
    isSubmitting = false;
    addToCartBtn.classList.remove(LOADING_CLASS);
    addToCartBtn.disabled = false;
    if (btnText) {
      btnText.textContent = originalText;
    }
    logState('after resetSubmitState');
  }

  /**
   * Validate quantity input
   */
  function validateQuantity(event) {
    const input = event.target;
    const quantity = parseInt(input.value, 10);
    const minQuantity = parseInt(input.getAttribute('min'), 10) || 1;
    const maxQuantity = parseInt(input.getAttribute('max'), 10) || 0;

    log(`validateQuantity: value=${quantity}, min=${minQuantity}, max=${maxQuantity}`);

    // Remove non-numeric characters
    if (!/^\d*$/.test(input.value)) {
      input.value = input.value.replace(/\D/g, '');
      log('Removed non-numeric characters');
    }

    // Validate min
    if (isNaN(quantity) || quantity < minQuantity) {
      input.setCustomValidity(`Minimalna ilość to ${minQuantity}`);
      log('Validation: below minimum');
      return;
    }

    // Validate max (if stock is limited)
    if (maxQuantity > 0 && quantity > maxQuantity) {
      input.setCustomValidity(`Dostępna ilość: ${maxQuantity}`);
      showError(`Dostępna ilość: ${maxQuantity}`);
      input.value = maxQuantity;
      log('Validation: above maximum, clamped to', maxQuantity);
      return;
    }

    // Clear any validation errors
    input.setCustomValidity('');
    log('Validation: passed');
  }

  /**
   * Show error message to user
   */
  function showError(message) {
    log('showError:', message);

    // Create or update error message element
    let errorElement = document.querySelector('.product-add-to-cart-error');

    if (!errorElement) {
      errorElement = document.createElement('div');
      errorElement.className = 'product-add-to-cart-error';
      errorElement.style.cssText = 'color: #dc2626; font-size: 0.875rem; margin-top: 0.5rem; font-weight: 500;';

      const addToCartContainer = document.querySelector('.product-add-to-cart');
      if (addToCartContainer) {
        addToCartContainer.appendChild(errorElement);
      }
    }

    errorElement.textContent = message;
    errorElement.style.display = 'block';

    // Remove error after 5 seconds
    setTimeout(() => {
      if (errorElement && errorElement.parentNode) {
        errorElement.style.display = 'none';
      }
    }, 5000);
  }

  // Initialize when DOM is ready
  log('Script loaded, checking DOM state:', document.readyState);
  if (document.readyState === 'loading') {
    log('DOM still loading, adding DOMContentLoaded listener');
    document.addEventListener('DOMContentLoaded', init);
  } else {
    log('DOM ready, initializing immediately');
    init();
  }
})();
