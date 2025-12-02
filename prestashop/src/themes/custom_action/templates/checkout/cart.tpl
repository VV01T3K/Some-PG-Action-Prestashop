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
        <div style="display: flex; flex-direction: column; align-items: center;">
          <section style="width: 100%; max-width: 48rem;">

            <!-- cart products detailed -->
            <div style="padding: 0">
              <div style="margin-bottom: 1.5rem;">
                <h1 class="heading-2xl" style="color: #001489; margin-bottom: 0.5rem; padding: 0; font-size: 2rem; font-weight: 700;">{l s='Shopping Cart' d='Shop.Theme.Checkout'}</h1>
                <p class="text-body-normal" style="padding: 0; color: #1a202c; font-size: 0.95rem;">
                  {count($cart.products)} {if count($cart.products) == 1}{l s='Product' d='Shop.Theme.Checkout'}{else}{l s='Products' d='Shop.Theme.Checkout'}{/if}
                </p>
              </div>
              {block name='cart_overview'}
                {include file='checkout/_partials/cart-detailed.tpl' cart=$cart}
              {/block}
            </div>

            {block name='hook_shopping_cart_footer'}
              {hook h='displayShoppingCartFooter'}
            {/block}

          </section>
        </div>
      </div>
    </div>
  </section>

  {block name='cart_footer_section'}
    {include file='checkout/_partials/cart-footer.tpl' cart=$cart}
  {/block}

  {block name='recommended_products_section'}
    <section style="background-color: #ffffff; padding: 2rem 0;">
      <div style="display: flex; width: 100%; flex-direction: column; padding-left: 1rem; padding-right: 1rem;">
        <div style="margin-left: auto; margin-right: auto; width: 100%; max-width: 48rem;">
            <h2 style="font-size: 1rem; font-weight: 600; color:#001489; margin-bottom: 1rem; width: 100%; max-width: 48rem;">{l s='Polecane produkty' d='Shop.Theme.Checkout'}</h2>
          <div style="display: flex; flex-col: column; align-items: center;">
            
            <div style="width: 100%; max-width: 48rem;">
              {block name='featured_products_list'}
                {include file='checkout/_partials/featured-products-cart.tpl' products=$featured_products}
              {/block}
            </div>

          </div>
        </div>
      </div>
    </section>
  {/block}
{/block}
