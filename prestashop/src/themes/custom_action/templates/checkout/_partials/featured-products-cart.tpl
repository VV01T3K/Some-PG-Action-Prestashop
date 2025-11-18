{**
 * Featured Products for Cart Page - Compact List View
 *}
<script>
/**
 * Add to cart handler for featured products
 * Matches the product page button behavior
 */
window.addToCartFeatured = function(event) {
	event.preventDefault();
	const button = event.currentTarget;
	const productId = button.getAttribute('data-product-id');
	
	if (!productId) {
		console.error('Product ID not found');
		return;
	}
	
	// Disable button to prevent multiple clicks
	button.disabled = true;
	
	// Get the cart URL
	const cartUrl = '{$urls.pages.cart}';
	
	// Build FormData with hardcoded parameters (same as product page button)
	const formData = new FormData();
	formData.append('id_product', productId);
	formData.append('qty', '1');
	formData.append('add', '1');
	formData.append('action', 'update');
	
	console.log('Adding product ID:', productId);
	console.log('Quantity: 1');
	
	// POST to cart with AJAX
	fetch(cartUrl + '?ajax=1', {
		method: 'POST',
		body: new URLSearchParams(formData)
	})
	.then(response => {
		if (!response.ok) {
			throw new Error('Network response was not ok');
		}
		return response.json();
	})
	.then(data => {
		console.log('✅ Product added successfully');
		console.log('Product ID:', productId);
		
		// Find the added product in cart
		if (data.cart && data.cart.products) {
			const addedProduct = data.cart.products.find(p => p.id == productId);
			if (addedProduct) {
				console.log('Product:', addedProduct.name);
				console.log('Quantity in cart:', addedProduct.cart_quantity);
				console.log('Total:', addedProduct.total);
			}
		}
		
		// Emit the updateCart event to refresh cart (same as product page)
		if (window.prestashop && window.prestashop.emit) {
			window.prestashop.emit('updateCart', {
				reason: {
					idProduct: parseInt(productId),
					idProductAttribute: 0,
					idCustomization: 0,
					linkAction: 'add-to-cart'
				},
				resp: data
			});
		}
		
		// Re-enable button
		setTimeout(() => {
			button.disabled = false;
		}, 1000);
	})
	.catch(error => {
		console.error('Error adding product to cart:', error);
		button.disabled = false;
		
		// Emit error event
		if (window.prestashop && window.prestashop.emit) {
			window.prestashop.emit('handleError', {
				eventType: 'addProductToCart',
				message: 'Failed to add product to cart'
			});
		}
	});
};
</script>
{if isset($products) && count($products) > 0}
  <section style="width: 100%; max-width: 48rem;">
    <div style="display: flex; flex-direction: column; gap: 1rem;">
      
      {foreach from=$products item="product" name="products"}
        {if $smarty.foreach.products.index < 6}
          <div data-testid="product-row" data-content-king="product-row" style="display: flex; justify-content: space-between; gap: 0.5rem; border-radius: 4px; background-color: #f7fafc; padding: 1rem; align-items: center;">
            
            {* PRODUCT IMAGE & INFO SECTION *}
            <div style="width: 100%; min-width: 0;">
              <a href="{$product.url|escape}" style="display: flex; width: 100%; flex-direction: row; gap: 0.5rem; text-decoration: none;" data-testid="product-row-link">
                
                {* PRODUCT IMAGE *}
                <div style="position: relative; height: 64px; min-width: 64px; flex-shrink: 0;">
                  {if isset($product.cover)}
                    <img data-testid="product-row-image" alt="{$product.name|escape:'quotes'}" loading="lazy" style="object-fit: contain; object-position: center; height: 100%; width: 100%;" src="{$product.cover.bySize.cart_default.url}" />
                  {else}
                    <img data-testid="product-row-image" alt="" loading="lazy" style="object-fit: contain; object-position: center; height: 100%; width: 100%;" src="{$urls.no_picture_image.bySize.cart_default.url}" />
                  {/if}
                </div>

                {* PRODUCT INFO *}
                <div style="display: flex; width: 100%; min-width: 0; flex-direction: column; justify-content: flex-start; gap: 0.5rem;">
                  
                  {* TITLE & DESCRIPTION *}
                  <span>
                    <p data-testid="product-row-title" style="font-size: 0.95rem; font-weight: 600; color: #001489; line-height: 1.3; margin: 0; overflow: hidden; text-overflow: ellipsis; white-space: nowrap;">
                      {$product.name|truncate:50}
                    </p>
                    {if isset($product.description_short)}
                      <p data-testid="product-row-description" style="font-size: 0.85rem; font-weight: normal; color: #718096; line-height: 1.3; margin: 0; overflow: hidden; text-overflow: ellipsis; white-space: nowrap;">
                        {$product.description_short|strip_tags|truncate:60}
                      </p>
                    {/if}
                  </span>

                  {* PRICE *}
                  <div data-testid="product-row-price" style="display: flex; width: 100%; justify-content: space-between;">
                    <div style="display: flex; width: 100%; flex-direction: column; justify-content: flex-start;">
                      {if isset($product.price)}
                        <span data-testid="product-row-price-description" style="font-size: 0.75rem; color: #718096;">
                          {$product.price} zł/szt.
                        </span>
                      {/if}
                      {if isset($product.price)}
                        <div style="font-weight: 700; color: #001489;">
                          <span data-testid="product-row-price-formatted-amount">
                            {$product.price}
                          </span>
                        </div>
                      {/if}
                    </div>
                  </div>

                </div>

              </a>
            </div>

            {* ADD TO CART BUTTON *}
            <div style="display: flex; align-items: center; flex-shrink: 0;">
              <button tabindex="0" type="button" data-testid="add-to-cart-featured" data-product-id="{$product.id|intval}" class="bg-neutral-0 flex h-9 w-9 items-center justify-center rounded-full transition-all focus:ring-1" onclick="addToCartFeatured(event)">
                <svg aria-hidden="true" data-testid="AddPlus" xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489" d="M12 19a1 1 0 0 1-1-1v-5H6a1 1 0 1 1 0-2h5V6a1 1 0 1 1 2 0v5h5a1 1 0 1 1 0 2h-5v5a1 1 0 0 1-1 1"></path>
                </svg>
              </button>
            </div>

          </div>
        {/if}
      {/foreach}

    </div>
  </section>
{/if}
