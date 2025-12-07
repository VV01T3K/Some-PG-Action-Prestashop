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
 * @author    PrestaShop SA <contact@prestashop.com>
 * @copyright Since 2007 PrestaShop SA and Contributors
 * @license   https://opensource.org/licenses/AFL-3.0 Academic Free License 3.0 (AFL-3.0)
 *}
<section id="js-active-search-filters" class="{if $activeFilters|count}mb-4{else}hidden{/if}">
  {if $activeFilters|count}
    <div class="flex flex-row flex-wrap gap-2 items-center">
      {foreach from=$activeFilters item="filter"}
        {block name='active_filters_item'}
          <a href="{$filter.nextEncodedFacetsURL}" 
             class="inline-flex items-center gap-1.5 px-3 py-1.5 bg-neutral-50 hover:bg-neutral-150 rounded-full text-sm text-neutral-900 transition-colors js-search-link"
             rel="nofollow">
            <span class="text-neutral-500">{$filter.facetLabel}:</span>
            <span>{$filter.label}</span>
            <svg class="w-4 h-4 text-neutral-500" fill="none" stroke="currentColor" viewBox="0 0 24 24">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12"></path>
            </svg>
          </a>
        {/block}
      {/foreach}
      
      <button data-search-url="{$clear_all_link}" 
              class="inline-flex items-center gap-1 px-3 py-1.5 text-sm text-dark-blue-500 hover:underline js-search-filters-clear-all">
        {l s='Clear all' d='Shop.Theme.Actions'}
      </button>
    </div>
  {/if}
</section>
