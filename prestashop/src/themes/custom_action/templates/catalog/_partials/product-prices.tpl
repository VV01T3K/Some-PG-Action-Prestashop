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
{if $product.show_price}
  <div class="product-prices js-product-prices">
    {block name='product_price'}
      <div class="product-price {if $product.has_discount}has-discount{/if}">
        <div class="current-price">
          {* Action.com style price display *}
          <div class="mb-1 flex items-end align-baseline action-price-container" data-testid="product-card-price">
            {* Split price into whole and fractional parts *}
            {assign var="price_parts" value=','|explode:$product.price}
            {if isset($price_parts[0]) && isset($price_parts[1])}
              {* Extract numbers only from whole part *}
              {assign var="whole_part" value=$price_parts[0]|regex_replace:"/[^0-9]/":""}
              {* Extract first 2 digits from fractional part *}
              {assign var="fractional_part" value=$price_parts[1]|regex_replace:"/[^0-9]/":""|substr:0:2}
            {else}
              {* Fallback for prices without decimals *}
              {assign var="whole_part" value=$product.price|regex_replace:"/[^0-9]/":""}
              {assign var="fractional_part" value="00"}
            {/if}
            
            {* Price color - orange for discounted, blue for regular *}
            {assign var="price_color" value="text-dark-blue-500"}
            {if $product.has_discount}
              {assign var="price_color" value="text-orange-500"}
            {/if}
            
            {* Main price display *}
            <div class="flex items-end align-baseline {$price_color}">
              {* Whole number - large display *}
              <span data-testid="product-card-price-whole" 
                    class="flex items-baseline self-baseline text-[3.5rem] leading-[48px] font-bold tracking-[-1px] sm:text-[4.5rem] sm:leading-[56px] action-price-whole">
                {$whole_part}
              </span>
              
              {* Fractional part and unit price *}
              <span class="flex flex-col justify-around self-stretch action-price-fraction-container">
                <span data-testid="product-card-price-fractional" 
                      class="ml-[2px] text-[32px] leading-[28px] font-bold tracking-[-1.32px] sm:text-[42px] sm:leading-[28px] action-price-fractional">
                  {$fractional_part}
                </span>
                <span data-testid="product-card-price-description" 
                      class="ml-px flex self-end text-[14px] leading-[12px] text-neutral-700 sm:leading-none action-price-unit">
                  {$product.unit_price_full}
                </span>
              </span>
            </div>

            {* Discount badge - original price and percentage *}
            {if $product.has_discount}
              <span class="ml-1 flex flex-col items-start self-start text-neutral-700 action-discount-badge" data-testid="product-card-price-discount">
                <span class="flex" data-testid="product-card-price-original-amount">
                  <span class="text-center text-sm line-through">{$product.regular_price}</span>
                  <span class="pl-0.5 text-[9px]">*</span>
                </span>
                <span class="border border-neutral-700 px-1 text-xs" data-testid="product-card-price-discount-percentage">
                  {if $product.discount_type == 'percentage'}
                    -{$product.discount_percentage_absolute}
                  {else}
                    -{$product.discount_to_display}
                  {/if}
                </span>
              </span>
            {/if}
          </div>
        </div>
         {* Netto price display *}
          <div class="mt-2 flex justify-left">
            <span class="rounded-md bg-blue-50 border border-blue-200 px-2 py-1 text-sm font-medium text-blue-800 shadow-sm">
              {$product.price_tax_exc|floatval|number_format:2:",":""} zł netto
            </span>
          </div>
        {block name='product_unit_price'}
          {* Unit price now displayed in the main price container *}
        {/block}
      </div>
    {/block}

    {block name='product_without_taxes'}
      {if $priceDisplay == 2}
        <p class="product-without-taxes">{l s='%price% tax excl.' d='Shop.Theme.Catalog' sprintf=['%price%' => $product.price_tax_exc]}</p>
      {/if}
    {/block}

    {* {block name='product_pack_price'}
      {if $displayPackPrice}
        <p class="product-pack-price"><span>{l s='Instead of %price%' d='Shop.Theme.Catalog' sprintf=['%price%' => $noPackPrice]}</span></p>
      {/if}
    {/block} *}

    {block name='product_ecotax'}
      {if $product.ecotax.amount > 0}
        <p class="price-ecotax">{l s='Including %amount% for ecotax' d='Shop.Theme.Catalog' sprintf=['%amount%' => $product.ecotax.value]}
          {if $product.has_discount}
            {l s='(not impacted by the discount)' d='Shop.Theme.Catalog'}
          {/if}
        </p>
      {/if}
    {/block}

    {hook h='displayProductPriceBlock' product=$product type="weight" hook_origin='product_sheet'}

    {if $product.is_virtual == 0}
      {if $product.additional_delivery_times == 1}
        {if $product.delivery_information}
          <span class="delivery-information">{$product.delivery_information}</span>
        {/if}
      {elseif $product.additional_delivery_times == 2}
        {if $product.quantity > 0}
          <span class="delivery-information">{$product.delivery_in_stock}</span>
        {elseif $product.quantity <= 0 && $product.add_to_cart_url}
          <span class="delivery-information">{$product.delivery_out_stock}</span>
        {/if}
      {/if}
    {/if}
  </div>
{/if}
