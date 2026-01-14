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
      <section class="bg-neutral-0 lg:pb-8 lg:pt-0" aria-label="Nasz blog: inspiracje, pomysły, wskazówki"
        data-testid="cms-page-teaser">
        <div class="relative flex w-full flex-col">
          <div class="mx-auto w-full max-w-7xl">
            <div class="PageTeaser_container___lPp9" data-testid="page-teaser">
              <div class="relative flex flex-col md:flex-row-reverse PageTeaser_innerContainer__HRU_X">
                <div class="PageTeaser_imageWrapper__coJ1u">
                  <picture>
                    <source
                      srcset="https://asset.action.com/image/upload/t_digital_page_teaser_mobile/w_128/Contentpage_Decoration_InteriorDecoration_CreateWallStorage_2021_dbh0eq.webp 128w, https://asset.action.com/image/upload/t_digital_page_teaser_mobile/w_256/Contentpage_Decoration_InteriorDecoration_CreateWallStorage_2021_dbh0eq.webp 256w, https://asset.action.com/image/upload/t_digital_page_teaser_mobile/w_640/Contentpage_Decoration_InteriorDecoration_CreateWallStorage_2021_dbh0eq.webp 640w, https://asset.action.com/image/upload/t_digital_page_teaser_mobile/w_1080/Contentpage_Decoration_InteriorDecoration_CreateWallStorage_2021_dbh0eq.webp 1080w, https://asset.action.com/image/upload/t_digital_page_teaser_mobile/w_1920/Contentpage_Decoration_InteriorDecoration_CreateWallStorage_2021_dbh0eq.webp 1920w"
                      media="(min-width: 1280px)" sizes="880px">
                    <source
                      srcset="https://asset.action.com/image/upload/t_digital_page_teaser_mobile/w_128/Contentpage_Decoration_InteriorDecoration_CreateWallStorage_2021_dbh0eq.webp 128w, https://asset.action.com/image/upload/t_digital_page_teaser_mobile/w_256/Contentpage_Decoration_InteriorDecoration_CreateWallStorage_2021_dbh0eq.webp 256w, https://asset.action.com/image/upload/t_digital_page_teaser_mobile/w_640/Contentpage_Decoration_InteriorDecoration_CreateWallStorage_2021_dbh0eq.webp 640w, https://asset.action.com/image/upload/t_digital_page_teaser_mobile/w_1080/Contentpage_Decoration_InteriorDecoration_CreateWallStorage_2021_dbh0eq.webp 1080w, https://asset.action.com/image/upload/t_digital_page_teaser_mobile/w_1920/Contentpage_Decoration_InteriorDecoration_CreateWallStorage_2021_dbh0eq.webp 1920w"
                      media="(min-width: 1024px)" sizes="calc(100vw - 400px)">
                    <source
                      srcset="https://asset.action.com/image/upload/t_digital_page_teaser_mobile/w_128/Contentpage_Decoration_InteriorDecoration_CreateWallStorage_2021_dbh0eq.webp 128w, https://asset.action.com/image/upload/t_digital_page_teaser_mobile/w_256/Contentpage_Decoration_InteriorDecoration_CreateWallStorage_2021_dbh0eq.webp 256w, https://asset.action.com/image/upload/t_digital_page_teaser_mobile/w_640/Contentpage_Decoration_InteriorDecoration_CreateWallStorage_2021_dbh0eq.webp 640w, https://asset.action.com/image/upload/t_digital_page_teaser_mobile/w_1080/Contentpage_Decoration_InteriorDecoration_CreateWallStorage_2021_dbh0eq.webp 1080w, https://asset.action.com/image/upload/t_digital_page_teaser_mobile/w_1920/Contentpage_Decoration_InteriorDecoration_CreateWallStorage_2021_dbh0eq.webp 1920w"
                      media="(min-width: 900px)" sizes="calc(100vw - 400px)">
                    <source
                      srcset="https://asset.action.com/image/upload/t_digital_page_teaser_mobile/w_128/Contentpage_Decoration_InteriorDecoration_CreateWallStorage_2021_dbh0eq.webp 128w, https://asset.action.com/image/upload/t_digital_page_teaser_mobile/w_256/Contentpage_Decoration_InteriorDecoration_CreateWallStorage_2021_dbh0eq.webp 256w, https://asset.action.com/image/upload/t_digital_page_teaser_mobile/w_640/Contentpage_Decoration_InteriorDecoration_CreateWallStorage_2021_dbh0eq.webp 640w, https://asset.action.com/image/upload/t_digital_page_teaser_mobile/w_1080/Contentpage_Decoration_InteriorDecoration_CreateWallStorage_2021_dbh0eq.webp 1080w, https://asset.action.com/image/upload/t_digital_page_teaser_mobile/w_1920/Contentpage_Decoration_InteriorDecoration_CreateWallStorage_2021_dbh0eq.webp 1920w"
                      media="(min-width: 768px)" sizes="calc(100vw - 400px)"><img data-testid="page-teaser-image" alt=""
                      fetchpriority="high" loading="eager" decoding="async" data-nimg="fill"
                      class="object-cover object-center md:object-right h-full w-full"
                      style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent"
                      sizes="100vw"
                      srcset="https://asset.action.com/image/upload/t_digital_page_teaser_mobile/w_128/Contentpage_Decoration_InteriorDecoration_CreateWallStorage_2021_dbh0eq.webp 128w, https://asset.action.com/image/upload/t_digital_page_teaser_mobile/w_256/Contentpage_Decoration_InteriorDecoration_CreateWallStorage_2021_dbh0eq.webp 256w, https://asset.action.com/image/upload/t_digital_page_teaser_mobile/w_640/Contentpage_Decoration_InteriorDecoration_CreateWallStorage_2021_dbh0eq.webp 640w, https://asset.action.com/image/upload/t_digital_page_teaser_mobile/w_1080/Contentpage_Decoration_InteriorDecoration_CreateWallStorage_2021_dbh0eq.webp 1080w, https://asset.action.com/image/upload/t_digital_page_teaser_mobile/w_1920/Contentpage_Decoration_InteriorDecoration_CreateWallStorage_2021_dbh0eq.webp 1920w"
                      src="https://asset.action.com/image/upload/t_digital_page_teaser_mobile/w_1920/Contentpage_Decoration_InteriorDecoration_CreateWallStorage_2021_dbh0eq.webp">
                  </picture>
                </div>
                <div data-testid="page-teaser-content"
                  class="relative flex flex-col gap-4 md:absolute md:left-0 md:w-full md:gap-6 PageTeaser_contentSection___15Hr p-4 md:p-8"
                  style="background-color:#4e769c">
                  <div class="absolute bottom-full w-full md:static PageTeaser_titleWrapper__uthEv">
                    <h1 class="flex flex-col gap-1 sm:gap-1.5" data-testid="page-teaser-header"><span
                        class="ml-[13px] md:ml-[17px] max-w-[calc(100%-28px)] md:max-w-[calc(100%-35px)]"><span
                          class="relative z-3 flex flex-row"><span
                            class="flex origin-bottom skew-x-[-18deg] items-center overflow-hidden rounded-tl-[4px] rounded-tr-[2px] rounded-br-[4px] rounded-bl-[2px] bg-dark-blue-500 px-[22px] py-2 md:px-6"><span
                              class="text-neutral-0 z-1 line-clamp-1 skew-x-18 break-words heading-2xl"
                              data-testid="trapezium-title">Nasz blog:</span></span></span></span><span
                        class="hidden">&nbsp;</span><span class="max-w-[calc(100%-11px)] md:max-w-[calc(100%-14px)]"><span
                          class="relative z-3 flex flex-row"><span
                            class="flex origin-bottom skew-x-[-18deg] items-center overflow-hidden rounded-tl-[4px] rounded-tr-[2px] rounded-br-[4px] rounded-bl-[2px] bg-cyan px-4 py-[6px] md:px-5"><span
                              class="text-neutral-0 z-1 line-clamp-1 skew-x-18 break-words heading-xl"
                              data-testid="trapezium-subtitle">inspiracje, pomysły, wskazówki</span></span></span></span>
                    </h1>
                  </div>
                  <p class="text-body-normal text-neutral-0 line-clamp-5 break-words md:max-w-[368px]"
                    data-testid="page-teaser-description" aria-hidden="false" data-content-king="page-teaser-description">
                    Szukasz inspiracji do domu lub nowych pomysłów do ogrodu? To i więcej znajdziesz na naszym blogu.
                    Odkryj praktyczne wskazówki i zaskakujące produkty w najniższej cenie.</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
      <section class="bg-neutral-50 pt-6 md:pt-8 pb-6 md:pb-8" data-testid="cms-markdown">
        <div class="relative flex w-full flex-col px-4 lg:px-8">
          <div class="mx-auto w-full max-w-7xl">
            <div class="flex flex-col gap-4" data-content-king="rich-text">
              <div class="flex max-w-[800px] flex-col gap-3">
                <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph">W Action zawsze znajdziesz
                  6000 produktów w zaskakująco niskich cenach⁠. To artykuły, dzięki którym Twoje życie będzie wygodniejsze
                  i po prostu przyjemne⁠! Sprawdź nasze pomysły, porady i praktyczne wskazówki, aby każdy dzień był
                  wyjątkowy⁠. Niezależnie od tego czy planujesz przyjęcie urodzinowe, wycieczkę za miasto czy dekorowanie
                  wnętrza – z naszymi niedrogimi produktami i pomysłami wszystko się uda⁠!<br>
                  <br>
                  <!-- -->Od przepisu na "najlepsze ciasteczka świąteczne", przez porady "co zabrać na urlop", aż po
                  wskazówki "jak sprawić, aby dom był jeszcze bardziej przytulny" ⁠- przeczytaj i daj się zainspirować⁠!
                  Sprawdź też, jak najpiękniej zapakować prezent, odkryj proste pomysły na porządek w domu i pomocne
                  wskazówki dotyczące majsterkowana⁠. Wszystko oczywiście w najniższej cenie⁠!
                </p>
              </div>
            </div>
          </div>
        </div>
      </section>
      <section class="bg-neutral-0 pt-6 md:pt-8 pb-6 md:pb-8" aria-label="Zainspiruj się" data-testid="cms-manual-grid">
        <div class="relative flex w-full flex-col px-4 lg:px-8">
          <div class="mx-auto w-full max-w-7xl">
            <div class="flex flex-col gap-2">
              <div class="flex items-end justify-between gap-4">
                <div class="flex flex-col">
                  <h2 class="heading-xl" data-testid="title-view-title">Zainspiruj się</h2>
                  <p class="text-neutral-700" data-testid="title-view-subtitle">Zobacz wszystkie motywy</p>
                </div>
              </div>
              <div class="grid grid-flow-dense grid-cols-2 gap-4 sm:grid-cols-3 sm:gap-6 md:grid-cols-4"><a
                  class="relative flex flex-col gap-2 h-full w-full [&amp;_h3]:line-clamp-1 aspect-4/5 self-start"
href="/10-Hobby" aria-label="Hobby" data-testid="content-card">
                  <div class="relative h-full w-full overflow-hidden rounded-md"><img data-testid="content-card-image"
                      alt="" loading="lazy" decoding="async" data-nimg="fill"
                      class="bg-neutral-50 object-cover object-center transition-transform duration-250 hover:scale-105 h-full w-full"
                      style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent"
                      sizes="(min-width: 1280px) calc(1280px / 4), (min-width: 1024px) calc(100vw / 4), (min-width: 768px) calc(100vw / 4), (min-width: 640px) calc(100vw / 3), calc(100vw / 2)"
                      srcset="https://asset.action.com/image/upload/t_digital_content_card_small/w_128/VanBleiswijck_StationeryAndHobby_HobbyPainting_HobbyPaint_Brushes_2023_efvs6y.webp 128w, https://asset.action.com/image/upload/t_digital_content_card_small/w_256/VanBleiswijck_StationeryAndHobby_HobbyPainting_HobbyPaint_Brushes_2023_efvs6y.webp 256w, https://asset.action.com/image/upload/t_digital_content_card_small/w_640/VanBleiswijck_StationeryAndHobby_HobbyPainting_HobbyPaint_Brushes_2023_efvs6y.webp 640w, https://asset.action.com/image/upload/t_digital_content_card_small/w_1080/VanBleiswijck_StationeryAndHobby_HobbyPainting_HobbyPaint_Brushes_2023_efvs6y.webp 1080w, https://asset.action.com/image/upload/t_digital_content_card_small/w_1920/VanBleiswijck_StationeryAndHobby_HobbyPainting_HobbyPaint_Brushes_2023_efvs6y.webp 1920w"
                      src="https://asset.action.com/image/upload/t_digital_content_card_small/w_1920/VanBleiswijck_StationeryAndHobby_HobbyPainting_HobbyPaint_Brushes_2023_efvs6y.webp">
                  </div>
                  <div class="flex items-center">
                    <h3
                      class="text-dark-blue-500 line-clamp-2 flex min-w-0 items-center text-sm font-bold first-letter:uppercase sm:text-base"
                      data-testid="content-card-title">Hobby</h3><svg aria-hidden="true" data-testid="ChevronRightMd"
                      class="inline-block min-w-4 shrink-0 content-center" xmlns="http://www.w3.org/2000/svg" width="24"
                      height="24" fill="none" viewBox="0 0 24 24">
                      <path fill="#001489"
                        d="M10 17a1 1 0 0 1-.707-1.707L12.586 12 9.293 8.707a1 1 0 1 1 1.414-1.414l4 4a1 1 0 0 1 0 1.414l-4 4A1 1 0 0 1 10 17">
                      </path>
                    </svg>
                  </div>
                </a><a class="relative flex flex-col gap-2 h-full w-full [&amp;_h3]:line-clamp-1 aspect-4/5 self-start"
href="/14-zrob-to-sam" aria-label="DIY" data-testid="content-card">
                  <div class="relative h-full w-full overflow-hidden rounded-md"><img data-testid="content-card-image"
                      alt="" loading="lazy" decoding="async" data-nimg="fill"
                      class="bg-neutral-50 object-cover object-center transition-transform duration-250 hover:scale-105 h-full w-full"
                      style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent"
                      sizes="(min-width: 1280px) calc(1280px / 4), (min-width: 1024px) calc(100vw / 4), (min-width: 768px) calc(100vw / 4), (min-width: 640px) calc(100vw / 3), calc(100vw / 2)"
                      srcset="https://asset.action.com/image/upload/t_digital_content_card_small/w_128/AX-Power_DIY_ToolsAndIronware_PowertoolsBattery_CordlessDrillInUseWall_2020_kzheor.webp 128w, https://asset.action.com/image/upload/t_digital_content_card_small/w_256/AX-Power_DIY_ToolsAndIronware_PowertoolsBattery_CordlessDrillInUseWall_2020_kzheor.webp 256w, https://asset.action.com/image/upload/t_digital_content_card_small/w_640/AX-Power_DIY_ToolsAndIronware_PowertoolsBattery_CordlessDrillInUseWall_2020_kzheor.webp 640w, https://asset.action.com/image/upload/t_digital_content_card_small/w_1080/AX-Power_DIY_ToolsAndIronware_PowertoolsBattery_CordlessDrillInUseWall_2020_kzheor.webp 1080w, https://asset.action.com/image/upload/t_digital_content_card_small/w_1920/AX-Power_DIY_ToolsAndIronware_PowertoolsBattery_CordlessDrillInUseWall_2020_kzheor.webp 1920w"
                      src="https://asset.action.com/image/upload/t_digital_content_card_small/w_1920/AX-Power_DIY_ToolsAndIronware_PowertoolsBattery_CordlessDrillInUseWall_2020_kzheor.webp">
                  </div>
                  <div class="flex items-center">
                    <h3
                      class="text-dark-blue-500 line-clamp-2 flex min-w-0 items-center text-sm font-bold first-letter:uppercase sm:text-base"
                      data-testid="content-card-title">DIY</h3><svg aria-hidden="true" data-testid="ChevronRightMd"
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
    </div>
    <!--$-->
    <!--/$-->
  </main>
{/block}