{extends file='customer/page.tpl'}

{block name='page_title'}
  <div class="bg-neutral-0 px-4 lg:px-8 pt-4">
    <h1 class="heading-xl text-dark-blue-500 mb-6">{l s='Your addresses' d='Shop.Theme.Customeraccount'}</h1>
  </div>
{/block}

{block name='page_content'}
  <div class="bg-neutral-0 px-4 pb-8 lg:px-8">
    {if $customer.addresses}
      <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4 md:gap-6 mb-6">
        {foreach $customer.addresses as $address}
          {block name='customer_address'}
            {include file='customer/_partials/block-address.tpl' address=$address}
          {/block}
        {/foreach}
      </div>
    {else}
      <div class="bg-info-50 border border-sky-blue-300 rounded-lg p-6 text-center mb-6">
        <svg class="w-16 h-16 mx-auto mb-4 text-info-500" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
          <path d="M12 2C8.13 2 5 5.13 5 9c0 5.25 7 13 7 13s7-7.75 7-13c0-3.87-3.13-7-7-7zm0 9.5c-1.38 0-2.5-1.12-2.5-2.5s1.12-2.5 2.5-2.5 2.5 1.12 2.5 2.5-1.12 2.5-2.5 2.5z"/>
        </svg>
        <p class="text-body-normal text-neutral-700 mb-4">
          {l s='You have not saved any addresses yet.' d='Shop.Theme.Customeraccount'}
        </p>
      </div>
    {/if}
    
    <div class="addresses-footer">
      <a href="{$urls.pages.address}" 
         data-link-action="add-address"
         class="inline-flex items-center gap-2 px-6 py-3 bg-orange-500 text-neutral-0 rounded-full hover:bg-orange-700 focus:bg-orange-700 focus:outline-none focus:ring-2 focus:ring-dark-blue-500 focus:ring-offset-2 transition-colors font-medium">
        <svg class="w-5 h-5" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
          <path d="M19 13h-6v6h-2v-6H5v-2h6V5h2v6h6v2z"/>
        </svg>
        <span>{l s='Create new address' d='Shop.Theme.Actions'}</span>
      </a>
    </div>
  </div>
{/block}
