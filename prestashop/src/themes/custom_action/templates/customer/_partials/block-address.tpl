{block name='address_block_item'}
  <article id="address-{$address.id}" 
           class="address bg-neutral-0 rounded-lg shadow-sm border border-neutral-150 overflow-hidden hover:shadow-lg transition-shadow" 
           data-id-address="{$address.id}">
    
    <div class="address-body p-4 md:p-6">
      <div class="flex items-start justify-between mb-4">
        <h4 class="text-body-normal-medium text-dark-blue-500 flex items-center gap-2">
          <svg class="w-5 h-5 text-orange-500" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
            <path d="M12 2C8.13 2 5 5.13 5 9c0 5.25 7 13 7 13s7-7.75 7-13c0-3.87-3.13-7-7-7zm0 9.5c-1.38 0-2.5-1.12-2.5-2.5s1.12-2.5 2.5-2.5 2.5 1.12 2.5 2.5-1.12 2.5-2.5 2.5z"/>
          </svg>
          {$address.alias}
        </h4>
      </div>
      
      <address class="text-body-normal text-neutral-700 not-italic leading-relaxed">
        {$address.formatted nofilter}
      </address>
      
      {* Display the extra field values added in an address from using hook 'additionalCustomerAddressFields' *}
      {hook h='displayAdditionalCustomerAddressFields' address=$address}
    </div>

    {block name='address_block_item_actions'}
      <div class="address-footer bg-neutral-50 px-4 py-3 md:px-6 md:py-4 flex items-center justify-end gap-2 border-t border-neutral-150">
        <a href="{url entity=address id=$address.id}" 
           data-link-action="edit-address"
           class="inline-flex items-center gap-1 px-3 py-2 text-body-small text-dark-blue-500 hover:bg-dark-blue-50 rounded-lg transition-colors font-medium"
           title="{l s='Update' d='Shop.Theme.Actions'}">
          <svg class="w-4 h-4" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
            <path d="M3 17.25V21h3.75L17.81 9.94l-3.75-3.75L3 17.25zM20.71 7.04c.39-.39.39-1.02 0-1.41l-2.34-2.34c-.39-.39-1.02-.39-1.41 0l-1.83 1.83 3.75 3.75 1.83-1.83z"/>
          </svg>
          <span>{l s='Update' d='Shop.Theme.Actions'}</span>
        </a>
        <a href="{url entity=address id=$address.id params=['delete' => 1, 'token' => $token]}" 
           data-link-action="delete-address"
           class="inline-flex items-center gap-1 px-3 py-2 text-body-small text-error-500 hover:bg-error-50 rounded-lg transition-colors font-medium"
           title="{l s='Delete' d='Shop.Theme.Actions'}"
           onclick="return confirm('{l s='Are you sure you want to delete this address?' d='Shop.Theme.Actions' js=1}');">
          <svg class="w-4 h-4" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
            <path d="M6 19c0 1.1.9 2 2 2h8c1.1 0 2-.9 2-2V7H6v12zM19 4h-3.5l-1-1h-5l-1 1H5v2h14V4z"/>
          </svg>
          <span>{l s='Delete' d='Shop.Theme.Actions'}</span>
        </a>
      </div>
    {/block}
  </article>
{/block}
