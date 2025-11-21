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
{extends file=$layout}


{block name='content'}
  <section id="main" style="background-color: #ffffff; padding: 2rem 0;">
    <!-- Centered container matching Action.com structure -->
    <div style="display: flex; width: 100%; flex-direction: column; padding-left: 1rem; padding-right: 1rem;">
      <div style="margin-left: auto; margin-right: auto; width: 100%; max-width: 48rem;">
        <div style="display: flex; flex-direction: column; gap: 2rem;">
          
          <!-- Checkout Process -->
          <section style="width: 100%;">
            {block name='checkout_process'}
              {render file='checkout/checkout-process.tpl' ui=$checkout_process}
            {/block}
          </section>

          <!-- Cart Summary -->
          <section style="background-color: #f9f9f9; padding: 1.5rem; border-radius: 0.5rem; border: 1px solid #e2e8f0;">
            <h3 style="color: #001489; font-size: 1.125rem; font-weight: 600; margin-bottom: 1rem;">Podsumowanie zamówienia</h3>
            {block name='cart_summary'}
              {include file='checkout/_partials/cart-summary.tpl' cart=$cart}
            {/block}
          </section>

          <!-- Reassurance Block -->
          {hook h='displayReassurance'}

        </div>
      </div>
    </div>
  </section>
{/block}
