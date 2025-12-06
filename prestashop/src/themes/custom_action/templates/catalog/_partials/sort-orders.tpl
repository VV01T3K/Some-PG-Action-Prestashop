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

<div class="products-sort-order relative">
  <!-- Native select styled to look like the original button; options open only on click -->
  <div class="select-wrapper relative">
    <select
      id="_r_e7_"
      name="grid-sorting-options"
      aria-label="{l s='Sort by selection' d='Shop.Theme.Global'}"
      class="btn-unstyle bg-white box-border w-full p-2.5 text-dark-blue-500 outline-none border-none flex min-h-[48px] items-center rounded md:min-h-[56px] pr-12 cursor-pointer text-sm font-medium appearance-none"
      onchange="if (this.value) { window.location.href = this.value; }"
    >
      {foreach from=$listing.sort_orders item=sort_order}
        <option value="{$sort_order.url}" {if $sort_order.current}selected{/if}>{$sort_order.label}</option>
      {/foreach}
    </select>

    <div class="absolute top-3 right-4 pointer-events-none md:top-4">
      <svg aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
        <path fill="#001489" d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17"></path>
      </svg>
    </div>
  </div>
</div>


