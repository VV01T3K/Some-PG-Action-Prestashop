<footer id="footer" class="bg-dark-blue-500">
  <div class="relative flex w-full flex-col px-4 lg:px-8">
    <div class="mx-auto w-full max-w-7xl">
      <div class="text-neutral-0" data-testid="footer">
        <div
          class="after:bg-dark-blue-300 relative py-14 after:absolute after:-bottom-px after:left-[calc(50%-50vw)] after:hidden after:h-px after:w-screen md:after:block"
          data-testid="footer-top">
          <div class="grid grid-cols-1 gap-14 lg:grid-cols-4">
            {hook h='displayNewsletterAsk'}

            <nav aria-labelledby="_R_4oap5snpfivb_" data-testid="produkty-section">
              <div class="mb-4">
                <h3 class="heading-lg text-neutral-0" id="_R_4oap5snpfivb_" data-testid="produkty-section-title">
                  {l s='Produkty'}
                </h3>
              </div>
              <ul class="flex flex-wrap gap-4" data-testid="produkty-section-list">
                <li class="max-w-full"><a
                    class="relative box-border flex max-w-full items-center justify-center gap-1 rounded-full text-base font-medium py-2.5 px-5 text-neutral-0 outline outline-1 outline-neutral-0 enabled:hover:bg-dark-blue-300 active:bg-neutral-0 hover:bg-dark-blue-300 hover:text-neutral-0 active:text-dark-blue-500 focus:bg-dark-blue-300 focus:text-neutral-0 focus:outline focus:outline-2 focus:outline-neutral-0 focus:outline-offset-2 disabled:text-neutral disabled:outline-neutral"
                    href="{$urls.pages.prices_drop}" data-testid="produkty-link"><span
                      class="truncate px-1">{l s='Promocje'}</span></a></li>
                <li class="max-w-full"><a
                    class="relative box-border flex max-w-full items-center justify-center gap-1 rounded-full text-base font-medium py-2.5 px-5 text-neutral-0 outline outline-1 outline-neutral-0 enabled:hover:bg-dark-blue-300 active:bg-neutral-0 hover:bg-dark-blue-300 hover:text-neutral-0 active:text-dark-blue-500 focus:bg-dark-blue-300 focus:text-neutral-0 focus:outline focus:outline-2 focus:outline-neutral-0 focus:outline-offset-2 disabled:text-neutral disabled:outline-neutral"
                    href="nowe-produkty" data-testid="produkty-link"><span
                      class="truncate px-1">{l s='Nowe produkty'}</span></a></li>
                <li class="max-w-full"><a
                    class="relative box-border flex max-w-full items-center justify-center gap-1 rounded-full text-base font-medium py-2.5 px-5 text-neutral-0 outline outline-1 outline-neutral-0 enabled:hover:bg-dark-blue-300 active:bg-neutral-0 hover:bg-dark-blue-300 hover:text-neutral-0 active:text-dark-blue-500 focus:bg-dark-blue-300 focus:text-neutral-0 focus:outline focus:outline-2 focus:outline-neutral-0 focus:outline-offset-2 disabled:text-neutral disabled:outline-neutral"
                    href="najczesciej-kupowane" data-testid="produkty-link"><span
                      class="truncate px-1">{l s='Najczęściej kupowane'}</span></a></li>
              </ul>
            </nav>
            <nav aria-labelledby="_R_6oap5snpfivb_" data-testid="about-section">
              <div class="mb-4">
                <h3 class="heading-lg text-neutral-0" id="_R_6oap5snpfivb_" data-testid="about-section-title">
                  {l s='Nasza firma'}
                </h3>
              </div>
              <ul class="grid grid-cols-2 flex-col gap-x-4 gap-y-3" data-testid="about-section-list">
                <li class="flex flex-col"><a
                    class="btn-base group btn-link-light w-fit break-words hyphens-auto whitespace-normal"
                    href="{$urls.pages.cms}?id_cms=1" data-testid="about-link"><span
                      class="btn-content-label btn-shadow-dark-blue">{l s='Dostawa'}</span></a></li>
                <li class="flex flex-col"><a
                    class="btn-base group btn-link-light w-fit break-words hyphens-auto whitespace-normal"
                    href="{$urls.pages.cms}?id_cms=2" data-testid="about-link"><span
                      class="btn-content-label btn-shadow-dark-blue">{l s='Nota prawna'}</span></a></li>
                <li class="flex flex-col"><a
                    class="btn-base group btn-link-light w-fit break-words hyphens-auto whitespace-normal"
                    href="{$urls.pages.cms}?id_cms=3" data-testid="about-link"><span
                      class="btn-content-label btn-shadow-dark-blue">{l s='Regulamin użytkowania'}</span></a></li>
                <li class="flex flex-col"><a
                    class="btn-base group btn-link-light w-fit break-words hyphens-auto whitespace-normal"
                    href="{$urls.pages.cms}?id_cms=4" data-testid="about-link"><span
                      class="btn-content-label btn-shadow-dark-blue">{l s='O nas'}</span></a></li>
                <li class="flex flex-col"><a
                    class="btn-base group btn-link-light w-fit break-words hyphens-auto whitespace-normal"
                    href="{$urls.pages.cms}?id_cms=5" data-testid="about-link"><span
                      class="btn-content-label btn-shadow-dark-blue">{l s='Bezpieczna płatność'}</span></a></li>
                <li class="flex flex-col"><a
                    class="btn-base group btn-link-light w-fit break-words hyphens-auto whitespace-normal"
                    href="{$urls.pages.contact}" data-testid="about-link"><span
                      class="btn-content-label btn-shadow-dark-blue">{l s='Kontakt z nami'}</span></a></li>
                <li class="flex flex-col"><a
                    class="btn-base group btn-link-light w-fit break-words hyphens-auto whitespace-normal"
                    href="{$urls.pages.sitemap}" data-testid="about-link"><span
                      class="btn-content-label btn-shadow-dark-blue">{l s='Mapa strony'}</span></a></li>
                <li class="flex flex-col"><a
                    class="btn-base group btn-link-light w-fit break-words hyphens-auto whitespace-normal"
                    href="{$urls.pages.stores}" data-testid="about-link"><span
                      class="btn-content-label btn-shadow-dark-blue">{l s='Sklepy'}</span></a></li>
              </ul>
            </nav>
            <nav aria-labelledby="_R_8oap5snpfivb_" data-testid="twoje-konto-section">
              <div class="mb-4">
                <h3 class="heading-lg text-neutral-0" id="_R_8oap5snpfivb_" data-testid="twoje-konto-section-title">
                  {l s='Twoje konto'}</h3>
              </div>
              <ul class="grid grid-cols-2 flex-col gap-x-4 gap-y-3" data-testid="twoje-konto-section-list">
                <li class="flex flex-col"><a
                    class="btn-base group btn-link-light w-fit break-words hyphens-auto whitespace-normal"
                    href="{$urls.pages.my_account}" data-testid="twoje-konto-link"><span
                      class="btn-content-label btn-shadow-dark-blue">{l s='Twoje konto'}</span></a></li>
                <li class="flex flex-col"><a
                    class="btn-base group btn-link-light w-fit break-words hyphens-auto whitespace-normal"
                    href="{$urls.pages.identity}" data-testid="twoje-konto-link"><span
                      class="btn-content-label btn-shadow-dark-blue">{l s='Dane osobowe'}</span></a></li>
                <li class="flex flex-col"><a
                    class="btn-base group btn-link-light w-fit break-words hyphens-auto whitespace-normal"
                    href="{$urls.pages.history}" data-testid="twoje-konto-link"><span
                      class="btn-content-label btn-shadow-dark-blue">{l s='Zamówienia'}</span></a></li>
                <li class="flex flex-col"><a
                    class="btn-base group btn-link-light w-fit break-words hyphens-auto whitespace-normal"
                    href="{$urls.pages.order_slip}" data-testid="twoje-konto-link"><span
                      class="btn-content-label btn-shadow-dark-blue">{l s='Moje pokwitowania - korekty płatności'}</span></a>
                </li>
                <li class="flex flex-col"><a
                    class="btn-base group btn-link-light w-fit break-words hyphens-auto whitespace-normal"
                    href="{$urls.pages.addresses}" data-testid="twoje-konto-link"><span
                      class="btn-content-label btn-shadow-dark-blue">{l s='Adresy'}</span></a></li>
                <li class="flex flex-col"><a
                    class="btn-base group btn-link-light w-fit break-words hyphens-auto whitespace-normal"
                    href="/module/blockwishlist/lists" data-testid="twoje-konto-link"><span
                      class="btn-content-label btn-shadow-dark-blue">{l s='Lista życzeń'}</span></a></li>
                <li class="flex flex-col"><a
                    class="btn-base group btn-link-light w-fit break-words hyphens-auto whitespace-normal"
                    href="{$urls.pages.authentication}" data-testid="twoje-konto-link"><span
                      class="btn-content-label btn-shadow-dark-blue">{l s='Zaloguj się'}</span></a></li>
              </ul>
            </nav>
          </div>
        </div>
      </div>
    </div>
  </div>
</footer>