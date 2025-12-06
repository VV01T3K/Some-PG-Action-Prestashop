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
{if $displayedFacets|count}
  <section id="search_filters" class="js-search-filters" data-testid="grid-filters-desktop">
    <div class="flex flex-col gap-6">
      
      {* Active filters badges *}
      {block name='facets_clearall_button'}
        {if $activeFilters|count}
          <div class="flex flex-row flex-wrap gap-2">
            {foreach from=$activeFilters item="activeFilter"}
              <a href="{$activeFilter.nextEncodedFacetsURL}" 
                 class="inline-flex items-center gap-1 px-3 py-1 bg-neutral-50 hover:bg-neutral-150 rounded-full text-sm text-neutral-700 transition-colors js-search-link"
                 rel="nofollow">
                {$activeFilter.label}
                <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12"></path>
                </svg>
              </a>
            {/foreach}
            <button data-search-url="{$clear_all_link}" 
                    class="inline-flex items-center gap-1 px-3 py-1 text-sm text-dark-blue-500 hover:underline js-search-filters-clear-all">
              {l s='Clear all' d='Shop.Theme.Actions'}
            </button>
          </div>
        {/if}
      {/block}

      {* Filter groups *}
      {foreach from=$displayedFacets item="facet"}
        {assign var=_expand_id value=10|mt_rand:100000}
        {assign var=_collapse value=true}
        {foreach from=$facet.filters item="filter"}
          {if $filter.active}{assign var=_collapse value=false}{/if}
        {/foreach}

        <div role="group" 
             aria-labelledby="filter_group_{$_expand_id}" 
             data-testid="grid-filters-group" 
             data-type="{$facet.type}" 
             data-name="{$facet.label}"
             class="filter-group">
          
          {* Filter group title *}
          <h3 id="filter_group_{$_expand_id}" 
              class="text-base text-dark-blue-500 mb-4 font-bold" 
              data-testid="grid-filters-group-title">
            {$facet.label}
          </h3>

          {if in_array($facet.widgetType, ['radio', 'checkbox'])}
            {block name='facet_item_other'}
              <ul role="presentation" class="flex flex-col gap-3">
                {foreach from=$facet.filters key=filter_key item="filter"}
                  {if !$filter.displayed}
                    {continue}
                  {/if}

                  <li>
                    {if $facet.type == 'category'}
                      {* Category filter - direct link to category page *}
                      <a href="{$link->getCategoryLink($filter.value)|escape:'html':'UTF-8'}" 
                         class="text-sm text-neutral-900 hover:underline decoration-1 underline-offset-2">
                        {$filter.label}
                        {if $filter.magnitude and $show_quantities}
                          <span class="text-neutral-500">({$filter.magnitude})</span>
                        {/if}
                      </a>
                    {else}
                      {* Other filters - checkbox/radio with AJAX filtering *}
                      <label class="group flex items-center gap-2 cursor-pointer" 
                             for="facet_input_{$_expand_id}_{$filter_key}">
                        {* Checkbox/Radio *}
                        <span class="relative flex items-center justify-center h-5 w-5 rounded border border-neutral-300 bg-white
                                     {if $filter.active}bg-dark-blue-500 border-dark-blue-500{/if}">
                          {if isset($filter.properties.color)}
                            <span class="w-full h-full rounded" style="background-color:{$filter.properties.color}"></span>
                          {elseif isset($filter.properties.texture)}
                            <span class="w-full h-full rounded" style="background-image:url({$filter.properties.texture}); background-size: cover;"></span>
                          {else}
                            <input
                              id="facet_input_{$_expand_id}_{$filter_key}"
                              data-search-url="{$filter.nextEncodedFacetsURL}"
                              type="{if $facet.multipleSelectionAllowed}checkbox{else}radio{/if}"
                              {if !$facet.multipleSelectionAllowed}name="filter_{$facet.label}"{/if}
                              class="absolute opacity-0 w-full h-full cursor-pointer"
                              {if $filter.active}checked{/if}
                            >
                            {if $filter.active}
                              <svg class="w-3.5 h-3.5 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="3" d="M5 13l4 4L19 7"></path>
                              </svg>
                            {/if}
                          {/if}
                        </span>
                        
                        {* Label *}
                        <a href="{$filter.nextEncodedFacetsURL}"
                           class="text-sm text-neutral-900 group-hover:underline decoration-1 underline-offset-2 js-search-link"
                           rel="nofollow">
                          {$filter.label}
                          {if $filter.magnitude and $show_quantities}
                            <span class="text-neutral-500">({$filter.magnitude})</span>
                          {/if}
                        </a>
                      </label>
                    {/if}
                  </li>
                {/foreach}
              </ul>
            {/block}

          {elseif $facet.widgetType == 'dropdown'}
            {block name='facet_item_dropdown'}
              <div class="relative">
                <button type="button" 
                        class="flex items-center justify-between w-full px-4 py-2 text-sm text-neutral-700 bg-white border border-neutral-300 rounded-md hover:bg-neutral-50 focus:outline-none focus:ring-2 focus:ring-dark-blue-500"
                        data-toggle="dropdown"
                        aria-haspopup="true" 
                        aria-expanded="false">
                  {$active_found = false}
                  <span>
                    {foreach from=$facet.filters item="filter"}
                      {if $filter.active}
                        {$filter.label}
                        {if $filter.magnitude and $show_quantities}
                          ({$filter.magnitude})
                        {/if}
                        {$active_found = true}
                      {/if}
                    {/foreach}
                    {if !$active_found}
                      {l s='Select...' d='Shop.Theme.Global'}
                    {/if}
                  </span>
                  <svg class="w-4 h-4 ml-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7"></path>
                  </svg>
                </button>
                <div class="dropdown-menu absolute z-10 w-full mt-1 bg-white border border-neutral-300 rounded-md shadow-lg hidden">
                  {foreach from=$facet.filters item="filter"}
                    {if !$filter.active}
                      <a rel="nofollow"
                         href="{$filter.nextEncodedFacetsURL}"
                         class="block px-4 py-2 text-sm text-neutral-700 hover:bg-neutral-50 js-search-link">
                        {$filter.label}
                        {if $filter.magnitude and $show_quantities}
                          <span class="text-neutral-500">({$filter.magnitude})</span>
                        {/if}
                      </a>
                    {/if}
                  {/foreach}
                </div>
              </div>
            {/block}

          {elseif $facet.widgetType == 'slider'}
            {block name='facet_item_slider'}
              {foreach from=$facet.filters item="filter"}
                <ul id="facet_{$_expand_id}"
                  class="faceted-slider"
                  data-slider-min="{$facet.properties.min}"
                  data-slider-max="{$facet.properties.max}"
                  data-slider-id="{$_expand_id}"
                  data-slider-values="{$filter.value|@json_encode}"
                  data-slider-unit="{$facet.properties.unit}"
                  data-slider-label="{$facet.label}"
                  data-slider-specifications="{$facet.properties.specifications|@json_encode}"
                  data-slider-encoded-url="{$filter.nextEncodedFacetsURL}"
                >
                  <li class="py-2">
                    <p id="facet_label_{$_expand_id}" class="text-sm text-neutral-700 mb-2">
                      {$filter.label}
                    </p>
                    <div id="slider-range_{$_expand_id}"></div>
                  </li>
                </ul>
              {/foreach}
            {/block}
          {/if}
        </div>
      {/foreach}
    </div>
  </section>
{else}
  <div id="search_filters" class="hidden"></div>  
{/if}
