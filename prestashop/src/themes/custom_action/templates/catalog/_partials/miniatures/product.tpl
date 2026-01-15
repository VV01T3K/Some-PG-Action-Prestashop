{block name='product_miniature_item'}

  <div class="w-(--itemWidth)">
<div data-id-product="{$product.id_product|escape:'html':'UTF-8'}" data-id-product-attribute="{$product.id_product_attribute|escape:'html':'UTF-8'}" class="border-neutral-150 border bg-neutral-0 relative h-full w-full" data-testid="product-card" data-content-king="product-card">

        
        {* Main product link wrapping everything *}
        <a class="group relative flex h-full w-full flex-col p-3 xs:p-4" href="{$product.url}" data-testid="product-card-link">
          
          {* Product Image Section *}
          {block name='product_thumbnail'}
            <span class="xs:max-h-[180px] relative aspect-square w-full md:max-h-[230px]">
              {if $product.cover}
                <img data-testid="product-card-image"
                  alt="{if !empty($product.cover.legend)}{$product.cover.legend}{else}{$product.name}{/if}"
                  fetchpriority="low"
                  loading="lazy"
                  decoding="async"
                  class="object-contain object-center py-2 transition-transform duration-250 group-hover:scale-105 md:py-4 h-full w-full"
                  style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent"
                  src="{$product.cover.bySize.home_default.url}"
                  data-full-size-image-url="{$product.cover.large.url}"
                  width="{$product.cover.bySize.home_default.width}"
                  height="{$product.cover.bySize.home_default.height}" />
              {else}
                <img data-testid="product-card-image"
                  alt="{$product.name}"
                  fetchpriority="low"
                  loading="lazy"
                  decoding="async"
                  class="object-contain object-center py-2 transition-transform duration-250 group-hover:scale-105 md:py-4 h-full w-full"
                  style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent"
                  src="{$urls.no_picture_image.bySize.home_default.url}"
                  width="{$urls.no_picture_image.bySize.home_default.width}"
                  height="{$urls.no_picture_image.bySize.home_default.height}" />
              {/if}
              
              {* Product Flags/Badges at bottom of image *}
              <span class="absolute bottom-0 flex flex-col gap-2"></span>
            </span>
          {/block}          {* Product Title and Description *}
          {block name='product_name'}
            <span class="mt-2 mb-3 flex grow flex-col gap-1 leading-tight sm:mb-4">
              <span class="xs:text-[16px] xs:leading-5 text-sm leading-[18px] font-medium text-dark-blue-500 line-clamp-2 break-words" data-testid="product-card-title">
                {$product.name|truncate:50:'...'}
              </span>
              {if isset($product.description_short) && $product.description_short}
                <span class="max-h-fit text-sm leading-[18px] font-normal line-clamp-2 grow break-words text-neutral-700" data-testid="product-card-description">
                  {$product.description_short|strip_tags:'UTF-8'|truncate:80:'...'}
                </span>
              {elseif isset($product.main_variants) && $product.main_variants}
                <span class="max-h-fit text-sm leading-[18px] font-normal line-clamp-2 grow break-words text-neutral-700" data-testid="product-card-description">
                  {l s='Different variants' d='Shop.Theme.Catalog'}
                </span>
              {else}
                <span class="max-h-fit text-sm leading-[18px] font-normal line-clamp-2 grow break-words text-neutral-700" data-testid="product-card-description">
                  &nbsp;
                </span>
              {/if}
            </span>
          {/block}

          {* Product Price Section *}
          {block name='product_price_and_shipping'}
            {if $product.show_price}
              <span aria-label="{$product.price}" class="flex flex-col">
                {* Unit Price Description - Show above price *}
                {if isset($product.unit_price_full) && $product.unit_price_full}
                  <span data-testid="product-card-price-description" class="mb-1 block w-max text-xs leading-[12px] text-neutral-700">
                    {$product.unit_price_full}
                  </span>
                {/if}

                {* Main Price Display - Orange for promoted items *}
                <span class="flex items-start {if $product.has_discount}text-orange-500{else}text-dark-blue-500{/if}">
                  {assign var="price_clean" value=$product.price|regex_replace:'/[^\d,]/':''}
                  {assign var="price_parts" value=','|explode:$price_clean}
                  <span data-testid="product-card-price-whole" class="font-bold tracking-[1px] text-[40px] leading-[28px] md:text-[48px] md:leading-[33px]">
                    {if isset($price_parts[0])}{$price_parts[0]}{/if}
                  </span>
                  {if isset($price_parts[1])}
                  <span class="inline-flex items-baseline">
                    <span data-testid="product-card-price-fractional" class="font-bold tracking-[1px] text-[20px] leading-[14px] md:text-[28px] md:leading-[19px]">
                      {$price_parts[1]|regex_replace:'/[^\d]/':''}
                    </span>
                  </span>
                  {/if}
                </span>
              </span>
              {* Discount Information - Show below price *}
              {if $product.has_discount}
                <span class="flex leading-none text-neutral-700 mt-1 flex-row items-baseline self-baseline" data-testid="product-card-price-discount">
                  <span class="flex items-center" data-testid="product-card-price-original-amount">
                    <span class="text-center text-[12px] font-normal line-through">
                      {$product.regular_price}
                    </span>
                    <span class="pl-0.5 text-xs">*</span>
                  </span>
                  <span class="ml-1 rounded border border-neutral-700 px-[2px] py-px text-xs leading-[12px] font-medium" data-testid="product-card-price-discount-percentage">
                    {if $product.discount_type == 'percentage'}
                      {$product.discount_percentage}
                    {else}
                      {$product.discount_to_display}
                    {/if}
                  </span>
                </span>
                {* Discount Footnote *}
                <span class="mt-2 flex text-xs font-normal text-neutral-700" data-testid="product-card-price-discount-footnote">
                  <span class="italic">* {l s='Najniższa cena z 30 dni przed obniżką' d='Shop.Theme.Catalog'}</span>
                </span>
              {/if}
            {/if}
          {/block}

        {* Promotion Badge - Top Left *}
        <span class="absolute top-0 left-0 flex flex-col gap-0.5">
          {if $product.new}
            <span class="flex overflow-hidden h-[22px] sm:h-[26px] text-neutral-0 text-[12px] leading-[14px] font-bold sm:text-sm sm:leading-[18px]" data-testid="product-tag">
              <span class="flex w-fit items-center pr-1 pl-1.5 sm:pr-1.5 sm:pl-2 bg-cyan-500">
                <span>{l s='Nowości' d='Shop.Theme.Catalog'}</span>
              </span>
              <span class="w-[8px]">
                <span class="-mr-px block h-full -translate-x-px bg-cyan-500" style="clip-path:polygon(0 0, 100% 0, 1px 100%, 0 100%)"></span>
              </span>
            </span>
          {/if}
          {if $product.has_discount}
            <span class="flex overflow-hidden h-[22px] sm:h-[26px] text-neutral-0 text-[12px] leading-[14px] font-bold sm:text-sm sm:leading-[18px]" data-testid="product-tag">
              <span class="flex w-fit items-center pr-1 pl-1.5 sm:pr-1.5 sm:pl-2 bg-orange-500">
                <span>{l s='Promocja tygodnia' d='Shop.Theme.Catalog'}</span>
              </span>
              <span class="w-[8px]">
                <span class="-mr-px block h-full -translate-x-px bg-orange-500" style="clip-path:polygon(0 0, 100% 0, 1px 100%, 0 100%)"></span>
              </span>
            </span>
          {/if}
          {* Product flags - hide discount flags as we show them custom *}
          <div class="product-flags-container" style="display: none;">
            {include file='catalog/_partials/product-flags.tpl'}
          </div>
        </span>
        </a>

        {* Cart Heart Button - indicates if product is in cart *}
        {block name='product_cart_heart'}
          <button type="button"
                  data-testid="cart-heart-button"
                  data-product-id="{$product.id_product}"
                  data-minimal-quantity="{$product.minimal_quantity|default:1}"
                  class="cart-heart-btn absolute top-0 right-0 p-2 cursor-pointer transition-transform duration-150 hover:scale-110"
                  aria-label="{l s='Dodaj do koszyka' d='Shop.Theme.Actions'}"
                  aria-pressed="false">
            {* unticked - shown by default when not in cart *}
            <svg class="heart-outline block" aria-hidden="true" data-testid="Heart01" xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
              <path fill="#8593a3" d="M12 21a1 1 0 0 1-.486-.126C11.126 20.658 2 15.514 2 9c0-3.665 2.218-5.425 4.293-5.849 2.171-.44 4.328.402 5.707 2.113 1.38-1.712 3.537-2.552 5.707-2.113C19.782 3.575 22 5.335 22 9.001c0 6.513-9.126 11.657-9.515 11.873A1 1 0 0 1 12 21M7.4 5.041q-.368 0-.707.07C5.007 5.456 4 6.91 4 9.001c0 4.584 6.197 8.728 8 9.836 1.804-1.108 8-5.252 8-9.837 0-2.09-1.007-3.544-2.693-3.889-1.482-.3-3.479.346-4.387 2.475a1 1 0 0 1-1.84 0C10.31 5.78 8.755 5.04 7.4 5.04"></path>
            </svg>
            {* hovered - shown on hover when not in cart *}
            <svg class="heart-hover hidden" aria-hidden="true" data-testid="Heart01Filled" xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
              <path fill="#8593a3" d="M12 21a1 1 0 0 1-.486-.126C11.126 20.658 2 15.514 2 9c0-3.665 2.218-5.425 4.293-5.849 2.171-.44 4.328.402 5.707 2.113 1.38-1.712 3.537-2.552 5.707-2.113C19.782 3.575 22 5.335 22 9.001c0 6.513-9.126 11.657-9.515 11.873A1 1 0 0 1 12 21"></path>
            </svg>
            {* ticked - shown when in cart *}
            <svg class="heart-filled hidden" aria-hidden="true" data-testid="Heart01FilledActive" xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
              <path fill="#ff8200" d="M12 21a1 1 0 0 1-.486-.126C11.126 20.658 2 15.514 2 9c0-3.665 2.218-5.425 4.293-5.849 2.171-.44 4.328.402 5.707 2.113 1.38-1.712 3.537-2.552 5.707-2.113C19.782 3.575 22 5.335 22 9.001c0 6.513-9.126 11.657-9.515 11.873A1 1 0 0 1 12 21"></path>
            </svg>
          </button>
          <style>
            {literal}
            /* Hover state - show filled gray heart when not in cart */
            .cart-heart-btn:not(.is-in-cart):hover .heart-outline { display: none; }
            .cart-heart-btn:not(.is-in-cart):hover .heart-hover { display: block; }

            /* In cart state - always show orange filled heart */
            .cart-heart-btn.is-in-cart .heart-outline { display: none !important; }
            .cart-heart-btn.is-in-cart .heart-hover { display: none !important; }
            .cart-heart-btn.is-in-cart .heart-filled { display: block !important; }

            /* Disabled/loading state */
            .cart-heart-btn.is-loading { opacity: 0.6; pointer-events: none; }

            /* Ensure SVGs don't capture pointer events */
            .cart-heart-btn svg { pointer-events: none; }
            {/literal}
          </style>
          <script>
            {literal}
            (function() {
              // Prevent multiple initializations
              if (window.cartHeartButtonsInitialized) return;
              window.cartHeartButtonsInitialized = true;

              const cartUrl = '{/literal}{$urls.pages.cart}{literal}';
              const staticToken = '{/literal}{$static_token}{literal}';

              // Store cart product IDs (will be populated via AJAX)
              let cartProductIds = [];

              // Update button states based on cart contents
              const updateButtonStates = () => {
                document.querySelectorAll('.cart-heart-btn').forEach(btn => {
                  const productId = btn.dataset.productId;
                  if (productId && cartProductIds.includes(parseInt(productId))) {
                    btn.classList.add('is-in-cart');
                    btn.setAttribute('aria-pressed', 'true');
                  } else {
                    btn.classList.remove('is-in-cart');
                    btn.setAttribute('aria-pressed', 'false');
                  }
                });
              };

              // Fetch current cart contents via AJAX
              const fetchCartContents = () => {
                // Use PrestaShop's cart data if available
                if (window.prestashop && window.prestashop.cart && window.prestashop.cart.products) {
                  cartProductIds = window.prestashop.cart.products.map(p => parseInt(p.id_product));
                  updateButtonStates();
                  return;
                }

                // Fetch cart via AJAX - use POST with action=refresh
                const params = new URLSearchParams();
                params.append('ajax', '1');
                params.append('action', 'refresh');

                fetch(cartUrl + '?' + params.toString(), {
                  method: 'POST',
                  headers: { 'Accept': 'application/json' }
                })
                .then(response => response.json())
                .then(data => {
                  if (data.cart && data.cart.products) {
                    cartProductIds = data.cart.products.map(p => parseInt(p.id_product));
                  }
                  updateButtonStates();
                })
                .catch(err => {
                  console.error('Failed to fetch cart:', err);
                  updateButtonStates();
                });
              };

              // Add product to cart
              const addToCart = (productId, minimalQty, callback) => {
                const params = new URLSearchParams();
                params.append('id_product', productId);
                params.append('qty', minimalQty);
                params.append('add', '1');
                params.append('action', 'update');
                params.append('token', staticToken);
                params.append('ajax', '1');

                const finalUrl = cartUrl.includes('?')
                  ? cartUrl + '&' + params.toString()
                  : cartUrl + '?' + params.toString();

                fetch(finalUrl, { method: 'POST' })
                  .then(response => response.json())
                  .then(data => {
                    if (!data.hasError) {
                      // Update local cart state
                      if (!cartProductIds.includes(parseInt(productId))) {
                        cartProductIds.push(parseInt(productId));
                      }
                      // Emit PrestaShop event
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
                    }
                    callback(data);
                  })
                  .catch(err => {
                    console.error('Add to cart failed:', err);
                    callback({ hasError: true });
                  });
              };

              // Remove product from cart
              const removeFromCart = (productId, callback) => {
                const params = new URLSearchParams();
                params.append('id_product', productId);
                params.append('delete', '1');
                params.append('action', 'update');
                params.append('token', staticToken);
                params.append('ajax', '1');

                const finalUrl = cartUrl.includes('?')
                  ? cartUrl + '&' + params.toString()
                  : cartUrl + '?' + params.toString();

                fetch(finalUrl, { method: 'POST' })
                  .then(response => response.json())
                  .then(data => {
                    if (!data.hasError) {
                      // Update local cart state
                      cartProductIds = cartProductIds.filter(id => id !== parseInt(productId));
                      // Emit PrestaShop event
                      if (window.prestashop && window.prestashop.emit) {
                        window.prestashop.emit('updateCart', {
                          reason: {
                            idProduct: parseInt(productId),
                            idProductAttribute: 0,
                            idCustomization: 0,
                            linkAction: 'delete-from-cart'
                          },
                          resp: data
                        });
                      }
                    }
                    callback(data);
                  })
                  .catch(err => {
                    console.error('Remove from cart failed:', err);
                    callback({ hasError: true });
                  });
              };

              // Handle click on cart heart button
              const handleCartHeartClick = (e) => {
                const btn = e.target.closest('.cart-heart-btn');
                if (!btn || btn.classList.contains('is-loading')) return;

                e.preventDefault();
                e.stopPropagation();

                const productId = btn.dataset.productId;
                if (!productId) return;

                // Set loading state
                btn.classList.add('is-loading');

                if (btn.classList.contains('is-in-cart')) {
                  // Remove from cart
                  removeFromCart(productId, (data) => {
                    btn.classList.remove('is-loading');
                    if (!data.hasError) {
                      btn.classList.remove('is-in-cart');
                      btn.setAttribute('aria-pressed', 'false');
                    }
                  });
                } else {
                  // Add to cart
                  const minimalQty = parseInt(btn.dataset.minimalQuantity) || 1;
                  addToCart(productId, minimalQty, (data) => {
                    btn.classList.remove('is-loading');
                    if (!data.hasError) {
                      btn.classList.add('is-in-cart');
                      btn.setAttribute('aria-pressed', 'true');
                    }
                  });
                }
              };

              // Use event delegation on document body
              document.body.addEventListener('click', handleCartHeartClick);

              // Listen for PrestaShop cart updates to sync state
              if (window.prestashop && typeof window.prestashop.on === 'function') {
                window.prestashop.on('updateCart', (event) => {
                  // Re-fetch cart contents after any cart update
                  setTimeout(fetchCartContents, 100);
                });
              }

              // Initialize - fetch cart contents via AJAX on page load
              if (document.readyState === 'loading') {
                document.addEventListener('DOMContentLoaded', fetchCartContents);
              } else {
                fetchCartContents();
              }
            })();
            {/literal}
          </script>
        {/block}

    </div>
  </div>
{/block}