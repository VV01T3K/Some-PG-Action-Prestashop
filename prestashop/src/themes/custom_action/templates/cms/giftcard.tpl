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
      <section class="bg-neutral-0 lg:pb-8 lg:pt-0" aria-label="Prezent dla każdego! Podaruj uśmiech!"
        data-testid="cms-page-teaser">
        <div class="relative flex w-full flex-col">
          <div class="mx-auto w-full max-w-7xl">
            <div class="PageTeaser_container___lPp9" data-testid="page-teaser">
              <div class="relative flex flex-col md:flex-row-reverse PageTeaser_innerContainer__HRU_X">
                <div class="PageTeaser_imageWrapper__coJ1u">
                  <picture>
                    <source
                      srcset="/static/images/t_digital_page_teaser_mobile_w_128_Giftcard_Page_Pageteaser__2025_hklehb.webp 128w, /static/images/t_digital_page_teaser_mobile_w_256_Giftcard_Page_Pageteaser__2025_hklehb.webp 256w, /static/images/t_digital_page_teaser_mobile_w_640_Giftcard_Page_Pageteaser__2025_hklehb.webp 640w, /static/images/t_digital_page_teaser_mobile_w_1080_Giftcard_Page_Pageteaser__2025_hklehb.webp 1080w, /static/images/t_digital_page_teaser_mobile_w_1920_Giftcard_Page_Pageteaser__2025_hklehb.webp 1920w"
                      media="(min-width: 1280px)" sizes="880px">
                    <source
                      srcset="/static/images/t_digital_page_teaser_mobile_w_128_Giftcard_Page_Pageteaser__2025_hklehb.webp 128w, /static/images/t_digital_page_teaser_mobile_w_256_Giftcard_Page_Pageteaser__2025_hklehb.webp 256w, /static/images/t_digital_page_teaser_mobile_w_640_Giftcard_Page_Pageteaser__2025_hklehb.webp 640w, /static/images/t_digital_page_teaser_mobile_w_1080_Giftcard_Page_Pageteaser__2025_hklehb.webp 1080w, /static/images/t_digital_page_teaser_mobile_w_1920_Giftcard_Page_Pageteaser__2025_hklehb.webp 1920w"
                      media="(min-width: 1024px)" sizes="calc(100vw - 400px)">
                    <source
                      srcset="/static/images/t_digital_page_teaser_mobile_w_128_Giftcard_Page_Pageteaser__2025_hklehb.webp 128w, /static/images/t_digital_page_teaser_mobile_w_256_Giftcard_Page_Pageteaser__2025_hklehb.webp 256w, /static/images/t_digital_page_teaser_mobile_w_640_Giftcard_Page_Pageteaser__2025_hklehb.webp 640w, /static/images/t_digital_page_teaser_mobile_w_1080_Giftcard_Page_Pageteaser__2025_hklehb.webp 1080w, /static/images/t_digital_page_teaser_mobile_w_1920_Giftcard_Page_Pageteaser__2025_hklehb.webp 1920w"
                      media="(min-width: 900px)" sizes="calc(100vw - 400px)">
                    <source
                      srcset="/static/images/t_digital_page_teaser_mobile_w_128_Giftcard_Page_Pageteaser__2025_hklehb.webp 128w, /static/images/t_digital_page_teaser_mobile_w_256_Giftcard_Page_Pageteaser__2025_hklehb.webp 256w, /static/images/t_digital_page_teaser_mobile_w_640_Giftcard_Page_Pageteaser__2025_hklehb.webp 640w, /static/images/t_digital_page_teaser_mobile_w_1080_Giftcard_Page_Pageteaser__2025_hklehb.webp 1080w, /static/images/t_digital_page_teaser_mobile_w_1920_Giftcard_Page_Pageteaser__2025_hklehb.webp 1920w"
                      media="(min-width: 768px)" sizes="calc(100vw - 400px)"><img data-testid="page-teaser-image" alt=""
                      fetchpriority="high" loading="eager" decoding="async" data-nimg="fill"
                      class="object-cover object-center md:object-right h-full w-full"
                      style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent"
                      sizes="100vw"
                      srcset="/static/images/t_digital_page_teaser_mobile_w_128_Giftcard_Page_Pageteaser__2025_hklehb.webp 128w, /static/images/t_digital_page_teaser_mobile_w_256_Giftcard_Page_Pageteaser__2025_hklehb.webp 256w, /static/images/t_digital_page_teaser_mobile_w_640_Giftcard_Page_Pageteaser__2025_hklehb.webp 640w, /static/images/t_digital_page_teaser_mobile_w_1080_Giftcard_Page_Pageteaser__2025_hklehb.webp 1080w, /static/images/t_digital_page_teaser_mobile_w_1920_Giftcard_Page_Pageteaser__2025_hklehb.webp 1920w"
                      src="/static/images/t_digital_page_teaser_mobile_w_1920_Giftcard_Page_Pageteaser__2025_hklehb.webp">
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
                              data-testid="trapezium-title">Prezent dla każdego!</span></span></span></span><span
                        class="hidden">&nbsp;</span><span class="max-w-[calc(100%-11px)] md:max-w-[calc(100%-14px)]"><span
                          class="relative z-3 flex flex-row"><span
                            class="flex origin-bottom skew-x-[-18deg] items-center overflow-hidden rounded-tl-[4px] rounded-tr-[2px] rounded-br-[4px] rounded-bl-[2px] bg-cyan px-4 py-[6px] md:px-5"><span
                              class="text-neutral-0 z-1 line-clamp-1 skew-x-18 break-words heading-xl"
                              data-testid="trapezium-subtitle">Podaruj uśmiech!</span></span></span></span></h1>
                  </div>
                  <p class="text-body-normal text-neutral-0 line-clamp-5 break-words md:max-w-[368px]"
                    data-testid="page-teaser-description" aria-hidden="false" data-content-king="page-teaser-description">
                    Spraw radość bliskim! W naszych sklepach znajdziesz tyle wspaniałych produktów, że wybór może być
                    trudny. Na szczęście z kartą podarunkową zawsze trafisz w dziesiątkę!
                  </p>
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
                <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph">Na urodziny, ważny moment
                  albo po prostu, żeby sprawić komuś radość⁠.Z kartą podarunkową Action masz pewność, że prezent będzie
                  trafiony⁠. Przy naszych niskich cenach i nieustannie zaskakującej ofercie, łatwo znaleźć coś
                  wyjątkowego⁠.</p>
                <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><br>
                  <!-- -->Chcesz kupić kartę podarunkową? Zapytaj o nią przy kasie w jednym z naszych sklepów⁠. Ty
                  decydujesz, jaka kwota ma znaleźć się na karcie, od 20 zł do 200 zł⁠. Wygodnie, prawda?</p>
                <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><br>
                  <!-- -->Nie musisz wydawać wszystkiego od razu – nasza karta nie ma terminu ważności i można ją
                  wykorzystać w dowolnym sklepie Action w Polsce⁠.</p>
              </div>
            </div>
          </div>
        </div>
      </section>
      <section class="bg-neutral-0 pt-6 md:pt-8 pb-6 md:pb-8" aria-label="" data-testid="cms-unique-selling-points">
        <div class="relative flex w-full flex-col px-4 lg:px-8">
          <div class="mx-auto w-full max-w-7xl">
            <ul data-testid="unique-selling-points" class="grid grid-cols-1 gap-10 lg:grid-cols-2">
              <li class="col-span-1" data-testid="selling-point">
                <div class="flex gap-4">
                  <div><img data-testid="image" alt="" loading="lazy" width="80" height="80" decoding="async"
                      data-nimg="1" class="" style="color:transparent"
                      srcset="/static/images/t_digital_square_w_128_Giftcard_Page_In_de_winkel_Icon_2025_o5hhoh.webp 1x, /static/images/t_digital_square_w_256_Giftcard_Page_In_de_winkel_Icon_2025_o5hhoh.webp 2x"
                      src="/static/images/t_digital_square_w_256_Giftcard_Page_In_de_winkel_Icon_2025_o5hhoh.webp">
                  </div>
                  <div class="flex flex-1 auto-rows-min flex-col gap-1 overflow-hidden justify-center">
                    <h2 class="heading-lg" data-testid="title">Dostępna w sklepach Action</h2>
                  </div>
                </div>
              </li>
              <li class="col-span-1" data-testid="selling-point">
                <div class="flex gap-4">
                  <div><img data-testid="image" alt="" loading="lazy" width="80" height="80" decoding="async"
                      data-nimg="1" class="" style="color:transparent"
                      srcset="/static/images/t_digital_square_w_128_Giftcard_Page_Wallet_Waarde_Icon_2025_nnkrrb.webp 1x, /static/images/t_digital_square_w_256_Giftcard_Page_Wallet_Waarde_Icon_2025_nnkrrb.webp 2x"
                      src="/static/images/t_digital_square_w_256_Giftcard_Page_Wallet_Waarde_Icon_2025_nnkrrb.webp">
                  </div>
                  <div class="flex flex-1 auto-rows-min flex-col gap-1 overflow-hidden justify-center">
                    <h2 class="heading-lg" data-testid="title">Wartość od 20 zł do 200 zł</h2>
                  </div>
                </div>
              </li>
              <li class="col-span-1" data-testid="selling-point">
                <div class="flex gap-4">
                  <div><img data-testid="image" alt="" loading="lazy" width="80" height="80" decoding="async"
                      data-nimg="1" class="" style="color:transparent"
                      srcset="/static/images/t_digital_square_w_128_Giftcard_Page_Oneindig_Icon_2025_zi1w12.webp 1x, /static/images/t_digital_square_w_256_Giftcard_Page_Oneindig_Icon_2025_zi1w12.webp 2x"
                      src="/static/images/t_digital_square_w_256_Giftcard_Page_Oneindig_Icon_2025_zi1w12.webp">
                  </div>
                  <div class="flex flex-1 auto-rows-min flex-col gap-1 overflow-hidden justify-center">
                    <h2 class="heading-lg" data-testid="title">Ważna bezterminowo</h2>
                  </div>
                </div>
              </li>
              <li class="col-span-1" data-testid="selling-point">
                <div class="flex gap-4">
                  <div><img data-testid="image" alt="" loading="lazy" width="80" height="80" decoding="async"
                      data-nimg="1" class="" style="color:transparent"
                      srcset="/static/images/t_digital_square_w_128_Giftcard_Page_Flexibel_Gebruik_Icon_2025_ql3lz6.webp 1x, /static/images/t_digital_square_w_256_Giftcard_Page_Flexibel_Gebruik_Icon_2025_ql3lz6.webp 2x"
                      src="/static/images/t_digital_square_w_256_Giftcard_Page_Flexibel_Gebruik_Icon_2025_ql3lz6.webp">
                  </div>
                  <div class="flex flex-1 auto-rows-min flex-col gap-1 overflow-hidden justify-center">
                    <h2 class="heading-lg" data-testid="title">Elastyczny saldo – do wydania w całości lub w częściach
                    </h2>
                  </div>
                </div>
              </li>
            </ul>
          </div>
        </div>
      </section>
      <section class="bg-neutral-50 pt-6 md:pt-8 pb-6 md:pb-8">
        <div class="relative flex w-full flex-col px-4 lg:px-8">
          <div class="mx-auto w-full max-w-7xl">
            <div data-testid="gift-card-balance-row" class="my-3 grid grid-cols-1 gap-8 md:my-14 md:grid-cols-2">
              <div class="flex flex-col gap-8 md:gap-10">
                <div>
                  <h2 class="heading-xl" data-testid="register-title">Sprawdź saldo na Twojej karcie podarunkowej</h2>
                  <p class="text-body-normal whitespace-break-spaces text-neutral-900"
                    data-testid="split-teaser-content-description">Masz kartę podarunkową Action? Sprawdź poniżej jej
                    saldo. Wystarczy, że wpiszesz numer karty, który znajdziesz na odwrocie.</p>
                </div>

                <fieldset>
                  <div class="md:w-[358px]">
                    <div data-testid="gift-card-number-input"><label class="text-base mb-2 block text-neutral-700"
                        for="_R_aphpbsnpfplciqbsnpfivb_" data-testid="input-label"><span class="text-neutral-900">Numer
                          karty<span class="text-error" aria-label="To pole jest obowiązkowe"> *</span></span></label>
                      <div class="relative"><input id="_R_aphpbsnpfplciqbsnpfivb_"
                          class="bg-neutral-0 box-border w-full p-2.5 text-neutral-900 outline-none rounded-lg border-2 placeholder:text-neutral disabled:text-neutral disabled:cursor-not-allowed disabled:bg-neutral-50 focus:border-dark-blue border-neutral-300"
                          data-testid="input" placeholder="0000 0000 0000 0000 000" required="" name="cardNumber"></div>
                    </div>
                  </div>
                  <div data-testid="recaptcha-widget"></div><button
                    onclick="alert('Funkcjonalność niedostępna w tej wersji.'); return false;"
                    class="relative box-border flex max-w-full items-center justify-center gap-1 rounded-full text-base font-medium py-2.5 px-5 bg-dark-blue-500 text-neutral-0 hover:bg-dark-blue-300 active:bg-dark-blue-700 focus:bg-dark-blue-300 focus:outline focus:outline-2 focus:outline-dark-blue-500 focus:outline-offset-2 disabled:bg-neutral-150 disabled:text-neutral-700 disabled:outline disabled:outline-1 disabled:outline-neutral mt-4 w-full md:w-fit"
                    data-testid="gift-card-submit-button"><span class="truncate px-1">Sprawdzanie salda</span></button>
                </fieldset>

              </div>
              <div class="m-auto flex justify-center">
                <div class="relative h-[422px] w-[528px]"><img alt="" loading="lazy" decoding="async" data-nimg="fill"
                    class="object-contain h-full w-full"
                    style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent"
                    sizes="(min-width: 1280px) calc(1280px / 2), (min-width: 1024px) calc(100vw / 2), (min-width: 768px) calc(100vw / 2), (min-width: 640px) calc(100vw / 2), calc(100vw / 1)"
                    srcset="/static/images/w_128_Giftcard_Page_Giftcard_2025_uc6mvg.webp 128w, /static/images/w_256_Giftcard_Page_Giftcard_2025_uc6mvg.webp 256w, /static/images/w_640_Giftcard_Page_Giftcard_2025_uc6mvg.webp 640w, /static/images/w_1080_Giftcard_Page_Giftcard_2025_uc6mvg.webp 1080w, /static/images/w_1920_Giftcard_Page_Giftcard_2025_uc6mvg.webp 1920w"
                    src="/static/images/w_1920_Giftcard_Page_Giftcard_2025_uc6mvg.webp"></div>
              </div>
            </div>
          </div>
        </div>
      </section>
      <section class="bg-neutral-0 pt-6 md:pt-8 pb-6 md:pb-8" aria-label="Popularne pytania karta podarunkowa"
        data-testid="cms-faq-section">
        <div class="relative flex w-full flex-col px-4 lg:px-8">
          <div class="mx-auto w-full max-w-7xl">
            <div data-testid="faq-section-container" class="flex flex-col gap-2 lg:w-3/4">
              <h2 id="popularne-pytania-karta-podarunkowa" data-testid="faq-section-title" class="heading-xl">Popularne
                pytania karta podarunkowa</h2>
              <ul data-testid="faq-section-questions-container" class="grid grid-cols-1 gap-y-1">
                <li>
                  <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
                    <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
                        aria-expanded="false" aria-controls="_R_6lpbsnpfplciqbsnpfivb_"><span
                          data-testid="accordion-container-title"
                          class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">Gdzie
                          mogę kupić kartę podarunkową Action?</span><span
                          class="mt-0.5 transform content-center transition-transform duration-300"><svg
                            aria-hidden="true" data-testid="ChevronDown" class="shrink-0"
                            xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="none" viewBox="0 0 24 24">
                            <path fill="#001489"
                              d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                            </path>
                          </svg></span></button></h3>
                    <div id="_R_6lpbsnpfplciqbsnpfivb_" data-testid="accordion-content"
                      class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden=""
                      style="max-height:0">
                      <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
                        <div class="flex max-w-[800px] flex-col gap-3">
                          <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph">Karta podarunkowa
                            Action jest obecnie dostępna wyłącznie w naszych sklepach stacjonarnych⁠⁠.</p>
                        </div>
                      </div>
                    </div>
                  </div>
                </li>
                <li>
                  <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
                    <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
                        aria-expanded="false" aria-controls="_R_alpbsnpfplciqbsnpfivb_"><span
                          data-testid="accordion-container-title"
                          class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">Czy
                          mogę płacić za zakupy w sklepie kartą podarunkową Action?</span><span
                          class="mt-0.5 transform content-center transition-transform duration-300"><svg
                            aria-hidden="true" data-testid="ChevronDown" class="shrink-0"
                            xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="none" viewBox="0 0 24 24">
                            <path fill="#001489"
                              d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                            </path>
                          </svg></span></button></h3>
                    <div id="_R_alpbsnpfplciqbsnpfivb_" data-testid="accordion-content"
                      class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden=""
                      style="max-height:0">
                      <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
                        <div class="flex max-w-[800px] flex-col gap-3">
                          <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph">Tak, w naszych
                            sklepach można płacić kartą podarunkową Action, ale tylko przy kasie, a nie przy samodzielnym
                            skanowaniu⁠⁠.</p>
                          <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph">Chcesz kupić komuś
                            na prezent kartę podarunkową Action? Możesz to zrobić tylko w sklepie⁠⁠. Zapytaj o tę
                            możliwość przy kasie⁠⁠.</p>
                        </div>
                      </div>
                    </div>
                  </div>
                </li>
                <li>
                  <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
                    <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
                        aria-expanded="false" aria-controls="_R_elpbsnpfplciqbsnpfivb_"><span
                          data-testid="accordion-container-title"
                          class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">Czy
                          mogę płacić także innymi kartami podarunkowymi?</span><span
                          class="mt-0.5 transform content-center transition-transform duration-300"><svg
                            aria-hidden="true" data-testid="ChevronDown" class="shrink-0"
                            xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="none" viewBox="0 0 24 24">
                            <path fill="#001489"
                              d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                            </path>
                          </svg></span></button></h3>
                    <div id="_R_elpbsnpfplciqbsnpfivb_" data-testid="accordion-content"
                      class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden=""
                      style="max-height:0">
                      <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
                        <div class="flex max-w-[800px] flex-col gap-3">
                          <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph">Niestety nie
                            akceptujemy kart podarunkowych innych niż nasze własne⁠⁠. Posiadasz inną kartę podarunkową?
                            Wykorzystaj ją w innym sklepie⁠⁠!</p>
                        </div>
                      </div>
                    </div>
                  </div>
                </li>
                <li>
                  <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
                    <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
                        aria-expanded="false" aria-controls="_R_ilpbsnpfplciqbsnpfivb_"><span
                          data-testid="accordion-container-title"
                          class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">Jak
                          wpłacić pieniądze na kartę podarunkową Action?</span><span
                          class="mt-0.5 transform content-center transition-transform duration-300"><svg
                            aria-hidden="true" data-testid="ChevronDown" class="shrink-0"
                            xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="none" viewBox="0 0 24 24">
                            <path fill="#001489"
                              d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                            </path>
                          </svg></span></button></h3>
                    <div id="_R_ilpbsnpfplciqbsnpfivb_" data-testid="accordion-content"
                      class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden=""
                      style="max-height:0">
                      <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
                        <div class="flex max-w-[800px] flex-col gap-3">
                          <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph">Kiedy kupujesz
                            kartę podarunkową Action w sklepie, kasjer zapyta Cię, jaką kwotę chcesz na nią wpłacić⁠⁠.
                            Może to być dowolna kwota od 20 do 200 złotych⁠⁠.</p>
                          <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph">Nie musisz
                            jednorazowo wydawać całej kwoty⁠⁠. Za każdym razem, gdy coś kupujesz i płacisz kartą
                            podarunkową, kwota zakupów jest odejmowana z Twojego salda⁠⁠.</p>
                          <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph">Jeśli saldo na
                            karcie wynosi 0,00 złotych, nie możesz już jej doładować⁠⁠. W takiej sytuacji możesz kupić
                            nową kartę podarunkową</p>
                        </div>
                      </div>
                    </div>
                  </div>
                </li>
                <li>
                  <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
                    <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
                        aria-expanded="false" aria-controls="_R_mlpbsnpfplciqbsnpfivb_"><span
                          data-testid="accordion-container-title"
                          class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">Jak
                          długo ważna jest karta podarunkowa Action?</span><span
                          class="mt-0.5 transform content-center transition-transform duration-300"><svg
                            aria-hidden="true" data-testid="ChevronDown" class="shrink-0"
                            xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="none" viewBox="0 0 24 24">
                            <path fill="#001489"
                              d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                            </path>
                          </svg></span></button></h3>
                    <div id="_R_mlpbsnpfplciqbsnpfivb_" data-testid="accordion-content"
                      class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden=""
                      style="max-height:0">
                      <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
                        <div class="flex max-w-[800px] flex-col gap-3">
                          <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph">Karta podarunkowa
                            jest ważna bezterminowo ⁠⁠(o ile nie wskazano inaczej⁠⁠) i można z niej korzystać wyłącznie w
                            kraju, w którym została zakupiona⁠⁠. Karta podarunkowa nie może zostać wymieniona na
                            gotówkę⁠⁠.</p>
                        </div>
                      </div>
                    </div>
                  </div>
                </li>
                <li>
                  <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
                    <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
                        aria-expanded="false" aria-controls="_R_qlpbsnpfplciqbsnpfivb_"><span
                          data-testid="accordion-container-title"
                          class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">Moja
                          karta podarunkowa Action jest uszkodzona. Czy nadal mogę z niej korzystać?</span><span
                          class="mt-0.5 transform content-center transition-transform duration-300"><svg
                            aria-hidden="true" data-testid="ChevronDown" class="shrink-0"
                            xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="none" viewBox="0 0 24 24">
                            <path fill="#001489"
                              d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                            </path>
                          </svg></span></button></h3>
                    <div id="_R_qlpbsnpfplciqbsnpfivb_" data-testid="accordion-content"
                      class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden=""
                      style="max-height:0">
                      <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
                        <div class="flex max-w-[800px] flex-col gap-3">
                          <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph">Jeśli przynajmniej
                            1 z kodów karty ⁠⁠(kod kreskowy lub kod numeryczny⁠⁠) jest nieuszkodzony, możesz normalnie
                            płacić kartą podarunkową⁠⁠.</p>
                          <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph">Jeśli oba kody są
                            uszkodzone, karta podarunkowa jest niestety nieważna⁠⁠. Nie da się wtedy sprawdzić, jakie
                            saldo jest dostępne na karcie⁠⁠.</p>
                        </div>
                      </div>
                    </div>
                  </div>
                </li>
                <li>
                  <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
                    <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
                        aria-expanded="false" aria-controls="_R_ulpbsnpfplciqbsnpfivb_"><span
                          data-testid="accordion-container-title"
                          class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">Czy
                          muszę jednorazowo wydać kwotę znajdującą się na karcie podarunkowej?</span><span
                          class="mt-0.5 transform content-center transition-transform duration-300"><svg
                            aria-hidden="true" data-testid="ChevronDown" class="shrink-0"
                            xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="none" viewBox="0 0 24 24">
                            <path fill="#001489"
                              d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                            </path>
                          </svg></span></button></h3>
                    <div id="_R_ulpbsnpfplciqbsnpfivb_" data-testid="accordion-content"
                      class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden=""
                      style="max-height:0">
                      <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
                        <div class="flex max-w-[800px] flex-col gap-3">
                          <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph">Nie, nie musisz
                            jednorazowo wydawać całej kwoty⁠⁠. Za każdym razem, gdy coś kupujesz, saldo jest zmniejszane o
                            kwotę, którą wydałeś⁠⁠(⁠⁠-aś⁠⁠)⁠⁠. Dopóki Twoja karta nie wskaże 0,00 złotych⁠⁠.</p>
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