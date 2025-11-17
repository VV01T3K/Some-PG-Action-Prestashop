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

<style>
  :root, :host {
    --spacing: 0.25rem;
    --text-xs: 0.75rem;
    --text-xs--line-height: calc(1 / 0.75);
    --text-sm: 0.875rem;
    --text-sm--line-height: calc(1.25 / 0.875);
    --text-lg: 1.125rem;
    --text-lg--line-height: calc(1.75 / 1.125);
    --text-xl: 1.25rem;
    --text-xl--line-height: calc(1.75 / 1.25);
    --text-2xl: 1.5rem;
    --text-2xl--line-height: calc(2 / 1.5);
    --text-3xl: 1.875rem;
    --text-3xl--line-height: calc(2.25 / 1.875);
    --text-4xl: 2.25rem;
    --text-4xl--line-height: calc(2.5 / 2.25);
    --text-8xl: 6rem;
    --text-8xl--line-height: 1;
    --font-weight-semibold: 600;
    --leading-tight: 1.25;
    --color-gray-200: #e5e7eb;
    --color-gray-600: #4b5563;
    --color-primary: #001489;
    --color-primary-dark: #000b4a;
    --color-success: #07bc0c;
    --color-warning: #f1c40f;
    --color-error: #e74c3c;
    --ease-in: cubic-bezier(0.4, 0, 1, 1);
    --ease-out: cubic-bezier(0, 0, 0.2, 1);
    --ease-in-out: cubic-bezier(0.4, 0, 0.2, 1);
    --animate-pulse: pulse 2s cubic-bezier(0.4, 0, 0.6, 1) infinite;
    --blur-md: 12px;
    --aspect-video: 16 / 9;
    --default-transition-duration: 0.15s;
    --default-transition-timing-function: cubic-bezier(0.4, 0, 0.2, 1);
    --transition-duration: 0.15s;
    --transition-timing: cubic-bezier(0.4, 0, 0.2, 1);
    -webkit-text-size-adjust: 100%;
    tab-size: 4;
    line-height: 1.5;
    -webkit-tap-highlight-color: transparent;
  }

  *, ::backdrop, :after, :before {
    border-color: var(--color-gray-200, currentcolor);
    box-sizing: border-box;
    border: 0 solid;
    margin: 0;
    padding: 0;
  }

  body {
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    -webkit-tap-highlight-color: transparent;
    font-family: ubuntu, Cantarell, 'Helvetica Neue', sans-serif;
    font-size: 1rem;
    line-height: 1.5rem;
    color: #505862;
    font-weight: 400;
    overflow-x: hidden;
  }

  .cart-grid {
    padding-bottom: calc(var(--spacing) * 96);
  }

  .cart-grid-body,
  .cart-grid-right {
    transition: all var(--transition-duration) var(--transition-timing);
  }

  .cart-container,
  .cart-summary,
  .card {
    border: 0 solid var(--color-gray-200);
    background-color: #ffffff;
    border-radius: 0.375rem;
    box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1);
  }

  .cart-summary {
    position: sticky;
    top: 2rem;
  }

  .payment-methods-section {
    border-top: 1px solid var(--color-gray-200);
    margin-top: 1.5rem;
    padding-top: 1.5rem;
  }

  .payment-method-item {
    padding: 1rem 0;
    transition: background-color var(--transition-duration) var(--transition-timing);
  }

  .payment-method-item:hover {
    background-color: #f9fafb;
  }

  .custom-radio {
    display: flex;
    align-items: center;
    cursor: pointer;
  }

  .custom-radio input[type="radio"] {
    margin-right: 0.75rem;
    cursor: pointer;
  }

  .custom-radio span {
    cursor: pointer;
    font-weight: 500;
    color: var(--color-gray-600);
  }

  .payment-method-description {
    margin-top: 0.5rem;
    margin-left: 1.75rem;
    font-size: var(--text-sm);
    color: #9ca3af;
  }

  h1, h2, h3, h4, h5, h6 {
    font-weight: var(--font-weight-semibold);
    line-height: var(--leading-tight);
  }

  .h1 {
    font-size: 2rem;
    font-weight: 700;
  }

  .h3 {
    font-size: var(--text-xl);
  }

  .h4 {
    font-size: var(--text-lg);
  }

  .label {
    display: inline-flex;
    align-items: center;
    gap: 0.5rem;
    color: var(--color-primary);
    text-decoration: none;
    font-weight: 500;
    transition: color var(--transition-duration) var(--transition-timing);
  }

  .label:hover {
    color: var(--color-primary-dark);
  }

  .separator {
    border: none;
    border-top: 1px solid var(--color-gray-200);
    margin: 1.5rem 0;
  }

  .material-icons {
    font-family: 'Material Icons';
    font-weight: normal;
    font-style: normal;
    font-size: 24px;
    display: inline-block;
    line-height: 1;
    text-transform: none;
    letter-spacing: normal;
    word-wrap: normal;
    white-space: nowrap;
    direction: ltr;
  }
</style>

{extends file=$layout}

{block name='content'}

  <section id="main" style="background-color: #ffffff; padding: 2rem 0;">
    <!-- Centered container matching Action.com structure -->
    <div style="display: flex; width: 100%; flex-direction: column; padding-left: 1rem; padding-right: 1rem;">
      <div style="margin-left: auto; margin-right: auto; width: 100%; max-width: 48rem;">
        <div style="display: flex; flex-direction: column; align-items: center;">
          <section style="width: 100%; max-width: 48rem;">

            <!-- cart products detailed -->
            <div style="padding: 0; margin-bottom: 6rem;">
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

  {* RECOMMENDED PRODUCTS SECTION — Action.com Style *}
  {block name='recommended_products_section'}
    <section style="background-color: #ffffff; padding: 2rem 0;">
      <div style="display: flex; width: 100%; flex-direction: column; padding-left: 1rem; padding-right: 1rem;">
        <div style="margin-left: auto; margin-right: auto; width: 100%; max-width: 48rem;">
          <div style="display: flex; flex-col: column; align-items: center;">
            
            {* HEADER *}
            <div style="width: 100%; max-width: 48rem; margin-bottom: 1.5rem;">
              <h2 style="font-size: 1rem; font-weight: 600; color: #1a202c; margin-bottom: 1rem;">{l s='Polecane produkty' d='Shop.Theme.Checkout'}</h2>
            </div>

            {* PRODUCT LIST — Horizontal rows like cart *}
            <div style="width: 100%; max-width: 48rem;">
              {hook h='displayRecommendedProducts'}
              
              {* Fallback content if no products loaded via hook *}
              <div style="display: flex; flex-direction: column; gap: 1rem;">
                {* Product Row Example 1 *}
                <div data-testid="product-row" data-content-king="product-row" style="display: flex; justify-content: space-between; gap: 0.5rem; padding: 1rem; background-color: #f7fafc; border-radius: 4px; align-items: flex-start;">
                  <div style="flex-shrink: 0;">
                    <div style="position: relative; height: 64px; width: 64px; background-color: #ffffff; border-radius: 4px;"></div>
                  </div>

                  <div style="display: flex; width: 100%; justify-content: space-between; align-items: flex-start; gap: 0.5rem;">
                    <div style="flex: 1; min-width: 0;">
                      <p style="font-size: 0.95rem; font-weight: 600; color: #001489; margin: 0 0 0.5rem 0; line-height: 1.3;"></p>
                      <p style="font-size: 0.85rem; font-weight: normal; color: #718096; margin: 0 0 0.75rem 0; line-height: 1.3;"></p>
                      <div style="font-weight: 700; color: #001489; font-size: 1rem;"></div>
                    </div>

                    <div style="display: flex; gap: 0.5rem; align-items: center; flex-shrink: 0;">
                      <button style="display: flex; height: 2.25rem; width: 2.25rem; align-items: center; justify-content: center; border-radius: 9999px; border: none; background-color: transparent; cursor: pointer; transition: all var(--transition-duration) var(--transition-timing); color: #001489; flex-shrink: 0;">
                        <svg aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                          <path fill="currentColor" d="M12 19a1 1 0 0 1-1-1v-5H6a1 1 0 1 1 0-2h5V6a1 1 0 1 1 2 0v5h5a1 1 0 1 1 0 2h-5v5a1 1 0 0 1-1 1"></path>
                        </svg>
                      </button>
                    </div>
                  </div>
                </div>
              </div>
            </div>

          </div>
        </div>
      </div>
    </section>
  {/block}
{/block}
