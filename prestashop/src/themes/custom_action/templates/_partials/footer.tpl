<footer id="footer" class="bg-dark-blue-500">
  <div class="relative flex w-full flex-col px-4 lg:px-8">
    <div class="mx-auto w-full max-w-7xl">
      <div class="text-neutral-0" data-testid="footer">
        <div
          class="after:bg-dark-blue-300 relative py-14 after:absolute after:-bottom-px after:left-[calc(50%-50vw)] after:hidden after:h-px after:w-screen md:after:block"
          data-testid="footer-top">
          <div class="grid grid-cols-1 gap-14 lg:grid-cols-3">
            {hook h='displayNewsletterAsk'}

            <nav aria-labelledby="_S_1_" data-testid="customer-service-section">
              <div class="mb-4">
                <h3 class="heading-lg text-neutral-0" id="_S_1_" data-testid="customer-service-section-title">Biuro
                  Obsługi Klienta</h3>
              </div>
              <ul class="flex flex-wrap gap-4" data-testid="customer-service-section-list">
                <li class="max-w-full"><a
                    class="relative box-border flex max-w-full items-center justify-center gap-1 rounded-full text-base font-medium py-2.5 px-5 text-neutral-0 outline outline-1 outline-neutral-0 enabled:hover:bg-dark-blue-300 active:bg-neutral-0 hover:bg-dark-blue-300 hover:text-neutral-0 active:text-dark-blue-500 focus:bg-dark-blue-300 focus:text-neutral-0 focus:outline focus:outline-2 focus:outline-neutral-0 focus:outline-offset-2 disabled:text-neutral disabled:outline-neutral"
                    href="{$link->getPageLink('customerservice')}" data-testid="customer-service-link"><span
                      class="truncate px-1">Biuro Obsługi Klienta</span></a></li>
                <li class="max-w-full"><a
                    class="relative box-border flex max-w-full items-center justify-center gap-1 rounded-full text-base font-medium py-2.5 px-5 text-neutral-0 outline outline-1 outline-neutral-0 enabled:hover:bg-dark-blue-300 active:bg-neutral-0 hover:bg-dark-blue-300 hover:text-neutral-0 active:text-dark-blue-500 focus:bg-dark-blue-300 focus:text-neutral-0 focus:outline focus:outline-2 focus:outline-neutral-0 focus:outline-offset-2 disabled:text-neutral disabled:outline-neutral"
                    href="{$link->getPageLink('stores')}" data-testid="customer-service-link"><span
                      class="truncate px-1">Znajdź
                      sklep</span></a></li>
                <li class="max-w-full"><a
                    class="relative box-border flex max-w-full items-center justify-center gap-1 rounded-full text-base font-medium py-2.5 px-5 text-neutral-0 outline outline-1 outline-neutral-0 enabled:hover:bg-dark-blue-300 active:bg-neutral-0 hover:bg-dark-blue-300 hover:text-neutral-0 active:text-dark-blue-500 focus:bg-dark-blue-300 focus:text-neutral-0 focus:outline focus:outline-2 focus:outline-neutral-0 focus:outline-offset-2 disabled:text-neutral disabled:outline-neutral"
                    href="{$link->getPageLink('productinfo')}" data-testid="customer-service-link"><span
                      class="truncate px-1">Ważne informacje o
                      produkcie</span></a></li>
                <li class="max-w-full"><a
                    class="relative box-border flex max-w-full items-center justify-center gap-1 rounded-full text-base font-medium py-2.5 px-5 text-neutral-0 outline outline-1 outline-neutral-0 enabled:hover:bg-dark-blue-300 active:bg-neutral-0 hover:bg-dark-blue-300 hover:text-neutral-0 active:text-dark-blue-500 focus:bg-dark-blue-300 focus:text-neutral-0 focus:outline focus:outline-2 focus:outline-neutral-0 focus:outline-offset-2 disabled:text-neutral disabled:outline-neutral"
                    href="{$link->getPageLink('giftcard')}" data-testid="customer-service-link"><span
                      class="truncate px-1">Karta podarunkowa</span></a></li>
              </ul>
            </nav>

            <nav aria-labelledby="_S_2_" data-testid="about-section">
              <div class="mb-4">
                <h3 class="heading-lg text-neutral-0" id="_S_2_" data-testid="about-section-title">O Action</h3>
              </div>
              <ul class="grid grid-cols-2 flex-col gap-x-4 gap-y-3" data-testid="about-section-list">
                <li class="flex flex-col"><a
                    class="btn-base group btn-link-light w-fit break-words hyphens-auto whitespace-normal"
                    href="{$link->getPageLink('app')}" data-testid="about-link"><span
                      class="btn-content-label btn-shadow-dark-blue">Aplikację</span></a></li>
                <li class="flex flex-col"><a
                    class="btn-base group btn-link-light w-fit break-words hyphens-auto whitespace-normal"
                    href="https://company.action.com/" data-testid="about-link"><span
                      class="btn-content-label btn-shadow-dark-blue">Company website</span></a></li>
                <li class="flex flex-col"><a
                    class="btn-base group btn-link-light w-fit break-words hyphens-auto whitespace-normal"
                    href="{$link->getPageLink('about')}" data-testid="about-link"><span
                      class="btn-content-label btn-shadow-dark-blue">O
                      nas</span></a></li>
                <li class="flex flex-col"><a
                    class="btn-base group btn-link-light w-fit break-words hyphens-auto whitespace-normal"
                    href="{$link->getPageLink('cookies')}" data-testid="about-link"><span
                      class="btn-content-label btn-shadow-dark-blue">Pliki
                      cookies</span></a></li>
                <li class="flex flex-col"><a
                    class="btn-base group btn-link-light w-fit break-words hyphens-auto whitespace-normal"
                    href="https://pl.action.jobs/" data-testid="about-link"><span
                      class="btn-content-label btn-shadow-dark-blue">Pracuj w Action</span></a></li>
                <li class="flex flex-col"><a
                    class="btn-base group btn-link-light w-fit break-words hyphens-auto whitespace-normal"
                    href="{$link->getPageLink('privacy')}" data-testid="about-link"><span
                      class="btn-content-label btn-shadow-dark-blue">Oświadczenie dotyczące prywatności</span></a></li>
                <li class="flex flex-col"><a
                    class="btn-base group btn-link-light w-fit break-words hyphens-auto whitespace-normal"
                    href="{$link->getPageLink('newsroom')}" data-testid="about-link"><span
                      class="btn-content-label btn-shadow-dark-blue">Informacje
                      prasowe</span></a></li>
                <li class="flex flex-col"><a
                    class="btn-base group btn-link-light w-fit break-words hyphens-auto whitespace-normal"
                    href="{$link->getPageLink('disclaimer')}" data-testid="about-link"><span
                      class="btn-content-label btn-shadow-dark-blue">Wyłączenie odpowiedzialności</span></a></li>
                <li class="flex flex-col"><a
                    class="btn-base group btn-link-light w-fit break-words hyphens-auto whitespace-normal"
                    href="{$link->getPageLink('sustainability')}" data-testid="about-link"><span
                      class="btn-content-label btn-shadow-dark-blue">Zrównoważony rozwój</span></a></li>
                <li class="flex flex-col"><a
                    class="btn-base group btn-link-light w-fit break-words hyphens-auto whitespace-normal"
                    href="{$link->getPageLink('communityinfo')}" data-testid="about-link"><span
                      class="btn-content-label btn-shadow-dark-blue">Info dla społeczeństwa</span></a></li>
                <li class="flex flex-col"><a
                    class="btn-base group btn-link-light w-fit break-words hyphens-auto whitespace-normal"
                    href="{$link->getPageLink('storelocation')}" data-testid="about-link"><span
                      class="btn-content-label btn-shadow-dark-blue">Poszukujemy miejsca na sklep</span></a></li>
                <li class="flex flex-col"><a
                    class="btn-base group btn-link-light w-fit break-words hyphens-auto whitespace-normal"
                    href="{$link->getPageLink('compliance')}" data-testid="about-link"><span
                      class="btn-content-label btn-shadow-dark-blue">Deklaracje zgodności</span></a></li>
                <li class="flex flex-col"><a
                    class="btn-base group btn-link-light w-fit break-words hyphens-auto whitespace-normal"
                    onclick="alert('Funkcjonalność niedostępna w tej wersji.'); return false;"
                    data-testid="about-link"><span class="btn-content-label btn-shadow-dark-blue">Nasi laureaci
                      nagród</span></a></li>
                <li class="flex flex-col"><a
                    class="btn-base group btn-link-light w-fit break-words hyphens-auto whitespace-normal"
                    href="{$link->getPageLink('blog')}" data-testid="about-link"><span
                      class="btn-content-label btn-shadow-dark-blue">Blog</span></a></li>
                <li class="flex flex-col"><a
                    class="btn-base group btn-link-light w-fit break-words hyphens-auto whitespace-normal"
                    onclick="alert('Funkcjonalność niedostępna w tej wersji.'); return false;"
                    data-testid="about-link"><span class="btn-content-label btn-shadow-dark-blue">Nasze marki
                      własne</span></a></li>
                <li class="flex flex-col"><a
                    class="btn-base group btn-link-light w-fit break-words hyphens-auto whitespace-normal"
                    href="{$urls.pages.sitemap}" data-testid="about-link"><span
                      class="btn-content-label btn-shadow-dark-blue">{l s='Mapa strony'}</span></a></li>
              </ul>
            </nav>

          </div>
        </div>
        <div class="flex flex-col items-start justify-end gap-y-14 pb-14 md:flex-row md:items-end md:py-6"
          data-testid="footer-bottom">
          <div class="flex flex-row flex-wrap items-center gap-x-10 gap-y-4">
            <section aria-label="Kraj i język"><button tabindex="0"
                onclick="alert('Dostępny jest jedynie język polski.')"
                class="border-neutral-0 text-neutral-0 hover:border-dark-blue-700 hover:bg-dark-blue-700 cursor-pointer rounded-lg border p-3"
                aria-labelledby="_R_rk5ciubsnpfivb_" data-testid="locale-picker-button"><span id="_R_rk5ciubsnpfivb_"
                  class="flex gap-2"><span style="display:block;width:32px;height:24px"><svg aria-hidden="true"
                      data-testid="FlagPlBorder" xmlns="http://www.w3.org/2000/svg" width="32" height="24" fill="none"
                      viewBox="0 0 32 24">
                      <path fill="#DC143C" fill-rule="evenodd" d="M28 18a3 3 0 0 1-3 3H7a3 3 0 0 1-3-3v-6h24z"
                        clip-rule="evenodd"></path>
                      <path fill="white" fill-rule="evenodd" d="M28 12H4V6a3 3 0 0 1 3-3h18a3 3 0 0 1 3 3z"
                        clip-rule="evenodd"></path>
                      <rect width="25" height="19" x="3.5" y="2.5" stroke="#6672B8" rx="3.5"></rect>
                    </svg></span>Polski<svg aria-hidden="true" data-testid="ChevronDown"
                    xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                    <path fill="#ffffff"
                      d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                    </path>
                  </svg></span></button></section>
          </div>
        </div>
      </div>
    </div>
  </div>
</footer>