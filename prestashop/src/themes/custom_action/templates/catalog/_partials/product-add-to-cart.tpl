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
<div class="product-add-to-cart js-product-add-to-cart">
  {if !$configuration.is_catalog}

    {block name='product_quantity'}
      <div class="product-quantity clearfix flex gap-2 items-center">
        <span class="control-label" style="font-size: 1.25rem; font-weight: 600;">{l s='Quantity' d='Shop.Theme.Catalog'}</span>
        <div class="qty">
          <input
            type="number"
            name="qty"
            id="quantity_wanted"
            inputmode="numeric"
            pattern="[0-9]*"
            {if $product.quantity_wanted}
              value="{$product.quantity_wanted}"
              min="{$product.minimal_quantity}"
            {else}
              value="1"
              min="1"
            {/if}
            class="input-group"
            aria-label="{l s='Quantity' d='Shop.Theme.Actions'}"
          >
        </div>

        <div class="add flex-1">
          <button
            class="relative box-border flex max-w-full items-center justify-center gap-1 rounded-full text-base font-medium py-2.5 px-5 bg-orange-500 text-neutral-0 hover:bg-orange-700 active:bg-orange-900 focus:bg-orange-700 focus:outline focus:outline-2 focus:outline-dark-blue-500 focus:outline-offset-2 disabled:bg-neutral-150 disabled:text-neutral-700 disabled:outline disabled:outline-1 disabled:outline-neutral"
            data-button-action="add-to-cart"
            data-testid='add-to-cart'
            type="submit"
            {if !$product.add_to_cart_url}
              disabled
            {/if}
          >
            <span class="shrink-0" style="display:inline-block;width:24px;height:24px">
              <svg aria-hidden="true" data-testid="Heart01" class="shrink-0" xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24"><path d="M12 21a1 1 0 0 1-.486-.126C11.126 20.658 2 15.514 2 9c0-3.665 2.218-5.425 4.293-5.849 2.171-.44 4.328.402 5.707 2.113 1.38-1.712 3.537-2.552 5.707-2.113C19.782 3.575 22 5.335 22 9.001c0 6.513-9.126 11.657-9.515 11.873A1 1 0 0 1 12 21z"></path></svg>
            </span>
            <span class="truncate px-1">{l s='Add to cart' d='Shop.Theme.Actions'}</span>
          </button>
        </div>

        {hook h='displayProductActions' product=$product}
      </div>
    {/block}

    {block name='product_availability'}
      <span id="product-availability" class="js-product-availability flex items-center text-sm font-medium text-dark-blue-500">
        {if $product.show_availability && $product.availability_message}
          {if $product.availability == 'available'}
            <span class="text-dark-blue-500">{$product.availability_message}</span>
          {elseif $product.availability == 'last_remaining_items'}
            <span class="text-dark-blue-600 text-lg font-semibold">{$product.availability_message}</span>
          {else}
            <span class="text-dark-blue-700 text-lg font-bold">{$product.availability_message}</span>
          {/if}
        {/if}
      </span>
    {/block}

    {block name='product_minimal_quantity'}
      <p class="product-minimal-quantity js-product-minimal-quantity">
        {if $product.minimal_quantity > 1}
          {l
          s='The minimum purchase order quantity for the product is %quantity%.'
          d='Shop.Theme.Checkout'
          sprintf=['%quantity%' => $product.minimal_quantity]
          }
        {/if}
      </p>
    {/block}
  {/if}
</div>