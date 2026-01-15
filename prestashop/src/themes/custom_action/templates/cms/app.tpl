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
      <section class="bg-neutral-0 lg:pb-8 lg:pt-0" aria-label="Jeszcze więcej korzyści  z aplikacją Action!"
        data-testid="cms-page-teaser">
        <div class="relative flex w-full flex-col">
          <div class="mx-auto w-full max-w-7xl">
            <div class="PageTeaser_container___lPp9" data-testid="page-teaser">
              <div class="relative flex flex-col md:flex-row-reverse PageTeaser_innerContainer__HRU_X">
                <div class="PageTeaser_imageWrapper__coJ1u">
                  <picture>
                    <source
                      srcset="/static/images/t_digital_page_teaser_mobile_w_128_Loyalty_AlwaysOnUpdate_MyAction_Store_PL_2024_aqihmt.webp 128w, /static/images/t_digital_page_teaser_mobile_w_256_Loyalty_AlwaysOnUpdate_MyAction_Store_PL_2024_aqihmt.webp 256w, /static/images/t_digital_page_teaser_mobile_w_640_Loyalty_AlwaysOnUpdate_MyAction_Store_PL_2024_aqihmt.webp 640w, /static/images/t_digital_page_teaser_mobile_w_1080_Loyalty_AlwaysOnUpdate_MyAction_Store_PL_2024_aqihmt.webp 1080w, /static/images/t_digital_page_teaser_mobile_w_1920_Loyalty_AlwaysOnUpdate_MyAction_Store_PL_2024_aqihmt.webp 1920w"
                      media="(min-width: 1280px)" sizes="880px">
                    <source
                      srcset="/static/images/t_digital_page_teaser_mobile_w_128_Loyalty_AlwaysOnUpdate_MyAction_Store_PL_2024_aqihmt.webp 128w, /static/images/t_digital_page_teaser_mobile_w_256_Loyalty_AlwaysOnUpdate_MyAction_Store_PL_2024_aqihmt.webp 256w, /static/images/t_digital_page_teaser_mobile_w_640_Loyalty_AlwaysOnUpdate_MyAction_Store_PL_2024_aqihmt.webp 640w, /static/images/t_digital_page_teaser_mobile_w_1080_Loyalty_AlwaysOnUpdate_MyAction_Store_PL_2024_aqihmt.webp 1080w, /static/images/t_digital_page_teaser_mobile_w_1920_Loyalty_AlwaysOnUpdate_MyAction_Store_PL_2024_aqihmt.webp 1920w"
                      media="(min-width: 1024px)" sizes="calc(100vw - 400px)">
                    <source
                      srcset="/static/images/t_digital_page_teaser_mobile_w_128_Loyalty_AlwaysOnUpdate_MyAction_Store_PL_2024_aqihmt.webp 128w, /static/images/t_digital_page_teaser_mobile_w_256_Loyalty_AlwaysOnUpdate_MyAction_Store_PL_2024_aqihmt.webp 256w, /static/images/t_digital_page_teaser_mobile_w_640_Loyalty_AlwaysOnUpdate_MyAction_Store_PL_2024_aqihmt.webp 640w, /static/images/t_digital_page_teaser_mobile_w_1080_Loyalty_AlwaysOnUpdate_MyAction_Store_PL_2024_aqihmt.webp 1080w, /static/images/t_digital_page_teaser_mobile_w_1920_Loyalty_AlwaysOnUpdate_MyAction_Store_PL_2024_aqihmt.webp 1920w"
                      media="(min-width: 900px)" sizes="calc(100vw - 400px)">
                    <source
                      srcset="/static/images/t_digital_page_teaser_mobile_w_128_Loyalty_AlwaysOnUpdate_MyAction_Store_PL_2024_aqihmt.webp 128w, /static/images/t_digital_page_teaser_mobile_w_256_Loyalty_AlwaysOnUpdate_MyAction_Store_PL_2024_aqihmt.webp 256w, /static/images/t_digital_page_teaser_mobile_w_640_Loyalty_AlwaysOnUpdate_MyAction_Store_PL_2024_aqihmt.webp 640w, /static/images/t_digital_page_teaser_mobile_w_1080_Loyalty_AlwaysOnUpdate_MyAction_Store_PL_2024_aqihmt.webp 1080w, /static/images/t_digital_page_teaser_mobile_w_1920_Loyalty_AlwaysOnUpdate_MyAction_Store_PL_2024_aqihmt.webp 1920w"
                      media="(min-width: 768px)" sizes="calc(100vw - 400px)"><img data-testid="page-teaser-image" alt=""
                      fetchpriority="high" loading="eager" decoding="async" data-nimg="fill"
                      class="object-cover object-center md:object-right h-full w-full"
                      style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent"
                      sizes="100vw"
                      srcset="/static/images/t_digital_page_teaser_mobile_w_128_Loyalty_AlwaysOnUpdate_MyAction_Store_PL_2024_aqihmt.webp 128w, /static/images/t_digital_page_teaser_mobile_w_256_Loyalty_AlwaysOnUpdate_MyAction_Store_PL_2024_aqihmt.webp 256w, /static/images/t_digital_page_teaser_mobile_w_640_Loyalty_AlwaysOnUpdate_MyAction_Store_PL_2024_aqihmt.webp 640w, /static/images/t_digital_page_teaser_mobile_w_1080_Loyalty_AlwaysOnUpdate_MyAction_Store_PL_2024_aqihmt.webp 1080w, /static/images/t_digital_page_teaser_mobile_w_1920_Loyalty_AlwaysOnUpdate_MyAction_Store_PL_2024_aqihmt.webp 1920w"
                      src="/static/images/t_digital_page_teaser_mobile_w_1920_Loyalty_AlwaysOnUpdate_MyAction_Store_PL_2024_aqihmt.webp">
                  </picture>
                </div>
                <div data-testid="page-teaser-content"
                  class="relative flex flex-col gap-4 md:absolute md:left-0 md:w-full md:gap-6 PageTeaser_contentSection___15Hr p-4 md:p-8"
                  style="background-color:#4e769c">
                  <div class="absolute bottom-full w-full md:static PageTeaser_titleWrapper__uthEv">
                    <h1 class="flex flex-col gap-1 sm:gap-1.5" data-testid="page-teaser-header"><span
                        class="ml-[17px] md:ml-5 max-w-[calc(100%-32px)] md:max-w-[calc(100%-38px)]"><span
                          class="relative z-3 flex flex-row"><span
                            class="flex origin-bottom skew-x-[-18deg] items-center overflow-hidden rounded-tl-[4px] rounded-tr-[2px] rounded-br-[4px] rounded-bl-[2px] bg-dark-blue-500 px-[22px] py-2 md:px-6"><span
                              class="text-neutral-0 z-1 line-clamp-1 skew-x-18 break-words heading-2xl"
                              data-testid="trapezium-title">Jeszcze więcej korzyści </span></span></span></span><span
                        class="hidden">&nbsp;</span><span class="max-w-[calc(100%-15px)] md:max-w-[calc(100%-18px)]"><span
                          class="relative z-3 flex flex-row"><span
                            class="flex origin-bottom skew-x-[-18deg] items-center overflow-hidden rounded-tl-[4px] rounded-tr-[2px] rounded-br-[4px] rounded-bl-[2px] bg-dark-blue-500 px-[22px] py-2 md:px-6"><span
                              class="text-neutral-0 z-1 line-clamp-1 skew-x-18 break-words heading-2xl"
                              data-testid="trapezium-subtitle">z aplikacją Action!</span></span></span></span></h1>
                  </div>
                  <p class="text-body-normal text-neutral-0 line-clamp-5 break-words md:max-w-[368px]"
                    data-testid="page-teaser-description" aria-hidden="false" data-content-king="page-teaser-description">
                    Pobierz aplikację Action</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
      <section class="bg-neutral-50 pt-6 md:pt-8 pb-6 md:pb-8" aria-label="POWITAJ 100+ PROMOCJI!"
        data-testid="cms-mobile-app-teaser">
        <div class="relative flex w-full flex-col px-4 lg:px-8">
          <div class="mx-auto w-full max-w-7xl">
            <div class="flex flex-col gap-4 md:grid md:grid-cols-2 md:gap-8" data-testid="app-teaser"><img alt=""
                loading="lazy" width="628" height="533" decoding="async" data-nimg="1" class="" style="color:transparent"
                sizes="(min-width: 768px) 50vw, 100vw"
                srcset="/static/images/t_digital_app_teaser_w_128_Hello_Digital_web_2025_PL_q2iekf.webp 128w, /static/images/t_digital_app_teaser_w_256_Hello_Digital_web_2025_PL_q2iekf.webp 256w, /static/images/t_digital_app_teaser_w_640_Hello_Digital_web_2025_PL_q2iekf.webp 640w, /static/images/t_digital_app_teaser_w_1080_Hello_Digital_web_2025_PL_q2iekf.webp 1080w, /static/images/t_digital_app_teaser_w_1920_Hello_Digital_web_2025_PL_q2iekf.webp 1920w"
                src="/static/images/t_digital_app_teaser_w_1920_Hello_Digital_web_2025_PL_q2iekf.webp">
              <div class="md:m-0 md:self-center" data-testid="app-teaser-content">
                <div class="flex flex-col sm:justify-center md:h-[300px]">
                  <h2 class="heading-xl pb-2" data-testid="app-teaser-title">POWITAJ 100+ PROMOCJI!</h2>
                  <p class="text-body-normal whitespace-break-spaces text-neutral-900" data-testid="app-teaser-subtitle">
                    Szukasz więcej Promocji Tygodnia? Z aplikacją Action znajdziesz
                    ponad 100 świetnych okazji i zawsze będziesz na bieżąco. A co najlepsze… już teraz możesz podejrzeć
                    oferty na przyszły tydzień!</p>
                  <div class="mt-4 flex flex-wrap justify-center gap-4 md:justify-start"><a
                      href="https://apps.apple.com/pl/app/action/id1531860284?l=pl" target="_blank"><img alt=""
                        loading="lazy" width="185" height="62" decoding="async" data-nimg="1" class=""
                        style="color:transparent" src="/static/images/apple-app-store/pl.svg"></a><a
                      href="https://play.google.com/store/apps/details?id=com.action.consumerapp&amp;hl=pl&amp;gl=pl"
                      target="_blank"><img alt="" loading="lazy" width="207" height="62" decoding="async" data-nimg="1"
                        class="" style="color:transparent" src="/static/images/google-play-store/pl.svg"></a></div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
      <section class="bg-neutral-0 pt-6 md:pt-8 pb-6 md:pb-8" aria-label="Podziel się listą i rób zakupy razem!"
        data-testid="cms-split-teaser">
        <div class="relative flex w-full flex-col px-4 lg:px-8">
          <div class="mx-auto w-full max-w-7xl">
            <div data-testid="split-teaser" class="flex flex-col gap-4 md:grid md:grid-cols-2 md:gap-8">
              <div data-testid="split-teaser-media" class="relative order-first md:order-0 md:mt-0 h-80 sm:min-h-[500px]">
                <div data-testid="split-teaser-image"
                  class="relative h-80 overflow-hidden rounded-lg sm:h-[500px] object-cover object-center sm:min-h-[500px]">
                  <img alt="" loading="lazy" decoding="async" data-nimg="fill"
                    class="overflow-hidden rounded-lg object-cover object-center h-full w-full"
                    style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent"
                    sizes="(min-width: 768px) 50vw, 100vw"
                    srcset="/static/images/w_128_presents-digital-assets-deel-je-lijstje-phone-pl_wpo4kx.webp 128w, /static/images/w_256_presents-digital-assets-deel-je-lijstje-phone-pl_wpo4kx.webp 256w, /static/images/w_640_presents-digital-assets-deel-je-lijstje-phone-pl_wpo4kx.webp 640w, /static/images/w_1080_presents-digital-assets-deel-je-lijstje-phone-pl_wpo4kx.webp 1080w, /static/images/w_1920_presents-digital-assets-deel-je-lijstje-phone-pl_wpo4kx.webp 1920w"
                    src="/static/images/w_1920_presents-digital-assets-deel-je-lijstje-phone-pl_wpo4kx.webp">
                </div>
              </div>
              <div data-testid="split-teaser-content" class="md:m-0 md:self-center">
                <div class="flex flex-col sm:justify-center md:h-[300px]">
                  <h2 class="heading-xl pb-2" data-testid="split-teaser-content-title">Podziel się listą i rób zakupy
                    razem!</h2>
                  <p class="text-body-normal whitespace-break-spaces text-neutral-900"
                    data-testid="split-teaser-content-description">Udostępniane listy życzeń sprawiają, że kupowanie
                    prezentów to czysta frajda. Dodaj wszystkie swoje ulubione zabawki do listy w aplikacji Action i
                    podziel się nią z rodziną lub znajomymi. Róbcie zakupy razem, odhaczajcie kupione produkty i
                    unikajcie podwójnych niespodzianek.</p>
                  <div class="flex items-center justify-start md:items-start"><a
                      class="relative box-border flex max-w-full items-center justify-center gap-1 rounded-full text-base font-medium py-2.5 px-5 bg-dark-blue-500 text-neutral-0 hover:bg-dark-blue-300 active:bg-dark-blue-700 focus:bg-dark-blue-300 focus:outline focus:outline-2 focus:outline-dark-blue-500 focus:outline-offset-2 disabled:bg-neutral-150 disabled:text-neutral-700 disabled:outline disabled:outline-1 disabled:outline-neutral mt-4"
                      href="https://open.action.com/favorites/?webRedirect=%2Fredirect%2Fnl-nl%2Fapp%2F"
                      data-testid="split-teaser-cta" referrerpolicy="no-referrer-when-downgrade"><span
                        class="truncate px-1">Zobacz swoją listę życzeń</span></a></div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
      <section class="bg-neutral-0 pt-6 md:pt-8 pb-6 md:pb-8" aria-label="Aplikacja Action" data-testid="cms-markdown">
        <div class="relative flex w-full flex-col px-4 lg:px-8">
          <div class="mx-auto w-full max-w-7xl">
            <div class="flex flex-col gap-4" data-content-king="rich-text">
              <h2 id="aplikacja-action" class="heading-xl" data-testid="markdown-top-title">Aplikacja Action</h2>
              <div class="flex max-w-[800px] flex-col gap-3">
                <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph">najczęściej zadawane
                  pytania</p>
              </div>
            </div>
          </div>
        </div>
      </section>
      <section class="bg-neutral-0 pb-6 md:pb-8 lg:pt-0" data-testid="cms-faq-section">
        <div class="relative flex w-full flex-col px-4 lg:px-8">
          <div class="mx-auto w-full max-w-7xl">
            <div data-testid="faq-section-container" class="flex flex-col gap-2 lg:w-3/4">
              <ul data-testid="faq-section-questions-container" class="grid grid-cols-1 gap-y-1">
                <li>
                  <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
                    <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
                        aria-expanded="false" aria-controls="_R_38eav5ubsnpfplciqbsnpfivb_"><span
                          data-testid="accordion-container-title"
                          class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">Gdzie
                          mogę pobrać aplikację Action?</span><span
                          class="mt-0.5 transform content-center transition-transform duration-300"><svg
                            aria-hidden="true" data-testid="ChevronDown" class="shrink-0"
                            xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="none" viewBox="0 0 24 24">
                            <path fill="#001489"
                              d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                            </path>
                          </svg></span></button></h3>
                    <div id="_R_38eav5ubsnpfplciqbsnpfivb_" data-testid="accordion-content"
                      class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden=""
                      style="max-height:0">
                      <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
                        <div class="flex max-w-[800px] flex-col gap-3">
                          <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph">Jeśli korzystasz
                            z iPhone'a z systemem iOS w wersji 13 lub nowszej, możesz pobrać aplikację Action z App
                          Store⁠⁠. Używasz telefonu z systemem Android w wersji co najmniej 8? W takim razie pobierz
                          aplikację Action z Play Store⁠⁠.</p>
                      </div>
                    </div>
                  </div>
                </div>
              </li>
              <li>
                <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
                  <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
                      aria-expanded="false" aria-controls="_R_58eav5ubsnpfplciqbsnpfivb_"><span
                        data-testid="accordion-container-title"
                        class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">Czy
                        muszę mieć konto, aby korzystać z aplikacji Action?</span><span
                        class="mt-0.5 transform content-center transition-transform duration-300"><svg
                          aria-hidden="true" data-testid="ChevronDown" class="shrink-0"
                          xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="none" viewBox="0 0 24 24">
                          <path fill="#001489"
                            d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                          </path>
                        </svg></span></button></h3>
                  <div id="_R_58eav5ubsnpfplciqbsnpfivb_" data-testid="accordion-content"
                    class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden=""
                    style="max-height:0">
                    <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
                      <div class="flex max-w-[800px] flex-col gap-3">
                        <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph">Konto Moje
                          Action nie jest konieczne do korzystania z aplikacji, ale jego posiadanie pomoże Ci w pełni
                          wykorzystać możliwości aplikacji Action⁠⁠. Możesz na przykład stworzyć własną listę
                          ulubionych produktów, aby ułatwić sobie zakupy w sklepie⁠⁠. Chętnie zaskoczymy Cię też
                          produktami wybranymi na podstawie Twoich zainteresowań⁠⁠.</p>
                      </div>
                    </div>
                  </div>
                </div>
              </li>
              <li>
                <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
                  <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
                      aria-expanded="false" aria-controls="_R_78eav5ubsnpfplciqbsnpfivb_"><span
                        data-testid="accordion-container-title"
                        class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">Z
                        czego powinno składać się moje hasło?</span><span
                        class="mt-0.5 transform content-center transition-transform duration-300"><svg
                          aria-hidden="true" data-testid="ChevronDown" class="shrink-0"
                          xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="none" viewBox="0 0 24 24">
                          <path fill="#001489"
                            d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                          </path>
                        </svg></span></button></h3>
                  <div id="_R_78eav5ubsnpfplciqbsnpfivb_" data-testid="accordion-content"
                    class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden=""
                    style="max-height:0">
                    <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
                      <div class="flex max-w-[800px] flex-col gap-3">
                        <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph">Podczas
                          tworzenia konta prosimy o utworzenie hasła⁠⁠. Powinno się ono składać z co najmniej 8
                          znaków, w tym co najmniej 1 litery i 1 cyfry⁠⁠. Zaleca się regularną zmianę hasła⁠⁠.</p>
                      </div>
                    </div>
                  </div>
                </div>
              </li>
              <li>
                <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
                  <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
                      aria-expanded="false" aria-controls="_R_98eav5ubsnpfplciqbsnpfivb_"><span
                        data-testid="accordion-container-title"
                        class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">Jak
                        mogę zmienić swój adres e⁠-mail?</span><span
                        class="mt-0.5 transform content-center transition-transform duration-300"><svg
                          aria-hidden="true" data-testid="ChevronDown" class="shrink-0"
                          xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="none" viewBox="0 0 24 24">
                          <path fill="#001489"
                            d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                          </path>
                        </svg></span></button></h3>
                  <div id="_R_98eav5ubsnpfplciqbsnpfivb_" data-testid="accordion-content"
                    class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden=""
                    style="max-height:0">
                    <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
                      <div class="flex max-w-[800px] flex-col gap-3">
                        <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph">W zakładce „Moje
                          konto” w sekcji „Moje dane” przejdź do opcji „Zmień adres e⁠⁠-mail” u dołu⁠⁠. Wprowadź swój
                          nowy adres e⁠⁠-mail i naciśnij „Pobierz kod”⁠⁠. Action wyśle kod e⁠⁠-mailem⁠⁠. Wprowadź go i
                          potwierdź⁠⁠. Gotowe: Twój adres e⁠⁠-mail został zmieniony⁠⁠.</p>
                      </div>
                    </div>
                  </div>
                </div>
              </li>
              <li>
                <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
                  <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
                      aria-expanded="false" aria-controls="_R_b8eav5ubsnpfplciqbsnpfivb_"><span
                        data-testid="accordion-container-title"
                        class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">W
                        jakich systemach operacyjnych mogę korzystać z aplikacji Action?</span><span
                        class="mt-0.5 transform content-center transition-transform duration-300"><svg
                          aria-hidden="true" data-testid="ChevronDown" class="shrink-0"
                          xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="none" viewBox="0 0 24 24">
                          <path fill="#001489"
                            d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                          </path>
                        </svg></span></button></h3>
                  <div id="_R_b8eav5ubsnpfplciqbsnpfivb_" data-testid="accordion-content"
                    class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden=""
                    style="max-height:0">
                    <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
                      <div class="flex max-w-[800px] flex-col gap-3">
                        <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph">Aplikacja Action
                          jest dostępna dla iPhone'a z systemem iOS w wersji co najmniej 16 i dla urządzeń z systemem
                            Android w wersji co najmniej 8⁠⁠.</p>
                        </div>
                      </div>
                    </div>
                  </div>
                </li>
                <li>
                  <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
                    <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
                        aria-expanded="false" aria-controls="_R_d8eav5ubsnpfplciqbsnpfivb_"><span
                          data-testid="accordion-container-title"
                          class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">Produkty
                          nie ładują się w aplikacji⁠. Co mogę zrobić?</span><span
                          class="mt-0.5 transform content-center transition-transform duration-300"><svg
                            aria-hidden="true" data-testid="ChevronDown" class="shrink-0"
                            xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="none" viewBox="0 0 24 24">
                            <path fill="#001489"
                              d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                            </path>
                          </svg></span></button></h3>
                    <div id="_R_d8eav5ubsnpfplciqbsnpfivb_" data-testid="accordion-content"
                      class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden=""
                      style="max-height:0">
                      <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
                        <div class="flex max-w-[800px] flex-col gap-3">
                          <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph">Istnieje kilka
                            powodów, dla których może się to zdarzyć⁠⁠. W aplikacji używamy funkcji „przeciągnij, aby
                            odświeżyć” na większości ekranów⁠⁠. Umieść kciuk na ekranie i przesuń stronę w dół⁠⁠.
                            Następnie puść, aby odświeżyć stronę⁠⁠.</p>
                        </div>
                      </div>
                    </div>
                  </div>
                </li>
                <li>
                  <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
                    <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
                        aria-expanded="false" aria-controls="_R_f8eav5ubsnpfplciqbsnpfivb_"><span
                          data-testid="accordion-container-title"
                          class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">Skanuję
                          produkt, ale nie jest on widoczny w aplikacji⁠. Jak to możliwe?</span><span
                          class="mt-0.5 transform content-center transition-transform duration-300"><svg
                            aria-hidden="true" data-testid="ChevronDown" class="shrink-0"
                            xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="none" viewBox="0 0 24 24">
                            <path fill="#001489"
                              d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                            </path>
                          </svg></span></button></h3>
                    <div id="_R_f8eav5ubsnpfplciqbsnpfivb_" data-testid="accordion-content"
                      class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden=""
                      style="max-height:0">
                      <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
                        <div class="flex max-w-[800px] flex-col gap-3">
                          <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph">W takim
                            przypadku może to oznaczać, że nie mamy już tego produktu w naszym asortymencie⁠⁠. W
                            niektórych przypadkach produkt może nie być wyświetlany w aplikacji, ale nadal jest dostępny
                            w sklepie⁠⁠. Jest to związane ze stanem magazynowym⁠⁠.</p>
                        </div>
                      </div>
                    </div>
                  </div>
                </li>
                <li>
                  <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
                    <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
                        aria-expanded="false" aria-controls="_R_h8eav5ubsnpfplciqbsnpfivb_"><span
                          data-testid="accordion-container-title"
                          class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">Jak
                          dodać produkty do listy ulubionych?</span><span
                          class="mt-0.5 transform content-center transition-transform duration-300"><svg
                            aria-hidden="true" data-testid="ChevronDown" class="shrink-0"
                            xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="none" viewBox="0 0 24 24">
                            <path fill="#001489"
                              d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                            </path>
                          </svg></span></button></h3>
                    <div id="_R_h8eav5ubsnpfplciqbsnpfivb_" data-testid="accordion-content"
                      class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden=""
                      style="max-height:0">
                      <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
                        <div class="flex max-w-[800px] flex-col gap-3">
                          <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph">Jeśli chcesz
                            dodać produkty do listy ulubionych, kliknij w ikonę serca⁠⁠. Upewnij się, że jesteś
                            zalogowany⁠⁠(⁠⁠-a⁠⁠)⁠⁠. Nie masz jeszcze konta? Aby korzystać z tej funkcji, należy je
                            najpierw utworzyć⁠⁠.</p>
                          <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                              class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                              href="/pl-pl/aplikacja/najczesciej-zadawane-pytania/"
                              data-testid="markdown-link">Najczęściej zadawane pytania</a></p>
                        </div>
                      </div>
                    </div>
                  </div>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </section>
    </div>
    <!--$-->
    <!--/$-->
  </main>
{/block}