<html><head></head><body>{**
 * Copyright since 2007 PrestaShop SA and Contributors
 * PrestaShop is an International Registered Trademark &amp; Property of PrestaShop SA
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
                <div class="h-full grow"><input autocomplete="off" class="bg-neutral-0 box-border h-full w-full rounded-full py-[10px] text-neutral-900 placeholder:text-neutral-700 focus-visible:outline-none pl-4 pr-16" data-testid="search-minimal-input-field" readonly="" placeholder="Czego szukasz?" type="text" value="" name="query"></div>
                <div class="absolute top-0 right-0 flex h-full items-center">
                  <div class="flex h-full items-center pr-4"><button class="flex h-6 w-6 items-center justify-center" type="submit" disabled="" data-testid="searchbar-button" aria-label="Szukaj"><svg aria-hidden="true" data-testid="SearchMagnifyingGlass" xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                        <path fill="#001489" d="M21 22a1 1 0 0 1-.707-.293l-5.39-5.39A7.96 7.96 0 0 1 10 18c-4.411 0-8-3.589-8-8s3.589-8 8-8 8 3.589 8 8a7.97 7.97 0 0 1-1.683 4.903l5.39 5.39A1 1 0 0 1 21 22M10 4c-3.309 0-6 2.691-6 6s2.691 6 6 6 6-2.691 6-6-2.691-6-6-6">
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
      <section class="bg-neutral-0 lg:pb-8 lg:pt-0" aria-label="Rozwijaj się z nami Poszukiwany lokal handlowy" data-testid="cms-page-teaser">
        <div class="relative flex w-full flex-col">
          <div class="mx-auto w-full max-w-7xl">
            <div class="PageTeaser_container___lPp9" data-testid="page-teaser">
              <div class="relative flex flex-col md:flex-row-reverse PageTeaser_innerContainer__HRU_X">
                <div class="PageTeaser_imageWrapper__coJ1u">
                  <picture>
                    <source srcset="/static/images/t_digital_page_teaser_mobile_w_128_ActionStore_RealEstate_Location_Pageteaser_2022_o4xoeq.webp 128w, /static/images/t_digital_page_teaser_mobile_w_256_ActionStore_RealEstate_Location_Pageteaser_2022_o4xoeq.webp 256w, /static/images/t_digital_page_teaser_mobile_w_640_ActionStore_RealEstate_Location_Pageteaser_2022_o4xoeq.webp 640w, /static/images/t_digital_page_teaser_mobile_w_1080_ActionStore_RealEstate_Location_Pageteaser_2022_o4xoeq.webp 1080w, /static/images/t_digital_page_teaser_mobile_w_1920_ActionStore_RealEstate_Location_Pageteaser_2022_o4xoeq.webp 1920w" media="(min-width: 1280px)" sizes="880px">
                    <source srcset="/static/images/t_digital_page_teaser_mobile_w_128_ActionStore_RealEstate_Location_Pageteaser_2022_o4xoeq.webp 128w, /static/images/t_digital_page_teaser_mobile_w_256_ActionStore_RealEstate_Location_Pageteaser_2022_o4xoeq.webp 256w, /static/images/t_digital_page_teaser_mobile_w_640_ActionStore_RealEstate_Location_Pageteaser_2022_o4xoeq.webp 640w, /static/images/t_digital_page_teaser_mobile_w_1080_ActionStore_RealEstate_Location_Pageteaser_2022_o4xoeq.webp 1080w, /static/images/t_digital_page_teaser_mobile_w_1920_ActionStore_RealEstate_Location_Pageteaser_2022_o4xoeq.webp 1920w" media="(min-width: 1024px)" sizes="calc(100vw - 400px)">
                    <source srcset="/static/images/t_digital_page_teaser_mobile_w_128_ActionStore_RealEstate_Location_Pageteaser_2022_o4xoeq.webp 128w, /static/images/t_digital_page_teaser_mobile_w_256_ActionStore_RealEstate_Location_Pageteaser_2022_o4xoeq.webp 256w, /static/images/t_digital_page_teaser_mobile_w_640_ActionStore_RealEstate_Location_Pageteaser_2022_o4xoeq.webp 640w, /static/images/t_digital_page_teaser_mobile_w_1080_ActionStore_RealEstate_Location_Pageteaser_2022_o4xoeq.webp 1080w, /static/images/t_digital_page_teaser_mobile_w_1920_ActionStore_RealEstate_Location_Pageteaser_2022_o4xoeq.webp 1920w" media="(min-width: 900px)" sizes="calc(100vw - 400px)">
                    <source srcset="/static/images/t_digital_page_teaser_mobile_w_128_ActionStore_RealEstate_Location_Pageteaser_2022_o4xoeq.webp 128w, /static/images/t_digital_page_teaser_mobile_w_256_ActionStore_RealEstate_Location_Pageteaser_2022_o4xoeq.webp 256w, /static/images/t_digital_page_teaser_mobile_w_640_ActionStore_RealEstate_Location_Pageteaser_2022_o4xoeq.webp 640w, /static/images/t_digital_page_teaser_mobile_w_1080_ActionStore_RealEstate_Location_Pageteaser_2022_o4xoeq.webp 1080w, /static/images/t_digital_page_teaser_mobile_w_1920_ActionStore_RealEstate_Location_Pageteaser_2022_o4xoeq.webp 1920w" media="(min-width: 768px)" sizes="calc(100vw - 400px)"><img data-testid="page-teaser-image" alt="" fetchpriority="high" loading="eager" decoding="async" data-nimg="fill" class="object-cover object-center md:object-right h-full w-full" style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent" sizes="100vw" src="/static/images/images/t_digital_page_teaser_mobile_w_1920_ActionStore_RealEstate_Location_Pageteaser_2022_o4xoeq.webp">
                  </picture>
                </div>
                <div data-testid="page-teaser-content" class="relative flex flex-col gap-4 md:absolute md:left-0 md:w-full md:gap-6 PageTeaser_contentSection___15Hr px-4 pt-4 md:p-8" style="background-color:#4e769c">
                  <div class="absolute bottom-full w-full md:static PageTeaser_titleWrapper__uthEv">
                    <h1 class="flex flex-col gap-1 sm:gap-1.5" data-testid="page-teaser-header"><span class="ml-[13px] md:ml-[17px] max-w-[calc(100%-28px)] md:max-w-[calc(100%-35px)]"><span class="relative z-3 flex flex-row"><span class="flex origin-bottom skew-x-[-18deg] items-center overflow-hidden rounded-tl-[4px] rounded-tr-[2px] rounded-br-[4px] rounded-bl-[2px] bg-dark-blue-500 px-[22px] py-2 md:px-6"><span class="text-neutral-0 z-1 line-clamp-1 skew-x-18 break-words heading-2xl" data-testid="trapezium-title">Rozwijaj się z nami</span></span></span></span><span class="hidden">&nbsp;</span><span class="max-w-[calc(100%-11px)] md:max-w-[calc(100%-14px)]"><span class="relative z-3 flex flex-row"><span class="flex origin-bottom skew-x-[-18deg] items-center overflow-hidden rounded-tl-[4px] rounded-tr-[2px] rounded-br-[4px] rounded-bl-[2px] bg-cyan px-4 py-[6px] md:px-5"><span class="text-neutral-0 z-1 line-clamp-1 skew-x-18 break-words heading-xl" data-testid="trapezium-subtitle">Poszukiwany lokal handlowy</span></span></span></span>
                    </h1>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
      <section class="bg-neutral-50 pt-6 md:pt-8 pb-6 md:pb-8" aria-label="Dyskontem niespożywczym" data-testid="cms-markdown">
        <div class="relative flex w-full flex-col px-4 lg:px-8">
          <div class="mx-auto w-full max-w-7xl">
            <div class="flex flex-col gap-4" data-content-king="rich-text">
              <h2 id="dyskontem-niespożywczym" class="heading-xl" data-testid="markdown-top-title">Dyskontem
                niespożywczym</h2>
              <div class="flex max-w-[800px] flex-col gap-3">
                <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph">Action ⁠- dynamicznie
                  rozwijający się dyskont niespożywczy w Europie⁠. Co tydzień odwiedza nas ponad 20 milionów klientów w
                  ponad 3000 sklepach⁠. Motto Action brzmi: „Niskie ceny⁠. Duży uśmiech“⁠. Nasz asortyment obejmuje
                  różnorodne produkty, które są ważne dla naszych klientów i ich rodzin w codziennym życiu⁠. Oferujemy
                  wysokiej jakości artykuły w niskich cenach, dzięki czemu są one dostępne dla szerokiej grupy
                  klientów⁠. Jesteśmy z tego dumni⁠.</p>
              </div>
              <div class="max-w-2xl"><iframe data-testid="youtube-player" class="border-none aspect-video w-full" src="https://www.youtube.com/embed/snsNPxmqJ5s" allowfullscreen="" title="Embedded youtube"></iframe>
              </div>
            </div>
          </div>
        </div>
      </section>
      <section class="bg-neutral-0 pt-6 md:pt-8 pb-6 md:pb-8" aria-label="Nasza unikalna formuła" data-testid="cms-markdown">
        <div class="relative flex w-full flex-col px-4 lg:px-8">
          <div class="mx-auto w-full max-w-7xl">
            <div class="flex flex-col gap-4" data-content-king="rich-text">
              <h2 id="nasza-unikalna-formuła" class="heading-xl" data-testid="markdown-top-title">Nasza unikalna formuła
              </h2>
              <div class="flex max-w-[800px] flex-col gap-3">
                <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph">Szerokie i jasne alejki,
                  zachęcające wnętrze i prosta koncepcja stanowią o wyjątkowości Action⁠. Oferujemy szeroki wybór około
                  6 000 produktów 0 aż 2/3 z nich kosztuje mniej niż 10 zł ⁠! Każdego tygodnia na nasze półki trafia
                  około 150 nowych produktów, a 2/3 naszej oferty ciągle się zmienia⁠. Nasze sklepy odwiedzają klienci z
                  różnych grup: od osób z ograniczonym budżetem po konsumentów, którzy po prostu chcą kupować codzienne
                  artykuły w najniższych cenach⁠. Nasza unikatowa formuła zapewnia dużą częstotliwość wizyt klientów⁠.
                  To z kolei gwarantuje ożywienie zarówno obszarów miast, jak&nbsp; centrów i parków handlowych⁠.</p>
                <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph">Mamy coraz więcej sklepów
                  w Polsce⁠. Aby kontynuować nasz szybki rozwój, poszukujemy odpowiednich lokalizacji⁠.</p>
                <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words" href="mailto:nieruchomosc@action.eu" target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Propozycja lokalizacji</a></p>
              </div>
              <div class="w-full max-w-2xl"><img alt="ActionStore_RealEstate_Location_Splitteaser_2022" loading="lazy" width="672" height="400" decoding="async" data-nimg="1" class="" style="color:transparent" src="/static/images/images/w_1920_ActionStore_RealEstate_Location_Splitteaser_2022_sncyli.webp">
              </div>
            </div>
          </div>
        </div>
      </section>
      <section class="bg-neutral-50 pt-6 md:pt-8 pb-6 md:pb-8" aria-label="Nasza idealna lokalizacja sklepu" data-testid="cms-markdown">
        <div class="relative flex w-full flex-col px-4 lg:px-8">
          <div class="mx-auto w-full max-w-7xl">
            <div class="flex flex-col gap-4" data-content-king="rich-text">
              <h2 id="nasza-idealna-lokalizacja-sklepu" class="heading-xl" data-testid="markdown-top-title">Nasza
                idealna lokalizacja sklepu</h2>
              <div class="flex max-w-[800px] flex-col gap-3">
                <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph">Chcemy być jak najbliżej
                  naszych klientów – właśnie dlatego nieustannie poszukujemy możliwości otwarcia sklepów na nowych
                  obszarach i partnerów do współpracy⁠. Brzmi ciekawie?&nbsp; Zachęcamy do wysłania propozycji
                  przestrzeni sklepowej naszemu zespołowi ds⁠. nieruchomości na adres&nbsp;<a class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words" href="mailto:nieruchomosc@action.eu" target="_blank" data-testid="markdown-link" rel="noreferrer noopener">nieruchomosc@action⁠.eu</a>⁠.</p>
              </div>
              <div class="w-full max-w-2xl"><img alt="infographic_ActionStore_RealEstate_AC_2025_PL" loading="lazy" width="672" height="400" decoding="async" data-nimg="1" class="" style="color:transparent" src="/static/images/images/w_1920_infographic_ActionStore_RealEstate_AC_2025_PL_hs4syy.webp">
              </div>
            </div>
          </div>
        </div>
      </section>
      <section class="bg-neutral-0 pt-6 md:pt-8 pb-6 md:pb-8" aria-label="Zrównoważony rozwój w Action" data-testid="cms-markdown">
        <div class="relative flex w-full flex-col px-4 lg:px-8">
          <div class="mx-auto w-full max-w-7xl">
            <div class="flex flex-col gap-4" data-content-king="rich-text">
              <h2 id="zrównoważony-rozwój-w-action" class="heading-xl" data-testid="markdown-top-title">Zrównoważony
                rozwój w Action</h2>
              <div class="flex max-w-[800px] flex-col gap-3">
                <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph">Sklepy Action są
                  popularne, a sieć niezwykle szybko się rozwija⁠. Wzrasta również nasza odpowiedzialność za środowisko
                  naturalne i społeczeństwo⁠. Dążymy do ograniczenia emisji CO2 z naszej własnej działalności o 50% do
                  2030 roku⁠. Nieprzerwanie pracujemy też nad jakością i zrównoważeniem naszych produktów oraz
                  &nbsp;budynków sklepowych⁠. Ważne jest dla nas, by klienci czuli się dobrze, kupując nasze artykuły⁠.
                  Przykładowo 70% naszych produktów z papieru i drewna kupujemy ze zrównoważonych źródeł, a 86% bawełny
                  pochodzi ze zrównoważonych upraw⁠. W ten sposób krok po kroku dążymy do tego, aby przyjazne środowisku
                  produkty były dostępne dla każdego⁠.</p>
                <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words" href="https://company.action.com/sustainability-new/" target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Więcej o zrównoważony rozwoju</a></p>
              </div>
              <div class="w-full max-w-2xl"><img alt="ActionStore_Shop_Shelves_Products_Towels_2022" loading="lazy" width="672" height="400" decoding="async" data-nimg="1" class="" style="color:transparent" src="/static/images/images/w_1920_ActionStore_Shop_Shelves_Products_Towels_2022_ol7kss.webp">
              </div>
            </div>
          </div>
        </div>
      </section>
    </div>
    <!--$-->
    <!--/$-->
</main>
{/block}
</contact@prestashop.com></body></html>