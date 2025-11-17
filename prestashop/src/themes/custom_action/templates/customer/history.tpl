{extends file='customer/page.tpl'}

{block name='page_title'}
  <h1 class="heading-xl text-dark-blue-500 mb-6">{l s='Order history' d='Shop.Theme.Customeraccount'}</h1>
{/block}

{block name='page_content'}
  <div class="bg-neutral-50 p-4 md:p-6 rounded-lg mb-6">
    <p class="text-body-normal text-neutral-700">
      {l s='Here are the orders you\'ve placed since your account was created.' d='Shop.Theme.Customeraccount'}
    </p>
  </div>

  {if $orders}
    {* Desktop Table View *}
    <div class="hidden md:block bg-neutral-0 rounded-lg shadow-sm overflow-hidden">
      <div class="overflow-x-auto">
        <table class="w-full">
          <thead>
            <tr class="bg-neutral-50 border-b border-neutral-150">
              <th class="text-left py-4 px-6 text-body-small-medium text-dark-blue-500">
                {l s='Order reference' d='Shop.Theme.Checkout'}
              </th>
              <th class="text-left py-4 px-6 text-body-small-medium text-dark-blue-500">
                {l s='Date' d='Shop.Theme.Checkout'}
              </th>
              <th class="text-left py-4 px-6 text-body-small-medium text-dark-blue-500">
                {l s='Total price' d='Shop.Theme.Checkout'}
              </th>
              <th class="text-left py-4 px-6 text-body-small-medium text-dark-blue-500">
                {l s='Payment' d='Shop.Theme.Checkout'}
              </th>
              <th class="text-left py-4 px-6 text-body-small-medium text-dark-blue-500">
                {l s='Status' d='Shop.Theme.Checkout'}
              </th>
              <th class="text-center py-4 px-6 text-body-small-medium text-dark-blue-500">
                {l s='Invoice' d='Shop.Theme.Checkout'}
              </th>
              <th class="text-center py-4 px-6 text-body-small-medium text-dark-blue-500">
                {l s='Actions' d='Shop.Theme.Customeraccount'}
              </th>
            </tr>
          </thead>
          <tbody>
            {foreach from=$orders item=order}
              <tr class="border-b border-neutral-50 hover:bg-neutral-50 transition-colors">
                <td class="py-4 px-6">
                  <a href="{$order.details.details_url}" 
                     data-link-action="view-order-details"
                     class="text-dark-blue-500 font-medium hover:shadow-bottom-border transition-all">
                    {$order.details.reference}
                  </a>
                </td>
                <td class="py-4 px-6 text-body-normal text-neutral-700">
                  {$order.details.order_date}
                </td>
                <td class="py-4 px-6 text-body-normal text-neutral-900 font-medium">
                  {$order.totals.total.value}
                </td>
                <td class="py-4 px-6 text-body-normal text-neutral-700">
                  {$order.details.payment}
                </td>
                <td class="py-4 px-6">
                  <span class="inline-flex items-center px-3 py-1 rounded-full text-xs font-medium"
                        style="background-color:{$order.history.current.color}; color:{if $order.history.current.contrast == 'dark'}#1a1a1a{else}#fff{/if}">
                    {$order.history.current.ostate_name}
                  </span>
                </td>
                <td class="py-4 px-6 text-center">
                  {if $order.details.invoice_url}
                    <a href="{$order.details.invoice_url}" 
                       class="inline-flex items-center justify-center w-10 h-10 rounded-full bg-orange-50 text-orange-500 hover:bg-orange-500 hover:text-neutral-0 transition-colors"
                       title="{l s='Download invoice' d='Shop.Theme.Customeraccount'}">
                      <svg class="w-5 h-5" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                        <path d="M19 9h-4V3H9v6H5l7 7 7-7zM5 18v2h14v-2H5z"/>
                      </svg>
                    </a>
                  {else}
                    <span class="text-neutral-300">-</span>
                  {/if}
                </td>
                <td class="py-4 px-6">
                  <div class="flex items-center justify-center gap-2">
                    <a href="{$order.details.details_url}" 
                       data-link-action="view-order-details"
                       class="inline-flex items-center gap-1 px-3 py-2 text-body-small text-dark-blue-500 hover:bg-dark-blue-50 rounded-lg transition-colors font-medium"
                       title="{l s='View details' d='Shop.Theme.Customeraccount'}">
                      <svg class="w-4 h-4" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                        <path d="M12 4.5C7 4.5 2.73 7.61 1 12c1.73 4.39 6 7.5 11 7.5s9.27-3.11 11-7.5c-1.73-4.39-6-7.5-11-7.5zM12 17c-2.76 0-5-2.24-5-5s2.24-5 5-5 5 2.24 5 5-2.24 5-5 5zm0-8c-1.66 0-3 1.34-3 3s1.34 3 3 3 3-1.34 3-3-1.34-3-3-3z"/>
                      </svg>
                      {l s='Details' d='Shop.Theme.Customeraccount'}
                    </a>
                    {if $order.details.reorder_url}
                      <a href="{$order.details.reorder_url}"
                         class="inline-flex items-center gap-1 px-3 py-2 text-body-small text-orange-500 hover:bg-orange-50 rounded-lg transition-colors font-medium"
                         title="{l s='Reorder' d='Shop.Theme.Actions'}">
                        <svg class="w-4 h-4" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                          <path d="M7 7h10v3l4-4-4-4v3H5v6h2V7zm10 10H7v-3l-4 4 4 4v-3h12v-6h-2v4z"/>
                        </svg>
                        {l s='Reorder' d='Shop.Theme.Actions'}
                      </a>
                    {/if}
                  </div>
                </td>
              </tr>
            {/foreach}
          </tbody>
        </table>
      </div>
    </div>

    {* Mobile Card View *}
    <div class="md:hidden space-y-4">
      {foreach from=$orders item=order}
        <div class="bg-neutral-0 rounded-lg shadow-sm p-4 border border-neutral-150">
          <div class="space-y-3">
            {* Header with order reference and status *}
            <div class="flex justify-between items-start pb-3 border-b border-neutral-50">
              <div class="flex-1">
                <p class="text-body-small text-neutral-500 mb-1">
                  {l s='Order reference' d='Shop.Theme.Checkout'}
                </p>
                <a href="{$order.details.details_url}" 
                   data-link-action="view-order-details"
                   class="text-dark-blue-500 font-medium text-body-normal">
                  {$order.details.reference}
                </a>
              </div>
              <span class="inline-flex items-center px-3 py-1 rounded-full text-xs font-medium ml-2"
                    style="background-color:{$order.history.current.color}; color:{if $order.history.current.contrast == 'dark'}#1a1a1a{else}#fff{/if}">
                {$order.history.current.ostate_name}
              </span>
            </div>
            
            {* Order details *}
            <div class="grid grid-cols-2 gap-3">
              <div>
                <p class="text-body-small text-neutral-500 mb-1">
                  {l s='Date' d='Shop.Theme.Checkout'}
                </p>
                <p class="text-body-normal text-neutral-700">
                  {$order.details.order_date}
                </p>
              </div>
              
              <div>
                <p class="text-body-small text-neutral-500 mb-1">
                  {l s='Total price' d='Shop.Theme.Checkout'}
                </p>
                <p class="text-body-normal text-neutral-900 font-medium">
                  {$order.totals.total.value}
                </p>
              </div>
              
              <div class="col-span-2">
                <p class="text-body-small text-neutral-500 mb-1">
                  {l s='Payment' d='Shop.Theme.Checkout'}
                </p>
                <p class="text-body-normal text-neutral-700">
                  {$order.details.payment}
                </p>
              </div>
            </div>
            
            {* Actions *}
            <div class="flex items-center gap-2 pt-3 border-t border-neutral-50">
              <a href="{$order.details.details_url}" 
                 data-link-action="view-order-details"
                 class="flex-1 inline-flex items-center justify-center gap-2 px-4 py-2 bg-dark-blue-500 text-neutral-0 rounded-full hover:bg-dark-blue-700 transition-colors font-medium text-body-small">
                <svg class="w-4 h-4" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                  <path d="M12 4.5C7 4.5 2.73 7.61 1 12c1.73 4.39 6 7.5 11 7.5s9.27-3.11 11-7.5c-1.73-4.39-6-7.5-11-7.5zM12 17c-2.76 0-5-2.24-5-5s2.24-5 5-5 5 2.24 5 5-2.24 5-5 5zm0-8c-1.66 0-3 1.34-3 3s1.34 3 3 3 3-1.34 3-3-1.34-3-3-3z"/>
                </svg>
                {l s='Details' d='Shop.Theme.Customeraccount'}
              </a>
              
              {if $order.details.invoice_url}
                <a href="{$order.details.invoice_url}" 
                   class="inline-flex items-center justify-center w-10 h-10 rounded-full bg-orange-50 text-orange-500 hover:bg-orange-500 hover:text-neutral-0 transition-colors"
                   title="{l s='Download invoice' d='Shop.Theme.Customeraccount'}">
                  <svg class="w-5 h-5" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                    <path d="M19 9h-4V3H9v6H5l7 7 7-7zM5 18v2h14v-2H5z"/>
                  </svg>
                </a>
              {/if}
              
              {if $order.details.reorder_url}
                <a href="{$order.details.reorder_url}"
                   class="inline-flex items-center justify-center w-10 h-10 rounded-full bg-orange-50 text-orange-500 hover:bg-orange-500 hover:text-neutral-0 transition-colors"
                   title="{l s='Reorder' d='Shop.Theme.Actions'}">
                  <svg class="w-5 h-5" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                    <path d="M7 7h10v3l4-4-4-4v3H5v6h2V7zm10 10H7v-3l-4 4 4 4v-3h12v-6h-2v4z"/>
                  </svg>
                </a>
              {/if}
            </div>
          </div>
        </div>
      {/foreach}
    </div>
  {else}
    <div class="bg-info-50 border border-sky-blue-300 rounded-lg p-6 text-center">
      <svg class="w-16 h-16 mx-auto mb-4 text-info-500" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
        <path d="M20 2H4c-1.1 0-2 .9-2 2v12c0 1.1.9 2 2 2h14l4 4V4c0-1.1-.9-2-2-2zm-2 12H6v-2h12v2zm0-3H6V9h12v2zm0-3H6V6h12v2z"/>
      </svg>
      <p class="text-body-normal text-neutral-700">
        {l s='You have not placed any orders yet.' d='Shop.Theme.Customeraccount'}
      </p>
    </div>
  {/if}
{/block}
