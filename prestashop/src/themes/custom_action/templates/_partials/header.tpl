{block name='header'}
  {assign var='logged' value=Context::getContext()->customer->isLogged()}
  {assign var='customerName' value=Context::getContext()->customer->firstname|cat:' '|cat:Context::getContext()->customer->lastname}
  {assign var='cart' value=Context::getContext()->cart}
  {assign var='cart_url' value=$urls.pages.cart}
  <header>
    <div id="skiptocontent" class="sr-only focus-within:not-sr-only">
      <div class="bg-orange-300 px-4 py-1"><a class="text-body-small text-dark-blue-500 font-medium underline"
          href="#layout-page-content" data-testid="skip-content-link">Przejdź do głównej treści</a></div>
    </div>
    <div data-stores-stock-test-pdp-visited="true"></div>
    <section data-testid="header-brand-statement-bar"
      class="bg-dark-blue-500 text-neutral-0 flex h-[32px] flex-wrap justify-center gap-6 p-2">
      <div class="flex items-center overflow-hidden">
        <div class="mr-1 shrink-0"><svg aria-hidden="true" data-testid="Check" xmlns="http://www.w3.org/2000/svg"
            width="16" height="16" fill="none" viewBox="0 0 24 24">
            <path fill="#ffffff"
              d="M10.24 17.243a1 1 0 0 1-.707-.293l-4.24-4.243a1 1 0 0 1 1.415-1.414l3.533 3.536 7.782-7.78a1 1 0 1 1 1.414 1.415l-8.49 8.486a1 1 0 0 1-.707.293">
            </path>
          </svg></div>
        <p class="text-caption text-neutral-0 truncate" data-testid="brand-statement-0">Co tydzień 150 nowych produktów
        </p>
      </div>
      <div class="flex items-center overflow-hidden hidden md:flex">
        <div class="mr-1 shrink-0"><svg aria-hidden="true" data-testid="Check" xmlns="http://www.w3.org/2000/svg"
            width="16" height="16" fill="none" viewBox="0 0 24 24">
            <path fill="#ffffff"
              d="M10.24 17.243a1 1 0 0 1-.707-.293l-4.24-4.243a1 1 0 0 1 1.415-1.414l3.533 3.536 7.782-7.78a1 1 0 1 1 1.414 1.415l-8.49 8.486a1 1 0 0 1-.707.293">
            </path>
          </svg></div>
        <p class="text-caption text-neutral-0 truncate" data-testid="brand-statement-1">Zawsze 1500 produktów poniżej 5 zł
        </p>
      </div>
      <div class="flex items-center overflow-hidden hidden lg:flex">
        <div class="mr-1 shrink-0"><svg aria-hidden="true" data-testid="Check" xmlns="http://www.w3.org/2000/svg"
            width="16" height="16" fill="none" viewBox="0 0 24 24">
            <path fill="#ffffff"
              d="M10.24 17.243a1 1 0 0 1-.707-.293l-4.24-4.243a1 1 0 0 1 1.415-1.414l3.533 3.536 7.782-7.78a1 1 0 1 1 1.414 1.415l-8.49 8.486a1 1 0 0 1-.707.293">
            </path>
          </svg></div>
        <p class="text-caption text-neutral-0 truncate" data-testid="brand-statement-2">Zawsze najniższe ceny</p>
      </div>
    </section>
    <div data-testid="header">
      <div class="relative flex w-full flex-col px-4 lg:px-8">
        <div class="mx-auto w-full max-w-7xl">
          <div class="relative box-content flex h-[40px] w-full items-center justify-start py-4 md:h-[48px] lg:pb-0"
            data-testid="top-menu">
            <div class="lg:hidden"><button type="button" data-testid="hamburger-menu"
                class="flex items-center justify-center justify-start!" style="width:40px;height:40px" aria-label="Menu"
                aria-expanded="false"><svg aria-hidden="true" data-testid="HamburgerLg" xmlns="http://www.w3.org/2000/svg"
                  width="24" height="24" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M21 18H3a1 1 0 1 1 0-2h18a1 1 0 1 1 0 2m0-5H3a1 1 0 1 1 0-2h18a1 1 0 1 1 0 2m0-5H3a1 1 0 1 1 0-2h18a1 1 0 1 1 0 2">
                  </path>
                </svg></button></div><a href="/" aria-label="Powrót do strony głównej" data-testid="header-logo"><svg
                aria-hidden="true" data-testid="ActionLogo" class="h-6 w-[126px] lg:h-8 lg:w-[174px]"
                xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 484 92">
                <path fill="#001489"
                  d="M204.006 91.715c5.895 0 11.37-4.325 12.229-9.662l3.306-20.483c.116-.719-.384-1.306-1.112-1.306h-18.971c-.727 0-1.418.587-1.534 1.305l-1.529 9.443c-.276 1.72-2.041 3.114-3.942 3.114h-14.202c-1.901 0-3.216-1.394-2.94-3.114l8.023-49.831c.276-1.72 2.042-3.115 3.943-3.115h14.203c1.899 0 3.215 1.394 2.938 3.115l-1.508 9.44c-.115.719.387 1.307 1.114 1.307h18.972c.727 0 1.417-.588 1.532-1.306l3.285-20.483c.859-5.336-3.224-9.663-9.118-9.663h-42.971c-5.896 0-11.372 4.327-12.23 9.663l-11.577 71.915c-.859 5.336 3.223 9.661 9.118 9.661zm89.283-70.98c-.116.717-.806 1.306-1.534 1.306h-16.392c-.728 0-1.418.587-1.534 1.305l-10.79 67.063c-.116.719-.806 1.307-1.534 1.307h-18.97c-.727 0-1.228-.588-1.113-1.307l10.79-67.063c.116-.718-.384-1.305-1.112-1.305h-15.707c-.728 0-1.228-.589-1.112-1.307l3.057-18.952c.116-.718.806-1.306 1.533-1.306h56.364c.727 0 1.228.588 1.112 1.306zm190.335-18.95c.116-.718-.384-1.306-1.112-1.306H463.54c-.727 0-1.417.588-1.533 1.306l-6.723 41.763c-.115.718-.49.78-.832.139l-22.409-42.04c-.342-.642-1.217-1.168-1.945-1.168h-12.043c-.728 0-1.418.588-1.533 1.306L402.254 90.41c-.116.718.385 1.305 1.113 1.305h18.973c.728 0 1.418-.587 1.533-1.305l6.721-41.763c.116-.719.49-.781.833-.14l22.408 42.041c.342.642 1.218 1.167 1.945 1.167h12.045c.728 0 1.417-.587 1.533-1.305zM349.621 70.238c-.276 1.702 1.039 3.081 2.941 3.081h14.203c1.9 0 3.665-1.379 3.942-3.08l8.022-49.285c.276-1.702-1.039-3.081-2.939-3.081h-14.203c-1.901 0-3.665 1.38-3.943 3.081zm.413-69.762h42.972c5.895 0 9.976 4.28 9.117 9.557L390.546 81.16c-.859 5.278-6.334 9.556-12.228 9.556h-42.973c-5.895 0-9.977-4.278-9.117-9.556l11.578-71.127c.858-5.277 6.333-9.557 12.228-9.557m-43.978.003c-.728 0-1.418.588-1.534 1.306L290.255 90.41c-.116.719.385 1.306 1.113 1.306h18.97c.727 0 1.418-.587 1.533-1.306l14.268-88.624c.115-.718-.385-1.306-1.113-1.306zM127.077 21.181l-3.543 22.008c-.116.718-.806 1.306-1.533 1.306h-18.439c-.727 0-1.134-.564-.902-1.254l7.412-22.06c.577-1.72 2.587-3.115 4.487-3.115h9.58c1.899 0 3.215 1.394 2.938 3.115M92.163 10.139 65.181 90.461c-.232.69.174 1.254.902 1.254h18.97c.728 0 1.513-.564 1.745-1.254l9.11-27.121c.233-.69 1.017-1.255 1.745-1.255h21.516c.728 0 1.229.588 1.113 1.306l-4.35 27.019c-.115.718.386 1.305 1.113 1.305h18.971c.728 0 1.418-.587 1.534-1.305l12.922-80.27c.859-5.337-3.223-9.664-9.118-9.664h-35.27c-5.896 0-12.128 4.327-13.921 9.663">
                </path>
                <path fill="#62B5E5"
                  d="M47.236 1.723C47.468 1.033 48.253.47 48.98.47h6.036c.728 0 1.134.565.902 1.254L26.11 90.454c-.232.69-1.016 1.254-1.744 1.254H18.33c-.728 0-1.134-.564-.902-1.254zm21.704 0c.23-.69 1.016-1.253 1.744-1.253H81.06c.727 0 1.133.565.901 1.254l-29.806 88.73c-.232.69-1.017 1.254-1.745 1.254H40.033c-.727 0-1.133-.564-.901-1.254zm-34.726 0c.232-.69-.174-1.254-.9-1.254h-1.857c-.9 0-1.295.462-1.584 1.254L.065 90.454c-.231.69.174 1.254.902 1.254h1.86c.877 0 1.294-.408 1.58-1.254z">
                </path>
              </svg></a>
            <div class="ml-auto block md:hidden"></div>
            <div class="hidden md:block md:grow md:px-8 lg:px-12" data-testid="desktop-search">
              <div id="search_widget" data-search-controller-url="{$urls.pages.search}">
                <search class="md:relative md:z-60">
                  <div data-testid="search-bar-container">
                    <div class="relative flex"><label for="_R_272ap5snpfivb_" class="sr-only">Szukaj</label>
                      <div class="relative w-full" style="height:44px">
                        <form class="relative h-full w-full border-neutral rounded-full border search-field" method="get"
                          action="{$urls.pages.search}">
                          <input type="hidden" name="controller" value="search">
                          <div class="relative flex h-full w-full items-center">
                            <div class="h-full grow"><input type="text" autocomplete="off"
                                class="bg-neutral-0 box-border h-full w-full rounded-full py-[10px] text-neutral-900 placeholder:text-neutral-700 focus-visible:outline-none pl-2 pr-24"
                                data-testid="search-bar" placeholder="Czego szukasz?" name="s"
                                value="{$search_string|default:''}"></div>
                            <div class="search-actions absolute top-0 right-0 flex h-full items-center pr-4">
                              <button class="search-clear flex h-6 w-6 items-center justify-center" type="button"
                                data-testid="search-bar-clear-button" aria-label="Wyczyść wyszukiwanie"><svg
                                  aria-hidden="true" data-testid="CloseMd" xmlns="http://www.w3.org/2000/svg" width="24"
                                  height="24" fill="none" viewBox="0 0 24 24">
                                  <path fill="#001489"
                                    d="M18 19a1 1 0 0 1-.707-.293L12 13.414l-5.293 5.293a1 1 0 1 1-1.414-1.414L10.586 12 5.293 6.707a1 1 0 1 1 1.414-1.414L12 10.586l5.293-5.293a1 1 0 1 1 1.414 1.414L13.414 12l5.293 5.293A1 1 0 0 1 18 19">
                                  </path>
                                </svg></button>
                              <div class="search-divider mx-2 h-6 w-px bg-neutral-900 opacity-30" aria-hidden="true">
                              </div>
                              <button class="search-submit flex h-6 w-6 items-center justify-center" type="submit"
                                data-testid="searchbar-button" aria-label="Szukaj"><svg aria-hidden="true"
                                  data-testid="SearchMagnifyingGlass" xmlns="http://www.w3.org/2000/svg" width="24"
                                  height="24" fill="none" viewBox="0 0 24 24">
                                  <path fill="#001489"
                                    d="M21 22a1 1 0 0 1-.707-.293l-5.39-5.39A7.96 7.96 0 0 1 10 18c-4.411 0-8-3.589-8-8s3.589-8 8-8 8 3.589 8 8a7.97 7.97 0 0 1-1.683 4.903l5.39 5.39A1 1 0 0 1 21 22M10 4c-3.309 0-6 2.691-6 6s2.691 6 6 6 6-2.691 6-6-2.691-6-6-6">
                                  </path>
                                </svg></button>
                            </div>
                          </div>
                        </form>
                      </div>
                    </div>
                  </div>
                </search>
              </div>
            </div>
            <div class="relative max-w-[244px]">
              {if $logged}
                <a class="text-dark-blue-500 flex items-center gap-1 rounded-md p-2 font-medium outline-offset-2 hover:bg-neutral-50"
                  href="{$urls.pages.my_account}" rel="nofollow" aria-label="{l s='Sign out' d='Shop.Theme.Actions'}">
                  <svg aria-hidden="true" data-testid="User01" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                    width="24" height="24" fill="none" viewBox="0 0 24 24">
                    <path fill="#001489"
                      d="M19 22a1 1 0 0 1-1-1c0-3.309-2.691-6-6-6s-6 2.691-6 6a1 1 0 1 1-2 0c0-4.411 3.589-8 8-8s8 3.589 8 8a1 1 0 0 1-1 1m-7-10c-2.757 0-5-2.243-5-5s2.243-5 5-5 5 2.243 5 5-2.243 5-5 5m0-8c-1.654 0-3 1.346-3 3s1.346 3 3 3 3-1.346 3-3-1.346-3-3-3">
                    </path>
                  </svg>
                  <div class="hidden min-w-0 md:block" data-testid="header-login-button-text">
                    <div class="Skeleton_default__fyGN4">
                      <div class="truncate">{$customerName}</div>
                    </div>
                  </div>
                </a>
              {else}
                <a class="text-dark-blue-500 flex items-center gap-1 rounded-md p-2 font-medium outline-offset-2 hover:bg-neutral-50"
                  href="{$urls.pages.my_account}" rel="nofollow"
                  aria-label="{l s='Log in to your customer account' d='Shop.Theme.Customeraccount'}">
                  <svg aria-hidden="true" data-testid="User01" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                    width="24" height="24" fill="none" viewBox="0 0 24 24">
                    <path fill="#001489"
                      d="M19 22a1 1 0 0 1-1-1c0-3.309-2.691-6-6-6s-6 2.691-6 6a1 1 0 1 1-2 0c0-4.411 3.589-8 8-8s8 3.589 8 8a1 1 0 0 1-1 1m-7-10c-2.757 0-5-2.243-5-5s2.243-5 5-5 5 2.243 5 5-2.243 5-5 5m0-8c-1.654 0-3 1.346-3 3s1.346 3 3 3 3-1.346 3-3-1.346-3-3-3">
                    </path>
                  </svg>
                  <div class="hidden min-w-0 md:block" data-testid="header-login-button-text">
                    <div class="Skeleton_default__fyGN4">
                      <div class="truncate">{l s='Sign in' d='Shop.Theme.Actions'}</div>
                    </div>
                  </div>
                </a>
              {/if}
              <div
                class="bg-orange pointer-events-none absolute top-1.5 right-0.5 flex h-4 w-4 items-center justify-center rounded-full py-0.5 md:hidden"
                data-testid="header-login-button-check"><svg aria-hidden="true" data-testid="Check"
                  xmlns="http://www.w3.org/2000/svg" width="14" height="14" fill="none" viewBox="0 0 24 24">
                  <path fill="#ffffff"
                    d="M10.24 17.243a1 1 0 0 1-.707-.293l-4.24-4.243a1 1 0 0 1 1.415-1.414l3.533 3.536 7.782-7.78a1 1 0 1 1 1.414 1.415l-8.49 8.486a1 1 0 0 1-.707.293">
                  </path>
                </svg></div>
            </div>
            <div class="-mr-2 flex items-center object-cover">
              <div class="relative flex"><a class="btn-base group btn-light w-fit" href="{$cart_url}" aria-label="Cart"
                  data-testid="cart-button"><span class="btn-content-icon"><svg aria-hidden="true"
                      data-testid="ShoppingCart" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="none"
                      viewBox="0 0 24 24">
                      <path fill="#505862"
                        d="M12 21a1 1 0 0 1-.486-.126C11.126 20.658 2 15.514 2 9c0-3.665 2.218-5.425 4.293-5.849 2.171-.44 4.328.402 5.707 2.113 1.38-1.712 3.537-2.552 5.707-2.113C19.782 3.575 22 5.335 22 9.001c0 6.513-9.126 11.657-9.515 11.873A1 1 0 0 1 12 21M7.4 5.041q-.368 0-.707.07C5.007 5.456 4 6.91 4 9.001c0 4.584 6.197 8.728 8 9.836 1.804-1.108 8-5.252 8-9.837 0-2.09-1.007-3.544-2.693-3.889-1.482-.3-3.479.346-4.387 2.475a1 1 0 0 1-1.84 0C10.31 5.78 8.755 5.04 7.4 5.04">
                      </path>
                    </svg></span></a>
                {if $cart->nbProducts() > 0}
                  <div class="pointer-events-none absolute top-0 right-0">
                    <div class="bg-orange inline-flex rounded-full py-0.5 px-[5px]" data-testid="cart-button-badge">
                      <span class="cart-products-count text-caption text-neutral-0"
                        data-testid="cart-button-badge-text">{$cart->nbProducts()}</span>
                    </div>
                  </div>
                {/if}
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="relative flex w-full flex-col px-4 lg:px-8 hidden lg:block">
        <div class="mx-auto w-full max-w-7xl">
          <nav lang="en" aria-label="Main" data-testid="desktop-navigation" class="flex justify-between">
            <div lang="pl-pl" class="flex gap-6 pt-1">
              <div class="group/submenu relative"><button
                  class="text-body-normal text-dark-blue-500 flex flex-row pt-3 pb-4 font-medium group-hover/submenu:shadow-[inset_0_-2px_0]"
                  aria-expanded="false">Produkty<svg aria-hidden="true" data-testid="CaretDownMd"
                    class="transition-transform duration-300" xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                    fill="none" viewBox="0 0 24 24">
                    <path fill="#001489"
                      d="M12 15a1 1 0 0 1-.707-.293l-4-4a1 1 0 1 1 1.414-1.414L12 12.586l3.293-3.293a1 1 0 1 1 1.414 1.414l-4 4A1 1 0 0 1 12 15">
                    </path>
                  </svg></button>
                <div
                  class="absolute top-full left-0 z-[80] flex overflow-hidden transition-height duration-300 ease-in-out hidden w-[320px]">
                  <div
                    class="bg-neutral-0 pointer-events-none absolute inset-y-0 left-0 h-full w-[320px] transition-all duration-300 ease-in-out rounded-b-md opacity-0 -translate-y-4">
                  </div>
                  <div
                    class="absolute top-0 left-0 w-[320px] flex flex-col pt-2 pb-4 transition-all duration-300 ease-in-out opacity-0 -translate-y-4">
                  </div>
                </div>
              </div><a class="text-body-normal text-dark-blue-500 pt-3 pb-4 font-medium hover:shadow-[inset_0_-2px_0]"
                href="/pl-pl/nowosci/">Nowości</a><a
                class="text-body-normal text-dark-blue-500 pt-3 pb-4 font-medium hover:shadow-[inset_0_-2px_0]"
                href="/pl-pl/promocja-tygodnia/">Promocja Tygodnia</a>
            </div>
            <div lang="pl-pl" class="flex gap-6"><a
                class="flex flex-col justify-center group text-body-small font-normal text-dark-blue-500 my-0.5"
                href="/pl-pl/aplikacja/"><span class="group-hover:shadow-bottom-border">Pobierz aplikację
                  Action</span></a><a
                class="flex flex-col justify-center group text-body-small font-normal text-dark-blue-500 my-0.5"
                href="/pl-pl/sklepy/"><span class="group-hover:shadow-bottom-border">Znajdź sklep</span></a><a
                class="flex flex-col justify-center group text-body-small font-normal text-dark-blue-500 my-0.5"
                href="/pl-pl/biuro-obsugi-klienta/"><span class="group-hover:shadow-bottom-border">Biuro Obsługi
                  Klienta</span></a></div>
          </nav>
        </div>
      </div>
      <div class="-mt-px h-px bg-neutral-50"></div>
    </div>
  </header>
{/block}