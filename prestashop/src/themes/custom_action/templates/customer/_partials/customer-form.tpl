{block name='customer_form'}

  <script>
    var urls = {$formFields|json_encode nofilter};
    console.log(urls);
  </script>

  <main id="layout-page-content" class="relative flex flex-1 flex-col">
    <div class="px-4 lg:px-8"></div>
    <div class="px-4 md:hidden" data-testid="mobile-search"></div>
    <div class="relative flex w-full flex-col px-4 lg:px-8">
      <div class="mx-auto w-full max-w-7xl">
        <div class="flex flex-col lg:flex-row lg:gap-8">
          <div class="lg:basis-1/2">
            <div class="mx-auto mt-6 mb-8 md:max-w-sm lg:mx-0">
              <section aria-labelledby="_R_5fiupfivjap5snpfivb_">
                <h1 id="_R_5fiupfivjap5snpfivb_" class="heading-2xl mb-6" data-testid="register-title">
                  {if isset($is_identity_page) && $is_identity_page}
                    {l s='Your personal information' d='Shop.Theme.Customeraccount'}
                  {else}Tworzenie
                  konta{/if}
                </h1>


                {if isset($errors['']) && $errors['']|count}
                  <div class="mb-4">
                    <div class="text-neutral-0 flex gap-2 p-2 text-sm bg-error-500" data-testid="error-alert">
                      <div class="flex items-center">
                        <svg aria-hidden="true" data-testid="CircleWarningSolid" xmlns="http://www.w3.org/2000/svg"
                          width="20" height="20" fill="none" viewBox="0 0 24 24">
                          <path fill="#ffffff" fill-rule="evenodd"
                            d="M12 22C6.486 22 2 17.514 2 12S6.486 2 12 2s10 4.486 10 10-4.486 10-10 10m-1.05-6.45c0 .552.548 1 1.1 1a1 1 0 0 0 1-1v-.1c0-.552-.548-1-1.1-1s-1 .548-1 1.1m.05-3.1a1 1 0 0 0 2 0v-4a1 1 0 0 0-2 0z"
                            clip-rule="evenodd"></path>
                        </svg>
                      </div>
                      <div class="flex w-full flex-col items-start">
                        {foreach from=$errors[''] item=error}
                          {$error}<br>
                        {/foreach}
                      </div>
                    </div>
                  </div>
                {/if}



                <form novalidate="" data-testid="customer-form"
                  action="{block name='customer_form_actionurl'}{$action}{/block}" id="customer-form"
                  class="js-customer-form" method="post">
                  <div class="flex flex-col gap-4">
                    {foreach from=$formFields item="field"}
                      {if $field.name == 'optin'}{continue}{/if}
                      {if $field.type == 'radio-buttons'}
                        <div data-testid="{$field.name}-input">
                          <fieldset>
                            <legend class="text-base mb-2 block text-neutral-700" data-testid="input-label">
                              <span class="text-neutral-900">{$field.label}</span>
                            </legend>
                            {foreach from=$field.availableValues key="key" item="value"}
                              <div class="flex items-center gap-2">
                                <input type="radio" id="{$field.name}-{$key}" name="{$field.name}" value="{$key}"
                                  {if isset($is_identity_page) && $is_identity_page && ($field.value == $key or (!$field.value and $key == '1'))}checked{/if}
                                  class="accent-dark-blue focus:ring-dark-blue h-5 w-5 cursor-pointer rounded border border-neutral-50 focus:ring-2 focus:ring-dark-blue ring-neutral-300"
                                  {if $field.required}required{/if}>
                                <label for="{$field.name}-{$key}" class="block">{$value}</label>
                              </div>
                            {/foreach}
                          </fieldset>
                          {if $field.errors}
                            <div class="relative mt-2 flex flex-row items-center gap-2 text-error-500" data-testid="input-hint">
                              <p class="text-body-small" data-testid="input-hint-error">{$field.errors[0]}</p>
                            </div>
                          {/if}
                        </div>
                      {elseif $field.type == 'checkbox'}
                        <div data-testid="{$field.name}-input">
                          <div class="relative flex min-h-12 items-center gap-4">
                            <input id="{$field.name}" type="checkbox"
                              class="accent-dark-blue focus:ring-dark-blue h-5 w-5 cursor-pointer rounded border border-neutral-50 focus:ring-2 focus:ring-dark-blue ring-neutral-300"
                              data-testid="input" {if $field.required}required="" {/if} name="{$field.name}"
                              {if isset($is_identity_page) && $is_identity_page && $field.value}checked{/if}>
                            <label class="block" for="{$field.name}">{if $field.name == 'newsletter'}Tak, chcę otrzymywać
                                cotygodniowy newsletter i dowiadywać się o najnowszych ofertach przed
                              innymi.{else}{$field.label nofilter}
                              {/if}</label>
                          </div>
                          {if $field.errors}
                            <div class="relative mt-2 flex flex-row items-center gap-2 text-error-500" data-testid="input-hint">
                              <p class="text-body-small" data-testid="input-hint-error">{$field.errors[0]}</p>
                            </div>
                          {/if}
                        </div>
                      {elseif $field.name == 'birthday'}
                        <div data-testid="date-of-birth-input">
                          <label class="text-base mb-2 block text-neutral-700" for="dateOfBirth" data-testid="input-label">
                            <span class="text-neutral-900">{$field.label}
                              {if $field.required}<span class="text-error" aria-label="To pole jest obowiązkowe">
                                *</span>{/if}
                            </span>
                          </label>
                          <div class="flex flex-row gap-4">
                            <div class="grow" data-testid="day-input">
                              <label class="text-base mb-2 block text-neutral-700 sr-only" for="birthDay"
                                data-testid="input-label">
                                <span class="text-neutral-900">dzień</span>
                              </label>
                              <div class="relative">
                                <select id="birthDay"
                                  class="bg-neutral-0 box-border w-full p-2.5 text-neutral-900 outline-none rounded-lg border-2 placeholder:text-neutral disabled:text-neutral disabled:cursor-not-allowed disabled:bg-neutral-50 pr-12 focus:border-dark-blue border-neutral-300 cursor-pointer appearance-none"
                                  data-testid="select" autocomplete="bday-day" name="birthDay"
                                  {if $field.required}required{/if}>
                                  <option value="0" disabled="">DD</option>
                                  {for $day=1 to 31}
                                    <option value="{$day}"
                                      {if isset($is_identity_page) && $is_identity_page && $field.value && substr($field.value, 8, 2)|intval == $day}selected{/if}>
                                      {$day}
                                    </option>
                                  {/for}
                                </select>
                                <div class="absolute top-3 right-4 flex gap-2 pointer-events-none">
                                  <svg aria-hidden="true" data-testid="ChevronDown" class="cursor-pointer"
                                    xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                                    <path fill="#1a1a1a"
                                      d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                                    </path>
                                  </svg>
                                </div>
                              </div>
                            </div>
                            <div class="grow" data-testid="month-input">
                              <label class="text-base mb-2 block text-neutral-700 sr-only" for="birthMonth"
                                data-testid="input-label">
                                <span class="text-neutral-900">miesiąc</span>
                              </label>
                              <div class="relative">
                                <select id="birthMonth"
                                  class="bg-neutral-0 box-border w-full p-2.5 text-neutral-900 outline-none rounded-lg border-2 placeholder:text-neutral disabled:text-neutral disabled:cursor-not-allowed disabled:bg-neutral-50 pr-12 focus:border-dark-blue border-neutral-300 cursor-pointer appearance-none"
                                  data-testid="select" autocomplete="bday-month" name="birthMonth"
                                  {if $field.required}required{/if}>
                                  <option value="0" disabled="">MM</option>
                                  {for $month=1 to 12}
                                    <option value="{$month}"
                                      {if isset($is_identity_page) && $is_identity_page && $field.value && substr($field.value, 5, 2)|intval == $month}selected{/if}>
                                      {$month}
                                    </option>
                                  {/for}
                                </select>
                                <div class="absolute top-3 right-4 flex gap-2 pointer-events-none">
                                  <svg aria-hidden="true" data-testid="ChevronDown" class="cursor-pointer"
                                    xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                                    <path fill="#1a1a1a"
                                      d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                                    </path>
                                  </svg>
                                </div>
                              </div>
                            </div>
                            <div class="grow" data-testid="year-input">
                              <label class="text-base mb-2 block text-neutral-700 sr-only" for="birthYear"
                                data-testid="input-label">
                                <span class="text-neutral-900">rok</span>
                              </label>
                              <div class="relative">
                                <select id="birthYear"
                                  class="bg-neutral-0 box-border w-full p-2.5 text-neutral-900 outline-none rounded-lg border-2 placeholder:text-neutral disabled:text-neutral disabled:cursor-not-allowed disabled:bg-neutral-50 pr-12 focus:border-dark-blue border-neutral-300 cursor-pointer appearance-none"
                                  data-testid="select" autocomplete="bday-year" name="birthYear"
                                  {if $field.required}required{/if}>
                                  <option value="0" disabled="">YYYY</option>
                                  {for $year=2025 to 1906 step -1}
                                    <option value="{$year}"
                                      {if isset($is_identity_page) && $is_identity_page && $field.value && substr($field.value, 0, 4)|intval == $year}selected{/if}>
                                      {$year}
                                    </option>
                                  {/for}
                                </select>
                                <div class="absolute top-3 right-4 flex gap-2 pointer-events-none">
                                  <svg aria-hidden="true" data-testid="ChevronDown" class="cursor-pointer"
                                    xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                                    <path fill="#1a1a1a"
                                      d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                                    </path>
                                  </svg>
                                </div>
                              </div>
                            </div>
                          </div>
                          {if !isset($is_identity_page) || !$is_identity_page}
                            <p class="mt-4 text-xs">Tworząc konto, użytkownik wyraża zgodę na dostosowywanie przez nas
                              komunikacji i usług na podstawie jego danych osobowych, korzystania z kanałów cyfrowych
                              Action i dokonywanych zakupów. Robimy to, aby jak najbardziej spersonalizować doświadczenia
                              użytkownika. Użytkownik może w dowolnym momencie zmienić swoje preferencje w zakładce „Moje
                              Action"</p>
                    {/if}
                    <div class="mt-2 hidden" data-testid="parental-consent-wrapper">
                      <div data-testid="parental-consent-input">
                        <div class="relative flex min-h-12 items-center gap-4">
                          <input id="parentalConsent" type="checkbox"
                            class="accent-dark-blue focus:ring-dark-blue h-5 w-5 cursor-pointer rounded border border-neutral-50 focus:ring-2 focus:ring-dark-blue ring-neutral-300"
                            data-testid="input" required="" name="parentalConsent">
                          <label class="block" for="parentalConsent">Mam mniej niż 16 lat i mam pozwolenie od
                            rodzica/opiekuna.</label>
                        </div>
                      </div>
                    </div>
                    {if $field.errors}
                    <div class="relative mt-2 flex flex-row items-center gap-2 text-error-500" data-testid="input-hint">
                      <p class="text-body-small" data-testid="input-hint-error">{$field.errors[0]}</p>
                    </div>
                    {/if}
                  </div>
                  {elseif $field.type == 'password'}
                  <div data-testid="password-input">
                    <label class="text-base mb-2 block text-neutral-700" for="{$field.name}" data-testid="input-label">
                      <span class="text-neutral-900">{$field.label}
                        {if $field.required && (!isset($is_identity_page) || !$is_identity_page)}<span
                          class="text-error" aria-label="To pole jest obowiązkowe">
                          *</span>{/if}
                      </span>
                    </label>
                    <div class="relative">
                      <input type="password" id="{$field.name}"
                        class="bg-neutral-0 box-border w-full p-2.5 text-neutral-900 outline-none placeholder:text-neutral disabled:text-neutral disabled:cursor-not-allowed disabled:bg-neutral-50 pr-12 {if $field.errors}border-2 border-negative focus:border-negative rounded-lg pr-20{else}rounded-lg border-2 border-neutral-300 focus:border-dark-blue{/if}"
                        data-testid="input" autocomplete="{$field.autocomplete}"
                        {if $field.required && (!isset($is_identity_page) || !$is_identity_page)}required="" {/if}
                        placeholder="{$field.label}" name="{$field.name}">
                      <div class="absolute top-3 right-4 flex gap-2">
                        {if $field.errors}
                        <svg aria-hidden="true" data-testid="CircleWarningSolid" xmlns="http://www.w3.org/2000/svg"
                          width="24" height="24" fill="none" viewBox="0 0 24 24">
                          <path fill="#c21e1e" fill-rule="evenodd"
                            d="M12 22C6.486 22 2 17.514 2 12S6.486 2 12 2s10 4.486 10 10-4.486 10-10 10m-1.05-6.45c0 .552.548 1 1.1 1a1 1 0 0 0 1-1v-.1c0-.552-.548-1-1.1-1s-1 .548-1 1.1m.05-3.1a1 1 0 0 0 2 0v-4a1 1 0 0 0-2 0z"
                            clip-rule="evenodd"></path>
                        </svg>
                        {/if}
                        <button type="button" data-testid="password-input-visiblity-toggle" class=""
                          aria-label="{l s='Show/Hide password' d='Shop.Theme.Customeraccount'}">
                          <svg aria-hidden="true" data-testid="Show" xmlns="http://www.w3.org/2000/svg" width="24"
                            height="24" fill="none" viewBox="0 0 24 24">
                            <g fill="#001489">
                              <path
                                d="M12 19c-3.781 0-7.044-2.454-9.115-4.512l.705-.71-.727.689c-.5-.497-.861-.857-1.084-1.537-.165-.537-.165-1.323-.005-1.844.228-.696.59-1.056 1.09-1.553C4.955 7.453 8.218 5 12 5s7.044 2.454 9.115 4.512c.522.518.883.878 1.106 1.558.165.537.165 1.323.004 1.844-.227.696-.588 1.056-1.088 1.553C19.044 16.547 15.78 19 12 19m0-12c-3.263 0-6.23 2.462-7.705 3.93-.463.46-.547.555-.614.76-.036.118-.036.502.005.636.062.19.146.284.587.722l.022.021C5.77 14.538 8.737 17 12 17s6.228-2.462 7.705-3.93c.463-.46.547-.555.613-.76a1.8 1.8 0 0 0-.005-.636c-.061-.19-.145-.284-.587-.722C18.228 9.462 15.263 7 12 7">
                              </path>
                              <path
                                d="M12 15c-1.654 0-3-1.346-3-3s1.346-3 3-3 3 1.346 3 3-1.346 3-3 3m0-4a1 1 0 0 0 0 2 1 1 0 0 0 0-2">
                              </path>
                            </g>
                          </svg>
                        </button>
                      </div>
                    </div>
                    {if $field.errors}
                    <div class="relative mt-2 flex flex-row items-center gap-2 text-error-500" data-testid="input-hint">
                      <p class="text-body-small" data-testid="input-hint-error">{$field.errors[0]}</p>
                    </div>
                    {/if}
                    <script>
                      document.addEventListener('DOMContentLoaded', function() {
                        var passwordInput = document.getElementById('{$field.name}');
                        var toggleBtn = document.querySelector('[data-testid="password-input-visiblity-toggle"]');
                        var icon = toggleBtn.querySelector('svg');
                        if (!passwordInput || !toggleBtn) return;

                        function showIcon() {
                          icon.setAttribute('data-testid', 'Hide');
                          toggleBtn.setAttribute('aria-label', "{l s='Hide password' d='Shop.Theme.Customeraccount'}");
                        }

                        function hideIcon() {
                          icon.setAttribute('data-testid', 'Show');
                          toggleBtn.setAttribute('aria-label', "{l s='Show password' d='Shop.Theme.Customeraccount'}");
                        }
                        toggleBtn.addEventListener('click', function() {
                          if (passwordInput.type === 'password') {
                            passwordInput.type = 'text';
                            showIcon();
                          } else {
                            passwordInput.type = 'password';
                            hideIcon();
                          }
                        });
                      });
                    </script>
                  </div>
                  {else}
                  <div data-testid="{$field.name}-input">
                    <label class="text-base mb-2 block text-neutral-700" for="{$field.name}" data-testid="input-label">
                      <span class="text-neutral-900">{$field.label}
                        {if $field.required}<span class="text-error" aria-label="To pole jest obowiązkowe">
                          *</span>{/if}
                      </span>
                    </label>
                    <div class="relative">
                      <input id="{$field.name}"
                        class="bg-neutral-0 box-border w-full p-2.5 text-neutral-900 outline-none rounded-lg border-2 placeholder:text-neutral disabled:text-neutral disabled:cursor-not-allowed disabled:bg-neutral-50 {if $field.errors}border-2 border-negative focus:border-negative{else}border-neutral-300 focus:border-dark-blue{/if}"
                        data-testid="input" {if $field.required}required="" {/if} type="{$field.type}"
                        autocomplete="{$field.autocomplete}" placeholder="{$field.label}" name="{$field.name}"
                        value="{if isset($is_identity_page) && $is_identity_page}{$field.value}{/if}">
                      {if $field.errors}
                      <div class="absolute top-3 right-4 flex gap-2">
                        <svg aria-hidden="true" data-testid="CircleWarningSolid" xmlns="http://www.w3.org/2000/svg"
                          width="24" height="24" fill="none" viewBox="0 0 24 24">
                          <path fill="#c21e1e" fill-rule="evenodd"
                            d="M12 22C6.486 22 2 17.514 2 12S6.486 2 12 2s10 4.486 10 10-4.486 10-10 10m-1.05-6.45c0 .552.548 1 1.1 1a1 1 0 0 0 1-1v-.1c0-.552-.548-1-1.1-1s-1 .548-1 1.1m.05-3.1a1 1 0 0 0 2 0v-4a1 1 0 0 0-2 0z"
                            clip-rule="evenodd"></path>
                        </svg>
                      </div>
                      {/if}
                    </div>
                    {if $field.errors}
                    <div class="relative mt-2 flex flex-row items-center gap-2 text-error-500" data-testid="input-hint">
                      <p class="text-body-small" data-testid="input-hint-error">{$field.errors[0]}</p>
                    </div>
                    {/if}
                  </div>
                  {/if}
                  {/foreach}
                  {$hook_create_account_form nofilter}
                </div>

                {block name='customer_form_footer'}
                <footer class="form-footer text-sm-center clearfix">
                  <input type="hidden" name="submitCreate" value="1">
                  <button data-link-action="save-customer" type="submit"
                    class="relative box-border flex max-w-full items-center justify-center gap-1 rounded-full text-base font-medium py-2.5 px-5 bg-dark-blue-500 text-neutral-0 hover:bg-dark-blue-300 active:bg-dark-blue-700 focus:bg-dark-blue-300 focus:outline focus:outline-2 focus:outline-dark-blue-500 focus:outline-offset-2 disabled:bg-neutral-150 disabled:text-neutral-700 disabled:outline disabled:outline-1 disabled:outline-neutral w-full"
                    data-testid="submit-button">
                    <span class="truncate px-1">{l s='Save' d='Shop.Theme.Actions'}</span>
                  </button>
                </footer>
                {/block}

              </form>
            </section>
            <div class="relative mt-8 mb-6 min-h-5" aria-hidden="true">
              <div class="absolute inset-0 flex items-center">
                <div class="w-full border-t-2 border-neutral-300"></div>
              </div>
            </div>
            <section aria-labelledby="_R_5fiupfivjap5snpfivbH1_"><span>Masz już konto?</span><a
                class="text-dark-blue-500 ml-1 underline" href="/pl-pl/zaloguj-sie/"
                id="_R_5fiupfivjap5snpfivbH1_">Zaloguj się</a></section>
          </div>
          <!--$-->
          <!--/$-->
        </div>
        <div
          class="relative hidden justify-center after:absolute after:top-0 after:left-0 after:h-full after:w-px after:bg-neutral-50 lg:order-last lg:flex lg:basis-1/2">
          <aside class="max-w-md py-20 pl-4" aria-label="Korzyści z posiadania konta „Moje Action”">
            <h2 class="heading-xl mt-2 mb-6" data-testid="login-usps-title">Jeszcze więcej korzyści z kontem
              Action</h2>
            <ul class="flex flex-col items-center gap-4" data-testid="my-action-usps">
              <li class="flex items-center gap-4"><svg aria-hidden="true" data-testid="Check" class="shrink-0"
                  xmlns="http://www.w3.org/2000/svg" width="26" height="26" fill="none" viewBox="0 0 24 24">
                  <path fill="#259300"
                    d="M10.24 17.243a1 1 0 0 1-.707-.293l-4.24-4.243a1 1 0 0 1 1.415-1.414l3.533 3.536 7.782-7.78a1 1 0 1 1 1.414 1.415l-8.49 8.486a1 1 0 0 1-.707.293">
                  </path>
                </svg><span>Dowiesz się przed innymi o najnowszych produktach i Promocjach Tygodnia</span></li>
              <li class="flex items-center gap-4"><svg aria-hidden="true" data-testid="Check" class="shrink-0"
                  xmlns="http://www.w3.org/2000/svg" width="26" height="26" fill="none" viewBox="0 0 24 24">
                  <path fill="#259300"
                    d="M10.24 17.243a1 1 0 0 1-.707-.293l-4.24-4.243a1 1 0 0 1 1.415-1.414l3.533 3.536 7.782-7.78a1 1 0 1 1 1.414 1.415l-8.49 8.486a1 1 0 0 1-.707.293">
                  </path>
                </svg><span>Dzięki poręcznej liście zakupów już nigdy nie zapomnisz o niczym w sklepie</span>
              </li>
              <li class="flex items-center gap-4"><svg aria-hidden="true" data-testid="Check" class="shrink-0"
                  xmlns="http://www.w3.org/2000/svg" width="26" height="26" fill="none" viewBox="0 0 24 24">
                  <path fill="#259300"
                    d="M10.24 17.243a1 1 0 0 1-.707-.293l-4.24-4.243a1 1 0 0 1 1.415-1.414l3.533 3.536 7.782-7.78a1 1 0 1 1 1.414 1.415l-8.49 8.486a1 1 0 0 1-.707.293">
                          </path>
                        </svg><span>Będziesz mieć dostęp do cyfrowej Karty Klienta Action, co umożliwia otrzymywanie
                          paragonów w
                          formie cyfrowej</span></li>
                    </ul>
                  </aside>
                </div>
              </div>
            </div>
          </div>
        </main>
      {/block}