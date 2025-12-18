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
{block name='head' append}
  <meta property="og:type" content="product">
  {if $product.cover}
    <meta property="og:image" content="{$product.cover.large.url}">
  {/if}

  {if $product.show_price}
    <meta property="product:pretax_price:amount" content="{$product.price_tax_exc}">
    <meta property="product:pretax_price:currency" content="{$currency.iso_code}">
    <meta property="product:price:amount" content="{$product.price_amount}">
    <meta property="product:price:currency" content="{$currency.iso_code}">
  {/if}
  {if isset($product.weight) && ($product.weight != 0)}
    <meta property="product:weight:value" content="{$product.weight}">
    <meta property="product:weight:units" content="{$product.weight_unit}">
  {/if}
  <link rel="stylesheet" href="{$urls.theme_assets}css/product.css">
{/block}

{block name='head_microdata_special'}
  {include file='_partials/microdata/product-jsonld.tpl'}
{/block}

{block name='content'}

  <section id="main" class="action-product">
    <meta property="og:url" content="{$product.url}">

    {* Breadcrumb navigation *}
    {block name='breadcrumb'}
      {include file='_partials/breadcrumb.tpl'}
    {/block}

    <div class="mx-auto w-full max-w-7xl">
      {block name='page_content_container'}
        <section class="page-content" id="content">
          {block name='page_content'}
<div class="relative md:grid md:grid-cols-2 md:gap-8">
              {* Left column: Product images gallery *}
              <div class="ap-media-col">
                {include file='catalog/_partials/product-flags.tpl'}
                <div class="ap-media">
                  {block name='product_cover_thumbnails'}
                    {include file='catalog/_partials/product-cover-thumbnails.tpl'}
                  {/block}
                </div>
              </div>

              {* Right column: Product details *}
              <aside class="">
                {* Product Title *}
                {block name='page_header_container'}
                  {block name='page_header'}
                    <h1 class="heading-2xl mb-1">{block name='page_title'}{$product.name}{/block}</h1>
                    {* Quick product features *}
                    {if isset($product.description_short) && $product.description_short}
                      <p class="mb-8"
                        data-testid="product-card-description">
                        {$product.description_short|strip_tags:'UTF-8'|truncate:80:'...'}
                      </p>
                    {elseif isset($product.main_variants) && $product.main_variants}
<p class="mb-8"
data-testid="product-card-description">
                        {l s='Different variants' d='Shop.Theme.Catalog'}
                      </p>
                    {else}
<p class="mb-8"data-testid="product-card-description">
                        &nbsp;
                      </p>
{/if}
                  {/block}
                {/block}

                {* Price section *}
                {block name='product_prices'}
                  <div class="ap-price-display">
                    {include file='catalog/_partials/product-prices.tpl'}
                  </div>
                {/block}

                {* Product actions form *}
                <div class="ap-actions product-actions js-product-actions">
                  {block name='product_buy'}
                    <form action="{$urls.pages.cart}" method="post" id="add-to-cart-or-refresh" class="ap-form">
                      <input type="hidden" name="token" value="{$static_token}">
                      <input type="hidden" name="id_product" value="{$product.id}" id="product_page_product_id">
                      <input type="hidden" name="id_customization" value="{$product.id_customization}"
                        id="product_customization_id" class="js-product-customization-id">

                      {block name='product_variants'}
                        <div class="ap-variants">
                          {include file='catalog/_partials/product-variants.tpl'}
                        </div>
                      {/block}

                      {* {block name='product_pack'}
                        {if $packItems}
                          <section class="product-pack">
                            <p class="h4">{l s='This pack contains' d='Shop.Theme.Catalog'}</p>
                            {foreach from=$packItems item="product_pack"}
                              {block name='product_miniature'}
                                {include file='catalog/_partials/miniatures/pack-product.tpl' product=$product_pack showPackProductsPrice=$product.show_price}
                              {/block}
                            {/foreach}
                          </section>
                        {/if}
                      {/block} *}

                      {block name='product_discounts'}
                        <div class="ap-discounts">
                          {include file='catalog/_partials/product-discounts.tpl'}
                        </div>
                      {/block}

                      {block name='product_add_to_cart'}
                        <div class="ap-add-to-cart">
                          {include file='catalog/_partials/product-add-to-cart.tpl'}
                        </div>
                      {/block}

                      {block name='product_refresh'}{/block}
                    </form>
                  {/block}
                </div>

                 {* Store Finder Section - Action.com style *}
                <div>
                  <section class="border-neutral-150 flex flex-col border p-4 mt-4 action-storefinder" aria-label="Sklepy" data-testid="storefinder">
                    <div data-testid="storefinder-location" class="flex w-full flex-col items-stretch gap-2 lg:flex-row">
                      <a href="https://shop.pg.wojtecs.com/nasze-sklepy" class="flex grow flex-col gap-1 text-left items-start action-store-info">
                        {* Action Logo SVG *}
                        <svg aria-hidden="true" data-testid="ActionLogo" class="mb-2" xmlns="http://www.w3.org/2000/svg" width="85" height="16" fill="none" viewBox="0 0 484 92">
                          <path fill="#001489" d="M204.006 91.715c5.895 0 11.37-4.325 12.229-9.662l3.306-20.483c.116-.719-.384-1.306-1.112-1.306h-18.971c-.727 0-1.418.587-1.534 1.305l-1.529 9.443c-.276 1.72-2.041 3.114-3.942 3.114h-14.202c-1.901 0-3.216-1.394-2.94-3.114l8.023-49.831c.276-1.72 2.042-3.115 3.943-3.115h14.203c1.899 0 3.215 1.394 2.938 3.115l-1.508 9.44c-.115.719.387 1.307 1.114 1.307h18.972c.727 0 1.417-.588 1.532-1.306l3.285-20.483c.859-5.336-3.224-9.663-9.118-9.663h-42.971c-5.896 0-11.372 4.327-12.23 9.663l-11.577 71.915c-.859 5.336 3.223 9.661 9.118 9.661zm89.283-70.98c-.116.717-.806 1.306-1.534 1.306h-16.392c-.728 0-1.418.587-1.534 1.305l-10.79 67.063c-.116.719-.806 1.307-1.534 1.307h-18.97c-.727 0-1.228-.588-1.113-1.307l10.79-67.063c.116-.718-.384-1.305-1.112-1.305h-15.707c-.728 0-1.228-.589-1.112-1.307l3.057-18.952c.116-.718.806-1.306 1.533-1.306h56.364c.727 0 1.228.588 1.112 1.306zm190.335-18.95c.116-.718-.384-1.306-1.112-1.306H463.54c-.727 0-1.417.588-1.533 1.306l-6.723 41.763c-.115.718-.49.78-.832.139l-22.409-42.04c-.342-.642-1.217-1.168-1.945-1.168h-12.043c-.728 0-1.418.588-1.533 1.306L402.254 90.41c-.116.718.385 1.305 1.113 1.305h18.973c.728 0 1.418-.587 1.533-1.305l6.721-41.763c.116-.719.49-.781.833-.14l22.408 42.041c.342.642 1.218 1.167 1.945 1.167h12.045c.728 0 1.417-.587 1.533-1.305zM349.621 70.238c-.276 1.702 1.039 3.081 2.941 3.081h14.203c1.9 0 3.665-1.379 3.942-3.08l8.022-49.285c.276-1.702-1.039-3.081-2.939-3.081h-14.203c-1.901 0-3.665 1.38-3.943 3.081zm.413-69.762h42.972c5.895 0 9.976 4.28 9.117 9.557L390.546 81.16c-.859 5.278-6.334 9.556-12.228 9.556h-42.973c-5.895 0-9.977-4.278-9.117-9.556l11.578-71.127c.858-5.277 6.333-9.557 12.228-9.557m-43.978.003c-.728 0-1.418.588-1.534 1.306L290.255 90.41c-.116.719.385 1.306 1.113 1.306h18.97c.727 0 1.418-.587 1.533-1.306l14.268-88.624c.115-.718-.385-1.306-1.113-1.306zM127.077 21.181l-3.543 22.008c-.116.718-.806 1.306-1.533 1.306h-18.439c-.727 0-1.134-.564-.902-1.254l7.412-22.06c.577-1.72 2.587-3.115 4.487-3.115h9.58c1.899 0 3.215 1.394 2.938 3.115M92.163 10.139 65.181 90.461c-.232.69.174 1.254.902 1.254h18.97c.728 0 1.513-.564 1.745-1.254l9.11-27.121c.233-.69 1.017-1.255 1.745-1.255h21.516c.728 0 1.229.588 1.113 1.306l-4.35 27.019c-.115.718.386 1.305 1.113 1.305h18.971c.728 0 1.418-.587 1.534-1.305l12.922-80.27c.859-5.337-3.223-9.664-9.118-9.664h-35.27c-5.896 0-12.128 4.327-13.921 9.663"></path>
                          <path fill="#62B5E5" d="M47.236 1.723C47.468 1.033 48.253.47 48.98.47h6.036c.728 0 1.134.565.902 1.254L26.11 90.454c-.232.69-1.016 1.254-1.744 1.254H18.33c-.728 0-1.134-.564-.902-1.254zm21.704 0c.23-.69 1.016-1.253 1.744-1.253H81.06c.727 0 1.133.565.901 1.254l-29.806 88.73c-.232.69-1.017 1.254-1.745 1.254H40.033c-.727 0-1.133-.564-.901-1.254zm-34.726 0c.232-.69-.174-1.254-.9-1.254h-1.857c-.9 0-1.295.462-1.584 1.254L.065 90.454c-.231.69.174 1.254.902 1.254h1.86c.877 0 1.294-.408 1.58-1.254z"></path>
                        </svg>
                        <p>{l s='Zobacz godziny otwarcia Twojego sklepu Action' d='Shop.Theme.Catalog'}</p>
                      </a>
                      <a href="https://shop.pg.wojtecs.com/nasze-sklepy" class="btn-base group btn-link w-fit action-find-store" data-testid="storefinder-search-btn">
                        <span class="btn-content-label btn-content-link">{l s='Znajdź sklep' d='Shop.Theme.Actions'}</span>
                      </a>
                    </div>
                    
                    {* Aisle information *}
                    {if isset($product.category) && $product.category}
                      <div data-testid="aisle-name" class="border-t-neutral-150 mt-4 border-t pt-2">
                        <dl class="flex items-center gap-1">
                          <span style="display: block; width: 16px; height: 16px;">
                            <svg aria-hidden="true" data-testid="ShoppingCart01" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="none" viewBox="0 0 24 24">
                              <path fill="#505862" d="M17 22a3.003 3.003 0 0 1-2.829-4H10.83A3.003 3.003 0 0 1 8 22c-1.654 0-3-1.346-3-3 0-1.234.749-2.296 1.816-2.757l-.032-.143-.03-.128L4.268 4.354c-.04-.182-.06-.306-.099-.399C4.171 4 3.937 4 3.71 4H3a1 1 0 0 1 0-2h.71c.537 0 .892 0 1.269.159.336.147.623.377.837.67.236.333.306.652.404 1.095L6.45 5h12.42c.858 0 1.376 0 1.859.302.432.268.75.701.87 1.187.153.511.001 1.036-.23 1.83l-1.379 4.797c-.14.494-.235.822-.48 1.128-.23.273-.496.473-.788.601-.397.155-.73.155-1.233.155H8.592l.143.661c.039.173.058.292.096.383C8.829 16 9.063 16 9.29 16h7.712A3.003 3.003 0 0 1 20 19c0 1.654-1.346 3-3 3m0-4c-.551 0-1 .449-1 1s.449 1 1 1 1-.449 1-1-.449-1-1-1m-9 0c-.551 0-1 .449-1 1s.449 1 1 1 1-.449 1-1-.449-1-1-1m.164-5h9.326c.215 0 .438 0 .502-.013-.019-.053.013-.198.077-.422l1.38-4.801c.08-.28.17-.587.199-.748A11 11 0 0 0 18.87 7H6.88zm11.573-5.97h.01z"></path>
                            </svg>
                          </span>
                          <div class="flex w-full items-center gap-2 max-md:justify-between">
                            <dt class="text-body-normal-medium font-normal text-neutral-700">{l s='Alejka:' d='Shop.Theme.Catalog'}</dt>
                            <dd class="bg-info-50 text-info-900 text-label-xs-bold rounded p-1.5 align-middle uppercase">{$product.category}</dd>
                          </div>
                        </dl>
                      </div>
                    {/if}
                  </section>

                  {* Product Description - Action.com style *}
                  {block name='product_description_short'}
                    {if $product.description}
                      <section class="mt-8" aria-labelledby="product-description-title">
                        <h2 id="product-description-title" class="heading-lg" data-testid="product-description-title">{l s='Description' d='Shop.Theme.Catalog'}</h2>
                        <div data-content-king="product-description" class="richText mt-2" data-testid="product-description">
                          {$product.description nofilter}
                        </div>
                      </section>
                    {/if}
                  {/block}
                </div>

                {*{if $product.is_customizable && count($product.customizations.fields)}
                  {block name='product_customization'}
                    {include file="catalog/_partials/product-customization.tpl" customizations=$product.customizations}
                  {/block}
                {/if} chyba nie potrzebne jakby co to odkomentowac *}

              </aside>
            </div>

            {* Product characteristics - full width section below *}
            {block name='product_tabs'}
                {block name='product_details'}
                  {include file='catalog/_partials/product-details.tpl'}
                {/block}
            {/block}

          {/block}
        </section>
        {if isset($product_categories) && $product_categories|count > 0}
          <section aria-labelledby="related-categories-title" class="mt-8 mb-8">
            <h2 id="related-categories-title" class="heading-lg mb-2" data-testid="related-categories">
              {l s='Powiązane kategorie' d='Shop.Theme.Catalog'}</h2>
            <ul class="no-scrollbar -mx-4 flex flex-row gap-2 overflow-auto px-4 whitespace-nowrap lg:flex-wrap">
              {foreach from=$product_categories item=cat}
                <li class="group border-orange bg-neutral-0 hover:bg-orange h-fit border px-3 py-2">
                  <a href="{$cat.link|escape:'html':'UTF-8'}" data-testid="links-list-link">
                    <p class="text-body-small group-hover:text-neutral-0 text-neutral-900">{$cat.name|escape:'html':'UTF-8'}
                    </p>
                  </a>
                </li>
              {/foreach}
            </ul>
          </section>
{/if}
      {/block}
    </div>

    {* Podobne produkty - Similar Products *}
    {block name='product_accessories'}
      {if $accessories}
        <section class="mt-12 mb-12" aria-labelledby="similar-products-title">
          <div class="mx-auto w-full max-w-7xl px-4">
            <h2 id="similar-products-title" class="heading-xl mb-6" style="color: #001489; font-size: 28px; font-weight: 700;">{l s='Podobne produkty' d='Shop.Theme.Catalog'}</h2>
            
            <div class="grid grid-cols-2 md:grid-cols-3 lg:grid-cols-4 xl:grid-cols-5 gap-4">
              {foreach from=$accessories item="product_accessory" key="position"}
                {block name='product_miniature'}
                  {include file='catalog/_partials/miniatures/product.tpl' product=$product_accessory position=$position}
                {/block}
              {/foreach}
            </div>
          </div>
        </section>
      {/if}
    {/block}

    {* {block name='product_footer'}
      {hook h='displayFooterProduct' product=$product category=$category}
    {/block} *}

    {* {block name='product_images_modal'}
      {include file='catalog/_partials/product-images-modal.tpl'}
    {/block} *}

    {hook h='displayFeaturedProducts'}

  
    {block name='page_footer_container'}
      <footer class="page-footer">
        {block name='page_footer'}
          <!-- Footer content -->
        {/block}
      </footer>
    {/block}
  </section>

{/block}