<main id="layout-page-content" class="relative flex flex-1 flex-col">
  <div class="px-4 lg:px-8"></div>
  <div class="relative flex w-full flex-col px-4 lg:px-8">
    <div class="mx-auto w-full max-w-7xl">
      <div class="flex flex-col lg:flex-row lg:gap-8">
        <div class="lg:basis-1/2">
          <div class="mx-auto mt-6 mb-8 md:max-w-sm lg:mx-0">
            <section aria-labelledby="_R_5fiupfivjap5snpfivb_">
              <h1 id="_R_5fiupfivjap5snpfivb_" class="heading-2xl mb-6" data-testid="login-page-header">Zaloguj się</h1>
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
              <form novalidate="" data-testid="login-form" action="{block name='login_form_actionurl'}{$action}{/block}"
                method="post">

                <div>
                  {block name='login_form_fields'}
                    {foreach from=$formFields item="field"}
                      {block name='form_field'}
                        {if $field.name == 'email'}
                          <div data-testid="email-input">
                            <label class="text-base mb-2 block text-neutral-700" for="{$field.name}" data-testid="input-label">
                              <span class="text-neutral-900">{$field.label}{if $field.required} <span class="text-error"
                                  aria-label="To pole jest obowiązkowe"> *</span>{/if}</span>
                            </label>
                            <div class="relative">
                              <input id="{$field.name}"
                                class="bg-neutral-0 box-border w-full p-2.5 text-neutral-900 outline-none rounded-lg placeholder:text-neutral disabled:text-neutral disabled:cursor-not-allowed disabled:bg-neutral-50 {if $field.errors}border-2 border-negative focus:border-negative{else}rounded-lg border-2 border-neutral-300 focus:border-dark-blue{/if}"
                                data-testid="input" {if $field.required}required="" {/if} type="{$field.type}"
                                autocomplete="{$field.autocomplete}" placeholder="Adres e-mail" name="{$field.name}"
                                value="{$field.value}">
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
                        {elseif $field.name == 'password'}
                          <div data-testid="password-input">
                            <label class="text-base mb-2 block text-neutral-700" for="{$field.name}" data-testid="input-label">
                              <span class="text-neutral-900">{$field.label}{if $field.required} <span class="text-error"
                                  aria-label="To pole jest obowiązkowe"> *</span>{/if}</span>
                            </label>
                            <div class="relative">
                              <input type="password" id="{$field.name}"
                                class="bg-neutral-0 box-border w-full p-2.5 text-neutral-900 outline-none placeholder:text-neutral disabled:text-neutral disabled:cursor-not-allowed disabled:bg-neutral-50 pr-12 {if $field.errors}border-2 border-negative focus:border-negative rounded-lg pr-20{else}rounded-lg border-2 border-neutral-300 focus:border-dark-blue{/if}"
                                data-testid="input" autocomplete="{$field.autocomplete}" {if $field.required}required="" {/if}
                                placeholder="Hasło" name="{$field.name}">
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
                                  aria-label="{l s='Show password' d='Shop.Theme.Customeraccount'}">
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
                                <script>
                                  document.addEventListener('DOMContentLoaded', function() {
                                    var passwordInput = document.getElementById('{$field.name}');
                                    var toggleBtn = document.querySelector(
                                      '[data-testid="password-input-visiblity-toggle"]');
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
                            </div>
                            {if $field.errors}
                              <div class="relative mt-2 flex flex-row items-center gap-2 text-error-500" data-testid="input-hint">
                                <p class="text-body-small" data-testid="input-hint-error">{$field.errors[0]}</p>
                              </div>
                            {/if}
                          </div>
                        {else}
                          {form_field field=$field}
                        {/if}
                      {/block}
                    {/foreach}
                  {/block}
                  <div class="forgot-password">
                    <p class="mt-2 mb-6">
                      <a class="text-dark-blue-500 text-sm underline" href="{$urls.pages.password}" rel="nofollow"
                        data-testid="forgot-password-link">{l s='Forgot your password?' d='Shop.Theme.Customeraccount'}
                      </a>
                    </p>
                  </div>
                </div>

                {block name='login_form_footer'}
                  <footer class="form-footer text-sm-center clearfix">
                    <input type="hidden" name="submitLogin" value="1">
                    {block name='form_buttons'}
                      <button type="submit" id="submit-login" data-link-action="sign-in"
                        class="relative box-border flex max-w-full items-center justify-center gap-1 rounded-full text-base font-medium py-2.5 px-5 bg-dark-blue-500 text-neutral-0 hover:bg-dark-blue-300 active:bg-dark-blue-700 focus:bg-dark-blue-300 focus:outline focus:outline-2 focus:outline-dark-blue-500 focus:outline-offset-2 disabled:bg-neutral-150 disabled:text-neutral-700 disabled:outline disabled:outline-1 disabled:outline-neutral w-full"
                        data-testid="submit-button"><span
                          class="truncate px-1">{l s='Sign in' d='Shop.Theme.Actions'}</span></button>
                    {/block}
                  </footer>
                {/block}

              </form>
            </section>
            <div class="relative mt-8 mb-6 min-h-5" aria-hidden="true">
              <div class="absolute inset-0 flex items-center">
                <div class="w-full border-t-2 border-neutral-300"></div>
              </div>
            </div>
            <section aria-labelledby="_R_5fiupfivjap5snpfivbH1_"><span>Nie masz jeszcze konta Action?</span><a
                class="text-dark-blue-500 ml-1 underline" href="{$urls.pages.register}"
                data-testid="login-page-register-link"
                id="_R_5fiupfivjap5snpfivbH1_">{l s='Create an account' d='Shop.Theme.Customeraccount'}</a></section>
          </div>
          <!--$-->
          <!--/$-->
        </div>
        <div
          class="relative hidden justify-center after:absolute after:top-0 after:left-0 after:h-full after:w-px after:bg-neutral-50 lg:order-last lg:flex lg:basis-1/2">
          <aside class="max-w-md py-20 pl-4" aria-label="Korzyści z posiadania konta „Moje Action”">
            <h2 class="heading-xl mt-2 mb-6" data-testid="login-usps-title">Jeszcze więcej korzyści z kontem Action</h2>
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
                </svg><span>Dzięki poręcznej liście zakupów już nigdy nie zapomnisz o niczym w sklepie</span></li>
              <li class="flex items-center gap-4"><svg aria-hidden="true" data-testid="Check" class="shrink-0"
                  xmlns="http://www.w3.org/2000/svg" width="26" height="26" fill="none" viewBox="0 0 24 24">
                  <path fill="#259300"
                    d="M10.24 17.243a1 1 0 0 1-.707-.293l-4.24-4.243a1 1 0 0 1 1.415-1.414l3.533 3.536 7.782-7.78a1 1 0 1 1 1.414 1.415l-8.49 8.486a1 1 0 0 1-.707.293">
                  </path>
                </svg><span>Będziesz mieć dostęp do cyfrowej Karty Klienta Action, co umożliwia otrzymywanie paragonów w
                  formie cyfrowej</span></li>
            </ul>
          </aside>
        </div>
      </div>
    </div>
  </div>
</main>