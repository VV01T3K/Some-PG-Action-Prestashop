{extends file='customer/page.tpl'}

{block name='page_title'}
  <div class="bg-neutral-0 px-4 lg:px-8 pt-4">
    <h1 class="heading-xl text-dark-blue-500 mb-6">
      {if $editing}
        {l s='Update your address' d='Shop.Theme.Customeraccount'}
      {else}
        {l s='New address' d='Shop.Theme.Customeraccount'}
      {/if}
    </h1>
  </div>
{/block}

{block name='page_content'}
  <div class="bg-neutral-0 px-4 pb-8 lg:px-8">
    <div class="max-w-2xl">
      <div class="bg-neutral-0 rounded-lg shadow-sm p-4 md:p-6 border border-neutral-150">
        <div class="address-form">
          {render template="customer/_partials/address-form.tpl" ui=$address_form}
        </div>
      </div>
    </div>
  </div>
{/block}
