{block name="address_form"}
  <div class="js-address-form">
    {include file='_partials/form-errors.tpl' errors=$errors['']}

    {block name="address_form_url"}
    <form
      method="POST"
      action="{url entity='address' params=['id_address' => $id_address]}"
      data-id-address="{$id_address}"
      data-refresh-url="{url entity='address' params=['ajax' => 1, 'action' => 'addressForm']}"
      class="address-form-modern"
    >
    {/block}

      {block name="address_form_fields"}
        <section class="form-fields">
          <div class="flex flex-col gap-4">
            {block name='form_fields'}
              {foreach from=$formFields item="field"}
                {block name='form_field'}
                  {if $field.type == 'hidden'}
                    <input type="hidden" name="{$field.name}" value="{$field.value}">
                  {else}
                    <div class="form-group" data-testid="{$field.name}-input">
                      {if $field.type !== 'checkbox'}
                        <label class="text-base mb-2 block text-neutral-700" for="field-{$field.name}" data-testid="input-label">
                          <span class="text-neutral-900">{$field.label}</span>
                          {if $field.required}
                            <span class="text-error-500" aria-label="Required field"> *</span>
                          {/if}
                        </label>
                      {/if}

                      {if $field.type === 'select' || $field.type === 'countrySelect'}
                        <select 
                          id="field-{$field.name}" 
                          class="w-full rounded-lg border border-neutral-300 px-4 py-3 text-body-normal text-neutral-900 focus:border-dark-blue-500 focus:outline-none focus:ring-2 focus:ring-dark-blue-500 disabled:bg-neutral-50 disabled:text-neutral-500 {if $field.type === 'countrySelect'}js-country{/if}"
                          name="{$field.name}" 
                          {if $field.required}required{/if}
                          data-testid="input">
                          <option value="" disabled selected>{l s='Please choose' d='Shop.Forms.Labels'}</option>
                          {foreach from=$field.availableValues item="label" key="value"}
                            <option value="{$value}" {if $value eq $field.value}selected{/if}>{$label}</option>
                          {/foreach}
                        </select>

                      {elseif $field.type === 'radio-buttons'}
                        <fieldset>
                          <div class="flex flex-col gap-2">
                            {foreach from=$field.availableValues item="label" key="value"}
                              <div class="flex items-center gap-2">
                                <input 
                                  type="radio" 
                                  id="field-{$field.name}-{$value}" 
                                  name="{$field.name}" 
                                  value="{$value}"
                                  {if $value eq $field.value}checked{/if}
                                  class="accent-dark-blue focus:ring-dark-blue h-5 w-5 cursor-pointer rounded-full border border-neutral-300 focus:ring-2"
                                  {if $field.required}required{/if}>
                                <label for="field-{$field.name}-{$value}" class="text-body-normal text-neutral-700 cursor-pointer">{$label}</label>
                              </div>
                            {/foreach}
                          </div>
                        </fieldset>

                      {elseif $field.type === 'checkbox'}
                        <div class="relative flex min-h-12 items-center gap-4">
                          <input 
                            id="field-{$field.name}" 
                            type="checkbox"
                            name="{$field.name}"
                            value="1"
                            {if $field.value}checked{/if}
                            class="accent-dark-blue focus:ring-dark-blue h-5 w-5 cursor-pointer rounded border border-neutral-300 focus:ring-2"
                            {if $field.required}required{/if}
                            data-testid="input">
                          <label class="text-body-normal text-neutral-700 cursor-pointer" for="field-{$field.name}">
                            {$field.label nofilter}
                          </label>
                        </div>

                      {else}
                        <input
                          id="field-{$field.name}"
                          class="w-full rounded-lg border border-neutral-300 px-4 py-3 text-body-normal text-neutral-900 placeholder:text-neutral-500 focus:border-dark-blue-500 focus:outline-none focus:ring-2 focus:ring-dark-blue-500 disabled:bg-neutral-50 disabled:text-neutral-500"
                          name="{$field.name}"
                          type="{$field.type}"
                          value="{$field.value}"
                          {if $field.autocomplete}autocomplete="{$field.autocomplete}"{/if}
                          {if isset($field.availableValues.placeholder)}placeholder="{$field.availableValues.placeholder}"{/if}
                          {if $field.maxLength}maxlength="{$field.maxLength}"{/if}
                          {if $field.required}required{/if}
                          data-testid="input">
                      {/if}

                      {if $field.errors}
                        <div class="relative mt-2 flex flex-row items-center gap-2 text-error-500" data-testid="input-hint">
                          <svg class="w-4 h-4" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                            <path fill-rule="evenodd" d="M12 22C6.486 22 2 17.514 2 12S6.486 2 12 2s10 4.486 10 10-4.486 10-10 10m-1.05-6.45c0 .552.548 1 1.1 1a1 1 0 0 0 1-1v-.1c0-.552-.548-1-1.1-1s-1 .548-1 1.1m.05-3.1a1 1 0 0 0 2 0v-4a1 1 0 0 0-2 0z" clip-rule="evenodd"/>
                          </svg>
                          <p class="text-body-small" data-testid="input-hint-error">{$field.errors[0]}</p>
                        </div>
                      {/if}

                      {if isset($field.availableValues.comment)}
                        <p class="mt-2 text-body-small text-neutral-500">{$field.availableValues.comment}</p>
                      {/if}
                    </div>
                  {/if}
                {/block}
              {/foreach}
            {/block}
          </div>
        </section>
      {/block}

      {block name="address_form_footer"}
      <footer class="form-footer mt-6 flex justify-end gap-3">
        <input type="hidden" name="submitAddress" value="1">
        {block name='form_buttons'}
          <button 
            class="inline-flex items-center justify-center gap-2 rounded-full bg-orange-500 px-6 py-3 text-body-normal font-medium text-neutral-0 hover:bg-orange-700 focus:bg-orange-700 focus:outline-none focus:ring-2 focus:ring-dark-blue-500 focus:ring-offset-2 disabled:bg-neutral-150 disabled:text-neutral-500 disabled:cursor-not-allowed transition-colors" 
            type="submit"
            data-testid="save-button">
            <svg class="w-5 h-5" fill="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
              <path d="M17 3H5c-1.11 0-2 .9-2 2v14c0 1.1.89 2 2 2h14c1.1 0 2-.9 2-2V7l-4-4zm-5 16c-1.66 0-3-1.34-3-3s1.34-3 3-3 3 1.34 3 3-1.34 3-3 3zm3-10H5V5h10v4z"/>
            </svg>
            {l s='Save' d='Shop.Theme.Actions'}
          </button>
        {/block}
      </footer>
      {/block}

    </form>
  </div>
{/block}
