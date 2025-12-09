<main id="layout-page-content" class="relative flex flex-1 flex-col">
  <div class="px-4 lg:px-8"></div>
  <div class="px-4 md:hidden" data-testid="mobile-search"></div>
  <div class="flex flex-1 flex-col" data-testid="cms-content-rows">
    <section class="bg-neutral-0 pb-6 md:pb-8 lg:pt-0" aria-label="Kontakt" data-testid="cms-content-title">
      <div class="relative flex w-full flex-col px-4 lg:px-8">
        <div class="mx-auto w-full max-w-7xl">
          <h1 class="heading-2xl text-dark-blue-500">Kontakt</h1>
        </div>
      </div>
    </div>
  </div>
  <div class="-mt-3 sm:-mt-0">
    <div class="relative flex w-full flex-col px-4 lg:px-8">
      <div class="mx-auto w-full max-w-7xl">
        <div class="mb-10 max-w-[600px]">

          <form action="{$urls.pages.contact}" method="post"
            {if $contact.allow_file_upload}enctype="multipart/form-data" {/if} novalidate="">
            {if $notifications}
              <div class="mb-4 max-w-[600px]">
                <div
                  class="text-neutral-0 flex gap-2 p-2 text-sm {if $notifications.nw_error}bg-error-500{else}bg-success-500{/if}"
                  data-testid="error-alert">
                  <div class="flex items-center">
                    <svg aria-hidden="true" data-testid="CircleWarningSolid" xmlns="http://www.w3.org/2000/svg" width="20"
                      height="20" fill="none" viewBox="0 0 24 24">
                      <path fill="#ffffff" fill-rule="evenodd"
                        d="M12 22C6.486 22 2 17.514 2 12S6.486 2 12 2s10 4.486 10 10-4.486 10-10 10m-1.05-6.45c0 .552.548 1 1.1 1a1 1 0 0 0 1-1v-.1c0-.552-.548-1-1.1-1s-1 .548-1 1.1m.05-3.1a1 1 0 0 0 2 0v-4a1 1 0 0 0-2 0z"
                        clip-rule="evenodd"></path>
                    </svg>
                  </div>
                  <div class="flex w-full flex-col items-start">
                    {foreach $notifications.messages as $notif}
                      {$notif}<br>
                    {/foreach}
                  </div>
                </div>
              </div>
            {/if}

            {if !$notifications || $notifications.nw_error}
              <div class="mb-4 max-w-[600px]">
                <div class="mb-4 *:text-sm *:text-neutral-700 sm:*:text-base" data-testid="contact-form-description">
                  <div class="flex max-w-[800px] flex-col gap-3">
                    <p class="text-body-normal text-neutral-900">Robimy, co w naszej mocy, aby jak najszybciej odpowiadać na wszystkie pytania⁠.</p>
                    <p class="text-body-normal text-neutral-900">Wypełnij poniższy formularz, a my postaramy się odpowiedzieć tak szybko, jak to tylko możliwe⁠.</p>
                  </div>
                </div>
              </div>

              <div class="grid gap-6">
                <div>
                  <label class="text-base mb-2 block text-neutral-700" for="id_contact">
                    <span class="text-neutral-900">{l s='Subject' d='Shop.Forms.Labels'}<span
                        class="text-error">*</span></span>
                  </label>
                  <div class="relative">
                    <select name="id_contact" id="id_contact"
                      class="bg-neutral-0 box-border w-full p-2.5 text-neutral-900 outline-none rounded-lg border-2 placeholder:text-neutral disabled:text-neutral disabled:cursor-not-allowed disabled:bg-neutral-50 pr-12 focus:border-dark-blue border-neutral-300 cursor-pointer appearance-none"
                      required="">
                      {foreach from=$contact.contacts item=contact_elt}
                        <option value="{$contact_elt.id_contact}">{$contact_elt.name}</option>
                      {/foreach}
                    </select>
                    <div class="absolute top-3 right-4 flex gap-2 pointer-events-none">
                      <svg aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none"
                        viewBox="0 0 24 24">
                        <path fill="#1a1a1a"
                          d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                        </path>
                      </svg>
                    </div>
                  </div>
                </div>

                <div>
                  <label class="text-base mb-2 block text-neutral-700" for="email">
                    <span class="text-neutral-900">{l s='Email address' d='Shop.Forms.Labels'}<span
                        class="text-error">*</span></span>
                  </label>
                  <div class="relative">
                    <input id="email"
                      class="bg-neutral-0 box-border w-full p-2.5 text-neutral-900 outline-none rounded-lg border-2 placeholder:text-neutral disabled:text-neutral disabled:cursor-not-allowed disabled:bg-neutral-50 focus:border-dark-blue border-neutral-300"
                      name="from" type="email" value="{$contact.email}"
                      placeholder="{l s='your@email.com' d='Shop.Forms.Help'}" required="">
                  </div>
                </div>

                {if $contact.orders}
                  <div>
                    <label class="text-base mb-2 block text-neutral-700" for="id-order">
                      <span class="text-neutral-900">{l s='Order reference' d='Shop.Forms.Labels'}</span>
                    </label>
                    <div class="relative">
                      <select id="id-order" name="id_order"
                        class="bg-neutral-0 box-border w-full p-2.5 text-neutral-900 outline-none rounded-lg border-2 placeholder:text-neutral disabled:text-neutral disabled:cursor-not-allowed disabled:bg-neutral-50 pr-12 focus:border-dark-blue border-neutral-300 cursor-pointer appearance-none">
                        <option value="">{l s='Select reference' d='Shop.Forms.Help'}</option>
                        {foreach from=$contact.orders item=order}
                          <option value="{$order.id_order}">{$order.reference}</option>
                        {/foreach}
                      </select>
                      <div class="absolute top-3 right-4 flex gap-2 pointer-events-none">
                        <svg aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none"
                          viewBox="0 0 24 24">
                          <path fill="#1a1a1a"
                            d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                          </path>
                        </svg>
                      </div>
                    </div>
                    <span class="text-body-small text-neutral-700">{l s='optional' d='Shop.Forms.Help'}</span>
                  </div>
                {/if}

                {if $contact.allow_file_upload}
                  <div>
                    <label class="text-base mb-2 block text-neutral-700" for="file-upload">
                      <span class="text-neutral-900">{l s='Attachment' d='Shop.Forms.Labels'}</span>
                    </label>
                    <div class="relative">
                      <div>
                        <div class="flex flex-col gap-2"></div>
                        <input id="file-upload" accept=".jpg,.jpeg,.png,.gif,.pdf,.doc,.docx,.heic,.mp4,.mov,.avi,.wmv"
                          multiple="" placeholder="{l s='Choose file' d='Shop.Theme.Actions'}" class="hidden" type="file"
                          name="fileUpload">
                        <button type="button"
                          class="relative box-border flex max-w-full items-center justify-center gap-1 rounded-full text-base font-medium py-2.5 px-5 bg-neutral-0 text-dark-blue-500 outline outline-1 outline-dark-blue-500 hover:bg-dark-blue-50 hover:text-dark-blue-700 hover:outline-dark-blue-700 active:bg-dark-blue-500 active:text-neutral-0 active:outline-dark-blue-500 focus:bg-dark-blue-300 focus:text-neutral-0 focus:outline focus:outline-2 focus:outline-dark-blue-500 focus:outline-offset-2 disabled:bg-neutral-150 disabled:text-neutral-700 disabled:outline-neutral"
                          onclick="document.getElementById('file-upload').click();">
                          <span class="truncate px-1">{l s='Choose file' d='Shop.Theme.Actions'}</span>
                        </button>
                      </div>
                    </div>
                    <span class="text-body-small text-neutral-700">{l s='optional' d='Shop.Forms.Help'}</span>
                  </div>
                {/if}

                <div>
                  <label class="text-base mb-2 block text-neutral-700" for="contactform-message">
                    <span class="text-neutral-900">{l s='Message' d='Shop.Forms.Labels'}<span
                        class="text-error">*</span></span>
                  </label>
                  <div class="relative">
                    <textarea id="contactform-message"
                      class="bg-neutral-0 box-border w-full p-2.5 text-neutral-900 outline-none rounded-lg border-2 placeholder:text-neutral disabled:text-neutral disabled:cursor-not-allowed disabled:bg-neutral-50 focus:border-dark-blue border-neutral-300 h-[132px]"
                      name="message" placeholder="{l s='How can we help?' d='Shop.Forms.Help'}"
                      required="">{if $contact.message}{$contact.message}{/if}</textarea>
                  </div>
                </div>

                {if isset($id_module)}
                  <div>
                    <div class="offset-md-3">
                      {hook h='displayGDPRConsent' id_module=$id_module}
                    </div>
                  </div>
                {/if}

                <div>
                  <input type="text" name="url" value="" class="hidden" />
                  <input type="hidden" name="token" value="{$token}" />
                  <button type="submit"
                    class="relative box-border flex max-w-full items-center justify-center gap-1 rounded-full text-base font-medium py-2.5 px-5 bg-dark-blue-500 text-neutral-0 hover:bg-dark-blue-300 active:bg-dark-blue-700 focus:bg-dark-blue-300 focus:outline focus:outline-2 focus:outline-dark-blue-500 focus:outline-offset-2 disabled:bg-neutral-150 disabled:text-neutral-700 disabled:outline disabled:outline-1 disabled:outline-neutral w-fit"
                    name="submitMessage">
                    <span class="truncate px-1">{l s='Send' d='Shop.Theme.Actions'}</span>
                  </button>
                </div>
              </div>
            {/if}
          </form>
        </div>
      </div>
    </div>
  </div>
  <!--$-->
  <!--/$-->
</main>