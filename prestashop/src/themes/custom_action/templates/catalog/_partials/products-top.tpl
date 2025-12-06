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
<div id="js-product-list-top" class="flex w-full items-center justify-between gap-3 px-4 pb-6 sm:px-0 md:py-5">
  {* Category name and product count *}
  <div>
    <h2 class="text-2xl font-bold text-dark-blue-500" data-testid="grid-title">{$listing.label}</h2>
    <p class="text-base text-neutral-700" data-testid="product-grid-number-of-items">
      {if $listing.pagination.total_items > 1}
        {$listing.pagination.total_items} {l s='products' d='Shop.Theme.Catalog'}
      {elseif $listing.pagination.total_items == 1}
        1 {l s='product' d='Shop.Theme.Catalog'}
      {else}
        0 {l s='products' d='Shop.Theme.Catalog'}
      {/if}
    </p>
  </div>
  
  {* Sorting and mobile filters *}
  <div class="flex items-center justify-between gap-4 ml-auto">
    {* Mobile filters button *}
    {if !empty($listing.rendered_facets)}
      <div class="lg:hidden">
        <button id="search_filter_toggler" class="btn-base group btn-tertiary w-fit flex items-center gap-2 js-search-toggler" type="button" data-testid="mobile-filters-button">
          <svg aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="none" viewBox="0 0 24 24">
            <path fill="currentColor" d="M6 21a1 1 0 0 1-1-1v-1H3a1 1 0 1 1 0-2h2v-1a1 1 0 1 1 2 0v4a1 1 0 0 1-1 1m15-2H10a1 1 0 1 1 0-2h11a1 1 0 1 1 0 2m-5-4a1 1 0 0 1-1-1v-1H3a1 1 0 1 1 0-2h12v-1a1 1 0 1 1 2 0v4a1 1 0 0 1-1 1m5-2h-1a1 1 0 1 1 0-2h1a1 1 0 1 1 0 2M10 9a1 1 0 0 1-1-1V7H3a1 1 0 1 1 0-2h6V4a1 1 0 1 1 2 0v4a1 1 0 0 1-1 1m11-2h-7a1 1 0 1 1 0-2h7a1 1 0 1 1 0 2"></path>
          </svg>
          <span>{l s='Filter' d='Shop.Theme.Actions'}</span>
        </button>
      </div>
    {/if}
    
    {* Desktop sorting *}
    <div class="hidden lg:block" data-testid="grid-sorting-options-desktop">
      {block name='sort_by'}
        {include file='catalog/_partials/sort-orders.tpl' sort_orders=$listing.sort_orders}
      {/block}
    </div>
  </div>
</div>
