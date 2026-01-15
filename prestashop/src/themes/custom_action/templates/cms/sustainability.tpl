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
      <section class="bg-neutral-0 lg:pb-8 lg:pt-0" aria-label="Dobra jakość w najniższej cenie!" data-testid="cms-page-teaser">
        <div class="relative flex w-full flex-col">
          <div class="mx-auto w-full max-w-7xl">
            <div class="PageTeaser_container___lPp9" data-testid="page-teaser">
              <div class="relative flex flex-col md:flex-row-reverse PageTeaser_innerContainer__HRU_X">
                <div class="PageTeaser_imageWrapper__coJ1u">
                  <picture>
                    <source srcset="/static/images/t_digital_page_teaser_mobile_w_128_Sustainability_Toys_Woodentoys_2025_soi9x0.webp 128w, /static/images/t_digital_page_teaser_mobile_w_256_Sustainability_Toys_Woodentoys_2025_soi9x0.webp 256w, /static/images/t_digital_page_teaser_mobile_w_640_Sustainability_Toys_Woodentoys_2025_soi9x0.webp 640w, /static/images/t_digital_page_teaser_mobile_w_1080_Sustainability_Toys_Woodentoys_2025_soi9x0.webp 1080w, /static/images/t_digital_page_teaser_mobile_w_1920_Sustainability_Toys_Woodentoys_2025_soi9x0.webp 1920w" media="(min-width: 1280px)" sizes="880px">
                    <source srcset="/static/images/t_digital_page_teaser_mobile_w_128_Sustainability_Toys_Woodentoys_2025_soi9x0.webp 128w, /static/images/t_digital_page_teaser_mobile_w_256_Sustainability_Toys_Woodentoys_2025_soi9x0.webp 256w, /static/images/t_digital_page_teaser_mobile_w_640_Sustainability_Toys_Woodentoys_2025_soi9x0.webp 640w, /static/images/t_digital_page_teaser_mobile_w_1080_Sustainability_Toys_Woodentoys_2025_soi9x0.webp 1080w, /static/images/t_digital_page_teaser_mobile_w_1920_Sustainability_Toys_Woodentoys_2025_soi9x0.webp 1920w" media="(min-width: 1024px)" sizes="calc(100vw - 400px)">
                    <source srcset="/static/images/t_digital_page_teaser_mobile_w_128_Sustainability_Toys_Woodentoys_2025_soi9x0.webp 128w, /static/images/t_digital_page_teaser_mobile_w_256_Sustainability_Toys_Woodentoys_2025_soi9x0.webp 256w, /static/images/t_digital_page_teaser_mobile_w_640_Sustainability_Toys_Woodentoys_2025_soi9x0.webp 640w, /static/images/t_digital_page_teaser_mobile_w_1080_Sustainability_Toys_Woodentoys_2025_soi9x0.webp 1080w, /static/images/t_digital_page_teaser_mobile_w_1920_Sustainability_Toys_Woodentoys_2025_soi9x0.webp 1920w" media="(min-width: 900px)" sizes="calc(100vw - 400px)">
                    <source srcset="/static/images/t_digital_page_teaser_mobile_w_128_Sustainability_Toys_Woodentoys_2025_soi9x0.webp 128w, /static/images/t_digital_page_teaser_mobile_w_256_Sustainability_Toys_Woodentoys_2025_soi9x0.webp 256w, /static/images/t_digital_page_teaser_mobile_w_640_Sustainability_Toys_Woodentoys_2025_soi9x0.webp 640w, /static/images/t_digital_page_teaser_mobile_w_1080_Sustainability_Toys_Woodentoys_2025_soi9x0.webp 1080w, /static/images/t_digital_page_teaser_mobile_w_1920_Sustainability_Toys_Woodentoys_2025_soi9x0.webp 1920w" media="(min-width: 768px)" sizes="calc(100vw - 400px)"><img data-testid="page-teaser-image" alt="" fetchpriority="high" loading="eager" decoding="async" data-nimg="fill" class="object-cover object-center md:object-right h-full w-full" style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent" sizes="100vw" src="/static/images/t_digital_page_teaser_mobile_w_1920_Sustainability_Toys_Woodentoys_2025_soi9x0.webp">
                  </picture>
                </div>
                <div data-testid="page-teaser-content" class="relative flex flex-col gap-4 md:absolute md:left-0 md:w-full md:gap-6 PageTeaser_contentSection___15Hr p-4 md:p-8" style="background-color:#00b852">
                  <div class="absolute bottom-full w-full md:static PageTeaser_titleWrapper__uthEv">
                    <h1 class="flex flex-col gap-1 sm:gap-1.5" data-testid="page-teaser-header"><span class="ml-[17px] md:ml-5 max-w-[calc(100%-32px)] md:max-w-[calc(100%-38px)]"><span class="relative z-3 flex flex-row"><span class="flex origin-bottom skew-x-[-18deg] items-center overflow-hidden rounded-tl-[4px] rounded-tr-[2px] rounded-br-[4px] rounded-bl-[2px] bg-dark-blue-500 px-[22px] py-2 md:px-6"><span class="text-neutral-0 z-1 line-clamp-1 skew-x-18 break-words heading-2xl" data-testid="trapezium-title">Dobra jakość</span></span></span></span><span class="hidden">&nbsp;</span><span class="max-w-[calc(100%-15px)] md:max-w-[calc(100%-18px)]"><span class="relative z-3 flex flex-row"><span class="flex origin-bottom skew-x-[-18deg] items-center overflow-hidden rounded-tl-[4px] rounded-tr-[2px] rounded-br-[4px] rounded-bl-[2px] bg-dark-blue-500 px-[22px] py-2 md:px-6"><span class="text-neutral-0 z-1 line-clamp-1 skew-x-18 break-words heading-2xl" data-testid="trapezium-subtitle">w najniższej cenie!</span></span></span></span></h1>
                  </div>
                  <p class="text-body-normal text-neutral-0 line-clamp-5 break-words md:max-w-[368px]" data-testid="page-teaser-description" aria-hidden="false" data-content-king="page-teaser-description">
                    U nas dobra jakość idzie w parze z niską ceną: od miękkich ręczników po solidne zabawki, od czekolady
                    z certyfikatem Fairtrade po wygodną pościel i wiele więcej. Niskie ceny, duży uśmiech!</p>
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
              <div class="max-w-2xl"><iframe data-testid="youtube-player" class="border-none aspect-video w-full" src="https://www.youtube.com/embed/hpY1lVKGhno" allowfullscreen="" title="Embedded youtube"></iframe>
              </div>
            </div>
          </div>
        </div>
      </section>
      <section class="bg-neutral-0 pt-6 md:pt-8 pb-6 md:pb-8" data-testid="cms-markdown">
        <div class="relative flex w-full flex-col px-4 lg:px-8">
          <div class="mx-auto w-full max-w-7xl">
            <div class="flex flex-col gap-4" data-content-king="rich-text">
              <div class="max-w-2xl"><iframe data-testid="youtube-player" class="border-none aspect-video w-full" src="https://www.youtube.com/embed/OpF9FkVpKAA" allowfullscreen="" title="Embedded youtube"></iframe>
              </div>
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
                  <div><img data-testid="image" alt="" loading="lazy" width="80" height="80" decoding="async" data-nimg="1" class="" style="color:transparent" src="/static/images/t_digital_square_w_256_Sustainability_HUB_Linen_BathLinen_Towel_HotelRoyal_2024_cc5tv0.webp">
                  </div>
                  <div class="flex flex-1 auto-rows-min flex-col gap-1 overflow-hidden">
                    <h2 class="heading-lg" data-testid="title">Bawełna</h2>
                    <p class="text-body-normal break-words whitespace-break-spaces text-neutral-900" data-testid="description">Nasza bawełna pozyskiwana jest z odpowiedzialnych upraw
                    </p>
                  </div>
                </div>
              </li>
              <li class="col-span-1" data-testid="selling-point">
                <div class="flex gap-4">
                  <div><img data-testid="image" alt="" loading="lazy" width="80" height="80" decoding="async" data-nimg="1" class="" style="color:transparent" src="/static/images/t_digital_square_w_256_Sustainability_HUB_Toys_Entertainment_Toys_ToysUnisex_MiniMatters_Package_2024_bhvahq.webp">
                  </div>
                  <div class="flex flex-1 auto-rows-min flex-col gap-1 overflow-hidden">
                    <h2 class="heading-lg" data-testid="title">Drewno i papier</h2>
                    <p class="text-body-normal break-words whitespace-break-spaces text-neutral-900" data-testid="description">Wszystkie nasze papierowe i drewniane produkty pozyskujemy w sposób
                      bardziej zrównoważony.</p>
                  </div>
                </div>
              </li>
              <li class="col-span-1" data-testid="selling-point">
                <div class="flex gap-4">
                  <div><img data-testid="image" alt="" loading="lazy" width="80" height="80" decoding="async" data-nimg="1" class="" style="color:transparent" src="/static/images/t_digital_square_w_256_Sustainability_HUB_Food_Drink_Snacks_Nuts_Snacks_ChocoMoment_2024_laifsn.webp">
                  </div>
                  <div class="flex flex-1 auto-rows-min flex-col gap-1 overflow-hidden">
                    <h2 class="heading-lg" data-testid="title">Czekolada</h2>
                    <p class="text-body-normal break-words whitespace-break-spaces text-neutral-900" data-testid="description">Wszystkie nasze czekolady marki własnej mają certyfikat Fairtrade</p>
                  </div>
                </div>
              </li>
            </ul>
          </div>
        </div>
      </section>
      <section class="bg-neutral-50 pt-6 md:pt-8 pb-6 md:pb-8" aria-label="Toaletowy Pure Soft " data-testid="cms-markdown">
        <div class="relative flex w-full flex-col px-4 lg:px-8">
          <div class="mx-auto w-full max-w-7xl">
            <div class="flex flex-col gap-4" data-content-king="rich-text">
              <h2 id="toaletowy-pure-soft-" class="heading-xl" data-testid="markdown-top-title">Toaletowy Pure Soft </h2>
              <div class="flex max-w-[800px] flex-col gap-3">
                <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph">Niezbędny w Twojej łazience:
                  papier toaletowy Pure Soft⁠. Beżowy, a jednocześnie niezwykle miękki⁠.</p>
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph">Papier toaletowy Pure
                        Soft ECO jest w 100% wykonany z papieru i kartonu pochodzących z recyklingu⁠. Ponadto, papier nie
                        jest wybielany, dzięki czemu pozostaje beżowy⁠.</p>
                    </div>
                  </li>
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph">Opakowanie papieru
                        wykonane jest w 60% z plastiku pochodzącego z recyklingu⁠. Oznacza to, że zużywamy o 60% mniej
                        nowego plastiku⁠.</p>
                    </div>
                  </li>
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph">Czy wiesz, że
                        wykorzystanie włókien pochodzących w 100% z recyklingu do produkcji naszego papieru toaletowego
                        Pure Soft ECO pozwoliło nam zaoszczędzić prawie 3,7 miliona litrów wody w 2023 roku⁠*? ⁠*w
                        porównaniu z podobnym produktem z czystej masy celulozowej</p>
                    </div>
                  </li>
                </ul>
              </div>
              <div class="max-w-2xl"><iframe data-testid="youtube-player" class="border-none aspect-video w-full" src="https://www.youtube.com/embed/NGp6G9-iA1o" allowfullscreen="" title="Embedded youtube"></iframe>
              </div>
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
                  <div><img data-testid="image" alt="" loading="lazy" width="80" height="80" decoding="async" data-nimg="1" class="" style="color:transparent" src="/static/images/t_digital_square_w_256_Sustainability_HUB_Linen_BathLinen_Towel_HotelRoyal_2024_cc5tv0.webp">
                  </div>
                  <div class="flex flex-1 auto-rows-min flex-col gap-1 overflow-hidden">
                    <h2 class="heading-lg" data-testid="title">Cotton</h2>
                    <p class="text-body-normal break-words whitespace-break-spaces text-neutral-900" data-testid="description">We source all our cotton products responsibly.</p>
                  </div>
                </div>
              </li>
              <li class="col-span-1" data-testid="selling-point">
                <div class="flex gap-4">
                  <div><img data-testid="image" alt="" loading="lazy" width="80" height="80" decoding="async" data-nimg="1" class="" style="color:transparent" src="/static/images/t_digital_square_w_256_Sustainability_HUB_Toys_Entertainment_Toys_ToysUnisex_MiniMatters_Package_2024_bhvahq.webp">
                  </div>
                  <div class="flex flex-1 auto-rows-min flex-col gap-1 overflow-hidden">
                    <h2 class="heading-lg" data-testid="title">Wood and paper</h2>
                    <p class="text-body-normal break-words whitespace-break-spaces text-neutral-900" data-testid="description">We source 94% of our paper and wood products more sustainably.</p>
                  </div>
                </div>
              </li>
              <li class="col-span-1" data-testid="selling-point">
                <div class="flex gap-4">
                  <div><img data-testid="image" alt="" loading="lazy" width="80" height="80" decoding="async" data-nimg="1" class="" style="color:transparent" src="/static/images/t_digital_square_w_256_Sustainability_HUB_Food_Drink_Snacks_Nuts_Snacks_ChocoMoment_2024_laifsn.webp">
                  </div>
                  <div class="flex flex-1 auto-rows-min flex-col gap-1 overflow-hidden">
                    <h2 class="heading-lg" data-testid="title">Chocolate</h2>
                    <p class="text-body-normal break-words whitespace-break-spaces text-neutral-900" data-testid="description">All our private label chocolate is Fairtrade certified.</p>
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
{/block}</contact@prestashop.com></body></html>