{**
 * Copyright since 2007 PrestaShop SA and Contributors
 * PrestaShop is an International Registered Trademark & Property of PrestaShop SA
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License 3.0 (AFL-3.0)
 * that is bundled with this package in the file LICENSE.md.
 * It is also available through the world-wide-web at this URL:
 * https://opensource.org/licenses/AFL-3.0
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@prestashop.com so we can send you a copy immediately.
 *
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade PrestaShop to newer
 * versions in the future. If you wish to customize PrestaShop for your
 * needs please refer to https://devdocs.prestashop.com/ for more information.
 *
 * @author    PrestaShop SA and Contributors <contact@prestashop.com>
 * @copyright Since 2007 PrestaShop SA and Contributors
 * @license   https://opensource.org/licenses/AFL-3.0 Academic Free License 3.0 (AFL-3.0)
 *}
{extends file='page.tpl'}

{block name='page_content_container'}
  <main id="layout-page-content" class="relative flex flex-1 flex-col">
    <div class="px-4 lg:px-8"></div>
    <div class="px-4 md:hidden" data-testid="mobile-search"></div>
    <div class="relative flex w-full flex-col px-4 lg:px-8">
      <div class="mx-auto w-full max-w-7xl">
        <div class="@container my-4 grid grid-cols-1 gap-4 sm:grid-cols-1 md:grid-cols-3 lg:grid-cols-4">
          <div class="col-span-full">
            <h1 class="heading-2xl text-dark-blue-500">Biuro Obsługi Klienta</h1>
          </div><a class="relative lg:max-h-[300px] group block" href="https://pl.action.jobs/" target="_blank"
            data-testid="customer-service-card">
            <div
              class="group border-neutral-150 flex h-full w-full flex-row gap-4 overflow-hidden border md:min-h-[170px] md:flex-col md:gap-0 bg-white">
              <div class="relative h-[75px] w-[75px] overflow-hidden md:mx-0 md:mt-0 md:mb-4 md:h-40 md:w-full"><img
                  alt="Pracuj w Action" loading="lazy" decoding="async" data-nimg="fill"
                  class="h-full w-full object-cover transition-all duration-300 group-hover:scale-105 h-full w-full"
                  style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent"
                  sizes="(min-width: 768px) 50vw, 100vw"
                  srcset="https://asset.action.com/image/upload/w_128/Employee_StoreEmployee_Store_Teamwork_2024_gjaf6u.webp 128w, https://asset.action.com/image/upload/w_256/Employee_StoreEmployee_Store_Teamwork_2024_gjaf6u.webp 256w, https://asset.action.com/image/upload/w_640/Employee_StoreEmployee_Store_Teamwork_2024_gjaf6u.webp 640w, https://asset.action.com/image/upload/w_1080/Employee_StoreEmployee_Store_Teamwork_2024_gjaf6u.webp 1080w, https://asset.action.com/image/upload/w_1920/Employee_StoreEmployee_Store_Teamwork_2024_gjaf6u.webp 1920w"
                  src="https://asset.action.com/image/upload/w_1920/Employee_StoreEmployee_Store_Teamwork_2024_gjaf6u.webp">
              </div>
              <div class="flex flex-1 flex-row items-center justify-between p-2 pl-0 md:flex-col md:items-start md:p-4">
                <h2 class="heading-lg text-dark-blue-500 line-clamp-2 font-bold first-letter:uppercase md:mb-4"
                  data-testid="customer-service-card-title">Pracuj w Action</h2>
                <div class="flex items-center justify-between md:mt-auto">
                  <div class="hidden md:block"><button type="button"
                      class="relative box-border flex max-w-full items-center justify-center gap-1 rounded-full text-base font-medium py-2.5 px-5 bg-orange-500 text-neutral-0 hover:bg-orange-700 active:bg-orange-900 focus:bg-orange-700 focus:outline focus:outline-2 focus:outline-dark-blue-500 focus:outline-offset-2 disabled:bg-neutral-150 disabled:text-neutral-700 disabled:outline disabled:outline-1 disabled:outline-neutral w-fit"
                      data-testid="customer-service-card-button"><span class="truncate px-1">Action.jobs</span><span
                        class="shrink-0" style="display:block;width:24px;height:24px"><svg aria-hidden="true"
                          data-testid="ExternalLink" class="shrink-0" xmlns="http://www.w3.org/2000/svg" width="24"
                          height="24" fill="currentColor" viewBox="0 0 24 24">
                          <path
                            d="M15.8 20H8.2c-1.237 0-1.919 0-2.562-.326a3.04 3.04 0 0 1-1.31-1.314C4 17.722 4 17.04 4 15.8V8.2c0-1.239 0-1.922.33-2.565a3.03 3.03 0 0 1 1.298-1.304C6.281 4 6.963 4 8.2 4H10a1 1 0 0 1 0 2H8.2c-.868 0-1.441 0-1.658.109-.181.094-.337.25-.43.433C6 6.762 6 7.334 6 8.2v7.6c0 .866 0 1.438.11 1.652.095.189.25.345.441.443.208.105.781.105 1.65.105H15.8c.868 0 1.441 0 1.659-.11.18-.093.336-.25.43-.433.111-.219.111-.79.111-1.654V14a1 1 0 0 1 2 0v1.803c0 1.237 0 1.919-.33 2.562a3.03 3.03 0 0 1-1.298 1.305c-.653.33-1.335.33-2.572.33M13 12a1 1 0 0 1-.707-1.707L17.586 5H15a1 1 0 0 1 0-2h5.003a1 1 0 0 1 .704.293 1 1 0 0 1 .293.704V9a1 1 0 0 1-2 0V6.414l-5.293 5.293A1 1 0 0 1 13 12">
                          </path>
                        </svg></span></button></div>
                  <div class="flex items-center md:hidden"><span style="display:block;width:20px;height:20px"><svg
                        aria-hidden="true" data-testid="ExternalLink" xmlns="http://www.w3.org/2000/svg" width="20"
                        height="20" fill="none" viewBox="0 0 24 24">
                        <path fill="#001489"
                          d="M15.8 20H8.2c-1.237 0-1.919 0-2.562-.326a3.04 3.04 0 0 1-1.31-1.314C4 17.722 4 17.04 4 15.8V8.2c0-1.239 0-1.922.33-2.565a3.03 3.03 0 0 1 1.298-1.304C6.281 4 6.963 4 8.2 4H10a1 1 0 0 1 0 2H8.2c-.868 0-1.441 0-1.658.109-.181.094-.337.25-.43.433C6 6.762 6 7.334 6 8.2v7.6c0 .866 0 1.438.11 1.652.095.189.25.345.441.443.208.105.781.105 1.65.105H15.8c.868 0 1.441 0 1.659-.11.18-.093.336-.25.43-.433.111-.219.111-.79.111-1.654V14a1 1 0 0 1 2 0v1.803c0 1.237 0 1.919-.33 2.562a3.03 3.03 0 0 1-1.298 1.305c-.653.33-1.335.33-2.572.33M13 12a1 1 0 0 1-.707-1.707L17.586 5H15a1 1 0 0 1 0-2h5.003a1 1 0 0 1 .704.293 1 1 0 0 1 .293.704V9a1 1 0 0 1-2 0V6.414l-5.293 5.293A1 1 0 0 1 13 12">
                        </path>
                      </svg></span></div>
                </div>
              </div>
            </div>
</a><a class="relative group block" href="{$urls.pages.stores}" data-testid="customer-service-card">
            <div
              class="group border-neutral-150 flex h-full w-full flex-row gap-4 overflow-hidden border md:min-h-[170px] md:flex-col md:gap-0 bg-cyan-50">
              <div class="flex justify-center md:mb-4 md:justify-start"><img alt="Znajdź sklep" loading="lazy" width="48"
                  height="48" decoding="async" data-nimg="1"
                  class="h-[75px] w-[75px] rounded-full p-2 transition-all duration-300 group-hover:scale-110 md:m-4 md:mb-0 md:h-16 md:w-16 md:p-0"
                  style="color:transparent" sizes="(min-width: 768px) 50vw, 100vw"
                  srcset="https://asset.action.com/image/upload/w_128/App_Onboarding_Illustration_Location_2025_uz23lr.webp 128w, https://asset.action.com/image/upload/w_256/App_Onboarding_Illustration_Location_2025_uz23lr.webp 256w, https://asset.action.com/image/upload/w_640/App_Onboarding_Illustration_Location_2025_uz23lr.webp 640w, https://asset.action.com/image/upload/w_1080/App_Onboarding_Illustration_Location_2025_uz23lr.webp 1080w, https://asset.action.com/image/upload/w_1920/App_Onboarding_Illustration_Location_2025_uz23lr.webp 1920w"
                  src="https://asset.action.com/image/upload/w_1920/App_Onboarding_Illustration_Location_2025_uz23lr.webp">
              </div>
              <div class="flex flex-1 flex-row items-center justify-between p-2 pl-0 md:flex-col md:items-start md:p-4">
                <h2 class="heading-lg text-dark-blue-500 line-clamp-2 font-bold first-letter:uppercase md:mb-4"
                  data-testid="customer-service-card-title">Znajdź sklep</h2>
                <div class="flex items-center justify-between md:mt-auto">
                  <div class="hidden md:block"><span class="text-dark-blue-500 flex items-center text-base font-medium"
                      data-testid="customer-service-card-link-text">Zobacz wszystko
                      <!-- --> <span class="ml-1" style="display:block;width:20px;height:20px"><svg aria-hidden="true"
                          data-testid="ChevronRight" class="ml-1" xmlns="http://www.w3.org/2000/svg" width="20"
                          height="20" fill="none" viewBox="0 0 24 24">
                          <path fill="#505862"
                            d="M9 20a1 1 0 0 1-.707-1.707L14.586 12 8.293 5.707a1 1 0 1 1 1.414-1.414l7 7a1 1 0 0 1 0 1.414l-7 7A1 1 0 0 1 9 20">
                          </path>
                        </svg></span>
                    </span></div>
                  <div class="flex items-center md:hidden"><span style="display:block;width:20px;height:20px"><svg
                        aria-hidden="true" data-testid="ChevronRight" xmlns="http://www.w3.org/2000/svg" width="20"
                        height="20" fill="none" viewBox="0 0 24 24">
                        <path fill="#001489"
                          d="M9 20a1 1 0 0 1-.707-1.707L14.586 12 8.293 5.707a1 1 0 1 1 1.414-1.414l7 7a1 1 0 0 1 0 1.414l-7 7A1 1 0 0 1 9 20">
                        </path>
                      </svg></span></div>
                </div>
              </div>
            </div>
</a><a class="relative group block" href="{$link->getPageLink('productinfo')}"
            data-testid="customer-service-card">
            <div
              class="group border-neutral-150 flex h-full w-full flex-row gap-4 overflow-hidden border md:min-h-[170px] md:flex-col md:gap-0 bg-white">
              <div class="flex justify-center md:mb-4 md:justify-start"><img alt="Ważne informacje o produkcie"
                  loading="lazy" width="48" height="48" decoding="async" data-nimg="1"
                  class="h-[75px] w-[75px] rounded-full p-2 transition-all duration-300 group-hover:scale-110 md:m-4 md:mb-0 md:h-16 md:w-16 md:p-0"
                  style="color:transparent" sizes="(min-width: 768px) 50vw, 100vw"
                  srcset="https://asset.action.com/image/upload/w_128/App_Onboarding_Illustration_No_Results_2025_avk9hn.webp 128w, https://asset.action.com/image/upload/w_256/App_Onboarding_Illustration_No_Results_2025_avk9hn.webp 256w, https://asset.action.com/image/upload/w_640/App_Onboarding_Illustration_No_Results_2025_avk9hn.webp 640w, https://asset.action.com/image/upload/w_1080/App_Onboarding_Illustration_No_Results_2025_avk9hn.webp 1080w, https://asset.action.com/image/upload/w_1920/App_Onboarding_Illustration_No_Results_2025_avk9hn.webp 1920w"
                  src="https://asset.action.com/image/upload/w_1920/App_Onboarding_Illustration_No_Results_2025_avk9hn.webp">
              </div>
              <div class="flex flex-1 flex-row items-center justify-between p-2 pl-0 md:flex-col md:items-start md:p-4">
                <h2 class="heading-lg text-dark-blue-500 line-clamp-2 font-bold first-letter:uppercase md:mb-4"
                  data-testid="customer-service-card-title">Ważne informacje o produkcie</h2>
                <div class="flex items-center justify-between md:mt-auto">
                  <div class="hidden md:block"><span class="text-dark-blue-500 flex items-center text-base font-medium"
                      data-testid="customer-service-card-link-text">Zobacz wszystko
                      <!-- --> <span class="ml-1" style="display:block;width:20px;height:20px"><svg aria-hidden="true"
                          data-testid="ChevronRight" class="ml-1" xmlns="http://www.w3.org/2000/svg" width="20"
                          height="20" fill="none" viewBox="0 0 24 24">
                          <path fill="#505862"
                            d="M9 20a1 1 0 0 1-.707-1.707L14.586 12 8.293 5.707a1 1 0 1 1 1.414-1.414l7 7a1 1 0 0 1 0 1.414l-7 7A1 1 0 0 1 9 20">
                          </path>
                        </svg></span>
                    </span></div>
                  <div class="flex items-center md:hidden"><span style="display:block;width:20px;height:20px"><svg
                        aria-hidden="true" data-testid="ChevronRight" xmlns="http://www.w3.org/2000/svg" width="20"
                        height="20" fill="none" viewBox="0 0 24 24">
                        <path fill="#001489"
                          d="M9 20a1 1 0 0 1-.707-1.707L14.586 12 8.293 5.707a1 1 0 1 1 1.414-1.414l7 7a1 1 0 0 1 0 1.414l-7 7A1 1 0 0 1 9 20">
                        </path>
                      </svg></span></div>
                </div>
              </div>
            </div>
          </a><a class="relative group block" href="#" onclick="alert('Funkcjonalność niedostępna w tej wersji.'); return false;"
            data-testid="customer-service-card">
            <div
              class="group border-neutral-150 flex h-full w-full flex-row gap-4 overflow-hidden border md:min-h-[170px] md:flex-col md:gap-0 bg-white">
              <div class="flex justify-center md:mb-4 md:justify-start"><img alt="Produkty, dostępność i ceny"
                  loading="lazy" width="48" height="48" decoding="async" data-nimg="1"
                  class="h-[75px] w-[75px] rounded-full p-2 transition-all duration-300 group-hover:scale-110 md:m-4 md:mb-0 md:h-16 md:w-16 md:p-0"
                  style="color:transparent" sizes="(min-width: 768px) 50vw, 100vw"
                  srcset="https://asset.action.com/image/upload/w_128/App_Onboarding_Illustration_Bag_2025_a1dgcu.webp 128w, https://asset.action.com/image/upload/w_256/App_Onboarding_Illustration_Bag_2025_a1dgcu.webp 256w, https://asset.action.com/image/upload/w_640/App_Onboarding_Illustration_Bag_2025_a1dgcu.webp 640w, https://asset.action.com/image/upload/w_1080/App_Onboarding_Illustration_Bag_2025_a1dgcu.webp 1080w, https://asset.action.com/image/upload/w_1920/App_Onboarding_Illustration_Bag_2025_a1dgcu.webp 1920w"
                  src="https://asset.action.com/image/upload/w_1920/App_Onboarding_Illustration_Bag_2025_a1dgcu.webp">
              </div>
              <div class="flex flex-1 flex-row items-center justify-between p-2 pl-0 md:flex-col md:items-start md:p-4">
                <h2 class="heading-lg text-dark-blue-500 line-clamp-2 font-bold first-letter:uppercase md:mb-4"
                  data-testid="customer-service-card-title">Produkty, dostępność i ceny</h2>
                <div class="flex items-center justify-between md:mt-auto">
                  <div class="hidden md:block"><span class="text-dark-blue-500 flex items-center text-base font-medium"
                      data-testid="customer-service-card-link-text">Zobacz wszystko
                      <!-- --> <span class="ml-1" style="display:block;width:20px;height:20px"><svg aria-hidden="true"
                          data-testid="ChevronRight" class="ml-1" xmlns="http://www.w3.org/2000/svg" width="20"
                          height="20" fill="none" viewBox="0 0 24 24">
                          <path fill="#505862"
                            d="M9 20a1 1 0 0 1-.707-1.707L14.586 12 8.293 5.707a1 1 0 1 1 1.414-1.414l7 7a1 1 0 0 1 0 1.414l-7 7A1 1 0 0 1 9 20">
                          </path>
                        </svg></span>
                    </span></div>
                  <div class="flex items-center md:hidden"><span style="display:block;width:20px;height:20px"><svg
                        aria-hidden="true" data-testid="ChevronRight" xmlns="http://www.w3.org/2000/svg" width="20"
                        height="20" fill="none" viewBox="0 0 24 24">
                        <path fill="#001489"
                          d="M9 20a1 1 0 0 1-.707-1.707L14.586 12 8.293 5.707a1 1 0 1 1 1.414-1.414l7 7a1 1 0 0 1 0 1.414l-7 7A1 1 0 0 1 9 20">
                        </path>
                      </svg></span></div>
                </div>
              </div>
            </div>
          </a><a class="relative group block" href="#" onclick="alert('Funkcjonalność niedostępna w tej wersji.'); return false;"
            data-testid="customer-service-card">
            <div
              class="group border-neutral-150 flex h-full w-full flex-row gap-4 overflow-hidden border md:min-h-[170px] md:flex-col md:gap-0 bg-white">
              <div class="flex justify-center md:mb-4 md:justify-start"><img alt="Zwrot, wymiana, gwarancja"
                  loading="lazy" width="48" height="48" decoding="async" data-nimg="1"
                  class="h-[75px] w-[75px] rounded-full p-2 transition-all duration-300 group-hover:scale-110 md:m-4 md:mb-0 md:h-16 md:w-16 md:p-0"
                  style="color:transparent" sizes="(min-width: 768px) 50vw, 100vw"
                  srcset="https://asset.action.com/image/upload/w_128/App_Onboarding_Illustration_Receipt_2025_hmuyus.webp 128w, https://asset.action.com/image/upload/w_256/App_Onboarding_Illustration_Receipt_2025_hmuyus.webp 256w, https://asset.action.com/image/upload/w_640/App_Onboarding_Illustration_Receipt_2025_hmuyus.webp 640w, https://asset.action.com/image/upload/w_1080/App_Onboarding_Illustration_Receipt_2025_hmuyus.webp 1080w, https://asset.action.com/image/upload/w_1920/App_Onboarding_Illustration_Receipt_2025_hmuyus.webp 1920w"
                  src="https://asset.action.com/image/upload/w_1920/App_Onboarding_Illustration_Receipt_2025_hmuyus.webp">
              </div>
              <div class="flex flex-1 flex-row items-center justify-between p-2 pl-0 md:flex-col md:items-start md:p-4">
                <h2 class="heading-lg text-dark-blue-500 line-clamp-2 font-bold first-letter:uppercase md:mb-4"
                  data-testid="customer-service-card-title">Zwrot, wymiana, gwarancja</h2>
                <div class="flex items-center justify-between md:mt-auto">
                  <div class="hidden md:block"><span class="text-dark-blue-500 flex items-center text-base font-medium"
                      data-testid="customer-service-card-link-text">Zobacz wszystko
                      <!-- --> <span class="ml-1" style="display:block;width:20px;height:20px"><svg aria-hidden="true"
                          data-testid="ChevronRight" class="ml-1" xmlns="http://www.w3.org/2000/svg" width="20"
                          height="20" fill="none" viewBox="0 0 24 24">
                          <path fill="#505862"
                            d="M9 20a1 1 0 0 1-.707-1.707L14.586 12 8.293 5.707a1 1 0 1 1 1.414-1.414l7 7a1 1 0 0 1 0 1.414l-7 7A1 1 0 0 1 9 20">
                          </path>
                        </svg></span>
                    </span></div>
                  <div class="flex items-center md:hidden"><span style="display:block;width:20px;height:20px"><svg
                        aria-hidden="true" data-testid="ChevronRight" xmlns="http://www.w3.org/2000/svg" width="20"
                        height="20" fill="none" viewBox="0 0 24 24">
                        <path fill="#001489"
                          d="M9 20a1 1 0 0 1-.707-1.707L14.586 12 8.293 5.707a1 1 0 1 1 1.414-1.414l7 7a1 1 0 0 1 0 1.414l-7 7A1 1 0 0 1 9 20">
                        </path>
                      </svg></span></div>
                </div>
              </div>
            </div>
          </a><a class="relative group block" href="#" onclick="alert('Funkcjonalność niedostępna w tej wersji.'); return false;"
            data-testid="customer-service-card">
            <div
              class="group border-neutral-150 flex h-full w-full flex-row gap-4 overflow-hidden border md:min-h-[170px] md:flex-col md:gap-0 bg-white">
              <div class="flex justify-center md:mb-4 md:justify-start"><img alt="Sklepy" loading="lazy" width="48"
                  height="48" decoding="async" data-nimg="1"
                  class="h-[75px] w-[75px] rounded-full p-2 transition-all duration-300 group-hover:scale-110 md:m-4 md:mb-0 md:h-16 md:w-16 md:p-0"
                  style="color:transparent" sizes="(min-width: 768px) 50vw, 100vw"
                  srcset="https://asset.action.com/image/upload/w_128/App_Onboarding_Illustration_No_results_stores_2025_vmxeqn.webp 128w, https://asset.action.com/image/upload/w_256/App_Onboarding_Illustration_No_results_stores_2025_vmxeqn.webp 256w, https://asset.action.com/image/upload/w_640/App_Onboarding_Illustration_No_results_stores_2025_vmxeqn.webp 640w, https://asset.action.com/image/upload/w_1080/App_Onboarding_Illustration_No_results_stores_2025_vmxeqn.webp 1080w, https://asset.action.com/image/upload/w_1920/App_Onboarding_Illustration_No_results_stores_2025_vmxeqn.webp 1920w"
                  src="https://asset.action.com/image/upload/w_1920/App_Onboarding_Illustration_No_results_stores_2025_vmxeqn.webp">
              </div>
              <div class="flex flex-1 flex-row items-center justify-between p-2 pl-0 md:flex-col md:items-start md:p-4">
                <h2 class="heading-lg text-dark-blue-500 line-clamp-2 font-bold first-letter:uppercase md:mb-4"
                  data-testid="customer-service-card-title">Sklepy</h2>
                <div class="flex items-center justify-between md:mt-auto">
                  <div class="hidden md:block"><span class="text-dark-blue-500 flex items-center text-base font-medium"
                      data-testid="customer-service-card-link-text">Zobacz wszystko
                      <!-- --> <span class="ml-1" style="display:block;width:20px;height:20px"><svg aria-hidden="true"
                          data-testid="ChevronRight" class="ml-1" xmlns="http://www.w3.org/2000/svg" width="20"
                          height="20" fill="none" viewBox="0 0 24 24">
                          <path fill="#505862"
                            d="M9 20a1 1 0 0 1-.707-1.707L14.586 12 8.293 5.707a1 1 0 1 1 1.414-1.414l7 7a1 1 0 0 1 0 1.414l-7 7A1 1 0 0 1 9 20">
                          </path>
                        </svg></span>
                    </span></div>
                  <div class="flex items-center md:hidden"><span style="display:block;width:20px;height:20px"><svg
                        aria-hidden="true" data-testid="ChevronRight" xmlns="http://www.w3.org/2000/svg" width="20"
                        height="20" fill="none" viewBox="0 0 24 24">
                        <path fill="#001489"
                          d="M9 20a1 1 0 0 1-.707-1.707L14.586 12 8.293 5.707a1 1 0 1 1 1.414-1.414l7 7a1 1 0 0 1 0 1.414l-7 7A1 1 0 0 1 9 20">
                        </path>
                      </svg></span></div>
                </div>
              </div>
            </div>
          </a><a class="relative group block" href="#" onclick="alert('Funkcjonalność niedostępna w tej wersji.'); return false;"
            data-testid="customer-service-card">
            <div
              class="group border-neutral-150 flex h-full w-full flex-row gap-4 overflow-hidden border md:min-h-[170px] md:flex-col md:gap-0 bg-white">
              <div class="flex justify-center md:mb-4 md:justify-start"><img alt="Zamówienia" loading="lazy" width="48"
                  height="48" decoding="async" data-nimg="1"
                  class="h-[75px] w-[75px] rounded-full p-2 transition-all duration-300 group-hover:scale-110 md:m-4 md:mb-0 md:h-16 md:w-16 md:p-0"
                  style="color:transparent" sizes="(min-width: 768px) 50vw, 100vw"
                  srcset="https://asset.action.com/image/upload/w_128/App_Onboarding_Illustration_Bag_2025_a1dgcu.webp 128w, https://asset.action.com/image/upload/w_256/App_Onboarding_Illustration_Bag_2025_a1dgcu.webp 256w, https://asset.action.com/image/upload/w_640/App_Onboarding_Illustration_Bag_2025_a1dgcu.webp 640w, https://asset.action.com/image/upload/w_1080/App_Onboarding_Illustration_Bag_2025_a1dgcu.webp 1080w, https://asset.action.com/image/upload/w_1920/App_Onboarding_Illustration_Bag_2025_a1dgcu.webp 1920w"
                  src="https://asset.action.com/image/upload/w_1920/App_Onboarding_Illustration_Bag_2025_a1dgcu.webp">
              </div>
              <div class="flex flex-1 flex-row items-center justify-between p-2 pl-0 md:flex-col md:items-start md:p-4">
                <h2 class="heading-lg text-dark-blue-500 line-clamp-2 font-bold first-letter:uppercase md:mb-4"
                  data-testid="customer-service-card-title">Zamówienia</h2>
                <div class="flex items-center justify-between md:mt-auto">
                  <div class="hidden md:block"><span class="text-dark-blue-500 flex items-center text-base font-medium"
                      data-testid="customer-service-card-link-text">Zobacz wszystko
                      <!-- --> <span class="ml-1" style="display:block;width:20px;height:20px"><svg aria-hidden="true"
                          data-testid="ChevronRight" class="ml-1" xmlns="http://www.w3.org/2000/svg" width="20"
                          height="20" fill="none" viewBox="0 0 24 24">
                          <path fill="#505862"
                            d="M9 20a1 1 0 0 1-.707-1.707L14.586 12 8.293 5.707a1 1 0 1 1 1.414-1.414l7 7a1 1 0 0 1 0 1.414l-7 7A1 1 0 0 1 9 20">
                          </path>
                        </svg></span>
                    </span></div>
                  <div class="flex items-center md:hidden"><span style="display:block;width:20px;height:20px"><svg
                        aria-hidden="true" data-testid="ChevronRight" xmlns="http://www.w3.org/2000/svg" width="20"
                        height="20" fill="none" viewBox="0 0 24 24">
                        <path fill="#001489"
                          d="M9 20a1 1 0 0 1-.707-1.707L14.586 12 8.293 5.707a1 1 0 1 1 1.414-1.414l7 7a1 1 0 0 1 0 1.414l-7 7A1 1 0 0 1 9 20">
                        </path>
                      </svg></span></div>
                </div>
              </div>
            </div>
          </a><a class="relative group block" href="#" onclick="alert('Funkcjonalność niedostępna w tej wersji.'); return false;"
            data-testid="customer-service-card">
            <div
              class="group border-neutral-150 flex h-full w-full flex-row gap-4 overflow-hidden border md:min-h-[170px] md:flex-col md:gap-0 bg-white">
              <div class="flex justify-center md:mb-4 md:justify-start"><img alt="Płatności i karta podarunkowa"
                  loading="lazy" width="48" height="48" decoding="async" data-nimg="1"
                  class="h-[75px] w-[75px] rounded-full p-2 transition-all duration-300 group-hover:scale-110 md:m-4 md:mb-0 md:h-16 md:w-16 md:p-0"
                  style="color:transparent" sizes="(min-width: 768px) 50vw, 100vw"
                  srcset="https://asset.action.com/image/upload/w_128/App_Onboarding_Illustration_Giftcards_2025_vyfneo.webp 128w, https://asset.action.com/image/upload/w_256/App_Onboarding_Illustration_Giftcards_2025_vyfneo.webp 256w, https://asset.action.com/image/upload/w_640/App_Onboarding_Illustration_Giftcards_2025_vyfneo.webp 640w, https://asset.action.com/image/upload/w_1080/App_Onboarding_Illustration_Giftcards_2025_vyfneo.webp 1080w, https://asset.action.com/image/upload/w_1920/App_Onboarding_Illustration_Giftcards_2025_vyfneo.webp 1920w"
                  src="https://asset.action.com/image/upload/w_1920/App_Onboarding_Illustration_Giftcards_2025_vyfneo.webp">
              </div>
              <div class="flex flex-1 flex-row items-center justify-between p-2 pl-0 md:flex-col md:items-start md:p-4">
                <h2 class="heading-lg text-dark-blue-500 line-clamp-2 font-bold first-letter:uppercase md:mb-4"
                  data-testid="customer-service-card-title">Płatności i karta podarunkowa</h2>
                <div class="flex items-center justify-between md:mt-auto">
                  <div class="hidden md:block"><span class="text-dark-blue-500 flex items-center text-base font-medium"
                      data-testid="customer-service-card-link-text">Zobacz wszystko
                      <!-- --> <span class="ml-1" style="display:block;width:20px;height:20px"><svg aria-hidden="true"
                          data-testid="ChevronRight" class="ml-1" xmlns="http://www.w3.org/2000/svg" width="20"
                          height="20" fill="none" viewBox="0 0 24 24">
                          <path fill="#505862"
                            d="M9 20a1 1 0 0 1-.707-1.707L14.586 12 8.293 5.707a1 1 0 1 1 1.414-1.414l7 7a1 1 0 0 1 0 1.414l-7 7A1 1 0 0 1 9 20">
                          </path>
                        </svg></span>
                    </span></div>
                  <div class="flex items-center md:hidden"><span style="display:block;width:20px;height:20px"><svg
                        aria-hidden="true" data-testid="ChevronRight" xmlns="http://www.w3.org/2000/svg" width="20"
                        height="20" fill="none" viewBox="0 0 24 24">
                        <path fill="#001489"
                          d="M9 20a1 1 0 0 1-.707-1.707L14.586 12 8.293 5.707a1 1 0 1 1 1.414-1.414l7 7a1 1 0 0 1 0 1.414l-7 7A1 1 0 0 1 9 20">
                        </path>
                      </svg></span></div>
                </div>
              </div>
            </div>
          </a><a class="relative group block" href="#" onclick="alert('Funkcjonalność niedostępna w tej wersji.'); return false;"
            data-testid="customer-service-card">
            <div
              class="group border-neutral-150 flex h-full w-full flex-row gap-4 overflow-hidden border md:min-h-[170px] md:flex-col md:gap-0 bg-white">
              <div class="flex justify-center md:mb-4 md:justify-start"><img alt="App" loading="lazy" width="48"
                  height="48" decoding="async" data-nimg="1"
                  class="h-[75px] w-[75px] rounded-full p-2 transition-all duration-300 group-hover:scale-110 md:m-4 md:mb-0 md:h-16 md:w-16 md:p-0"
                  style="color:transparent" sizes="(min-width: 768px) 50vw, 100vw"
                  srcset="https://asset.action.com/image/upload/w_128/App_Onboarding_Illustration_Shoppinglist_2025_fq4viq.webp 128w, https://asset.action.com/image/upload/w_256/App_Onboarding_Illustration_Shoppinglist_2025_fq4viq.webp 256w, https://asset.action.com/image/upload/w_640/App_Onboarding_Illustration_Shoppinglist_2025_fq4viq.webp 640w, https://asset.action.com/image/upload/w_1080/App_Onboarding_Illustration_Shoppinglist_2025_fq4viq.webp 1080w, https://asset.action.com/image/upload/w_1920/App_Onboarding_Illustration_Shoppinglist_2025_fq4viq.webp 1920w"
                  src="https://asset.action.com/image/upload/w_1920/App_Onboarding_Illustration_Shoppinglist_2025_fq4viq.webp">
              </div>
              <div class="flex flex-1 flex-row items-center justify-between p-2 pl-0 md:flex-col md:items-start md:p-4">
                <h2 class="heading-lg text-dark-blue-500 line-clamp-2 font-bold first-letter:uppercase md:mb-4"
                  data-testid="customer-service-card-title">App</h2>
                <div class="flex items-center justify-between md:mt-auto">
                  <div class="hidden md:block"><span class="text-dark-blue-500 flex items-center text-base font-medium"
                      data-testid="customer-service-card-link-text">Zobacz wszystko
                      <!-- --> <span class="ml-1" style="display:block;width:20px;height:20px"><svg aria-hidden="true"
                          data-testid="ChevronRight" class="ml-1" xmlns="http://www.w3.org/2000/svg" width="20"
                          height="20" fill="none" viewBox="0 0 24 24">
                          <path fill="#505862"
                            d="M9 20a1 1 0 0 1-.707-1.707L14.586 12 8.293 5.707a1 1 0 1 1 1.414-1.414l7 7a1 1 0 0 1 0 1.414l-7 7A1 1 0 0 1 9 20">
                          </path>
                        </svg></span>
                    </span></div>
                  <div class="flex items-center md:hidden"><span style="display:block;width:20px;height:20px"><svg
                        aria-hidden="true" data-testid="ChevronRight" xmlns="http://www.w3.org/2000/svg" width="20"
                        height="20" fill="none" viewBox="0 0 24 24">
                        <path fill="#001489"
                          d="M9 20a1 1 0 0 1-.707-1.707L14.586 12 8.293 5.707a1 1 0 1 1 1.414-1.414l7 7a1 1 0 0 1 0 1.414l-7 7A1 1 0 0 1 9 20">
                        </path>
                      </svg></span></div>
                </div>
              </div>
            </div>
          </a><a class="relative group block" href="#" onclick="alert('Funkcjonalność niedostępna w tej wersji.'); return false;"
            data-testid="customer-service-card">
            <div
              class="group border-neutral-150 flex h-full w-full flex-row gap-4 overflow-hidden border md:min-h-[170px] md:flex-col md:gap-0 bg-white">
              <div class="flex justify-center md:mb-4 md:justify-start"><img alt="Moje Action" loading="lazy" width="48"
                  height="48" decoding="async" data-nimg="1"
                  class="h-[75px] w-[75px] rounded-full p-2 transition-all duration-300 group-hover:scale-110 md:m-4 md:mb-0 md:h-16 md:w-16 md:p-0"
                  style="color:transparent" sizes="(min-width: 768px) 50vw, 100vw"
                  srcset="https://asset.action.com/image/upload/w_128/App_Onboarding_Illustration_My_Action_2025_vcgrat.webp 128w, https://asset.action.com/image/upload/w_256/App_Onboarding_Illustration_My_Action_2025_vcgrat.webp 256w, https://asset.action.com/image/upload/w_640/App_Onboarding_Illustration_My_Action_2025_vcgrat.webp 640w, https://asset.action.com/image/upload/w_1080/App_Onboarding_Illustration_My_Action_2025_vcgrat.webp 1080w, https://asset.action.com/image/upload/w_1920/App_Onboarding_Illustration_My_Action_2025_vcgrat.webp 1920w"
                  src="https://asset.action.com/image/upload/w_1920/App_Onboarding_Illustration_My_Action_2025_vcgrat.webp">
              </div>
              <div class="flex flex-1 flex-row items-center justify-between p-2 pl-0 md:flex-col md:items-start md:p-4">
                <h2 class="heading-lg text-dark-blue-500 line-clamp-2 font-bold first-letter:uppercase md:mb-4"
                  data-testid="customer-service-card-title">Moje Action</h2>
                <div class="flex items-center justify-between md:mt-auto">
                  <div class="hidden md:block"><span class="text-dark-blue-500 flex items-center text-base font-medium"
                      data-testid="customer-service-card-link-text">Zobacz wszystko
                      <!-- --> <span class="ml-1" style="display:block;width:20px;height:20px"><svg aria-hidden="true"
                          data-testid="ChevronRight" class="ml-1" xmlns="http://www.w3.org/2000/svg" width="20"
                          height="20" fill="none" viewBox="0 0 24 24">
                          <path fill="#505862"
                            d="M9 20a1 1 0 0 1-.707-1.707L14.586 12 8.293 5.707a1 1 0 1 1 1.414-1.414l7 7a1 1 0 0 1 0 1.414l-7 7A1 1 0 0 1 9 20">
                          </path>
                        </svg></span>
                    </span></div>
                  <div class="flex items-center md:hidden"><span style="display:block;width:20px;height:20px"><svg
                        aria-hidden="true" data-testid="ChevronRight" xmlns="http://www.w3.org/2000/svg" width="20"
                        height="20" fill="none" viewBox="0 0 24 24">
                        <path fill="#001489"
                          d="M9 20a1 1 0 0 1-.707-1.707L14.586 12 8.293 5.707a1 1 0 1 1 1.414-1.414l7 7a1 1 0 0 1 0 1.414l-7 7A1 1 0 0 1 9 20">
                        </path>
                      </svg></span></div>
                </div>
              </div>
            </div>
          </a>
        </div>
        <div class="mb-8 bg-neutral-50 py-4 ">
          <div class="container mx-auto px-4">
            <div class="flex flex-col flex-wrap items-center justify-center gap-6 md:flex-row md:gap-8"><a
                class="text-md group text-dark-blue-500 hover:text-dark-blue-700 flex items-center gap-3 font-medium transition-colors"
href="{$urls.pages.contact}" target="_blank" rel="noopener noreferrer"><span
                  class="h-5 w-5 transition-transform group-hover:scale-110"
                  style="display:block;width:undefinedpx;height:undefinedpx"><svg aria-hidden="true" data-testid="Mail"
                    class="h-5 w-5 transition-transform group-hover:scale-110" xmlns="http://www.w3.org/2000/svg"
                    width="24" height="24" fill="none" viewBox="0 0 24 24">
                    <path fill="#001489"
                      d="M17.8 20H6.2c-1.24 0-1.922 0-2.565-.33a3.04 3.04 0 0 1-1.305-1.303C2 17.722 2 17.04 2 15.8V8.2c0-1.24 0-1.922.33-2.565A3.04 3.04 0 0 1 3.632 4.33C4.278 4 4.96 4 6.2 4h11.6c1.24 0 1.922 0 2.565.33a3.03 3.03 0 0 1 1.305 1.303C22 6.278 22 6.96 22 8.2v7.6c0 1.24 0 1.922-.33 2.565a3.04 3.04 0 0 1-1.303 1.305c-.645.33-1.328.33-2.567.33M4.005 7.377q-.006.35-.005.823v7.6c0 .867 0 1.44.11 1.655.093.182.253.342.437.436C4.76 18 5.333 18 6.2 18h11.6c.867 0 1.44 0 1.655-.11.182-.093.342-.253.436-.437C20 17.24 20 16.667 20 15.8V8.2q.001-.47-.005-.823l-5.515 4.04c-.752.555-1.168.86-1.72 1.009a3.14 3.14 0 0 1-1.495.006c-.577-.155-.992-.46-1.747-1.016zm1.509-1.374 5.187 3.8c.543.4.87.64 1.059.691.152.037.328.036.505-.006.164-.045.49-.285 1.032-.683l5.19-3.802Q18.182 5.999 17.8 6H6.2q-.383 0-.686.003">
                    </path>
                  </svg></span><span>Kontakt</span></a></div>
          </div>
        </div>
      </div>
    </div>
    <!--$-->
    <!--/$-->
  </main>
{/block}