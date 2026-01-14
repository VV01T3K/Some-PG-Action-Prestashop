/**
 * Custom Viewed Products Tracker using localStorage
 * Only stores product IDs and fetches rendered HTML from PrestaShop backend
 */

class ViewedProductsTracker {
  constructor() {
    this.storageKey = 'action_viewed_products';
    this.maxProducts = 8;
  }

  /**
   * Get viewed product IDs from localStorage
   */
  getViewedProductIds() {
    try {
      const stored = localStorage.getItem(this.storageKey);
      return stored ? JSON.parse(stored) : [];
    } catch (e) {
      console.error('Error reading viewed products:', e);
      return [];
    }
  }

  /**
   * Save viewed product IDs to localStorage
   */
  saveViewedProductIds(productIds) {
    try {
      localStorage.setItem(this.storageKey, JSON.stringify(productIds));
    } catch (e) {
      console.error('Error saving viewed products:', e);
    }
  }

  /**
   * Add current product ID to viewed products
   */
  addProductId(productId) {
    if (!productId) return;

    // Ensure productId is a string for consistent comparison
    productId = String(productId);

    let viewedProductIds = this.getViewedProductIds();

    // Remove product if it already exists (to avoid duplicates)
    viewedProductIds = viewedProductIds.filter(id => String(id) !== productId);

    // Add to the beginning of the array
    viewedProductIds.unshift(productId);

    // Keep only the last N products
    viewedProductIds = viewedProductIds.slice(0, this.maxProducts);

    this.saveViewedProductIds(viewedProductIds);
  }

  /**
   * Get product IDs to display (excluding current product)
   */
  getProductIdsToDisplay(currentProductId) {
    const viewedProductIds = this.getViewedProductIds();
    return viewedProductIds.filter(id => String(id) !== String(currentProductId));
  }

  /**
   * Fetch rendered HTML from PrestaShop backend and display
   */
  async renderViewedProducts(currentProductId, containerId = 'viewed-products-container') {
    const container = document.getElementById(containerId);
    if (!container) return;

    const productIds = this.getProductIdsToDisplay(currentProductId);

    if (productIds.length === 0) {
      container.innerHTML = '';
      return;
    }

    try {
      // Build the AJAX URL using PrestaShop's URL structure
      const baseUrl = typeof prestashop !== 'undefined' && prestashop.urls
        ? prestashop.urls.base_url
        : '/';

      const ajaxUrl = `${baseUrl}module/ps_viewedproducts_custom/ajax?product_ids=${productIds.join(',')}&current_product_id=${currentProductId}`;

      const response = await fetch(ajaxUrl, {
        method: 'GET',
        headers: {
          'X-Requested-With': 'XMLHttpRequest',
        },
      });

      if (!response.ok) {
        throw new Error('Network response was not ok');
      }

      const data = await response.json();

      if (data.html) {
        container.innerHTML = data.html;
      } else {
        container.innerHTML = '';
      }
    } catch (error) {
      console.error('Error fetching viewed products:', error);
      container.innerHTML = '';
    }
  }

  /**
   * Initialize tracking for current product page
   */
  initProductPage(productId) {
    if (!productId) return;

    // Add current product ID to viewed products
    this.addProductId(productId);

    // Render viewed products (excluding current one)
    this.renderViewedProducts(productId);
  }
}

// Initialize on DOM ready
if (document.readyState === 'loading') {
  document.addEventListener('DOMContentLoaded', initViewedProducts);
} else {
  initViewedProducts();
}

function initViewedProducts() {
  const productId = getProductIdFromPage();

  if (productId) {
    const tracker = new ViewedProductsTracker();
    tracker.initProductPage(productId);
  }
}

/**
 * Extract product ID from the page
 */
function getProductIdFromPage() {
  // Try to get from PrestaShop's prestashop object
  if (typeof prestashop !== 'undefined' && prestashop.page) {
    if (prestashop.page.page_name === 'product' && prestashop.page.product) {
      return prestashop.page.product.id_product || prestashop.page.product.id;
    }
  }

  // Fallback: try to extract from page elements
  const productIdInput = document.getElementById('product_page_product_id');
  if (productIdInput) {
    return productIdInput.value;
  }

  return null;
}
