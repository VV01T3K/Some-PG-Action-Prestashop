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
{extends file='customer/page.tpl'}

{block name='head' append}
  <link rel="stylesheet" href="{$urls.theme_assets}css/order-confirmation.css">
  <link rel="stylesheet" href="{$urls.theme_assets}css/order-detail.css">
{/block}

{block name='page_title'}
  {l s='Order details' d='Shop.Theme.Customeraccount'}
{/block}

{block name='page_content'}
  {assign var='currentStatus' value=$order.details.current_state|default:''}
  {assign var='historyFirst' value=$order.history|@reset}
  {if isset($historyFirst.ostate_name)}
    {assign var='currentStatus' value=$historyFirst.ostate_name}
  {/if}
  {block name='order_infos'}
    <section id="content-hook_order_confirmation" class="card order-detail-overview">
      <div class="card-block">
        <div class="order-detail-overview__header">
          <div>
            <h3 class="h1 card-title">
              {l s='Order %reference%' d='Shop.Theme.Customeraccount' sprintf=['%reference%' => $order.details.reference]}
            </h3>
            <p>
              {l
                s='Placed on %date%'
                d='Shop.Theme.Customeraccount'
                sprintf=['%date%' => $order.details.order_date]
              }
            </p>
          </div>
          {if $order.details.reorder_url}
            <a href="{$order.details.reorder_url}" class="btn btn-primary order-detail-reorder">
              {l s='Reorder' d='Shop.Theme.Actions'}
            </a>
          {/if}
        </div>

        <div class="order-detail-overview__grid">
          <div class="overview-item">
            <span class="label">{l s='Status' d='Shop.Theme.Customeraccount'}</span>
            <span class="value">{$currentStatus}</span>
          </div>
          <div class="overview-item">
            <span class="label">{l s='Payment method' d='Shop.Theme.Checkout'}</span>
            <span class="value">{$order.details.payment}</span>
          </div>
          {if !$order.details.is_virtual}
            <div class="overview-item">
              <span class="label">{l s='Carrier' d='Shop.Theme.Checkout'}</span>
              <span class="value">{$order.carrier.name}</span>
            </div>
          {/if}
          <div class="overview-item">
            <span class="label">{l s='Reference' d='Shop.Theme.Customeraccount'}</span>
            <span class="value">{$order.details.reference}</span>
          </div>
        </div>

        {if $order.details.invoice_url || $order.follow_up || $order.details.gift_message || $order.details.recyclable}
          <div class="order-detail-overview__notes">
            {if $order.details.invoice_url}
              <a class="order-detail-action" href="{$order.details.invoice_url}">
                {l s='Download your invoice as a PDF file.' d='Shop.Theme.Customeraccount'}
              </a>
            {/if}
            {if $order.follow_up}
              <a class="order-detail-action" href="{$order.follow_up}" target="_blank" rel="noopener">
                {l s='Track the delivery of your order' d='Shop.Theme.Customeraccount'}
              </a>
            {/if}
            {if $order.details.recyclable}
              <p>{l s='You have given permission to receive your order in recycled packaging.' d='Shop.Theme.Customeraccount'}</p>
            {/if}
            {if $order.details.gift_message}
              <p>
                <strong>{l s='Gift message' d='Shop.Theme.Customeraccount'}:</strong>
                {$order.details.gift_message nofilter}
              </p>
            {/if}
          </div>
        {/if}
      </div>
    </section>
  {/block}

  <section id="content" class="page-content page-order-confirmation card order-detail-products">
    <div class="card-block">
      <div class="row">
        {block name='order_items'}
          {include
            file='checkout/_partials/order-confirmation-table.tpl'
            products=$order.products
            subtotals=$order.subtotals
            totals=$order.totals
            labels=$order.labels
            add_product_link=true
          }
        {/block}

        {block name='order_details'}
          <div id="order-details" class="col-md-4 order-detail-summary">
            <h3 class="h3 card-title">{l s='Order details' d='Shop.Theme.Checkout'}</h3>
            <ul>
              <li>{l s='Order reference: %reference%' d='Shop.Theme.Checkout' sprintf=['%reference%' => $order.details.reference]}</li>
              <li>{l s='Status: %status%' d='Shop.Theme.Customeraccount' sprintf=['%status%' => $currentStatus]}</li>
              <li>{l s='Payment method: %method%' d='Shop.Theme.Checkout' sprintf=['%method%' => $order.details.payment]}</li>
              {if !$order.details.is_virtual}
                <li>
                  {l s='Shipping method: %method%' d='Shop.Theme.Checkout' sprintf=['%method%' => $order.carrier.name]}<br>
                  <em>{$order.carrier.delay}</em>
                </li>
              {/if}
              {if $order.follow_up}
                <li>
                  <a href="{$order.follow_up}" target="_blank" rel="noopener" class="order-detail-summary__link">
                    {l s='Track shipment' d='Shop.Theme.Customeraccount'}
                  </a>
                </li>
              {/if}
              {if $order.details.invoice_url}
                <li>
                  <a href="{$order.details.invoice_url}" class="order-detail-summary__link">
                    {l s='Download invoice' d='Shop.Theme.Customeraccount'}
                  </a>
                </li>
              {/if}
            </ul>
          </div>
        {/block}
      </div>

      {block name='addresses'}
        <div class="order-detail-addresses row">
          {if $order.addresses.delivery}
            <div class="col-lg-6 col-md-6 col-sm-12">
              <article id="delivery-address" class="order-address-card">
                <h4>{l s='Delivery address %alias%' d='Shop.Theme.Checkout' sprintf=['%alias%' => $order.addresses.delivery.alias]}</h4>
                <address>{$order.addresses.delivery.formatted nofilter}</address>
              </article>
            </div>
          {/if}

          <div class="col-lg-6 col-md-6 col-sm-12">
            <article id="invoice-address" class="order-address-card">
              <h4>{l s='Invoice address %alias%' d='Shop.Theme.Checkout' sprintf=['%alias%' => $order.addresses.invoice.alias]}</h4>
              <address>{$order.addresses.invoice.formatted nofilter}</address>
            </article>
          </div>
        </div>
      {/block}
    </div>
  </section>

  {if $HOOK_DISPLAYORDERDETAIL}
    <section class="card order-detail-hook">
      <div class="card-block">
        {$HOOK_DISPLAYORDERDETAIL nofilter}
      </div>
    </section>
  {/if}

  {block name='order_detail'}
    {if $order.details.is_returnable}
      <section class="card order-detail-returns">
        <div class="card-block">
          {include file='customer/_partials/order-detail-return.tpl'}
        </div>
      </section>
    {/if}
  {/block}

  {block name='order_carriers'}
    {if $order.shipping}
      <section class="card order-detail-shipping">
        <div class="card-block">
          <h3>{l s='Shipping history' d='Shop.Theme.Customeraccount'}</h3>
          <table class="table table-striped hidden-sm-down">
            <thead>
              <tr>
                <th>{l s='Date' d='Shop.Theme.Global'}</th>
                <th>{l s='Carrier' d='Shop.Theme.Checkout'}</th>
                <th>{l s='Weight' d='Shop.Theme.Checkout'}</th>
                <th>{l s='Shipping cost' d='Shop.Theme.Checkout'}</th>
                <th>{l s='Tracking number' d='Shop.Theme.Checkout'}</th>
              </tr>
            </thead>
            <tbody>
              {foreach from=$order.shipping item=line}
                <tr>
                  <td>{$line.shipping_date}</td>
                  <td>{$line.carrier_name}</td>
                  <td>{$line.shipping_weight}</td>
                  <td>{$line.shipping_cost}</td>
                  <td>{$line.tracking nofilter}</td>
                </tr>
              {/foreach}
            </tbody>
          </table>
          <div class="hidden-md-up shipping-lines">
            {foreach from=$order.shipping item=line}
              <div class="shipping-line">
                <ul>
                  <li>
                    <strong>{l s='Date' d='Shop.Theme.Global'}</strong> {$line.shipping_date}
                  </li>
                  <li>
                    <strong>{l s='Carrier' d='Shop.Theme.Checkout'}</strong> {$line.carrier_name}
                  </li>
                  <li>
                    <strong>{l s='Weight' d='Shop.Theme.Checkout'}</strong> {$line.shipping_weight}
                  </li>
                  <li>
                    <strong>{l s='Shipping cost' d='Shop.Theme.Checkout'}</strong> {$line.shipping_cost}
                  </li>
                  <li>
                    <strong>{l s='Tracking number' d='Shop.Theme.Checkout'}</strong> {$line.tracking nofilter}
                  </li>
                </ul>
              </div>
            {/foreach}
          </div>
        </div>
      </section>
    {/if}
  {/block}

  {block name='order_messages'}
    <section class="card order-detail-messages">
      <div class="card-block">
        {include file='customer/_partials/order-messages.tpl'}
      </div>
    </section>
  {/block}
{/block}
