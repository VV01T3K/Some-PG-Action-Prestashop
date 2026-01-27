{extends file='page.tpl'}

{block name='head' append}
  <link rel="stylesheet" href="{$urls.theme_assets}css/order-confirmation.css">
{/block}

{block name='page_content_container' prepend}
    <section id="content-hook_order_confirmation" class="card">
      <div class="card-block">
        <div class="row">
          <div class="col-md-12">

            {block name='order_confirmation_header'}
              <h3 class="h1 card-title">
                {l s='Your order is confirmed' d='Shop.Theme.Checkout'}
              </h3>
            {/block}

            <p>
              {l s='An email has been sent to your mail address %email%.' d='Shop.Theme.Checkout' sprintf=['%email%' => $customer.email]}
              {if $order.details.invoice_url}
                {* [1][/1] is for a HTML tag. *}
                {l
                  s='You can also [1]download your invoice[/1]'
                  d='Shop.Theme.Checkout'
                  sprintf=[
                    '[1]' => "<a href='{$order.details.invoice_url}'>",
                    '[/1]' => "</a>"
                  ]
                }
              {/if}
            </p>

            {block name='hook_order_confirmation'}
              {$HOOK_ORDER_CONFIRMATION nofilter}
            {/block}

          </div>
        </div>
      </div>
    </section>
{/block}

{block name='page_content_container'}
  <section id="content" class="page-content page-order-confirmation card">
    <div class="card-block">
      <div class="row">

        {block name='order_confirmation_table'}
          {include
            file='checkout/_partials/order-confirmation-table.tpl'
            products=$order.products
            subtotals=$order.subtotals
            totals=$order.totals
            labels=$order.labels
            add_product_link=false
          }
        {/block}

        {block name='order_details'}
          <div id="order-details" class="col-md-4">
            <h3 class="h3 card-title">{l s='Order details' d='Shop.Theme.Checkout'}:</h3>
            <ul>
              <li id="order-reference-value">{l s='Order reference: %reference%' d='Shop.Theme.Checkout' sprintf=['%reference%' => $order.details.reference]}</li>
              <li>{l s='Payment method: %method%' d='Shop.Theme.Checkout' sprintf=['%method%' => $order.details.payment]}</li>
              {if !$order.details.is_virtual}
                <li>
                  {l s='Shipping method: %method%' d='Shop.Theme.Checkout' sprintf=['%method%' => $order.carrier.name]}<br>
                  <em>{$order.carrier.delay}</em>
                </li>
              {/if}
            </ul>
          </div>
        {/block}

      </div>
    </div>
  </section>

  {block name='hook_payment_return'}
    {if ! empty($HOOK_PAYMENT_RETURN)}
    <section id="content-hook_payment_return" class="card definition-list">
      <div class="card-block">
        <div class="row">
          <div class="col-md-12">
            {$HOOK_PAYMENT_RETURN nofilter}
          </div>
        </div>
      </div>
    </section>
    {/if}
  {/block}

  {block name='customer_registration_form'}
    {if $customer.is_guest}
      <div id="registration-form" class="card">
        <div class="card-block">
          <h4 class="h4">{l s='Save time on your next order, sign up now' d='Shop.Theme.Checkout'}</h4>
          {render file='customer/_partials/customer-form.tpl' ui=$register_form}
        </div>
      </div>
    {/if}
  {/block}

  {block name='hook_order_confirmation_1'}
    {hook h='displayOrderConfirmation1'}
  {/block}

  {block name='hook_order_confirmation_2'}
    <section id="content-hook-order-confirmation-footer">
      {hook h='displayOrderConfirmation2'}
    </section>
    
    {* Google Analytics 4 - Purchase Event
    <script>
      console.log('GA4 Purchase Script Loaded');
      console.log('gtag available:', typeof gtag !== 'undefined');
      
      if (typeof gtag !== 'undefined') {
        console.log('Sending purchase event...');
        
        var purchaseData = {
          transaction_id: '{$order.details.reference|escape:'quotes'}',
          value: Number(parseFloat('{$order.totals.total.value}'.replace(/[^\d.,]/g, '').replace(',', '.')).toFixed(2)),
          currency: '{$currency.iso_code}',
          tax: Number(parseFloat('{if isset($order.totals.total_tax)}{$order.totals.total_tax.value}{else}0{/if}'.replace(/[^\d.,]/g, '').replace(',', '.')).toFixed(2)),
          shipping: Number(parseFloat('{if isset($order.totals.total_shipping)}{$order.totals.total_shipping.value}{else}0{/if}'.replace(/[^\d.,]/g, '').replace(',', '.')).toFixed(2)),
          items: [
            {foreach from=$order.products item=product name=products}
            {ldelim}
              item_id: '{$product.reference|escape:'quotes'}',
              item_name: '{$product.name|strip_tags|escape:'quotes'}',
              price: Number(parseFloat('{$product.price}'.replace(/[^\d.,]/g, '').replace(',', '.')).toFixed(2)),
              quantity: parseInt('{$product.quantity}')
            {rdelim}{if !$smarty.foreach.products.last},{/if}
            {/foreach}
          ]
        };
        
        console.log('Purchase data:', purchaseData);
        gtag('event', 'purchase', purchaseData);
        console.log('GA4: Purchase event sent successfully');
      } else {
        console.error('GA4: gtag is not defined!');
      }
    </script> *}

  {/block}
{/block}
