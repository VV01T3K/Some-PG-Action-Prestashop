{**
 * Copyright since 2007 PrestaShop SA and Contributors
 * PrestaShop is an International Registered Trademark & Property of PrestaShop SA
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License 3.0 (AFL-3.0)
 * that is bundled with this package in the file LICENSE.md.
 * It is also available through the world-wide-web at this URL:
 * https://opensource.org/licenses/AFL-3.0
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@prestashop.com so we can send you a copy immediately.
 *
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade PrestaShop to newer
 * versions in the future. If you wish to customize PrestaShop for your
 * needs please refer to https://devdocs.prestashop.com/ for more information.
 *
 * @author    PrestaShop SA and Contributors <contact@prestashop.com>
 * @copyright Since 2007 PrestaShop SA and Contributors
 * @license   https://opensource.org/licenses/AFL-3.0 Academic Free License 3.0 (AFL-3.0)
 *}
<script>
/**
 * Clean up delete parameters from URL after product removal
 * This prevents delete parameters from interfering with subsequent operations
 */
function cleanDeleteParamsFromUrl() {
  const urlParams = new URLSearchParams(window.location.search);
  if (urlParams.has('delete')) {
    // Create a clean URL without delete parameters
    const newUrl = window.location.pathname;
    window.history.replaceState({ path: newUrl }, '', newUrl);
  }
}

// Clean immediately on page load
if (document.readyState === 'loading') {
  document.addEventListener('DOMContentLoaded', cleanDeleteParamsFromUrl);
} else {
  cleanDeleteParamsFromUrl();
}

// Also listen for updateCart events which happen after delete completes
if (window.prestashop && typeof window.prestashop.on === 'function') {
  window.prestashop.on('updateCart', function(event) {
    // Clean the URL immediately after cart update
    cleanDeleteParamsFromUrl();
  });
}
</script>
<div data-testid="product-row" data-content-king="product-row" style="display: flex; justify-content: space-between; gap: 1rem; padding: 1rem 0; align-items: flex-start; flex-wrap: wrap; position: relative; width: 100%;">
  
  {* CHECKBOX / FAVORITE BUTTON *}
  <div style="display: flex; flex-shrink: 0; padding-top: 0.25rem; position: absolute; left: 0; top: 0;">
        {if empty($product.is_gift)}
          <button
            type="button"
            data-testid="cart-item-remove-btn"
            style="display: flex; height: 1.5rem; width: 1.5rem; align-items: center; justify-content: center; border-radius: 9999px; border: 1px solid #333; background-color: transparent; cursor: pointer; transition: all var(--transition-duration) var(--transition-timing); color: #e74c3c; flex-shrink: 0;"
            data-remove-url="{$product.remove_from_cart_url}"
            data-product-id="{$product.id_product}"
            data-product-attribute-id="{$product.id_product_attribute}"
            data-customization-id="{if isset($product.id_customization)}{$product.id_customization}{else}0{/if}"
            aria-label="{l s='Remove %productName% from cart' sprintf=['%productName%' => $product.name] d='Shop.Theme.Checkout'}"
            title="{l s='Remove from cart' d='Shop.Theme.Checkout'}"
          >
           
          </button>
        {/if}
  </div>

  {* MAIN CONTENT *}
  <div style="display: flex; width: 100%; gap: 1rem; flex: 1; align-items: flex-start; margin-left: 2rem;">
    
    {* PRODUCT IMAGE *}
    <div style="flex-shrink: 0;">
      <a href="{$product.url}" style="display: block; text-decoration: none;">
        <div style="position: relative; height: 80px; width: 80px;">
          {if $product.default_image}
            <img data-testid="product-row-image" alt="{$product.name|escape:'quotes'}" loading="lazy" style="object-fit: contain; object-position: center; height: 100%; width: 100%; background-color: #f7fafc; border-radius: 4px;" src="{$product.default_image.bySize.cart_default.url}">
          {else}
            <img data-testid="product-row-image" alt="" loading="lazy" style="object-fit: contain; object-position: center; height: 100%; width: 100%; background-color: #f7fafc; border-radius: 4px;" src="{$urls.no_picture_image.bySize.cart_default.url}">
          {/if}
        </div>
      </a>
    </div>

    {* PRODUCT INFO *}
    <div style="flex: 1; min-width: 0;">
      <a href="{$product.url}" style="text-decoration: none; color: inherit;">
        <p data-testid="product-row-title" style="font-size: 0.95rem; font-weight: 600; color: #001489; margin: 0 0 0.5rem 0; line-height: 1.3;">
          {$product.name}
        </p>
      </a>
      
      {* ATTRIBUTES *}
      {if isset($product.attributes) && count($product.attributes) > 0}
        <p data-testid="product-row-description" style="font-size: 0.85rem; font-weight: normal; color: #718096; margin: 0 0 0.75rem 0; line-height: 1.3;">
          {foreach from=$product.attributes key="attribute" item="value"}
            {if !$smarty.foreach.default.first} | {/if}{$value}
          {/foreach}
        </p>
      {/if}

      {* PRICE *}
      <div style="font-weight: 700; color: #001489; font-size: 1rem;">
        {if $product.price}
          <span data-testid="product-row-price-description" style="font-size: 0.75rem; color: #718096; font-weight: normal; display: block; margin-top: 0.25rem;">
            {$product.price}/szt.
          </span>
        {/if}
        {$product.price} 
      </div>
    </div>
  </div>

  {* QUANTITY STEPPER - Bottom Right *}
  <div style="display: flex; width: 100%; justify-content: flex-end; padding-top: 0; flex-basis: 100%; margin-left: 2rem; position: absolute; bottom: 1rem; right: 0;">
    {if !empty($product.is_gift)}
      <span style="padding: 0 0.5rem; font-weight: 600; color: #718096; min-width: 3rem; text-align: center;">{$product.quantity}</span>
    {else}
      <div data-testid="quantity-stepper" style="display: flex; height: 2rem; align-items: center; border-radius: 9999px; border: 1px solid #e5e7eb; background-color: transparent; padding: 0; gap: 0;" data-product-id="{$product.id_product}" data-attribute-id="{$product.id_product_attribute}" data-delete-url="{$product.remove_from_cart_url}">
        
        <button data-testid="quantity-stepper-decrement" style="height: 2rem; width: 2.5rem; display: flex; align-items: center; justify-content: center; background: none; border: none; cursor: pointer; transition: all var(--transition-duration) var(--transition-timing); color: #505862;" data-down-url="{$product.down_quantity_url}" aria-label="{l s='Decrease quantity for %productName%' sprintf=['%productName%' => $product.name] d='Shop.Theme.Checkout'}">
          <svg aria-hidden="true" data-testid="RemoveMinus" style="margin: 0 auto; width: 20px; height: 20px;" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24">
            <path fill="currentColor" d="M18 13H6a1 1 0 1 1 0-2h12a1 1 0 1 1 0 2"></path>
          </svg>
        </button>

        <div class="js-cart-line-product-quantity" style="font-size: 0.95rem; width: 3rem; text-align: center; font-weight: 600;" data-up-url="{$product.up_quantity_url}" data-down-url="{$product.down_quantity_url}" data-update-url="{$product.update_quantity_url}" name="product-quantity-spin">
          {$product.quantity}
        </div>

        <button style="height: 2rem; width: 2.5rem; display: flex; align-items: center; justify-content: center; background: none; border: none; cursor: pointer; transition: all var(--transition-duration) var(--transition-timing); color: #505862;" data-testid="quantity-stepper-increment" data-up-url="{$product.up_quantity_url}" aria-label="{l s='Increase quantity for %productName%' sprintf=['%productName%' => $product.name] d='Shop.Theme.Checkout'}">
          <svg aria-hidden="true" data-testid="AddPlus" style="margin: 0 auto; width: 20px; height: 20px;" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24">
            <path fill="currentColor" d="M12 19a1 1 0 0 1-1-1v-5H6a1 1 0 1 1 0-2h5V6a1 1 0 1 1 2 0v5h5a1 1 0 1 1 0 2h-5v5a1 1 0 0 1-1 1"></path>
          </svg>
        </button>
      </div>
    {/if}
  </div>

  {* CUSTOMIZATIONS MODAL *}
  {if is_array($product.customizations) && $product.customizations|count}
    {block name='cart_detailed_product_line_customization'}
      {foreach from=$product.customizations item="customization"}
        <div class="modal fade customization-modal" id="product-customizations-modal-{$customization.id_customization}" tabindex="-1" role="dialog" aria-hidden="true">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="{l s='Close' d='Shop.Theme.Global'}">
                  <span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title">{l s='Product customization' d='Shop.Theme.Catalog'}</h4>
              </div>
              <div class="modal-body">
                {foreach from=$customization.fields item="field"}
                  <div style="display: flex; flex-direction: row; gap: 1rem; margin-bottom: 1rem;">
                    <div style="min-width: 8rem; font-weight: 600;">
                      {$field.label}
                    </div>
                    <div>
                      {if $field.type == 'text'}
                        {if (int)$field.id_module}
                          {$field.text nofilter}
                        {else}
                          {$field.text}
                        {/if}
                      {elseif $field.type == 'image'}
                        <img src="{$field.image.small.url}" loading="lazy" style="max-width: 200px;">
                      {/if}
                    </div>
                  </div>
                {/foreach}
              </div>
            </div>
          </div>
        </div>
      {/foreach}
    {/block}
  {/if}

</div>
