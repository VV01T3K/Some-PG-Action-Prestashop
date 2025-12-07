<section aria-label="Zapisz się do newslettera" data-testid="newsletter-section"
  id="blockEmailSubscription_{$hookName}">
  <div class="mb-4">
    <h3 class="heading-lg text-neutral-0" id="_R_2oap5snpfivb_" data-testid="newsletter-section-title">Bądź
      na bieżąco!</h3>
  </div>
  <div class="-mt-3 flex flex-col gap-4">
    <p class="text-neutral-0" data-testid="newsletter-section-text">Zapisz się do naszego newslettera
      pełnego zaskakujących promocji i najnowszych produktów!</p>
    <form action="{$urls.current_url}#blockEmailSubscription_{$hookName}" method="post">
      <div class="flex flex-col gap-4">
        <div data-testid="email-input"><label class="text-base mb-2 block text-neutral-700 sr-only"
            for="_R_6daoap5snpfivb_" data-testid="input-label"><span class="text-neutral-900">Adres
              e-mail</span></label>
          <div class="relative"><input id="_R_6daoap5snpfivb_" value="{$value}"
              class="bg-neutral-0 box-border w-full p-2.5 text-neutral-900 outline-none rounded-lg border-2 placeholder:text-neutral disabled:text-neutral disabled:cursor-not-allowed disabled:bg-neutral-50 focus:border-dark-blue {if $value}border-green-500{else}border-neutral-300{/if}"
              data-testid="input" type="email" autocomplete="email" placeholder="Adres e-mail" name="email">
          </div>
        </div>
        <button name="submitNewsletter" type="submit"
          class="relative box-border flex max-w-full items-center justify-center gap-1 rounded-full text-base font-medium py-2.5 px-5 bg-orange-500 text-neutral-0 hover:bg-orange-700 active:bg-orange-900 focus:bg-orange-700 focus:outline focus:outline-2 focus:outline-dark-blue-500 focus:outline-offset-2 disabled:bg-orange-500 disabled:text-neutral-0 disabled:outline disabled:outline-2 disabled:outline-dark-blue-500 focus:border-neutral-0 w-fit focus:border-2"
          data-testid="submit-button"><span class="truncate px-1">Zapisz się do
            newslettera</span>
        </button>
        <div class="col-xs-12">
          {if $msg}
            <p class="alert {if $nw_error}alert-danger{else}alert-success{/if}">
              {$msg}
            </p>
          {/if}
          {hook h='displayNewsletterRegistration'}
          {if isset($id_module)}
            {hook h='displayGDPRConsent' id_module=$id_module}
          {/if}
        </div>
      </div>
      <input type="hidden" name="blockHookName" value="{$hookName}" />
      <input type="hidden" name="action" value="0">
    </form>
    <div class="flex items-center gap-2"><svg aria-hidden="true" data-testid="Mail" xmlns="http://www.w3.org/2000/svg"
        width="24" height="24" fill="none" viewBox="0 0 24 24">
        <path fill="#ffffff"
          d="M17.8 20H6.2c-1.24 0-1.922 0-2.565-.33a3.04 3.04 0 0 1-1.305-1.303C2 17.722 2 17.04 2 15.8V8.2c0-1.24 0-1.922.33-2.565A3.04 3.04 0 0 1 3.632 4.33C4.278 4 4.96 4 6.2 4h11.6c1.24 0 1.922 0 2.565.33a3.03 3.03 0 0 1 1.305 1.303C22 6.278 22 6.96 22 8.2v7.6c0 1.24 0 1.922-.33 2.565a3.04 3.04 0 0 1-1.303 1.305c-.645.33-1.328.33-2.567.33M4.005 7.377q-.006.35-.005.823v7.6c0 .867 0 1.44.11 1.655.093.182.253.342.437.436C4.76 18 5.333 18 6.2 18h11.6c.867 0 1.44 0 1.655-.11.182-.093.342-.253.436-.437C20 17.24 20 16.667 20 15.8V8.2q.001-.47-.005-.823l-5.515 4.04c-.752.555-1.168.86-1.72 1.009a3.14 3.14 0 0 1-1.495.006c-.577-.155-.992-.46-1.747-1.016zm1.509-1.374 5.187 3.8c.543.4.87.64 1.059.691.152.037.328.036.505-.006.164-.045.49-.285 1.032-.683l5.19-3.802Q18.182 5.999 17.8 6H6.2q-.383 0-.686.003">
        </path>
      </svg>
      <p class="text-body-small text-neutral-0 italic" data-testid="newsletter-section-subtext">Już 700 000
        osób zapisało się do naszego newslettera!</p>
    </div>
  </div>
</section>