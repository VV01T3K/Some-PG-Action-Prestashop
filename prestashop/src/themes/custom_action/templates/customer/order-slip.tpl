{extends file='customer/page.tpl'}

{block name='page_title'}
  <br>
  <h1 class="heading-xl text-dark-blue-500 px-6">{l s='Credit slips' d='Shop.Theme.Customeraccount'}</h1>
{/block}

{block name='page_content'}
  <br>
  <div class="bg-neutral-50 p-4 md:p-6 rounded-lg mb-6">
    <p class="text-body-normal text-neutral-700">
      {l s='Credit slips you have received after canceled orders.' d='Shop.Theme.Customeraccount'}
    </p>
  </div>

  {if $credit_slips}
    {* Desktop Table View *}
    <div class="hidden md:block bg-neutral-0 rounded-lg shadow-sm overflow-hidden">
      <div class="overflow-x-auto">
        <table class="w-full">
          <thead>
            <tr class="bg-neutral-50 border-b border-neutral-150">
              <th class="text-left py-4 px-6 text-body-small-medium text-dark-blue-500">
                {l s='Order' d='Shop.Theme.Customeraccount'}
              </th>
              <th class="text-left py-4 px-6 text-body-small-medium text-dark-blue-500">
                {l s='Credit slip' d='Shop.Theme.Customeraccount'}
              </th>
              <th class="text-left py-4 px-6 text-body-small-medium text-dark-blue-500">
                {l s='Date issued' d='Shop.Theme.Customeraccount'}
              </th>
              <th class="text-center py-4 px-6 text-body-small-medium text-dark-blue-500">
                {l s='Actions' d='Shop.Theme.Customeraccount'}
              </th>
            </tr>
          </thead>
          <tbody>
            {foreach from=$credit_slips item=slip}
              <tr class="border-b border-neutral-50 hover:bg-neutral-50 transition-colors">
                <td class="py-4 px-6">
                  <a href="{$slip.order_url_details}" 
                     data-link-action="view-order-details"
                     class="text-dark-blue-500 font-medium hover:shadow-bottom-border transition-all">
                    {$slip.order_reference}
                  </a>
                </td>
                <td class="py-4 px-6 text-body-normal text-neutral-700">
                  {$slip.credit_slip_number}
                </td>
                <td class="py-4 px-6 text-body-normal text-neutral-700">
                  {$slip.credit_slip_date}
                </td>
                <td class="py-4 px-6 text-center">
                  <a href="{$slip.url}" 
                     class="inline-flex items-center justify-center w-10 h-10 rounded-full bg-orange-50 text-orange-500 hover:bg-orange-500 hover:text-neutral-0 transition-colors"
                     title="{l s='Download PDF' d='Shop.Theme.Customeraccount'}">
                    <svg class="w-5 h-5" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                      <path d="M19 9h-4V3H9v6H5l7 7 7-7zM5 18v2h14v-2H5z"/>
                    </svg>
                  </a>
                </td>
              </tr>
            {/foreach}
          </tbody>
        </table>
      </div>
    </div>

    {* Mobile Card View *}
    <div class="md:hidden space-y-4">
      {foreach from=$credit_slips item=slip}
        <div class="bg-neutral-0 rounded-lg shadow-sm p-4 border border-neutral-150">
          <div class="space-y-3">
            <div class="flex justify-between items-start pb-3 border-b border-neutral-50">
              <div class="flex-1">
                <p class="text-body-small text-neutral-500 mb-1">
                  {l s='Order' d='Shop.Theme.Customeraccount'}
                </p>
                <a href="{$slip.order_url_details}" 
                   data-link-action="view-order-details"
                   class="text-dark-blue-500 font-medium text-body-normal">
                  {$slip.order_reference}
                </a>
              </div>
              <a href="{$slip.url}" 
                 class="inline-flex items-center justify-center w-10 h-10 rounded-full bg-orange-50 text-orange-500 hover:bg-orange-500 hover:text-neutral-0 transition-colors ml-3"
                 title="{l s='Download PDF' d='Shop.Theme.Customeraccount'}">
                <svg class="w-5 h-5" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                  <path d="M19 9h-4V3H9v6H5l7 7 7-7zM5 18v2h14v-2H5z"/>
                </svg>
              </a>
            </div>
            
            <div>
              <p class="text-body-small text-neutral-500 mb-1">
                {l s='Credit slip' d='Shop.Theme.Customeraccount'}
              </p>
              <p class="text-body-normal text-neutral-900 font-medium">
                {$slip.credit_slip_number}
              </p>
            </div>
            
            <div>
              <p class="text-body-small text-neutral-500 mb-1">
                {l s='Date issued' d='Shop.Theme.Customeraccount'}
              </p>
              <p class="text-body-normal text-neutral-700">
                {$slip.credit_slip_date}
              </p>
            </div>
          </div>
        </div>
      {/foreach}
    </div>
  {else}
    <div class="bg-info-50 border border-sky-blue-300 rounded-lg p-6 text-center">
      <svg class="w-16 h-16 mx-auto mb-4 text-info-500" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
        <path d="M11 15h2v2h-2v-2zm0-8h2v6h-2V7zm.99-5C6.47 2 2 6.48 2 12s4.47 10 9.99 10C17.52 22 22 17.52 22 12S17.52 2 11.99 2zM12 20c-4.42 0-8-3.58-8-8s3.58-8 8-8 8 3.58 8 8-3.58 8-8 8z"/>
      </svg>
      <p class="text-body-normal text-neutral-700">
        {* {l s='You have not received any credit slips.' d='Shop.Theme.Customeraccount'} *}
        {l s='Nie otrzymałeś jeszcze żadnych pokwitowań.' d='Shop.Theme.Customeraccount'}
      </p>
    </div>
  {/if}
{/block}
