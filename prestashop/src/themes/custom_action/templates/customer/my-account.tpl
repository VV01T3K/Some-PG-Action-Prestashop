{* {extends file='customer/page.tpl'}

{block name='page_title'}
  {l s='Your account' d='Shop.Theme.Customeraccount'}
{/block}

{block name='page_content'}
  <div class="row">
    <div class="links">



      {if $customer.addresses|count}
        <a class="col-lg-4 col-md-6 col-sm-6 col-xs-12" id="addresses-link" href="{$urls.pages.addresses}">
          <span class="link-item">
            <i class="material-icons">&#xE56A;</i>
            {l s='Addresses' d='Shop.Theme.Customeraccount'}
          </span>
        </a>
      {else}
        <a class="col-lg-4 col-md-6 col-sm-6 col-xs-12" id="address-link" href="{$urls.pages.address}">
          <span class="link-item">
            <i class="material-icons">&#xE567;</i>
            {l s='Add first address' d='Shop.Theme.Customeraccount'}
          </span>
        </a>
      {/if}

      {if !$configuration.is_catalog}
        <a class="col-lg-4 col-md-6 col-sm-6 col-xs-12" id="history-link" href="{$urls.pages.history}">
          <span class="link-item">
            <i class="material-icons">&#xE916;</i>
            {l s='Order history and details' d='Shop.Theme.Customeraccount'}
          </span>
        </a>
      {/if}

      {if !$configuration.is_catalog}
        <a class="col-lg-4 col-md-6 col-sm-6 col-xs-12" id="order-slips-link" href="{$urls.pages.order_slip}">
          <span class="link-item">
            <i class="material-icons">&#xE8B0;</i>
            {l s='Credit slips' d='Shop.Theme.Customeraccount'}
          </span>
        </a>
      {/if}

      {if $configuration.voucher_enabled && !$configuration.is_catalog}
        <a class="col-lg-4 col-md-6 col-sm-6 col-xs-12" id="discounts-link" href="{$urls.pages.discount}">
          <span class="link-item">
            <i class="material-icons">&#xE54E;</i>
            {l s='Vouchers' d='Shop.Theme.Customeraccount'}
          </span>
        </a>
      {/if}

      {if $configuration.return_enabled && !$configuration.is_catalog}
        <a class="col-lg-4 col-md-6 col-sm-6 col-xs-12" id="returns-link" href="{$urls.pages.order_follow}">
          <span class="link-item">
            <i class="material-icons">&#xE860;</i>
            {l s='Merchandise returns' d='Shop.Theme.Customeraccount'}
          </span>
        </a>
      {/if}

      {block name='display_customer_account'}
        {hook h='displayCustomerAccount'}
      {/block}

    </div>
  </div>
{/block}


{block name='page_footer'}
  {block name='my_account_links'}
    <div class="text-sm-center">
      <a href="{$urls.actions.logout}">
        {l s='Sign out' d='Shop.Theme.Actions'}
      </a>
    </div>
  {/block}
{/block} *}

{extends file='customer/page.tpl'}

{block name='page_content'}
  <main id="layout-page-content" class="relative flex flex-1 flex-col">
    <div class="px-4 lg:px-8"></div>
    <div class="px-4 md:hidden" data-testid="mobile-search"></div>
    <div class="bg-sky-blue-300 h-full w-full">
      <div class="relative flex flex-col lg:px-8 lg:py-0 xl:container xl:mx-auto xl:px-0">
        <div class="flex min-h-14 items-center gap-4 px-4 py-4 lg:px-0 lg:py-6">
          <div class="Skeleton_default__fyGN4">
            <h2 class="heading-lg" data-testid="my-action-welcome-message">Witamy, f</h2>
          </div><button aria-label="Używaj swojej karty klienta w aplikacji"><svg viewBox="0 0 57 37" fill="none"
              width="54" height="32">
              <rect width="57" height="37" rx="4" fill="#001489"></rect>
              <rect x="31" y="13.1765" width="21" height="3" rx="1.5" fill="white"></rect>
              <rect x="31" y="20.1765" width="16" height="3" rx="1.5" fill="white"></rect>
              <circle cx="16.5" cy="17.6765" r="10.5" fill="white"></circle>
              <path fill-rule="evenodd" clip-rule="evenodd"
                d="M21.1156 14.4636L20.7498 16.8942C20.7379 16.9735 20.6667 17.0384 20.5916 17.0384H18.6885C18.6134 17.0384 18.5715 16.9761 18.5954 16.8999L19.3604 14.4636C19.42 14.2736 19.6274 14.1196 19.8236 14.1196H20.8123C21.0083 14.1196 21.1442 14.2736 21.1156 14.4636ZM17.5123 13.2442L14.7274 22.1148C14.7035 22.191 14.7454 22.2534 14.8205 22.2534H16.7785C16.8536 22.2534 16.9346 22.191 16.9586 22.1148L17.8989 19.1196C17.9228 19.0434 18.0038 18.9811 18.0789 18.9811H20.2997C20.3748 18.9811 20.4265 19.046 20.4146 19.1253L19.9656 22.1091C19.9537 22.1884 20.0054 22.2534 20.0805 22.2534H22.0385C22.1137 22.2534 22.1849 22.1884 22.1968 22.1091L23.5306 13.2442C23.6192 12.6549 23.1979 12.177 22.5895 12.177H18.9491C18.3406 12.177 17.6974 12.6549 17.5123 13.2442Z"
                fill="#001489"></path>
              <path fill-rule="evenodd" clip-rule="evenodd"
                d="M12.8752 12.315C12.8992 12.2389 12.9802 12.1765 13.0553 12.1765H13.6782C13.7534 12.1765 13.7952 12.2389 13.7713 12.315L10.6948 22.1143C10.6708 22.1905 10.5898 22.2528 10.5148 22.2528H10.3398H10.2032H10.0667H9.89172C9.81658 22.2528 9.77473 22.1905 9.79866 22.1143L12.8752 12.315ZM15.115 12.315C15.1389 12.2389 15.2199 12.1765 15.295 12.1765H16.366C16.4411 12.1765 16.483 12.2389 16.4591 12.315L13.3826 22.1143C13.3586 22.1905 13.2776 22.2528 13.2025 22.2528H12.1315C12.0564 22.2528 12.0145 22.1905 12.0384 22.1143L15.115 12.315ZM11.5313 12.315C11.5553 12.2389 11.5134 12.1765 11.4383 12.1765H11.2467C11.1538 12.1765 11.1131 12.2275 11.0833 12.315L8.00674 22.1143C7.98281 22.1904 8.02467 22.2528 8.09976 22.2528H8.29185C8.38225 22.2528 8.42537 22.2078 8.45482 22.1143L11.5313 12.315Z"
                fill="#62B5E5"></path>
            </svg></button>
        </div>
        <div class="grid gap-12 lg:grid-cols-3 lg:pb-12">
          <div class="px-4 pb-4 lg:block lg:px-0">
            <nav class="w-full">
              <ul class="flex flex-col gap-2">
                <li>
                  <a class="block w-full relative rounded-none flex justify-between items-center bg-neutral-0 p-4 border-b-2 border-b-neutral-50 text-dark-blue-500 after:content-[''] after:absolute after:block after:opacity-0 hover:after:opacity-100 after:transition-opacity after:ease-in-out after:top-0 after:left-0 after:-bottom-0.5 after:bg-dark-blue-500 after:w-1 "
                    id="identity-link" href="{$urls.pages.identity}" aria-label="Moje dane"
                    data-testid="my-action-navigation-item"><span>Moje dane</span><svg aria-hidden="true"
                      data-testid="ChevronRight" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="none"
                      viewBox="0 0 24 24">
                      <path fill="#001489"
                        d="M9 20a1 1 0 0 1-.707-1.707L14.586 12 8.293 5.707a1 1 0 1 1 1.414-1.414l7 7a1 1 0 0 1 0 1.414l-7 7A1 1 0 0 1 9 20">
                      </path>
                    </svg>
                  </a>
                </li>
                <li>
                  {if !$configuration.is_catalog}
                    <a class="block w-full relative rounded-none flex justify-between items-center bg-neutral-0 p-4 border-b-2 border-b-neutral-50 text-dark-blue-500 after:content-[''] after:absolute after:block after:opacity-0 hover:after:opacity-100 after:transition-opacity after:ease-in-out after:top-0 after:left-0 after:-bottom-0.5 after:bg-dark-blue-500 after:w-1 "
                      href="{$urls.pages.order_slip}" id="order-slips-link" aria-label="Moje cyfrowe paragony"
                      data-testid="my-action-navigation-item"><span>Moje cyfrowe paragony</span><svg aria-hidden="true"
                        data-testid="ChevronRight" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="none"
                        viewBox="0 0 24 24">
                        <path fill="#001489"
                          d="M9 20a1 1 0 0 1-.707-1.707L14.586 12 8.293 5.707a1 1 0 1 1 1.414-1.414l7 7a1 1 0 0 1 0 1.414l-7 7A1 1 0 0 1 9 20">
                        </path>
                      </svg>
                    </a>
                  {/if}
                </li>
                <li>
                  {if $customer.addresses|count}
                    <a class="block w-full relative rounded-none flex justify-between items-center bg-neutral-0 p-4 border-b-2 border-b-neutral-50 text-dark-blue-500 after:content-[''] after:absolute after:block after:opacity-0 hover:after:opacity-100 after:transition-opacity after:ease-in-out after:top-0 after:left-0 after:-bottom-0.5 after:bg-dark-blue-500 after:w-1 "
                      href="{$urls.pages.addresses}" id="addresses-link"
                      aria-label="{l s='Addresses' d='Shop.Theme.Customeraccount'}"
                      data-testid="my-action-navigation-item"><span>{l s='Addresses' d='Shop.Theme.Customeraccount'}</span><svg
                        aria-hidden="true" data-testid="ChevronRight" xmlns="http://www.w3.org/2000/svg" width="16"
                        height="16" fill="none" viewBox="0 0 24 24">
                        <path fill="#001489"
                          d="M9 20a1 1 0 0 1-.707-1.707L14.586 12 8.293 5.707a1 1 0 1 1 1.414-1.414l7 7a1 1 0 0 1 0 1.414l-7 7A1 1 0 0 1 9 20">
                        </path>
                      </svg>
                    </a>
                  {else}
                    <a class="block w-full relative rounded-none flex justify-between items-center bg-neutral-0 p-4 border-b-2 border-b-neutral-50 text-dark-blue-500 after:content-[''] after:absolute after:block after:opacity-0 hover:after:opacity-100 after:transition-opacity after:ease-in-out after:top-0 after:left-0 after:-bottom-0.5 after:bg-dark-blue-500 after:w-1 "
                      href="{$urls.pages.address}" id="address-link"
                      aria-label="{l s='Add first address' d='Shop.Theme.Customeraccount'}"
                      data-testid="my-action-navigation-item"><span>{l s='Add first address' d='Shop.Theme.Customeraccount'}</span><svg
                        aria-hidden="true" data-testid="ChevronRight" xmlns="http://www.w3.org/2000/svg" width="16"
                        height="16" fill="none" viewBox="0 0 24 24">
                        <path fill="#001489"
                          d="M9 20a1 1 0 0 1-.707-1.707L14.586 12 8.293 5.707a1 1 0 1 1 1.414-1.414l7 7a1 1 0 0 1 0 1.414l-7 7A1 1 0 0 1 9 20">
                        </path>
                      </svg>
                    </a>
                  {/if}

                </li>
                {* <li>
                  <a class="block w-full relative rounded-none flex justify-between items-center bg-neutral-0 p-4 border-b-2 border-b-neutral-50 text-dark-blue-500 after:content-[''] after:absolute after:block after:opacity-0 hover:after:opacity-100 after:transition-opacity after:ease-in-out after:top-0 after:left-0 after:-bottom-0.5 after:bg-dark-blue-500 after:w-1 "
                    href="/pl-pl/moje-action/osobiste-preferencje/" aria-label="Osobiste preferencje"
                    data-testid="my-action-navigation-item"><span>Osobiste preferencje</span><svg aria-hidden="true"
                      data-testid="ChevronRight" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="none"
                      viewBox="0 0 24 24">
                      <path fill="#001489"
                        d="M9 20a1 1 0 0 1-.707-1.707L14.586 12 8.293 5.707a1 1 0 1 1 1.414-1.414l7 7a1 1 0 0 1 0 1.414l-7 7A1 1 0 0 1 9 20">
                      </path>
                    </svg>
                  </a>
                </li> *}
                <li>
                  {if !$configuration.is_catalog}
                    <a class="block w-full relative rounded-none flex justify-between items-center bg-neutral-0 p-4 border-b-2 border-b-neutral-50 text-dark-blue-500 after:content-[''] after:absolute after:block after:opacity-0 hover:after:opacity-100 after:transition-opacity after:ease-in-out after:top-0 after:left-0 after:-bottom-0.5 after:bg-dark-blue-500 after:w-1 "
                      href="{$urls.pages.history}" id="history-link"
                      aria-label="{l s='Order history and details' d='Shop.Theme.Customeraccount'}"
                      data-testid="my-action-navigation-item"><span>{l s='Order history and details' d='Shop.Theme.Customeraccount'}</span><svg
                        aria-hidden="true" data-testid="ChevronRight" xmlns="http://www.w3.org/2000/svg" width="16"
                        height="16" fill="none" viewBox="0 0 24 24">
                        <path fill="#001489"
                          d="M9 20a1 1 0 0 1-.707-1.707L14.586 12 8.293 5.707a1 1 0 1 1 1.414-1.414l7 7a1 1 0 0 1 0 1.414l-7 7A1 1 0 0 1 9 20">
                        </path>
                      </svg>
                    </a>
                  {/if}
                </li>
                {* <li><a
                    class="block w-full relative rounded-none flex justify-between items-center bg-neutral-0 p-4 border-b-2 border-b-neutral-50 text-dark-blue-500 after:content-[''] after:absolute after:block after:opacity-0 hover:after:opacity-100 after:transition-opacity after:ease-in-out after:top-0 after:left-0 after:-bottom-0.5 after:bg-dark-blue-500 after:w-1 "
                    href="/pl-pl/aplikacja/warunki-ogolne/" aria-label="Warunki ogólne"
                    data-testid="my-action-navigation-item"><span>Warunki ogólne</span><svg aria-hidden="true"
                      data-testid="ChevronRight" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="none"
                      viewBox="0 0 24 24">
                      <path fill="#001489"
                        d="M9 20a1 1 0 0 1-.707-1.707L14.586 12 8.293 5.707a1 1 0 1 1 1.414-1.414l7 7a1 1 0 0 1 0 1.414l-7 7A1 1 0 0 1 9 20">
                      </path>
                    </svg></a></li>
                <li> *}
                <a class="block w-full relative rounded-none flex justify-between items-center bg-neutral-0 p-4 border-b-2 border-b-neutral-50 text-dark-blue-500 after:content-[''] after:absolute after:block after:opacity-0 hover:after:opacity-100 after:transition-opacity after:ease-in-out after:top-0 after:left-0 after:-bottom-0.5 after:bg-dark-blue-500 after:w-1 "
                  href="{$urls.actions.logout}" aria-label="Wyloguj się"
                  data-testid="my-action-navigation-item"><span>Wyloguj
                    się</span><svg aria-hidden="true" data-testid="ChevronRight" xmlns="http://www.w3.org/2000/svg"
                    width="16" height="16" fill="none" viewBox="0 0 24 24">
                    <path fill="#001489"
                      d="M9 20a1 1 0 0 1-.707-1.707L14.586 12 8.293 5.707a1 1 0 1 1 1.414-1.414l7 7a1 1 0 0 1 0 1.414l-7 7A1 1 0 0 1 9 20">
                    </path>
                  </svg></a>
                </li>
              </ul>
            </nav>
          </div>
          <div class="hidden justify-center lg:col-span-2 lg:flex"><svg width="200" height="200" viewBox="0 0 200 200"
              fill="none">
              <path
                d="M100 184.348C146.392 184.348 184 146.662 184 100.174C184 53.686 146.392 15.9999 100 15.9999C53.6081 15.9999 16 53.686 16 100.174C16 146.662 53.6081 184.348 100 184.348Z"
                fill="#C4E3F5"></path>
              <path
                d="M137.203 53H63.6502C58.3205 53 54 57.3205 54 62.6502V137.831C54 143.16 58.3205 147.481 63.6502 147.481H137.203C142.533 147.481 146.853 143.16 146.853 137.831V62.6502C146.853 57.3205 142.533 53 137.203 53Z"
                fill="white"></path>
              <path
                d="M130.464 79.4963H114.426C111.743 79.4963 108.914 81.4609 108.097 83.8881L95.8288 120.412C95.7233 120.731 95.9051 120.984 96.2374 120.984H104.864C105.196 120.984 105.555 120.726 105.659 120.412L109.797 108.079C109.927 107.749 110.239 107.526 110.591 107.511H120.376C120.709 107.511 120.935 107.773 120.882 108.101L118.903 120.387C118.854 120.659 119.031 120.919 119.303 120.971C119.339 120.978 119.375 120.98 119.411 120.98H128.037C128.365 120.98 128.679 120.717 128.733 120.389L134.609 83.8881C135 81.4609 133.145 79.4963 130.462 79.4963H130.464ZM123.975 88.9085L122.361 98.9134C122.312 99.2457 121.997 99.5084 121.665 99.5084H113.279C112.947 99.5084 112.765 99.2547 112.87 98.9403L116.24 88.9085C116.582 88.0733 117.381 87.5187 118.281 87.494H122.637C123.502 87.494 124.097 88.1271 123.973 88.9085H123.975Z"
                fill="#001489"></path>
              <path
                d="M98.3284 79.4922H103.048C103.38 79.4922 103.562 79.7459 103.457 80.0602L89.9065 120.408C89.7785 120.74 89.4664 120.964 89.1117 120.98H84.3921C84.0643 120.98 83.8779 120.722 83.9834 120.408L97.5381 80.0602C97.6683 79.7302 97.9804 79.5079 98.3329 79.4922H98.3284ZM88.4604 79.4922H91.2064C91.5342 79.4922 91.7206 79.7459 91.6151 80.0602L78.0559 120.408C77.9279 120.738 77.6181 120.962 77.2656 120.98H74.5196C74.1873 120.98 74.0055 120.722 74.111 120.408L87.6612 80.0602C87.7914 79.7279 88.1079 79.5034 88.4649 79.4922H88.4604ZM81.7449 80.0602C81.8549 79.7459 81.6685 79.4922 81.3362 79.4922H80.4942C80.0856 79.4922 79.9038 79.701 79.7713 80.0602L66.2211 120.408C66.1111 120.726 66.2974 120.98 66.6297 120.98H67.4762C67.8714 120.98 68.0667 120.794 68.1947 120.408L81.7404 80.0602H81.7449Z"
                fill="#62B5E5"></path>
              <path fill-rule="evenodd" clip-rule="evenodd"
                d="M100 180.329C144.18 180.329 179.991 144.441 179.991 100.174C179.991 55.9078 144.18 20.0194 100 20.0194C55.8204 20.0194 20.0092 55.9078 20.0092 100.174C20.0092 144.441 55.8204 180.329 100 180.329ZM184 100.174C184 146.662 146.392 184.348 100 184.348C53.6081 184.348 16 146.662 16 100.174C16 53.686 53.6081 15.9999 100 15.9999C146.392 15.9999 184 53.686 184 100.174Z"
                fill="white"></path>
              <path
                d="M36.4035 45.2289L43.2829 48.9919L36.4035 52.7528L32.6426 59.6322L28.8795 52.7528L22 48.9919L28.8795 45.2289L32.6426 38.3494L36.4035 45.2289Z"
                fill="#00B6E7"></path>
              <path
                d="M175.616 150.276L177.168 157.961L169.859 155.121L162.174 156.672L165.014 149.364L163.463 141.678L170.771 144.519L178.457 142.965L175.616 150.276Z"
                fill="#00B6E7"></path>
              <path
                d="M169.299 63.0873L173.931 63.7317L170.889 67.2837L170.244 71.9156L166.693 68.8733L162.061 68.2289L165.103 64.6769L165.747 60.0449L169.299 63.0873Z"
                fill="#FF8200"></path>
              <path
                d="M113.903 171.824L118.535 172.471L115.493 176.023L114.848 180.655L111.294 177.613L106.662 176.968L109.705 173.416L110.349 168.784L113.903 171.824Z"
                fill="#FF8200"></path>
              <path
                d="M95.5548 28.6564C97.6691 28.6564 99.3829 26.9424 99.3829 24.8282C99.3829 22.7139 97.6691 21 95.5548 21C93.4406 21 91.7266 22.7139 91.7266 24.8282C91.7266 26.9424 93.4406 28.6564 95.5548 28.6564Z"
                fill="#00B6E7"></path>
              <path
                d="M69.774 167.782C70.9371 167.782 71.8801 166.839 71.8801 165.676C71.8801 164.512 70.9371 163.57 69.774 163.57C68.6109 163.57 67.668 164.512 67.668 165.676C67.668 166.839 68.6109 167.782 69.774 167.782Z"
                fill="#00B6E7"></path>
              <path
                d="M27.75 124.332C29.8643 124.332 31.5783 122.618 31.5783 120.503C31.5783 118.389 29.8643 116.675 27.75 116.675C25.6358 116.675 23.9219 118.389 23.9219 120.503C23.9219 122.618 25.6358 124.332 27.75 124.332Z"
                fill="#FF8200"></path>
            </svg></div>
        </div>
        <!--$-->
        <!--/$-->
      </div>
    </div>
  </main>
{/block}