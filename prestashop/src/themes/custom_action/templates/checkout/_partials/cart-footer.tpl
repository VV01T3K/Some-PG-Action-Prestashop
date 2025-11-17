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
{block name='cart_footer'}
  {if !empty($cart.products)}
   <div class="bg-neutral-0 fixed bottom-0 left-0 z-60 flex w-full flex-col items-center border border-y-neutral-50">
      <div class="flex w-full max-w-3xl items-center justify-between gap-2 p-4">
        <span id="cart-total-price" class="text-dark-blue-500 truncate text-xl font-bold md:text-2xl" data-cart-refresh-url="{url entity='cart' params=['ajax' => true, 'action' => 'refresh']}">{$cart.totals.total.value}</span>
        <div class="flex gap-2">
          <a class="relative box-border flex max-w-full items-center justify-center gap-1 rounded-full text-base font-medium py-2.5 px-5 bg-transparent text-dark-blue-500 border border-dark-blue-500 hover:bg-neutral-50 active:bg-neutral-100 focus:bg-neutral-50 focus:outline focus:outline-2 focus:outline-dark-blue-500 focus:outline-offset-2" href="{$urls.pages.index}" data-testid="add-products-button">
            <span class="truncate px-1">{l s='Add products' d='Shop.Theme.Actions'}</span>
          </a>
          <a class="relative box-border flex max-w-full items-center justify-center gap-1 rounded-full text-base font-medium py-2.5 px-5 bg-dark-blue-500 text-neutral-0 hover:bg-dark-blue-300 active:bg-dark-blue-700 focus:bg-dark-blue-300 focus:outline focus:outline-2 focus:outline-dark-blue-500 focus:outline-offset-2 disabled:bg-neutral-150 disabled:text-neutral-700 disabled:outline disabled:outline-1 disabled:outline-neutral" href="{$urls.pages.order}" data-testid="checkout-button">
            <span class="truncate px-1">{l s='Proceed to checkout' d='Shop.Theme.Actions'}</span>
          </a>
        </div>
      </div>
      <style>#footer {{ padding-bottom: 96px; }}</style>
    </div>
  {/if}
{/block}

