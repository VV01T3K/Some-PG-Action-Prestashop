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
    <div class="px-4 md:hidden" data-testid="mobile-search">
      <div class="w-full py-4 md:relative md:z-60">
        <search data-testid="search-bar-minimal">
          <div class="relative w-full" style="height: 44px;">
            <form class="relative h-full w-full border-neutral rounded-full border">
              <div class="relative flex h-full w-full items-center">
                <div class="h-full grow"><input autocomplete="off"
                    class="bg-neutral-0 box-border h-full w-full rounded-full py-[10px] text-neutral-900 placeholder:text-neutral-700 focus-visible:outline-none pl-4 pr-16"
                    data-testid="search-minimal-input-field" readonly="" placeholder="Czego szukasz?" type="text" value=""
                    name="query"></div>
                <div class="absolute top-0 right-0 flex h-full items-center">
                  <div class="flex h-full items-center pr-4"><button class="flex h-6 w-6 items-center justify-center"
                      type="submit" disabled="" data-testid="searchbar-button" aria-label="Szukaj"><svg aria-hidden="true"
                        data-testid="SearchMagnifyingGlass" xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                        fill="none" viewBox="0 0 24 24">
                        <path fill="#001489"
                          d="M21 22a1 1 0 0 1-.707-.293l-5.39-5.39A7.96 7.96 0 0 1 10 18c-4.411 0-8-3.589-8-8s3.589-8 8-8 8 3.589 8 8a7.97 7.97 0 0 1-1.683 4.903l5.39 5.39A1 1 0 0 1 21 22M10 4c-3.309 0-6 2.691-6 6s2.691 6 6 6 6-2.691 6-6-2.691-6-6-6">
                        </path>
                      </svg></button></div>
                </div>
              </div>
            </form>
          </div>
        </search>
      </div>
    </div>
    <div class="flex flex-1 flex-col" data-testid="cms-content-rows">
      <div class="hidden h-8 lg:block"></div>
      <section class="bg-neutral-0 pt-6 md:pt-8 pb-6 md:pb-8 lg:pt-0" aria-label="O nas" data-testid="cms-content-title">
        <div class="relative flex w-full flex-col px-4 lg:px-8">
          <div class="mx-auto w-full max-w-7xl">
            <h1 class="heading-2xl text-dark-blue-500">O nas</h1>
          </div>
        </div>
      </section>
      <section class="bg-neutral-0 pb-6 md:pb-8 lg:pt-0" data-testid="cms-manual-grid">
        <div class="relative flex w-full flex-col px-4 lg:px-8">
          <div class="mx-auto w-full max-w-7xl">
            <div class="flex flex-col gap-2">
              <div class="grid grid-flow-dense grid-cols-2 gap-4 sm:grid-cols-3 sm:gap-6 md:grid-cols-4"><a
                  class="relative flex flex-col gap-2 h-full w-full [&amp;_h3]:line-clamp-1 aspect-4/5 self-start"
                  href="/content/4-o-nas" aria-label="To właśnie jest Action" data-testid="content-card">
                  <div class="relative h-full w-full overflow-hidden rounded-md"><img data-testid="content-card-image"
                      alt="" loading="lazy" decoding="async" data-nimg="fill"
                      class="bg-neutral-50 object-cover object-center transition-transform duration-250 hover:scale-105 h-full w-full"
                      style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent"
                      sizes="(min-width: 1280px) calc(1280px / 4), (min-width: 1024px) calc(100vw / 4), (min-width: 768px) calc(100vw / 4), (min-width: 640px) calc(100vw / 3), calc(100vw / 2)"
                      srcset="/static/images/t_digital_content_card_small_w_128_Action_Logo_SmallCard_316x441_rt6qzi.webp 128w, /static/images/t_digital_content_card_small_w_256_Action_Logo_SmallCard_316x441_rt6qzi.webp 256w, /static/images/t_digital_content_card_small_w_640_Action_Logo_SmallCard_316x441_rt6qzi.webp 640w, /static/images/t_digital_content_card_small_w_1080_Action_Logo_SmallCard_316x441_rt6qzi.webp 1080w, /static/images/t_digital_content_card_small_w_1920_Action_Logo_SmallCard_316x441_rt6qzi.webp 1920w"
                      src="/static/images/t_digital_content_card_small_w_1920_Action_Logo_SmallCard_316x441_rt6qzi.webp">
                  </div>
                  <div class="flex items-center">
                    <h3
                      class="text-dark-blue-500 line-clamp-2 flex min-w-0 items-center text-sm font-bold first-letter:uppercase sm:text-base"
                      data-testid="content-card-title">Oto firma Action</h3><svg aria-hidden="true"
                      data-testid="ChevronRightMd" class="inline-block min-w-4 shrink-0 content-center"
                      xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                      <path fill="#001489"
                        d="M10 17a1 1 0 0 1-.707-1.707L12.586 12 9.293 8.707a1 1 0 1 1 1.414-1.414l4 4a1 1 0 0 1 0 1.414l-4 4A1 1 0 0 1 10 17">
                      </path>
                    </svg>
                  </div>
                </a><a class="relative flex flex-col gap-2 h-full w-full [&amp;_h3]:line-clamp-1 col-span-2 aspect-3/2"
                  onclick="alert('Funkcjonalność niedostępna w tej wersji.'); return false;" aria-label="Produkty"
                  data-testid="content-card">
                  <div class="relative h-full w-full overflow-hidden rounded-md"><img data-testid="content-card-image"
                      alt="" loading="lazy" decoding="async" data-nimg="fill"
                      class="bg-neutral-50 object-cover object-center transition-transform duration-250 hover:scale-105 h-full w-full"
                      style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent"
                      sizes="(min-width: 1280px) calc(1280px / 2), (min-width: 1024px) calc(100vw / 2), (min-width: 768px) calc(100vw / 2), (min-width: 640px) calc(100vw / 3), calc(100vw / 1)"
                      srcset="/static/images/t_digital_content_card_w_128_Basics_HouseholdGoods_Household_Shopper_2024_iqu3wd.webp 128w, /static/images/t_digital_content_card_w_256_Basics_HouseholdGoods_Household_Shopper_2024_iqu3wd.webp 256w, /static/images/t_digital_content_card_w_640_Basics_HouseholdGoods_Household_Shopper_2024_iqu3wd.webp 640w, /static/images/t_digital_content_card_w_1080_Basics_HouseholdGoods_Household_Shopper_2024_iqu3wd.webp 1080w, /static/images/t_digital_content_card_w_1920_Basics_HouseholdGoods_Household_Shopper_2024_iqu3wd.webp 1920w"
                      src="/static/images/t_digital_content_card_w_1920_Basics_HouseholdGoods_Household_Shopper_2024_iqu3wd.webp">
                  </div>
                  <div class="flex items-center">
                    <h3
                      class="text-dark-blue-500 line-clamp-2 flex min-w-0 items-center text-sm font-bold first-letter:uppercase sm:text-base"
                      data-testid="content-card-title">O naszych produktach</h3><svg aria-hidden="true"
                      data-testid="ChevronRightMd" class="inline-block min-w-4 shrink-0 content-center"
                      xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                      <path fill="#001489"
                        d="M10 17a1 1 0 0 1-.707-1.707L12.586 12 9.293 8.707a1 1 0 1 1 1.414-1.414l4 4a1 1 0 0 1 0 1.414l-4 4A1 1 0 0 1 10 17">
                      </path>
                    </svg>
                  </div>
                </a><a class="relative flex flex-col gap-2 h-full w-full [&amp;_h3]:line-clamp-1 aspect-4/5 self-start"
                  href="https://update.action.com/update2024/home" aria-label="Link title" data-testid="content-card">
                  <div class="relative h-full w-full overflow-hidden rounded-md"><img data-testid="content-card-image"
                      alt="" loading="lazy" decoding="async" data-nimg="fill"
                      class="bg-neutral-50 object-cover object-center transition-transform duration-250 hover:scale-105 h-full w-full"
                      style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent"
                      sizes="(min-width: 1280px) calc(1280px / 4), (min-width: 1024px) calc(100vw / 4), (min-width: 768px) calc(100vw / 4), (min-width: 640px) calc(100vw / 3), calc(100vw / 2)"
                      srcset="/static/images/t_digital_content_card_small_w_128_Action_Netherlands_SC_DCNL_Truck_Truckdrivers_2022_eznfyv.webp 128w, /static/images/t_digital_content_card_small_w_256_Action_Netherlands_SC_DCNL_Truck_Truckdrivers_2022_eznfyv.webp 256w, /static/images/t_digital_content_card_small_w_640_Action_Netherlands_SC_DCNL_Truck_Truckdrivers_2022_eznfyv.webp 640w, /static/images/t_digital_content_card_small_w_1080_Action_Netherlands_SC_DCNL_Truck_Truckdrivers_2022_eznfyv.webp 1080w, /static/images/t_digital_content_card_small_w_1920_Action_Netherlands_SC_DCNL_Truck_Truckdrivers_2022_eznfyv.webp 1920w"
                      src="/static/images/t_digital_content_card_small_w_1920_Action_Netherlands_SC_DCNL_Truck_Truckdrivers_2022_eznfyv.webp">
                  </div>
                  <div class="flex items-center">
                    <h3
                      class="text-dark-blue-500 line-clamp-2 flex min-w-0 items-center text-sm font-bold first-letter:uppercase sm:text-base"
                      data-testid="content-card-title">Krok po kroku w kierunku zrównoważonego rozwoju</h3><svg
                      aria-hidden="true" data-testid="ChevronRightMd" class="inline-block min-w-4 shrink-0 content-center"
                      xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                      <path fill="#001489"
                        d="M10 17a1 1 0 0 1-.707-1.707L12.586 12 9.293 8.707a1 1 0 1 1 1.414-1.414l4 4a1 1 0 0 1 0 1.414l-4 4A1 1 0 0 1 10 17">
                      </path>
                    </svg>
                  </div>
                </a><a class="relative flex flex-col gap-2 h-full w-full [&amp;_h3]:line-clamp-1 aspect-4/5 self-start"
                  onclick="alert('Funkcjonalność niedostępna w tej wersji.'); return false;" aria-label="Historia"
                  data-testid="content-card">
                  <div class="relative h-full w-full overflow-hidden rounded-md"><img data-testid="content-card-image"
                      alt="" loading="lazy" decoding="async" data-nimg="fill"
                      class="bg-neutral-50 object-cover object-center transition-transform duration-250 hover:scale-105 h-full w-full"
                      style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent"
                      sizes="(min-width: 1280px) calc(1280px / 4), (min-width: 1024px) calc(100vw / 4), (min-width: 768px) calc(100vw / 4), (min-width: 640px) calc(100vw / 3), calc(100vw / 2)"
                      srcset="/static/images/t_digital_content_card_small_w_128_Action_FirstStore_NL_Enkhuizen_1993_qvgcqx.webp 128w, /static/images/t_digital_content_card_small_w_256_Action_FirstStore_NL_Enkhuizen_1993_qvgcqx.webp 256w, /static/images/t_digital_content_card_small_w_640_Action_FirstStore_NL_Enkhuizen_1993_qvgcqx.webp 640w, /static/images/t_digital_content_card_small_w_1080_Action_FirstStore_NL_Enkhuizen_1993_qvgcqx.webp 1080w, /static/images/t_digital_content_card_small_w_1920_Action_FirstStore_NL_Enkhuizen_1993_qvgcqx.webp 1920w"
                      src="/static/images/t_digital_content_card_small_w_1920_Action_FirstStore_NL_Enkhuizen_1993_qvgcqx.webp">
                  </div>
                  <div class="flex items-center">
                    <h3
                      class="text-dark-blue-500 line-clamp-2 flex min-w-0 items-center text-sm font-bold first-letter:uppercase sm:text-base"
                      data-testid="content-card-title">Historia</h3><svg aria-hidden="true" data-testid="ChevronRightMd"
                      class="inline-block min-w-4 shrink-0 content-center" xmlns="http://www.w3.org/2000/svg" width="24"
                      height="24" fill="none" viewBox="0 0 24 24">
                      <path fill="#001489"
                        d="M10 17a1 1 0 0 1-.707-1.707L12.586 12 9.293 8.707a1 1 0 1 1 1.414-1.414l4 4a1 1 0 0 1 0 1.414l-4 4A1 1 0 0 1 10 17">
                      </path>
                    </svg>
                  </div>
                </a><a class="relative flex flex-col gap-2 h-full w-full [&amp;_h3]:line-clamp-1 aspect-4/5 self-start"
                  onclick="alert('Funkcjonalność niedostępna w tej wersji.'); return false;" aria-label="Sklepy"
                  data-testid="content-card">
                  <div class="relative h-full w-full overflow-hidden rounded-md"><img data-testid="content-card-image"
                      alt="" loading="lazy" decoding="async" data-nimg="fill"
                      class="bg-neutral-50 object-cover object-center transition-transform duration-250 hover:scale-105 h-full w-full"
                      style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent"
                      sizes="(min-width: 1280px) calc(1280px / 4), (min-width: 1024px) calc(100vw / 4), (min-width: 768px) calc(100vw / 4), (min-width: 640px) calc(100vw / 3), calc(100vw / 2)"
                      srcset="/static/images/t_digital_content_card_small_w_128_ActionStore_Shop_Entrance_2019_i3zava.webp 128w, /static/images/t_digital_content_card_small_w_256_ActionStore_Shop_Entrance_2019_i3zava.webp 256w, /static/images/t_digital_content_card_small_w_640_ActionStore_Shop_Entrance_2019_i3zava.webp 640w, /static/images/t_digital_content_card_small_w_1080_ActionStore_Shop_Entrance_2019_i3zava.webp 1080w, /static/images/t_digital_content_card_small_w_1920_ActionStore_Shop_Entrance_2019_i3zava.webp 1920w"
                      src="/static/images/t_digital_content_card_small_w_1920_ActionStore_Shop_Entrance_2019_i3zava.webp">
                  </div>
                  <div class="flex items-center">
                    <h3
                      class="text-dark-blue-500 line-clamp-2 flex min-w-0 items-center text-sm font-bold first-letter:uppercase sm:text-base"
                      data-testid="content-card-title">O naszych sklepach</h3><svg aria-hidden="true"
                      data-testid="ChevronRightMd" class="inline-block min-w-4 shrink-0 content-center"
                      xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                      <path fill="#001489"
                        d="M10 17a1 1 0 0 1-.707-1.707L12.586 12 9.293 8.707a1 1 0 1 1 1.414-1.414l4 4a1 1 0 0 1 0 1.414l-4 4A1 1 0 0 1 10 17">
                      </path>
                    </svg>
                  </div>
                </a><a class="relative flex flex-col gap-2 h-full w-full [&amp;_h3]:line-clamp-1 aspect-4/5 self-start"
                  onclick="alert('Funkcjonalność niedostępna w tej wersji.'); return false;"
                  aria-label="Co Action daje w zamian?" data-testid="content-card">
                  <div class="relative h-full w-full overflow-hidden rounded-md"><img data-testid="content-card-image"
                      alt="" loading="lazy" decoding="async" data-nimg="fill"
                      class="bg-neutral-50 object-cover object-center transition-transform duration-250 hover:scale-105 h-full w-full"
                      style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent"
                      sizes="(min-width: 1280px) calc(1280px / 4), (min-width: 1024px) calc(100vw / 4), (min-width: 768px) calc(100vw / 4), (min-width: 640px) calc(100vw / 3), calc(100vw / 2)"
                      srcset="/static/images/t_digital_content_card_small_w_128_Sustainability_HUB_Paper_2024_rdxc46.webp 128w, /static/images/t_digital_content_card_small_w_256_Sustainability_HUB_Paper_2024_rdxc46.webp 256w, /static/images/t_digital_content_card_small_w_640_Sustainability_HUB_Paper_2024_rdxc46.webp 640w, /static/images/t_digital_content_card_small_w_1080_Sustainability_HUB_Paper_2024_rdxc46.webp 1080w, /static/images/t_digital_content_card_small_w_1920_Sustainability_HUB_Paper_2024_rdxc46.webp 1920w"
                      src="/static/images/t_digital_content_card_small_w_1920_Sustainability_HUB_Paper_2024_rdxc46.webp">
                  </div>
                  <div class="flex items-center">
                    <h3
                      class="text-dark-blue-500 line-clamp-2 flex min-w-0 items-center text-sm font-bold first-letter:uppercase sm:text-base"
                      data-testid="content-card-title">W jaki sposób firma Action się odwdzięcza</h3><svg
                      aria-hidden="true" data-testid="ChevronRightMd" class="inline-block min-w-4 shrink-0 content-center"
                      xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                      <path fill="#001489"
                        d="M10 17a1 1 0 0 1-.707-1.707L12.586 12 9.293 8.707a1 1 0 1 1 1.414-1.414l4 4a1 1 0 0 1 0 1.414l-4 4A1 1 0 0 1 10 17">
                      </path>
                    </svg>
                  </div>
                </a><a class="relative flex flex-col gap-2 h-full w-full [&amp;_h3]:line-clamp-1 aspect-4/5 self-start"
                  href="https://pl.action.jobs/" aria-label="Nasi ludzie" data-testid="content-card">
                  <div class="relative h-full w-full overflow-hidden rounded-md"><img data-testid="content-card-image"
                      alt="" loading="lazy" decoding="async" data-nimg="fill"
                      class="bg-neutral-50 object-cover object-center transition-transform duration-250 hover:scale-105 h-full w-full"
                      style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent"
                      sizes="(min-width: 1280px) calc(1280px / 4), (min-width: 1024px) calc(100vw / 4), (min-width: 768px) calc(100vw / 4), (min-width: 640px) calc(100vw / 3), calc(100vw / 2)"
                      srcset="/static/images/t_digital_content_card_small_w_128_Action_Shirt_Employees_Store_2024_pcukem.webp 128w, /static/images/t_digital_content_card_small_w_256_Action_Shirt_Employees_Store_2024_pcukem.webp 256w, /static/images/t_digital_content_card_small_w_640_Action_Shirt_Employees_Store_2024_pcukem.webp 640w, /static/images/t_digital_content_card_small_w_1080_Action_Shirt_Employees_Store_2024_pcukem.webp 1080w, /static/images/t_digital_content_card_small_w_1920_Action_Shirt_Employees_Store_2024_pcukem.webp 1920w"
                      src="/static/images/t_digital_content_card_small_w_1920_Action_Shirt_Employees_Store_2024_pcukem.webp">
                  </div>
                  <div class="flex items-center">
                    <h3
                      class="text-dark-blue-500 line-clamp-2 flex min-w-0 items-center text-sm font-bold first-letter:uppercase sm:text-base"
                      data-testid="content-card-title">Pracownicy</h3><svg aria-hidden="true" data-testid="ChevronRightMd"
                      class="inline-block min-w-4 shrink-0 content-center" xmlns="http://www.w3.org/2000/svg" width="24"
                      height="24" fill="none" viewBox="0 0 24 24">
                      <path fill="#001489"
                        d="M10 17a1 1 0 0 1-.707-1.707L12.586 12 9.293 8.707a1 1 0 1 1 1.414-1.414l4 4a1 1 0 0 1 0 1.414l-4 4A1 1 0 0 1 10 17">
                      </path>
                    </svg>
                  </div>
                </a></div>
            </div>
          </div>
        </div>
      </section>
      <section class="bg-neutral-50 pt-6 md:pt-8 pb-6 md:pb-8" aria-label="" data-testid="cms-unique-selling-points">
        <div class="relative flex w-full flex-col px-4 lg:px-8">
          <div class="mx-auto w-full max-w-7xl">
            <ul data-testid="unique-selling-points" class="grid grid-cols-1 gap-10 lg:grid-cols-2">
              <li class="col-span-1" data-testid="selling-point">
                <div class="flex gap-4">
                  <div><img data-testid="image" alt="" loading="lazy" width="80" height="80" decoding="async"
                      data-nimg="1" class="" style="color:transparent"
                      srcset="/static/images/t_digital_square_w_128_Icon_Polishzłoty_2024_y5gbbh.webp 1x, /static/images/t_digital_square_w_256_Icon_Polishzłoty_2024_y5gbbh.webp 2x"
                      src="/static/images/t_digital_square_w_256_Icon_Polishzłoty_2024_y5gbbh.webp">
                  </div>
                  <div class="flex flex-1 auto-rows-min flex-col gap-1 overflow-hidden justify-center">
                    <h2 class="heading-lg" data-testid="title">Zawsze 1500 produktów poniżej 5 zł</h2>
                  </div>
                </div>
              </li>
              <li class="col-span-1" data-testid="selling-point">
                <div class="flex gap-4">
                  <div><img data-testid="image" alt="" loading="lazy" width="80" height="80" decoding="async"
                      data-nimg="1" class="" style="color:transparent"
                      srcset="/static/images/t_digital_square_w_128_Icon_Check_Transparant_2023_zgi2x8.webp 1x, /static/images/t_digital_square_w_256_Icon_Check_Transparant_2023_zgi2x8.webp 2x"
                      src="/static/images/t_digital_square_w_256_Icon_Check_Transparant_2023_zgi2x8.webp">
                  </div>
                  <div class="flex flex-1 auto-rows-min flex-col gap-1 overflow-hidden justify-center">
                    <h2 class="heading-lg" data-testid="title">14 kategorii</h2>
                  </div>
                </div>
              </li>
              <li class="col-span-1" data-testid="selling-point">
                <div class="flex gap-4">
                  <div><img data-testid="image" alt="" loading="lazy" width="80" height="80" decoding="async"
                      data-nimg="1" class="" style="color:transparent"
                      srcset="/static/images/t_digital_square_w_128_Icon_New_Transparant_2023_nev2ei.webp 1x, /static/images/t_digital_square_w_256_Icon_New_Transparant_2023_nev2ei.webp 2x"
                      src="/static/images/t_digital_square_w_256_Icon_New_Transparant_2023_nev2ei.webp">
                  </div>
                  <div class="flex flex-1 auto-rows-min flex-col gap-1 overflow-hidden justify-center">
                    <h2 class="heading-lg" data-testid="title">Co tydzień 150 nowych produktów</h2>
                  </div>
                </div>
              </li>
              <li class="col-span-1" data-testid="selling-point">
                <div class="flex gap-4">
                  <div><img data-testid="image" alt="" loading="lazy" width="80" height="80" decoding="async"
                      data-nimg="1" class="" style="color:transparent"
                      srcset="/static/images/t_digital_square_w_128_EmployerBranding_ForAll_ForAll_Icon_Dynamic_2024_aqvmkf.webp 1x, /static/images/t_digital_square_w_256_EmployerBranding_ForAll_ForAll_Icon_Dynamic_2024_aqvmkf.webp 2x"
                      src="/static/images/t_digital_square_w_256_EmployerBranding_ForAll_ForAll_Icon_Dynamic_2024_aqvmkf.webp">
                  </div>
                  <div class="flex flex-1 auto-rows-min flex-col gap-1 overflow-hidden justify-center">
                    <h2 class="heading-lg" data-testid="title">2/3 asortymentu nieustannie się zmienia</h2>
                  </div>
                </div>
              </li>
            </ul>
          </div>
        </div>
      </section>
    </div>
    <!--$-->
    <!--/$-->
  </main>
{/block}