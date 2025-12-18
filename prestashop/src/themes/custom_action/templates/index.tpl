{extends file=$layout}

{block name='content'}

  <div class="hidden h-8 lg:block"></div>
  {widget name='ps_categorytree' carousel=true}

{hook h='displayDiscountedProducts'}

  <section class="bg-neutral-0 pt-6 md:pt-8 pb-6 md:pb-8" data-testid="cms-page-teaser-carousel">
    <div class="relative flex w-full flex-col px-4 lg:px-8">
      <div class="mx-auto w-full max-w-7xl">
        <div class="flex flex-col gap-4 md:gap-6"
          style="--rowsXl:1;--columnsXl:3;--rowsLg:1;--columnsLg:3;--rowsMd:1;--columnsMd:2;--rowsSm:1;--columnsSm:1;--rowsDefault:1;--columnsDefault:1">
          <div class="@container relative" style="--numberOfPages: 1; --currentPage: 0;">
            <div
              class="xl:[--columns:var(--columnsXl)] xl:[--rows:var(--rowsXl)] lg:[--columns:var(--columnsLg)] lg:[--rows:var(--rowsLg)] md:[--columns:var(--columnsMd)] md:[--rows:var(--rowsMd)] sm:[--columns:var(--columnsSm)] sm:[--rows:var(--rowsSm)] [--columns:var(--columnsDefault)] [--rows:var(--rowsDefault)] [--itemSpacing:8px] md:[--itemSpacing:16px] [--lastItemPartial:16px] sm:[--lastItemPartial:32px] [--itemWidth:calc((100cqw-var(--itemSpacing)*var(--columns)-var(--lastItemPartial))/var(--columns))] lg:[--itemWidth:calc((100cqw-var(--itemSpacing)*(var(--columns)-1))/var(--columns))] pointer-fine:[--itemWidth:calc((100cqw-var(--itemSpacing)*(var(--columns)-1))/var(--columns))] [--isMultiRow:calc(min(1,var(--rows)-1))] [--isSingleRow:calc(1-var(--isMultiRow))]">
              <div
                class="no-scrollbar flex overflow-auto lg:overflow-clip pointer-fine:overflow-clip lg:[overflow-clip-margin:2px] pointer-fine:[overflow-clip-margin:2px] -mx-4 lg:mx-0 pointer-fine:mx-0">
                <div class="relative flex transition-transform duration-600 ease-in-out" style="">
                  <div class="w-4 shrink-0 lg:w-0 pointer-fine:w-0"></div>
                  <div class="grid grid-flow-col grid-rows-[repeat(var(--rows),minmax(0,auto))] gap-(--itemSpacing)">
                    <div class="w-(--itemWidth)"><a class="relative h-full group"
href="/2-strona-glowna" aria-label="Zobacz wszystko"
                        data-testid="content-card">
                        <div
                          class="lg:min-w-none relative flex h-full min-h-[300px] w-full flex-col overflow-hidden rounded-md md:max-w-none InspirationContentCard_contentCard__YE4xI md:min-h-[500px] min-h-[340px]">
                          <div class="relative h-full w-full overflow-hidden"><img data-testid="content-card-image" alt=""
                              loading="lazy" decoding="async" data-nimg="fill"
                              class="bg-neutral-10 object-cover object-center transition-all duration-300 group-hover:scale-105 transition-transform duration-250 hover:scale-105 h-full w-full"
                              style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent"
                              sizes="(min-width: 1280px) calc(1280px / 3), (min-width: 1024px) calc(100vw / 3), (min-width: 768px) calc(100vw / 2), (min-width: 640px) calc(100vw / 1), calc(100vw / 1)"
                              src="/static/Presents_ToysEntertainment_Toys_Dolls_2025_ygfmvt.avif">
                          </div>
                          <div class="relative w-full p-4 InspirationContentCard_titleContainer__TmDDF"
                            style="background-color:#4e769c">
                            <h3
                              class="heading-lg text-neutral-0 line-clamp-2 flex min-w-0 items-center font-bold first-letter:uppercase"
                              data-testid="content-card-title">Najlepsze prezenty</h3>
                            <p class="body-sm text-neutral-0">w najniższej cenie</p>
                            <div class="InspirationContentCard_chevronButton__98Zcv"><svg aria-hidden="true"
                                data-testid="ChevronRightMd" class="h-8 w-8" xmlns="http://www.w3.org/2000/svg" width="24"
                                height="24" fill="none" viewBox="0 0 24 24">
                                <path fill="#001489"
                                  d="M10 17a1 1 0 0 1-.707-1.707L12.586 12 9.293 8.707a1 1 0 1 1 1.414-1.414l4 4a1 1 0 0 1 0 1.414l-4 4A1 1 0 0 1 10 17">
                                </path>
                              </svg></div>
                          </div>
                        </div>
                      </a></div>
                    <div class="w-(--itemWidth)"><a class="relative h-full group"
                        href="/2-strona-glowna" aria-label="Zobacz wszystko"
                        data-testid="content-card">
                        <div
                          class="lg:min-w-none relative flex h-full min-h-[300px] w-full flex-col overflow-hidden rounded-md md:max-w-none InspirationContentCard_contentCard__YE4xI md:min-h-[500px] min-h-[340px]">
                          <div class="relative h-full w-full overflow-hidden"><img data-testid="content-card-image" alt=""
                              loading="lazy" decoding="async" data-nimg="fill"
                              class="bg-neutral-10 object-cover object-center transition-all duration-300 group-hover:scale-105 transition-transform duration-250 hover:scale-105 h-full w-full"
                              style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent"
                              sizes="(min-width: 1280px) calc(1280px / 3), (min-width: 1024px) calc(100vw / 3), (min-width: 768px) calc(100vw / 2), (min-width: 640px) calc(100vw / 1), calc(100vw / 1)"
                              src="/static/Christmas_Decoration_SeasonalDecoration_DecoratingTree_2025_d2npid.avif">
                          </div>
                          <div class="relative w-full p-4 InspirationContentCard_titleContainer__TmDDF"
                            style="background-color:#e2273a">
                            <h3
                              class="heading-lg text-neutral-0 line-clamp-2 flex min-w-0 items-center font-bold first-letter:uppercase"
                              data-testid="content-card-title">Niskie ceny,</h3>
                            <p class="body-sm text-neutral-0">duża radość oczekiwania!</p>
                            <div class="InspirationContentCard_chevronButton__98Zcv"><svg aria-hidden="true"
                                data-testid="ChevronRightMd" class="h-8 w-8" xmlns="http://www.w3.org/2000/svg" width="24"
                                height="24" fill="none" viewBox="0 0 24 24">
                                <path fill="#001489"
                                  d="M10 17a1 1 0 0 1-.707-1.707L12.586 12 9.293 8.707a1 1 0 1 1 1.414-1.414l4 4a1 1 0 0 1 0 1.414l-4 4A1 1 0 0 1 10 17">
                                </path>
                              </svg></div>
                          </div>
                        </div>
                      </a></div>
                    <div class="w-(--itemWidth)"><a class="relative h-full group"
                        href="/2-strona-glowna" aria-label="Zobacz wszystko"
                        data-testid="content-card">
                        <div
                          class="lg:min-w-none relative flex h-full min-h-[300px] w-full flex-col overflow-hidden rounded-md md:max-w-none InspirationContentCard_contentCard__YE4xI md:min-h-[500px] min-h-[340px]">
                          <div class="relative h-full w-full overflow-hidden"><img data-testid="content-card-image" alt=""
                              loading="lazy" decoding="async" data-nimg="fill"
                              class="bg-neutral-10 object-cover object-center transition-all duration-300 group-hover:scale-105 transition-transform duration-250 hover:scale-105 h-full w-full"
                              style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent"
                              sizes="(min-width: 1280px) calc(1280px / 3), (min-width: 1024px) calc(100vw / 3), (min-width: 768px) calc(100vw / 2), (min-width: 640px) calc(100vw / 1), calc(100vw / 1)"
                              src="/static/Winter_WinterFashionInside_Clothing_Womenswear_ClothingAccessories_Shoes_Legwear_2025_adcx1s.avif">
                          </div>
                          <div class="relative w-full p-4 InspirationContentCard_titleContainer__TmDDF"
                            style="background-color:#4e769c">
                            <h3
                              class="heading-lg text-neutral-0 line-clamp-2 flex min-w-0 items-center font-bold first-letter:uppercase"
                              data-testid="content-card-title">Gotowi na zimę</h3>
                            <p class="body-sm text-neutral-0">w najniższej cenie!</p>
                            <div class="InspirationContentCard_chevronButton__98Zcv"><svg aria-hidden="true"
                                data-testid="ChevronRightMd" class="h-8 w-8" xmlns="http://www.w3.org/2000/svg" width="24"
                                height="24" fill="none" viewBox="0 0 24 24">
                                <path fill="#001489"
                                  d="M10 17a1 1 0 0 1-.707-1.707L12.586 12 9.293 8.707a1 1 0 1 1 1.414-1.414l4 4a1 1 0 0 1 0 1.414l-4 4A1 1 0 0 1 10 17">
                                </path>
                              </svg></div>
                          </div>
                        </div>
                      </a></div>
                  </div>
                  <div class="w-4 shrink-0 lg:w-0 pointer-fine:w-0"></div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>


{hook h='displayNewProducts'}

<section class="bg-neutral-0 pt-6 md:pt-8 pb-6 md:pb-8" aria-label="Wszystko na co dzień"
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
              srcset="https://asset.action.com/image/upload/w_128/Teaser_Carousel_ESSENTIALS_2025_dywzbz.webp 128w, https://asset.action.com/image/upload/w_256/Teaser_Carousel_ESSENTIALS_2025_dywzbz.webp 256w, https://asset.action.com/image/upload/w_640/Teaser_Carousel_ESSENTIALS_2025_dywzbz.webp 640w, https://asset.action.com/image/upload/w_1080/Teaser_Carousel_ESSENTIALS_2025_dywzbz.webp 1080w, https://asset.action.com/image/upload/w_1920/Teaser_Carousel_ESSENTIALS_2025_dywzbz.webp 1920w"
              src="https://asset.action.com/image/upload/w_1920/Teaser_Carousel_ESSENTIALS_2025_dywzbz.webp"></div>
        </div>
        <div data-testid="split-teaser-content" class="md:m-0 md:self-center">
          <div class="flex flex-col sm:justify-center md:h-[300px]">
            <h2 class="heading-xl pb-2" data-testid="split-teaser-content-title">Wszystko na co dzień</h2>
            <p class="text-body-normal whitespace-break-spaces text-neutral-900"
              data-testid="split-teaser-content-description">w najniższej cenie</p>
            <div class="flex items-center justify-start md:items-start"><a
                class="relative box-border flex max-w-full items-center justify-center gap-1 rounded-full text-base font-medium py-2.5 px-5 bg-dark-blue-500 text-neutral-0 hover:bg-dark-blue-300 active:bg-dark-blue-700 focus:bg-dark-blue-300 focus:outline focus:outline-2 focus:outline-dark-blue-500 focus:outline-offset-2 disabled:bg-neutral-150 disabled:text-neutral-700 disabled:outline disabled:outline-1 disabled:outline-neutral mt-4"
                href="/pl-pl/moment/odziez-basic/" data-testid="split-teaser-cta"><span class="truncate px-1">Zobacz
                  więcej</span></a></div>
          </div>
          <div data-testid="product-carousel" class="mt-6 md:-ml-[60%] lg:-ml-[40%]">
            <div class="relative">
              <div class="flex flex-col gap-4 md:gap-6"
                style="--rowsXl:1;--columnsXl:5;--rowsLg:1;--columnsLg:4;--rowsMd:1;--columnsMd:3;--rowsSm:1;--columnsSm:3;--rowsXs:1;--columnsXs:2;--rowsDefault:1;--columnsDefault:2">
                <div class="@container relative" style="--numberOfPages: 2.2; --currentPage: 0;">
                  <div
                    class="xl:[--columns:var(--columnsXl)] xl:[--rows:var(--rowsXl)] lg:[--columns:var(--columnsLg)] lg:[--rows:var(--rowsLg)] md:[--columns:var(--columnsMd)] md:[--rows:var(--rowsMd)] sm:[--columns:var(--columnsSm)] sm:[--rows:var(--rowsSm)] xs:[--columns:var(--columnsXs)] xs:[--rows:var(--rowsXs)] [--columns:var(--columnsDefault)] [--rows:var(--rowsDefault)] [--itemSpacing:8px] md:[--itemSpacing:16px] [--lastItemPartial:16px] sm:[--lastItemPartial:32px] [--itemWidth:calc((100cqw-var(--itemSpacing)*var(--columns)-var(--lastItemPartial))/var(--columns))] lg:[--itemWidth:calc((100cqw-var(--itemSpacing)*(var(--columns)-1))/var(--columns))] pointer-fine:[--itemWidth:calc((100cqw-var(--itemSpacing)*(var(--columns)-1))/var(--columns))] [--isMultiRow:calc(min(1,var(--rows)-1))] [--isSingleRow:calc(1-var(--isMultiRow))]">
                    <div class="pointer-events-none absolute inset-0 z-1"><button type="button" inert=""
                        aria-label="Poprzednia"
                        class="absolute -translate-y-1/2 top-1/2 bg-neutral-0 shadow-overlay-button rounded-full p-4 hidden lg:block pointer-fine:block transition duration-200 hover:scale-[1.15] -left-2 lg:-left-4 xl:-left-7 pointer-events-none opacity-0"
                        data-testid="carousel-previous-navigation-button"><svg aria-hidden="true"
                          data-testid="ArrowLeftMd" xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                          fill="none" viewBox="0 0 24 24">
                          <path fill="#001489"
                            d="M11 19a1 1 0 0 1-.707-.293l-6-6A1 1 0 0 1 4 12.003v-.006a1 1 0 0 1 .293-.704l6-6a1 1 0 1 1 1.414 1.414L7.414 11H19a1 1 0 0 1 0 2H7.414l4.293 4.293A1 1 0 0 1 11 19">
                          </path>
                        </svg></button></div>
                    <div
                      class="no-scrollbar flex overflow-auto lg:overflow-clip pointer-fine:overflow-clip lg:[overflow-clip-margin:2px] pointer-fine:[overflow-clip-margin:2px] -mx-4 lg:mx-0 pointer-fine:mx-0">
                      <div class="relative flex transition-transform duration-600 ease-in-out"
                        style="transform: translateX(calc((100cqw + ((100% - (100cqw * var(--numberOfPages)))) / (var(--numberOfPages) - 1)) * var(--currentPage) * -1));">
                        <div class="w-4 shrink-0 lg:w-0 pointer-fine:w-0"></div>
                        <div
                          class="grid grid-flow-col grid-rows-[repeat(var(--rows),minmax(0,auto))] gap-(--itemSpacing)">
                          <div class="w-(--itemWidth)">
                            <div class="border-neutral-150 border bg-neutral-0 relative h-full w-full"
                              data-testid="product-card" data-content-king="product-card" analytics="[object Object]"><a
                                class="group relative flex h-full w-full flex-col p-3 xs:p-4"
                                href="/pl-pl/p/2560087/skarpetki-stopki-lotto-czarne/"
                                data-testid="product-card-link"><span
                                  class="xs:max-h-[180px] relative aspect-square w-full md:max-h-[230px]"><img
                                    data-testid="product-card-image" alt="" fetchpriority="low" loading="lazy"
                                    decoding="async" data-nimg="fill"
                                    class="object-contain object-center py-2 transition-transform duration-250 group-hover:scale-105 md:py-4 h-full w-full"
                                    style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent"
                                    sizes="(min-width: 1280px) calc(1280px / 5), (min-width: 1024px) calc(100vw / 4), (min-width: 768px) calc(100vw / 3), (min-width: 640px) calc(100vw / 3), (min-width: 390px) calc(100vw / 2), calc(100vw / 2)"
                                    srcset="https://asset.action.com/image/upload/t_digital_product_image/w_128/20622420.webp 128w, https://asset.action.com/image/upload/t_digital_product_image/w_256/20622420.webp 256w, https://asset.action.com/image/upload/t_digital_product_image/w_640/20622420.webp 640w, https://asset.action.com/image/upload/t_digital_product_image/w_1080/20622420.webp 1080w, https://asset.action.com/image/upload/t_digital_product_image/w_1920/20622420.webp 1920w"
                                    src="https://asset.action.com/image/upload/t_digital_product_image/w_1920/20622420.webp"><span
                                    class="absolute bottom-0 flex flex-col gap-2"></span></span><span
                                  class="mt-2 mb-3 flex grow flex-col gap-1 leading-tight sm:mb-4"><span
                                    class="xs:text-[16px] xs:leading-5 text-sm leading-[18px] font-medium text-dark-blue-500 line-clamp-2 break-words"
                                    data-testid="product-card-title">Skarpetki stopki Lotto czarne</span><span
                                    class="max-h-fit text-sm leading-[18px] font-normal line-clamp-2 grow break-words text-neutral-700"
                                    data-testid="product-card-description">Rozmiar 43-46 | 3 pary</span></span><span
                                  aria-label="8,98&nbsp;zł 2,99&nbsp;zł/szt." class="flex flex-col"><span
                                    data-testid="product-card-price-description"
                                    class="mb-1 block w-max text-xs leading-[12px] text-neutral-700">2,99&nbsp;zł/szt.</span><span
                                    class="flex items-start text-orange-500"><span
                                      data-testid="product-card-price-whole"
                                      class="font-bold tracking-[1px] text-[40px] leading-[28px] md:text-[48px] md:leading-[33px]">8</span><span
                                      class="inline-flex items-baseline"><span
                                        data-testid="product-card-price-fractional"
                                        class="font-bold tracking-[1px] text-[20px] leading-[14px] md:text-[28px] md:leading-[19px]">98</span></span></span></span><span
                                  class="flex leading-none text-neutral-700 mt-1 flex-row items-baseline self-baseline"
                                  data-testid="product-card-price-discount"><span class="flex items-center"
                                    data-testid="product-card-price-original-amount"><span
                                      class="text-center text-[12px] font-normal line-through">11,95&nbsp;zł</span><span
                                      class="pl-0.5 text-xs">*</span></span><span
                                    class="ml-1 rounded border border-neutral-700 px-[2px] py-px text-xs leading-[12px] font-medium"
                                    data-testid="product-card-price-discount-percentage">-24%</span></span><span
                                  class="mt-2 flex text-xs font-normal text-neutral-700"
                                  data-testid="product-card-price-discount-footnote"><span class="italic">*
                                    <!-- -->Najniższa cena z 30 dni przed obniżką
                                  </span></span><span class="absolute top-0 left-0 flex flex-col gap-0.5"><span
                                    class="flex overflow-hidden h-[22px] sm:h-[26px] text-neutral-0 text-[12px] leading-[14px] font-bold sm:text-sm sm:leading-[18px]"
                                    aria-labelledby="_R_1pkd9klpbsnpfplciubsnpfivb_" data-testid="product-tag"><span
                                      class="flex w-fit items-center pr-1 pl-1.5 sm:pr-1.5 sm:pl-2 bg-orange-500"><span
                                        id="_R_1pkd9klpbsnpfplciubsnpfivb_">Promocja tygodnia</span></span><span
                                      class="w-[8px]"><span class="-mr-px block h-full -translate-x-px bg-orange-500"
                                        style="clip-path:polygon(0 0, 100% 0, 1px 100%, 0 100%)"></span></span></span><span
                                    class="flex overflow-hidden h-[22px] sm:h-[26px] text-neutral-0 text-[12px] leading-[14px] font-bold sm:text-sm sm:leading-[18px]"
                                    aria-label="Zrównoważony rozwój" data-testid="product-tag"><span
                                      class="flex w-fit items-center pr-1 pl-1.5 sm:pr-1.5 sm:pl-2 bg-green-500"><svg
                                        aria-hidden="true" data-testid="Sustainability" class="h-[12px] sm:h-[14px]"
                                        xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 103 140">
                                        <path fill="white"
                                          d="M80.042 1.924C79.687.864 78.483 0 77.364 0H61.44c-1.119 0-1.742.865-1.384 1.924l21.56 64.171a12.2 12.2 0 0 1 0 7.808l-21.56 64.172c-.358 1.059.265 1.924 1.384 1.924h15.924c1.119 0 2.323-.865 2.678-1.924L101.6 73.903a12.2 12.2 0 0 0 0-7.808z">
                                        </path>
                                        <path fill="white"
                                          d="M37.395 140c1.115 0 2.32-.865 2.677-1.924l21.56-64.171c.85-2.532.85-5.276 0-7.808L40.072 1.925C39.714.866 38.51.001 37.394.001h-9.263c-1.119 0-1.738.866-1.384 1.924l21.56 64.172a12.2 12.2 0 0 1 0 7.808l-21.56 64.171c-.354 1.059.265 1.924 1.384 1.924z">
                                        </path>
                                        <path fill="white"
                                          d="M6.764 1.924C6.328.626 5.686 0 4.34 0H1.483C.368 0-.254.865.1 1.924l21.563 64.171c.85 2.532.85 5.276 0 7.808L.1 138.075c-.355 1.059.268 1.924 1.383 1.924H4.34c1.346 0 1.988-.627 2.424-1.924l21.56-64.172a12.2 12.2 0 0 0 0-7.808z">
                                        </path>
                                      </svg></span><span class="w-[8px]"><span
                                        class="-mr-px block h-full -translate-x-px bg-green-500"
                                        style="clip-path:polygon(0 0, 100% 0, 1px 100%, 0 100%)"></span></span></span></span></a><button
                                type="button" data-testid="favorite-button" class="absolute top-0 right-0 p-2"
                                aria-label="Dodaj do ulubionych"><svg aria-hidden="true" data-testid="Heart01"
                                  xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none"
                                  viewBox="0 0 24 24">
                                  <path fill="#8593a3"
                                    d="M12 21a1 1 0 0 1-.486-.126C11.126 20.658 2 15.514 2 9c0-3.665 2.218-5.425 4.293-5.849 2.171-.44 4.328.402 5.707 2.113 1.38-1.712 3.537-2.552 5.707-2.113C19.782 3.575 22 5.335 22 9.001c0 6.513-9.126 11.657-9.515 11.873A1 1 0 0 1 12 21M7.4 5.041q-.368 0-.707.07C5.007 5.456 4 6.91 4 9.001c0 4.584 6.197 8.728 8 9.836 1.804-1.108 8-5.252 8-9.837 0-2.09-1.007-3.544-2.693-3.889-1.482-.3-3.479.346-4.387 2.475a1 1 0 0 1-1.84 0C10.31 5.78 8.755 5.04 7.4 5.04">
                                  </path>
                                </svg></button></div>
                          </div>
                          <div class="w-(--itemWidth)">
                            <div class="border-neutral-150 border bg-neutral-0 relative h-full w-full"
                              data-testid="product-card" data-content-king="product-card" analytics="[object Object]"><a
                                class="group relative flex h-full w-full flex-col p-3 xs:p-4"
                                href="/pl-pl/p/3221546/bokserki-ziki/" data-testid="product-card-link"><span
                                  class="xs:max-h-[180px] relative aspect-square w-full md:max-h-[230px]"><img
                                    data-testid="product-card-image" alt="" fetchpriority="low" loading="lazy"
                                    decoding="async" data-nimg="fill"
                                    class="object-contain object-center py-2 transition-transform duration-250 group-hover:scale-105 md:py-4 h-full w-full"
                                    style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent"
                                    sizes="(min-width: 1280px) calc(1280px / 5), (min-width: 1024px) calc(100vw / 4), (min-width: 768px) calc(100vw / 3), (min-width: 640px) calc(100vw / 3), (min-width: 390px) calc(100vw / 2), calc(100vw / 2)"
                                    srcset="https://asset.action.com/image/upload/t_digital_product_image/w_128/3221546_8720176033931-110_01_xjtv4p.webp 128w, https://asset.action.com/image/upload/t_digital_product_image/w_256/3221546_8720176033931-110_01_xjtv4p.webp 256w, https://asset.action.com/image/upload/t_digital_product_image/w_640/3221546_8720176033931-110_01_xjtv4p.webp 640w, https://asset.action.com/image/upload/t_digital_product_image/w_1080/3221546_8720176033931-110_01_xjtv4p.webp 1080w, https://asset.action.com/image/upload/t_digital_product_image/w_1920/3221546_8720176033931-110_01_xjtv4p.webp 1920w"
                                    src="https://asset.action.com/image/upload/t_digital_product_image/w_1920/3221546_8720176033931-110_01_xjtv4p.webp"><span
                                    class="absolute bottom-0 flex flex-col gap-2"></span></span><span
                                  class="mt-2 mb-3 flex grow flex-col gap-1 leading-tight sm:mb-4"><span
                                    class="xs:text-[16px] xs:leading-5 text-sm leading-[18px] font-medium text-dark-blue-500 line-clamp-2 break-words"
                                    data-testid="product-card-title">Bokserki Ziki</span><span
                                    class="max-h-fit text-sm leading-[18px] font-normal line-clamp-2 grow break-words text-neutral-700"
                                    data-testid="product-card-description">Rozmiary M-XXL | 5 sztuk | Różne
                                    kolory</span></span><span aria-label="44,95&nbsp;zł 8,99&nbsp;zł/szt."
                                  class="flex flex-col"><span data-testid="product-card-price-description"
                                    class="mb-1 block w-max text-xs leading-[12px] text-neutral-700">8,99&nbsp;zł/szt.</span><span
                                    class="flex items-start text-dark-blue-500"><span
                                      data-testid="product-card-price-whole"
                                      class="font-bold tracking-[1px] text-[40px] leading-[28px] md:text-[48px] md:leading-[33px]">44</span><span
                                      class="inline-flex items-baseline"><span
                                        data-testid="product-card-price-fractional"
                                        class="font-bold tracking-[1px] text-[20px] leading-[14px] md:text-[28px] md:leading-[19px]">95</span></span></span></span><span
                                  class="absolute top-0 left-0 flex flex-col gap-0.5"></span></a><button type="button"
                                data-testid="favorite-button" class="absolute top-0 right-0 p-2"
                                aria-label="Dodaj do ulubionych"><svg aria-hidden="true" data-testid="Heart01"
                                  xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none"
                                  viewBox="0 0 24 24">
                                  <path fill="#8593a3"
                                    d="M12 21a1 1 0 0 1-.486-.126C11.126 20.658 2 15.514 2 9c0-3.665 2.218-5.425 4.293-5.849 2.171-.44 4.328.402 5.707 2.113 1.38-1.712 3.537-2.552 5.707-2.113C19.782 3.575 22 5.335 22 9.001c0 6.513-9.126 11.657-9.515 11.873A1 1 0 0 1 12 21M7.4 5.041q-.368 0-.707.07C5.007 5.456 4 6.91 4 9.001c0 4.584 6.197 8.728 8 9.836 1.804-1.108 8-5.252 8-9.837 0-2.09-1.007-3.544-2.693-3.889-1.482-.3-3.479.346-4.387 2.475a1 1 0 0 1-1.84 0C10.31 5.78 8.755 5.04 7.4 5.04">
                                  </path>
                                </svg></button></div>
                          </div>
                          <div class="w-(--itemWidth)">
                            <div class="border-neutral-150 border bg-neutral-0 relative h-full w-full"
                              data-testid="product-card" data-content-king="product-card" analytics="[object Object]"><a
                                class="group relative flex h-full w-full flex-col p-3 xs:p-4"
                                href="/pl-pl/p/3220161/baterie-varta-aaa/" data-testid="product-card-link"><span
                                  class="xs:max-h-[180px] relative aspect-square w-full md:max-h-[230px]"><img
                                    data-testid="product-card-image" alt="" fetchpriority="low" loading="lazy"
                                    decoding="async" data-nimg="fill"
                                    class="object-contain object-center py-2 transition-transform duration-250 group-hover:scale-105 md:py-4 h-full w-full"
                                    style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent"
                                    sizes="(min-width: 1280px) calc(1280px / 5), (min-width: 1024px) calc(100vw / 4), (min-width: 768px) calc(100vw / 3), (min-width: 640px) calc(100vw / 3), (min-width: 390px) calc(100vw / 2), calc(100vw / 2)"
                                    srcset="https://asset.action.com/image/upload/t_digital_product_image/w_128/3220161_4008496222544-111_01_oaxbww.webp 128w, https://asset.action.com/image/upload/t_digital_product_image/w_256/3220161_4008496222544-111_01_oaxbww.webp 256w, https://asset.action.com/image/upload/t_digital_product_image/w_640/3220161_4008496222544-111_01_oaxbww.webp 640w, https://asset.action.com/image/upload/t_digital_product_image/w_1080/3220161_4008496222544-111_01_oaxbww.webp 1080w, https://asset.action.com/image/upload/t_digital_product_image/w_1920/3220161_4008496222544-111_01_oaxbww.webp 1920w"
                                    src="https://asset.action.com/image/upload/t_digital_product_image/w_1920/3220161_4008496222544-111_01_oaxbww.webp"><span
                                    class="absolute bottom-0 flex flex-col gap-2"></span></span><span
                                  class="mt-2 mb-3 flex grow flex-col gap-1 leading-tight sm:mb-4"><span
                                    class="xs:text-[16px] xs:leading-5 text-sm leading-[18px] font-medium text-dark-blue-500 line-clamp-2 break-words"
                                    data-testid="product-card-title">Baterie Varta AAA</span><span
                                    class="max-h-fit text-sm leading-[18px] font-normal line-clamp-2 grow break-words text-neutral-700"
                                    data-testid="product-card-description">10 sztuk</span></span><span
                                  aria-label="12,49&nbsp;zł 1,25&nbsp;zł/szt." class="flex flex-col"><span
                                    data-testid="product-card-price-description"
                                    class="mb-1 block w-max text-xs leading-[12px] text-neutral-700">1,25&nbsp;zł/szt.</span><span
                                    class="flex items-start text-dark-blue-500"><span
                                      data-testid="product-card-price-whole"
                                      class="font-bold tracking-[1px] text-[40px] leading-[28px] md:text-[48px] md:leading-[33px]">12</span><span
                                      class="inline-flex items-baseline"><span
                                        data-testid="product-card-price-fractional"
                                        class="font-bold tracking-[1px] text-[20px] leading-[14px] md:text-[28px] md:leading-[19px]">49</span></span></span></span><span
                                  class="absolute top-0 left-0 flex flex-col gap-0.5"></span></a><button type="button"
                                data-testid="favorite-button" class="absolute top-0 right-0 p-2"
                                aria-label="Dodaj do ulubionych"><svg aria-hidden="true" data-testid="Heart01"
                                  xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none"
                                  viewBox="0 0 24 24">
                                  <path fill="#8593a3"
                                    d="M12 21a1 1 0 0 1-.486-.126C11.126 20.658 2 15.514 2 9c0-3.665 2.218-5.425 4.293-5.849 2.171-.44 4.328.402 5.707 2.113 1.38-1.712 3.537-2.552 5.707-2.113C19.782 3.575 22 5.335 22 9.001c0 6.513-9.126 11.657-9.515 11.873A1 1 0 0 1 12 21M7.4 5.041q-.368 0-.707.07C5.007 5.456 4 6.91 4 9.001c0 4.584 6.197 8.728 8 9.836 1.804-1.108 8-5.252 8-9.837 0-2.09-1.007-3.544-2.693-3.889-1.482-.3-3.479.346-4.387 2.475a1 1 0 0 1-1.84 0C10.31 5.78 8.755 5.04 7.4 5.04">
                                  </path>
                                </svg></button></div>
                          </div>
                          <div class="w-(--itemWidth)">
                            <div class="border-neutral-150 border bg-neutral-0 relative h-full w-full"
                              data-testid="product-card" data-content-king="product-card" analytics="[object Object]"><a
                                class="group relative flex h-full w-full flex-col p-3 xs:p-4"
                                href="/pl-pl/p/3216780/zestaw-podwojnych-markerow-decotime/"
                                data-testid="product-card-link"><span
                                  class="xs:max-h-[180px] relative aspect-square w-full md:max-h-[230px]"><img
                                    data-testid="product-card-image" alt="" fetchpriority="low" loading="lazy"
                                    decoding="async" data-nimg="fill"
                                    class="object-contain object-center py-2 transition-transform duration-250 group-hover:scale-105 md:py-4 h-full w-full"
                                    style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent"
                                    sizes="(min-width: 1280px) calc(1280px / 5), (min-width: 1024px) calc(100vw / 4), (min-width: 768px) calc(100vw / 3), (min-width: 640px) calc(100vw / 3), (min-width: 390px) calc(100vw / 2), calc(100vw / 2)"
                                    srcset="https://asset.action.com/image/upload/t_digital_product_image/w_128/3216780_8721042514066-110_01_dbd4ea.webp 128w, https://asset.action.com/image/upload/t_digital_product_image/w_256/3216780_8721042514066-110_01_dbd4ea.webp 256w, https://asset.action.com/image/upload/t_digital_product_image/w_640/3216780_8721042514066-110_01_dbd4ea.webp 640w, https://asset.action.com/image/upload/t_digital_product_image/w_1080/3216780_8721042514066-110_01_dbd4ea.webp 1080w, https://asset.action.com/image/upload/t_digital_product_image/w_1920/3216780_8721042514066-110_01_dbd4ea.webp 1920w"
                                    src="https://asset.action.com/image/upload/t_digital_product_image/w_1920/3216780_8721042514066-110_01_dbd4ea.webp"><span
                                    class="absolute bottom-0 flex flex-col gap-2"></span></span><span
                                  class="mt-2 mb-3 flex grow flex-col gap-1 leading-tight sm:mb-4"><span
                                    class="xs:text-[16px] xs:leading-5 text-sm leading-[18px] font-medium text-dark-blue-500 line-clamp-2 break-words"
                                    data-testid="product-card-title">Zestaw podwójnych markerów DécoTime</span><span
                                    class="max-h-fit text-sm leading-[18px] font-normal line-clamp-2 grow break-words text-neutral-700"
                                    data-testid="product-card-description">61 elementów</span></span><span
                                  aria-label="57,95&nbsp;zł 0,97&nbsp;zł/szt." class="flex flex-col"><span
                                    data-testid="product-card-price-description"
                                    class="mb-1 block w-max text-xs leading-[12px] text-neutral-700">0,97&nbsp;zł/szt.</span><span
                                    class="flex items-start text-dark-blue-500"><span
                                      data-testid="product-card-price-whole"
                                      class="font-bold tracking-[1px] text-[40px] leading-[28px] md:text-[48px] md:leading-[33px]">57</span><span
                                      class="inline-flex items-baseline"><span
                                        data-testid="product-card-price-fractional"
                                        class="font-bold tracking-[1px] text-[20px] leading-[14px] md:text-[28px] md:leading-[19px]">95</span></span></span></span><span
                                  class="absolute top-0 left-0 flex flex-col gap-0.5"><span
                                    class="flex overflow-hidden h-[22px] sm:h-[26px] text-neutral-0 text-[12px] leading-[14px] font-bold sm:text-sm sm:leading-[18px]"
                                    aria-label="Zrównoważony rozwój" data-testid="product-tag"><span
                                      class="flex w-fit items-center pr-1 pl-1.5 sm:pr-1.5 sm:pl-2 bg-green-500"><svg
                                        aria-hidden="true" data-testid="Sustainability" class="h-[12px] sm:h-[14px]"
                                        xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 103 140">
                                        <path fill="white"
                                          d="M80.042 1.924C79.687.864 78.483 0 77.364 0H61.44c-1.119 0-1.742.865-1.384 1.924l21.56 64.171a12.2 12.2 0 0 1 0 7.808l-21.56 64.172c-.358 1.059.265 1.924 1.384 1.924h15.924c1.119 0 2.323-.865 2.678-1.924L101.6 73.903a12.2 12.2 0 0 0 0-7.808z">
                                        </path>
                                        <path fill="white"
                                          d="M37.395 140c1.115 0 2.32-.865 2.677-1.924l21.56-64.171c.85-2.532.85-5.276 0-7.808L40.072 1.925C39.714.866 38.51.001 37.394.001h-9.263c-1.119 0-1.738.866-1.384 1.924l21.56 64.172a12.2 12.2 0 0 1 0 7.808l-21.56 64.171c-.354 1.059.265 1.924 1.384 1.924z">
                                        </path>
                                        <path fill="white"
                                          d="M6.764 1.924C6.328.626 5.686 0 4.34 0H1.483C.368 0-.254.865.1 1.924l21.563 64.171c.85 2.532.85 5.276 0 7.808L.1 138.075c-.355 1.059.268 1.924 1.383 1.924H4.34c1.346 0 1.988-.627 2.424-1.924l21.56-64.172a12.2 12.2 0 0 0 0-7.808z">
                                        </path>
                                      </svg></span><span class="w-[8px]"><span
                                        class="-mr-px block h-full -translate-x-px bg-green-500"
                                        style="clip-path:polygon(0 0, 100% 0, 1px 100%, 0 100%)"></span></span></span></span></a><button
                                type="button" data-testid="favorite-button" class="absolute top-0 right-0 p-2"
                                aria-label="Dodaj do ulubionych"><svg aria-hidden="true" data-testid="Heart01"
                                  xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none"
                                  viewBox="0 0 24 24">
                                  <path fill="#8593a3"
                                    d="M12 21a1 1 0 0 1-.486-.126C11.126 20.658 2 15.514 2 9c0-3.665 2.218-5.425 4.293-5.849 2.171-.44 4.328.402 5.707 2.113 1.38-1.712 3.537-2.552 5.707-2.113C19.782 3.575 22 5.335 22 9.001c0 6.513-9.126 11.657-9.515 11.873A1 1 0 0 1 12 21M7.4 5.041q-.368 0-.707.07C5.007 5.456 4 6.91 4 9.001c0 4.584 6.197 8.728 8 9.836 1.804-1.108 8-5.252 8-9.837 0-2.09-1.007-3.544-2.693-3.889-1.482-.3-3.479.346-4.387 2.475a1 1 0 0 1-1.84 0C10.31 5.78 8.755 5.04 7.4 5.04">
                                  </path>
                                </svg></button></div>
                          </div>
                          <div class="w-(--itemWidth)">
                            <div class="border-neutral-150 border bg-neutral-0 relative h-full w-full"
                              data-testid="product-card" data-content-king="product-card" analytics="[object Object]"><a
                                class="group relative flex h-full w-full flex-col p-3 xs:p-4"
                                href="/pl-pl/p/3016327/szenilowy-dywanik-lazienkowy/"
                                data-testid="product-card-link"><span
                                  class="xs:max-h-[180px] relative aspect-square w-full md:max-h-[230px]"><img
                                    data-testid="product-card-image" alt="" fetchpriority="low" loading="lazy"
                                    decoding="async" data-nimg="fill"
                                    class="object-contain object-center py-2 transition-transform duration-250 group-hover:scale-105 md:py-4 h-full w-full"
                                    style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent"
                                    sizes="(min-width: 1280px) calc(1280px / 5), (min-width: 1024px) calc(100vw / 4), (min-width: 768px) calc(100vw / 3), (min-width: 640px) calc(100vw / 3), (min-width: 390px) calc(100vw / 2), calc(100vw / 2)"
                                    srcset="https://asset.action.com/image/upload/t_digital_product_image/w_128/34292765.webp 128w, https://asset.action.com/image/upload/t_digital_product_image/w_256/34292765.webp 256w, https://asset.action.com/image/upload/t_digital_product_image/w_640/34292765.webp 640w, https://asset.action.com/image/upload/t_digital_product_image/w_1080/34292765.webp 1080w, https://asset.action.com/image/upload/t_digital_product_image/w_1920/34292765.webp 1920w"
                                    src="https://asset.action.com/image/upload/t_digital_product_image/w_1920/34292765.webp"><span
                                    class="absolute bottom-0 flex flex-col gap-2"></span></span><span
                                  class="mt-2 mb-3 flex grow flex-col gap-1 leading-tight sm:mb-4"><span
                                    class="xs:text-[16px] xs:leading-5 text-sm leading-[18px] font-medium text-dark-blue-500 line-clamp-2 break-words"
                                    data-testid="product-card-title">Szenilowy dywanik łazienkowy</span><span
                                    class="max-h-fit text-sm leading-[18px] font-normal line-clamp-2 grow break-words text-neutral-700"
                                    data-testid="product-card-description">50 x 80 cm | Różne kolory</span></span><span
                                  aria-label="29,95&nbsp;zł 29,95&nbsp;zł/szt." class="flex flex-col"><span
                                    data-testid="product-card-price-description"
                                    class="mb-1 block w-max text-xs leading-[12px] text-neutral-700">29,95&nbsp;zł/szt.</span><span
                                    class="flex items-start text-dark-blue-500"><span
                                      data-testid="product-card-price-whole"
                                      class="font-bold tracking-[1px] text-[40px] leading-[28px] md:text-[48px] md:leading-[33px]">29</span><span
                                      class="inline-flex items-baseline"><span
                                        data-testid="product-card-price-fractional"
                                        class="font-bold tracking-[1px] text-[20px] leading-[14px] md:text-[28px] md:leading-[19px]">95</span></span></span></span><span
                                  class="absolute top-0 left-0 flex flex-col gap-0.5"></span></a><button type="button"
                                data-testid="favorite-button" class="absolute top-0 right-0 p-2"
                                aria-label="Dodaj do ulubionych"><svg aria-hidden="true" data-testid="Heart01"
                                  xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none"
                                  viewBox="0 0 24 24">
                                  <path fill="#8593a3"
                                    d="M12 21a1 1 0 0 1-.486-.126C11.126 20.658 2 15.514 2 9c0-3.665 2.218-5.425 4.293-5.849 2.171-.44 4.328.402 5.707 2.113 1.38-1.712 3.537-2.552 5.707-2.113C19.782 3.575 22 5.335 22 9.001c0 6.513-9.126 11.657-9.515 11.873A1 1 0 0 1 12 21M7.4 5.041q-.368 0-.707.07C5.007 5.456 4 6.91 4 9.001c0 4.584 6.197 8.728 8 9.836 1.804-1.108 8-5.252 8-9.837 0-2.09-1.007-3.544-2.693-3.889-1.482-.3-3.479.346-4.387 2.475a1 1 0 0 1-1.84 0C10.31 5.78 8.755 5.04 7.4 5.04">
                                  </path>
                                </svg></button></div>
                          </div>
                          <div class="w-(--itemWidth)">
                            <div class="border-neutral-150 border bg-neutral-0 relative h-full w-full"
                              data-testid="product-card" data-content-king="product-card" analytics="[object Object]"><a
                                class="group relative flex h-full w-full flex-col p-3 xs:p-4"
                                href="/pl-pl/p/3009535/kawa-w-kapsulkach-palazzo-lungo/"
                                data-testid="product-card-link"><span
                                  class="xs:max-h-[180px] relative aspect-square w-full md:max-h-[230px]"><img
                                    data-testid="product-card-image" alt="" fetchpriority="low" loading="lazy"
                                    decoding="async" data-nimg="fill"
                                    class="object-contain object-center py-2 transition-transform duration-250 group-hover:scale-105 md:py-4 h-full w-full"
                                    style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent"
                                    sizes="(min-width: 1280px) calc(1280px / 5), (min-width: 1024px) calc(100vw / 4), (min-width: 768px) calc(100vw / 3), (min-width: 640px) calc(100vw / 3), (min-width: 390px) calc(100vw / 2), calc(100vw / 2)"
                                    srcset="https://asset.action.com/image/upload/t_digital_product_image/w_128/34219733.webp 128w, https://asset.action.com/image/upload/t_digital_product_image/w_256/34219733.webp 256w, https://asset.action.com/image/upload/t_digital_product_image/w_640/34219733.webp 640w, https://asset.action.com/image/upload/t_digital_product_image/w_1080/34219733.webp 1080w, https://asset.action.com/image/upload/t_digital_product_image/w_1920/34219733.webp 1920w"
                                    src="https://asset.action.com/image/upload/t_digital_product_image/w_1920/34219733.webp"><span
                                    class="absolute bottom-0 flex flex-col gap-2"></span></span><span
                                  class="mt-2 mb-3 flex grow flex-col gap-1 leading-tight sm:mb-4"><span
                                    class="xs:text-[16px] xs:leading-5 text-sm leading-[18px] font-medium text-dark-blue-500 line-clamp-2 break-words"
                                    data-testid="product-card-title">Kawa w kapsułkach Palazzo Lungo</span><span
                                    class="max-h-fit text-sm leading-[18px] font-normal line-clamp-2 grow break-words text-neutral-700"
                                    data-testid="product-card-description">20 sztuk</span></span><span
                                  aria-label="19,85&nbsp;zł 198,50&nbsp;zł/kg" class="flex flex-col"><span
                                    data-testid="product-card-price-description"
                                    class="mb-1 block w-max text-xs leading-[12px] text-neutral-700">198,50&nbsp;zł/kg</span><span
                                    class="flex items-start text-dark-blue-500"><span
                                      data-testid="product-card-price-whole"
                                      class="font-bold tracking-[1px] text-[40px] leading-[28px] md:text-[48px] md:leading-[33px]">19</span><span
                                      class="inline-flex items-baseline"><span
                                        data-testid="product-card-price-fractional"
                                        class="font-bold tracking-[1px] text-[20px] leading-[14px] md:text-[28px] md:leading-[19px]">85</span></span></span></span><span
                                  class="absolute top-0 left-0 flex flex-col gap-0.5"><span
                                    class="flex overflow-hidden h-[22px] sm:h-[26px] text-neutral-0 text-[12px] leading-[14px] font-bold sm:text-sm sm:leading-[18px]"
                                    aria-label="Zrównoważony rozwój" data-testid="product-tag"><span
                                      class="flex w-fit items-center pr-1 pl-1.5 sm:pr-1.5 sm:pl-2 bg-green-500"><svg
                                        aria-hidden="true" data-testid="Sustainability" class="h-[12px] sm:h-[14px]"
                                        xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 103 140">
                                        <path fill="white"
                                          d="M80.042 1.924C79.687.864 78.483 0 77.364 0H61.44c-1.119 0-1.742.865-1.384 1.924l21.56 64.171a12.2 12.2 0 0 1 0 7.808l-21.56 64.172c-.358 1.059.265 1.924 1.384 1.924h15.924c1.119 0 2.323-.865 2.678-1.924L101.6 73.903a12.2 12.2 0 0 0 0-7.808z">
                                        </path>
                                        <path fill="white"
                                          d="M37.395 140c1.115 0 2.32-.865 2.677-1.924l21.56-64.171c.85-2.532.85-5.276 0-7.808L40.072 1.925C39.714.866 38.51.001 37.394.001h-9.263c-1.119 0-1.738.866-1.384 1.924l21.56 64.172a12.2 12.2 0 0 1 0 7.808l-21.56 64.171c-.354 1.059.265 1.924 1.384 1.924z">
                                        </path>
                                        <path fill="white"
                                          d="M6.764 1.924C6.328.626 5.686 0 4.34 0H1.483C.368 0-.254.865.1 1.924l21.563 64.171c.85 2.532.85 5.276 0 7.808L.1 138.075c-.355 1.059.268 1.924 1.383 1.924H4.34c1.346 0 1.988-.627 2.424-1.924l21.56-64.172a12.2 12.2 0 0 0 0-7.808z">
                                        </path>
                                      </svg></span><span class="w-[8px]"><span
                                        class="-mr-px block h-full -translate-x-px bg-green-500"
                                        style="clip-path:polygon(0 0, 100% 0, 1px 100%, 0 100%)"></span></span></span></span></a><button
                                type="button" data-testid="favorite-button" class="absolute top-0 right-0 p-2"
                                aria-label="Dodaj do ulubionych"><svg aria-hidden="true" data-testid="Heart01"
                                  xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none"
                                  viewBox="0 0 24 24">
                                  <path fill="#8593a3"
                                    d="M12 21a1 1 0 0 1-.486-.126C11.126 20.658 2 15.514 2 9c0-3.665 2.218-5.425 4.293-5.849 2.171-.44 4.328.402 5.707 2.113 1.38-1.712 3.537-2.552 5.707-2.113C19.782 3.575 22 5.335 22 9.001c0 6.513-9.126 11.657-9.515 11.873A1 1 0 0 1 12 21M7.4 5.041q-.368 0-.707.07C5.007 5.456 4 6.91 4 9.001c0 4.584 6.197 8.728 8 9.836 1.804-1.108 8-5.252 8-9.837 0-2.09-1.007-3.544-2.693-3.889-1.482-.3-3.479.346-4.387 2.475a1 1 0 0 1-1.84 0C10.31 5.78 8.755 5.04 7.4 5.04">
                                  </path>
                                </svg></button></div>
                          </div>
                          <div class="w-(--itemWidth)">
                            <div class="border-neutral-150 border bg-neutral-0 relative h-full w-full"
                              data-testid="product-card" data-content-king="product-card" analytics="[object Object]"><a
                                class="group relative flex h-full w-full flex-col p-3 xs:p-4"
                                href="/pl-pl/p/2582428/majonez-heinz/" data-testid="product-card-link"><span
                                  class="xs:max-h-[180px] relative aspect-square w-full md:max-h-[230px]"><img
                                    data-testid="product-card-image" alt="" fetchpriority="low" loading="lazy"
                                    decoding="async" data-nimg="fill"
                                    class="object-contain object-center py-2 transition-transform duration-250 group-hover:scale-105 md:py-4 h-full w-full"
                                    style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent"
                                    sizes="(min-width: 1280px) calc(1280px / 5), (min-width: 1024px) calc(100vw / 4), (min-width: 768px) calc(100vw / 3), (min-width: 640px) calc(100vw / 3), (min-width: 390px) calc(100vw / 2), calc(100vw / 2)"
                                    srcset="https://asset.action.com/image/upload/t_digital_product_image/w_128/29884843.webp 128w, https://asset.action.com/image/upload/t_digital_product_image/w_256/29884843.webp 256w, https://asset.action.com/image/upload/t_digital_product_image/w_640/29884843.webp 640w, https://asset.action.com/image/upload/t_digital_product_image/w_1080/29884843.webp 1080w, https://asset.action.com/image/upload/t_digital_product_image/w_1920/29884843.webp 1920w"
                                    src="https://asset.action.com/image/upload/t_digital_product_image/w_1920/29884843.webp"><span
                                    class="absolute bottom-0 flex flex-col gap-2"></span></span><span
                                  class="mt-2 mb-3 flex grow flex-col gap-1 leading-tight sm:mb-4"><span
                                    class="xs:text-[16px] xs:leading-5 text-sm leading-[18px] font-medium text-dark-blue-500 line-clamp-2 break-words"
                                    data-testid="product-card-title">Majonez Heinz</span><span
                                    class="max-h-fit text-sm leading-[18px] font-normal line-clamp-2 grow break-words text-neutral-700"
                                    data-testid="product-card-description">775 gramów</span></span><span
                                  aria-label="13,49&nbsp;zł 17,41&nbsp;zł/kg" class="flex flex-col"><span
                                    data-testid="product-card-price-description"
                                    class="mb-1 block w-max text-xs leading-[12px] text-neutral-700">17,41&nbsp;zł/kg</span><span
                                    class="flex items-start text-dark-blue-500"><span
                                      data-testid="product-card-price-whole"
                                      class="font-bold tracking-[1px] text-[40px] leading-[28px] md:text-[48px] md:leading-[33px]">13</span><span
                                      class="inline-flex items-baseline"><span
                                        data-testid="product-card-price-fractional"
                                        class="font-bold tracking-[1px] text-[20px] leading-[14px] md:text-[28px] md:leading-[19px]">49</span></span></span></span><span
                                  class="absolute top-0 left-0 flex flex-col gap-0.5"></span></a><button type="button"
                                data-testid="favorite-button" class="absolute top-0 right-0 p-2"
                                aria-label="Dodaj do ulubionych"><svg aria-hidden="true" data-testid="Heart01"
                                  xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none"
                                  viewBox="0 0 24 24">
                                  <path fill="#8593a3"
                                    d="M12 21a1 1 0 0 1-.486-.126C11.126 20.658 2 15.514 2 9c0-3.665 2.218-5.425 4.293-5.849 2.171-.44 4.328.402 5.707 2.113 1.38-1.712 3.537-2.552 5.707-2.113C19.782 3.575 22 5.335 22 9.001c0 6.513-9.126 11.657-9.515 11.873A1 1 0 0 1 12 21M7.4 5.041q-.368 0-.707.07C5.007 5.456 4 6.91 4 9.001c0 4.584 6.197 8.728 8 9.836 1.804-1.108 8-5.252 8-9.837 0-2.09-1.007-3.544-2.693-3.889-1.482-.3-3.479.346-4.387 2.475a1 1 0 0 1-1.84 0C10.31 5.78 8.755 5.04 7.4 5.04">
                                  </path>
                                </svg></button></div>
                          </div>
                          <div class="w-(--itemWidth)">
                            <div class="border-neutral-150 border bg-neutral-0 relative h-full w-full"
                              data-testid="product-card" data-content-king="product-card" analytics="[object Object]"><a
                                class="group relative flex h-full w-full flex-col p-3 xs:p-4"
                                href="/pl-pl/p/2558422/papier-toaletowy-pure-soft-miekki-i-ekstra-mocny/"
                                data-testid="product-card-link"><span
                                  class="xs:max-h-[180px] relative aspect-square w-full md:max-h-[230px]"><img
                                    data-testid="product-card-image" alt="" fetchpriority="low" loading="lazy"
                                    decoding="async" data-nimg="fill"
                                    class="object-contain object-center py-2 transition-transform duration-250 group-hover:scale-105 md:py-4 h-full w-full"
                                    style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent"
                                    sizes="(min-width: 1280px) calc(1280px / 5), (min-width: 1024px) calc(100vw / 4), (min-width: 768px) calc(100vw / 3), (min-width: 640px) calc(100vw / 3), (min-width: 390px) calc(100vw / 2), calc(100vw / 2)"
                                    srcset="https://asset.action.com/image/upload/t_digital_product_image/w_128/2558422_4000735049608-111_01_kf24ts.webp 128w, https://asset.action.com/image/upload/t_digital_product_image/w_256/2558422_4000735049608-111_01_kf24ts.webp 256w, https://asset.action.com/image/upload/t_digital_product_image/w_640/2558422_4000735049608-111_01_kf24ts.webp 640w, https://asset.action.com/image/upload/t_digital_product_image/w_1080/2558422_4000735049608-111_01_kf24ts.webp 1080w, https://asset.action.com/image/upload/t_digital_product_image/w_1920/2558422_4000735049608-111_01_kf24ts.webp 1920w"
                                    src="https://asset.action.com/image/upload/t_digital_product_image/w_1920/2558422_4000735049608-111_01_kf24ts.webp"><span
                                    class="absolute bottom-0 flex flex-col gap-2"></span></span><span
                                  class="mt-2 mb-3 flex grow flex-col gap-1 leading-tight sm:mb-4"><span
                                    class="xs:text-[16px] xs:leading-5 text-sm leading-[18px] font-medium text-dark-blue-500 line-clamp-2 break-words"
                                    data-testid="product-card-title">Papier toaletowy Pure Soft Miękki i Ekstra
                                    Mocny</span><span
                                    class="max-h-fit text-sm leading-[18px] font-normal line-clamp-2 grow break-words text-neutral-700"
                                    data-testid="product-card-description">10 sztuk</span></span><span
                                  aria-label="14,57&nbsp;zł 1,46&nbsp;zł/szt." class="flex flex-col"><span
                                    data-testid="product-card-price-description"
                                    class="mb-1 block w-max text-xs leading-[12px] text-neutral-700">1,46&nbsp;zł/szt.</span><span
                                    class="flex items-start text-dark-blue-500"><span
                                      data-testid="product-card-price-whole"
                                      class="font-bold tracking-[1px] text-[40px] leading-[28px] md:text-[48px] md:leading-[33px]">14</span><span
                                      class="inline-flex items-baseline"><span
                                        data-testid="product-card-price-fractional"
                                        class="font-bold tracking-[1px] text-[20px] leading-[14px] md:text-[28px] md:leading-[19px]">57</span></span></span></span><span
                                  class="absolute top-0 left-0 flex flex-col gap-0.5"><span
                                    class="flex overflow-hidden h-[22px] sm:h-[26px] text-neutral-0 text-[12px] leading-[14px] font-bold sm:text-sm sm:leading-[18px]"
                                    aria-label="Zrównoważony rozwój" data-testid="product-tag"><span
                                      class="flex w-fit items-center pr-1 pl-1.5 sm:pr-1.5 sm:pl-2 bg-green-500"><svg
                                        aria-hidden="true" data-testid="Sustainability" class="h-[12px] sm:h-[14px]"
                                        xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 103 140">
                                        <path fill="white"
                                          d="M80.042 1.924C79.687.864 78.483 0 77.364 0H61.44c-1.119 0-1.742.865-1.384 1.924l21.56 64.171a12.2 12.2 0 0 1 0 7.808l-21.56 64.172c-.358 1.059.265 1.924 1.384 1.924h15.924c1.119 0 2.323-.865 2.678-1.924L101.6 73.903a12.2 12.2 0 0 0 0-7.808z">
                                        </path>
                                        <path fill="white"
                                          d="M37.395 140c1.115 0 2.32-.865 2.677-1.924l21.56-64.171c.85-2.532.85-5.276 0-7.808L40.072 1.925C39.714.866 38.51.001 37.394.001h-9.263c-1.119 0-1.738.866-1.384 1.924l21.56 64.172a12.2 12.2 0 0 1 0 7.808l-21.56 64.171c-.354 1.059.265 1.924 1.384 1.924z">
                                        </path>
                                        <path fill="white"
                                          d="M6.764 1.924C6.328.626 5.686 0 4.34 0H1.483C.368 0-.254.865.1 1.924l21.563 64.171c.85 2.532.85 5.276 0 7.808L.1 138.075c-.355 1.059.268 1.924 1.383 1.924H4.34c1.346 0 1.988-.627 2.424-1.924l21.56-64.172a12.2 12.2 0 0 0 0-7.808z">
                                        </path>
                                      </svg></span><span class="w-[8px]"><span
                                        class="-mr-px block h-full -translate-x-px bg-green-500"
                                        style="clip-path:polygon(0 0, 100% 0, 1px 100%, 0 100%)"></span></span></span></span></a><button
                                type="button" data-testid="favorite-button" class="absolute top-0 right-0 p-2"
                                aria-label="Dodaj do ulubionych"><svg aria-hidden="true" data-testid="Heart01"
                                  xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none"
                                  viewBox="0 0 24 24">
                                  <path fill="#8593a3"
                                    d="M12 21a1 1 0 0 1-.486-.126C11.126 20.658 2 15.514 2 9c0-3.665 2.218-5.425 4.293-5.849 2.171-.44 4.328.402 5.707 2.113 1.38-1.712 3.537-2.552 5.707-2.113C19.782 3.575 22 5.335 22 9.001c0 6.513-9.126 11.657-9.515 11.873A1 1 0 0 1 12 21M7.4 5.041q-.368 0-.707.07C5.007 5.456 4 6.91 4 9.001c0 4.584 6.197 8.728 8 9.836 1.804-1.108 8-5.252 8-9.837 0-2.09-1.007-3.544-2.693-3.889-1.482-.3-3.479.346-4.387 2.475a1 1 0 0 1-1.84 0C10.31 5.78 8.755 5.04 7.4 5.04">
                                  </path>
                                </svg></button></div>
                          </div>
                          <div class="w-(--itemWidth)">
                            <div class="border-neutral-150 border bg-neutral-0 relative h-full w-full"
                              data-testid="product-card" data-content-king="product-card" analytics="[object Object]"><a
                                class="group relative flex h-full w-full flex-col p-3 xs:p-4"
                                href="/pl-pl/p/2532075/kartonowe-pudlo-do-przeprowadzki-action/"
                                data-testid="product-card-link"><span
                                  class="xs:max-h-[180px] relative aspect-square w-full md:max-h-[230px]"><img
                                    data-testid="product-card-image" alt="" fetchpriority="low" loading="lazy"
                                    decoding="async" data-nimg="fill"
                                    class="object-contain object-center py-2 transition-transform duration-250 group-hover:scale-105 md:py-4 h-full w-full"
                                    style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent"
                                    sizes="(min-width: 1280px) calc(1280px / 5), (min-width: 1024px) calc(100vw / 4), (min-width: 768px) calc(100vw / 3), (min-width: 640px) calc(100vw / 3), (min-width: 390px) calc(100vw / 2), calc(100vw / 2)"
                                    srcset="https://asset.action.com/image/upload/t_digital_product_image/w_128/21857200.webp 128w, https://asset.action.com/image/upload/t_digital_product_image/w_256/21857200.webp 256w, https://asset.action.com/image/upload/t_digital_product_image/w_640/21857200.webp 640w, https://asset.action.com/image/upload/t_digital_product_image/w_1080/21857200.webp 1080w, https://asset.action.com/image/upload/t_digital_product_image/w_1920/21857200.webp 1920w"
                                    src="https://asset.action.com/image/upload/t_digital_product_image/w_1920/21857200.webp"><span
                                    class="absolute bottom-0 flex flex-col gap-2"></span></span><span
                                  class="mt-2 mb-3 flex grow flex-col gap-1 leading-tight sm:mb-4"><span
                                    class="xs:text-[16px] xs:leading-5 text-sm leading-[18px] font-medium text-dark-blue-500 line-clamp-2 break-words"
                                    data-testid="product-card-title">Kartonowe pudło do przeprowadzki Action</span><span
                                    class="max-h-fit text-sm leading-[18px] font-normal line-clamp-2 grow break-words text-neutral-700"
                                    data-testid="product-card-description">48 x 34 x 33 cm | 50
                                    litrów</span></span><span aria-label="4,49&nbsp;zł 4,49&nbsp;zł/szt."
                                  class="flex flex-col"><span data-testid="product-card-price-description"
                                    class="mb-1 block w-max text-xs leading-[12px] text-neutral-700">4,49&nbsp;zł/szt.</span><span
                                    class="flex items-start text-dark-blue-500"><span
                                      data-testid="product-card-price-whole"
                                      class="font-bold tracking-[1px] text-[40px] leading-[28px] md:text-[48px] md:leading-[33px]">4</span><span
                                      class="inline-flex items-baseline"><span
                                        data-testid="product-card-price-fractional"
                                        class="font-bold tracking-[1px] text-[20px] leading-[14px] md:text-[28px] md:leading-[19px]">49</span></span></span></span><span
                                  class="absolute top-0 left-0 flex flex-col gap-0.5"></span></a><button type="button"
                                data-testid="favorite-button" class="absolute top-0 right-0 p-2"
                                aria-label="Dodaj do ulubionych"><svg aria-hidden="true" data-testid="Heart01"
                                  xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none"
                                  viewBox="0 0 24 24">
                                  <path fill="#8593a3"
                                    d="M12 21a1 1 0 0 1-.486-.126C11.126 20.658 2 15.514 2 9c0-3.665 2.218-5.425 4.293-5.849 2.171-.44 4.328.402 5.707 2.113 1.38-1.712 3.537-2.552 5.707-2.113C19.782 3.575 22 5.335 22 9.001c0 6.513-9.126 11.657-9.515 11.873A1 1 0 0 1 12 21M7.4 5.041q-.368 0-.707.07C5.007 5.456 4 6.91 4 9.001c0 4.584 6.197 8.728 8 9.836 1.804-1.108 8-5.252 8-9.837 0-2.09-1.007-3.544-2.693-3.889-1.482-.3-3.479.346-4.387 2.475a1 1 0 0 1-1.84 0C10.31 5.78 8.755 5.04 7.4 5.04">
                                  </path>
                                </svg></button></div>
                          </div>
                          <div class="w-(--itemWidth)">
                            <div class="border-neutral-150 border bg-neutral-0 relative h-full w-full"
                              data-testid="product-card" data-content-king="product-card" analytics="[object Object]"><a
                                class="group relative flex h-full w-full flex-col p-3 xs:p-4"
                                href="/pl-pl/p/2525815/srodek-do-prania-sendil-ultra-wash-universal/"
                                data-testid="product-card-link"><span
                                  class="xs:max-h-[180px] relative aspect-square w-full md:max-h-[230px]"><img
                                    data-testid="product-card-image" alt="" fetchpriority="low" loading="lazy"
                                    decoding="async" data-nimg="fill"
                                    class="object-contain object-center py-2 transition-transform duration-250 group-hover:scale-105 md:py-4 h-full w-full"
                                    style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent"
                                    sizes="(min-width: 1280px) calc(1280px / 5), (min-width: 1024px) calc(100vw / 4), (min-width: 768px) calc(100vw / 3), (min-width: 640px) calc(100vw / 3), (min-width: 390px) calc(100vw / 2), calc(100vw / 2)"
                                    srcset="https://asset.action.com/image/upload/t_digital_product_image/w_128/20751496.webp 128w, https://asset.action.com/image/upload/t_digital_product_image/w_256/20751496.webp 256w, https://asset.action.com/image/upload/t_digital_product_image/w_640/20751496.webp 640w, https://asset.action.com/image/upload/t_digital_product_image/w_1080/20751496.webp 1080w, https://asset.action.com/image/upload/t_digital_product_image/w_1920/20751496.webp 1920w"
                                    src="https://asset.action.com/image/upload/t_digital_product_image/w_1920/20751496.webp"><span
                                    class="absolute bottom-0 flex flex-col gap-2"></span></span><span
                                  class="mt-2 mb-3 flex grow flex-col gap-1 leading-tight sm:mb-4"><span
                                    class="xs:text-[16px] xs:leading-5 text-sm leading-[18px] font-medium text-dark-blue-500 line-clamp-2 break-words"
                                    data-testid="product-card-title">Środek do prania Sendil Ultra Wash
                                    Universal</span><span
                                    class="max-h-fit text-sm leading-[18px] font-normal line-clamp-2 grow break-words text-neutral-700"
                                    data-testid="product-card-description">42 prania</span></span><span
                                  aria-label="12,99&nbsp;zł 4,33&nbsp;zł/l" class="flex flex-col"><span
                                    data-testid="product-card-price-description"
                                    class="mb-1 block w-max text-xs leading-[12px] text-neutral-700">4,33&nbsp;zł/l</span><span
                                    class="flex items-start text-dark-blue-500"><span
                                      data-testid="product-card-price-whole"
                                      class="font-bold tracking-[1px] text-[40px] leading-[28px] md:text-[48px] md:leading-[33px]">12</span><span
                                      class="inline-flex items-baseline"><span
                                        data-testid="product-card-price-fractional"
                                        class="font-bold tracking-[1px] text-[20px] leading-[14px] md:text-[28px] md:leading-[19px]">99</span></span></span></span><span
                                  class="absolute top-0 left-0 flex flex-col gap-0.5"></span></a><button type="button"
                                data-testid="favorite-button" class="absolute top-0 right-0 p-2"
                                aria-label="Dodaj do ulubionych"><svg aria-hidden="true" data-testid="Heart01"
                                  xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none"
                                  viewBox="0 0 24 24">
                                  <path fill="#8593a3"
                                    d="M12 21a1 1 0 0 1-.486-.126C11.126 20.658 2 15.514 2 9c0-3.665 2.218-5.425 4.293-5.849 2.171-.44 4.328.402 5.707 2.113 1.38-1.712 3.537-2.552 5.707-2.113C19.782 3.575 22 5.335 22 9.001c0 6.513-9.126 11.657-9.515 11.873A1 1 0 0 1 12 21M7.4 5.041q-.368 0-.707.07C5.007 5.456 4 6.91 4 9.001c0 4.584 6.197 8.728 8 9.836 1.804-1.108 8-5.252 8-9.837 0-2.09-1.007-3.544-2.693-3.889-1.482-.3-3.479.346-4.387 2.475a1 1 0 0 1-1.84 0C10.31 5.78 8.755 5.04 7.4 5.04">
                                  </path>
                                </svg></button></div>
                          </div>
                          <div class="w-(--itemWidth)">
                            <div class="border-neutral-150 border bg-neutral-0 relative h-full w-full"
                              data-testid="product-card" data-content-king="product-card" analytics="[object Object]"><a
                                class="group relative flex h-full w-full flex-col p-3 xs:p-4"
                                href="/pl-pl/p/2525250/folia-do-laminowania/" data-testid="product-card-link"><span
                                  class="xs:max-h-[180px] relative aspect-square w-full md:max-h-[230px]"><img
                                    data-testid="product-card-image" alt="" fetchpriority="low" loading="lazy"
                                    decoding="async" data-nimg="fill"
                                    class="object-contain object-center py-2 transition-transform duration-250 group-hover:scale-105 md:py-4 h-full w-full"
                                    style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent"
                                    sizes="(min-width: 1280px) calc(1280px / 5), (min-width: 1024px) calc(100vw / 4), (min-width: 768px) calc(100vw / 3), (min-width: 640px) calc(100vw / 3), (min-width: 390px) calc(100vw / 2), calc(100vw / 2)"
                                    srcset="https://asset.action.com/image/upload/t_digital_product_image/w_128/2525250_8714333011030-110_01_t4ihqe.webp 128w, https://asset.action.com/image/upload/t_digital_product_image/w_256/2525250_8714333011030-110_01_t4ihqe.webp 256w, https://asset.action.com/image/upload/t_digital_product_image/w_640/2525250_8714333011030-110_01_t4ihqe.webp 640w, https://asset.action.com/image/upload/t_digital_product_image/w_1080/2525250_8714333011030-110_01_t4ihqe.webp 1080w, https://asset.action.com/image/upload/t_digital_product_image/w_1920/2525250_8714333011030-110_01_t4ihqe.webp 1920w"
                                    src="https://asset.action.com/image/upload/t_digital_product_image/w_1920/2525250_8714333011030-110_01_t4ihqe.webp"><span
                                    class="absolute bottom-0 flex flex-col gap-2"></span></span><span
                                  class="mt-2 mb-3 flex grow flex-col gap-1 leading-tight sm:mb-4"><span
                                    class="xs:text-[16px] xs:leading-5 text-sm leading-[18px] font-medium text-dark-blue-500 line-clamp-2 break-words"
                                    data-testid="product-card-title">Folia do laminowania</span><span
                                    class="max-h-fit text-sm leading-[18px] font-normal line-clamp-2 grow break-words text-neutral-700"
                                    data-testid="product-card-description">20 sztuk</span></span><span
                                  aria-label="7,95&nbsp;zł 0,40&nbsp;zł/szt." class="flex flex-col"><span
                                    data-testid="product-card-price-description"
                                    class="mb-1 block w-max text-xs leading-[12px] text-neutral-700">0,40&nbsp;zł/szt.</span><span
                                    class="flex items-start text-dark-blue-500"><span
                                      data-testid="product-card-price-whole"
                                      class="font-bold tracking-[1px] text-[40px] leading-[28px] md:text-[48px] md:leading-[33px]">7</span><span
                                      class="inline-flex items-baseline"><span
                                        data-testid="product-card-price-fractional"
                                        class="font-bold tracking-[1px] text-[20px] leading-[14px] md:text-[28px] md:leading-[19px]">95</span></span></span></span><span
                                  class="absolute top-0 left-0 flex flex-col gap-0.5"></span></a><button type="button"
                                data-testid="favorite-button" class="absolute top-0 right-0 p-2"
                                aria-label="Dodaj do ulubionych"><svg aria-hidden="true" data-testid="Heart01"
                                  xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none"
                                  viewBox="0 0 24 24">
                                  <path fill="#8593a3"
                                    d="M12 21a1 1 0 0 1-.486-.126C11.126 20.658 2 15.514 2 9c0-3.665 2.218-5.425 4.293-5.849 2.171-.44 4.328.402 5.707 2.113 1.38-1.712 3.537-2.552 5.707-2.113C19.782 3.575 22 5.335 22 9.001c0 6.513-9.126 11.657-9.515 11.873A1 1 0 0 1 12 21M7.4 5.041q-.368 0-.707.07C5.007 5.456 4 6.91 4 9.001c0 4.584 6.197 8.728 8 9.836 1.804-1.108 8-5.252 8-9.837 0-2.09-1.007-3.544-2.693-3.889-1.482-.3-3.479.346-4.387 2.475a1 1 0 0 1-1.84 0C10.31 5.78 8.755 5.04 7.4 5.04">
                                  </path>
                                </svg></button></div>
                          </div>
                        </div>
                        <div class="w-4 shrink-0 lg:w-0 pointer-fine:w-0"></div>
                      </div>
                    </div>
                    <div class="pointer-events-none absolute inset-0"><button type="button" aria-label="Następna"
                        class="absolute -translate-y-1/2 top-1/2 bg-neutral-0 shadow-overlay-button rounded-full p-4 hidden lg:block pointer-fine:block transition duration-200 hover:scale-[1.15] -right-2 lg:-right-4 xl:-right-7 pointer-events-auto"
                        data-testid="carousel-next-navigation-button"><svg aria-hidden="true" data-testid="ArrowRightMd"
                          xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                          <path fill="#001489"
                            d="M13 19a1 1 0 0 1-.707-1.707L16.586 13H5a1 1 0 0 1 0-2h11.586l-4.293-4.293a1 1 0 1 1 1.414-1.414l6 6a1 1 0 0 1 .293.704v.006a1 1 0 0 1-.293.704l-6 6A1 1 0 0 1 13 19">
                          </path>
                        </svg></button></div>
                  </div>
                </div>
              </div>
            </div>
            {* <script type="application/ld+json">
              {"itemListElement":[{"@type":"ListItem","position":1,"url":"https://www.action.com/pl-pl/p/2560087/skarpetki-stopki-lotto-czarne/"},{"@type":"ListItem","position":2,"url":"https://www.action.com/pl-pl/p/3221546/bokserki-ziki/"},{"@type":"ListItem","position":3,"url":"https://www.action.com/pl-pl/p/3220161/baterie-varta-aaa/"},{"@type":"ListItem","position":4,"url":"https://www.action.com/pl-pl/p/3216780/zestaw-podwojnych-markerow-decotime/"},{"@type":"ListItem","position":5,"url":"https://www.action.com/pl-pl/p/3016327/szenilowy-dywanik-lazienkowy/"},{"@type":"ListItem","position":6,"url":"https://www.action.com/pl-pl/p/3009535/kawa-w-kapsulkach-palazzo-lungo/"},{"@type":"ListItem","position":7,"url":"https://www.action.com/pl-pl/p/2582428/majonez-heinz/"},{"@type":"ListItem","position":8,"url":"https://www.action.com/pl-pl/p/2558422/papier-toaletowy-pure-soft-miekki-i-ekstra-mocny/"},{"@type":"ListItem","position":9,"url":"https://www.action.com/pl-pl/p/2532075/kartonowe-pudlo-do-przeprowadzki-action/"},{"@type":"ListItem","position":10,"url":"https://www.action.com/pl-pl/p/2525815/srodek-do-prania-sendil-ultra-wash-universal/"},{"@type":"ListItem","position":11,"url":"https://www.action.com/pl-pl/p/2525250/folia-do-laminowania/"}],"@context":"https://schema.org","@type":"ItemList"}
            </script> *}
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

{hook h='displayFeaturedProducts'}

  <section class="bg-neutral-0 pt-6 md:pt-8 pb-6 md:pb-8" aria-label="POWITAJ 100+ PROMOCJI!"
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
                src="/static/Hello_Digital_web_2025_PL_q2iekf.avif">
            </div>
          </div>
          <div data-testid="split-teaser-content" class="md:m-0 md:self-center">
            <div class="flex flex-col sm:justify-center md:h-[300px]">
              <h2 class="heading-xl pb-2" data-testid="split-teaser-content-title">POWITAJ 100+ PROMOCJI!</h2>
              <p class="text-body-normal whitespace-break-spaces text-neutral-900"
                data-testid="split-teaser-content-description">Szukasz więcej Promocji Tygodnia? Z aplikacją Action
                znajdziesz ponad 100 świetnych okazji i zawsze będziesz na bieżąco.
                A co najlepsze… już teraz możesz podejrzeć oferty na przyszły tydzień!</p>
              <div class="flex items-center justify-start md:items-start"><a
                  class="relative box-border flex max-w-full items-center justify-center gap-1 rounded-full text-base font-medium py-2.5 px-5 bg-dark-blue-500 text-neutral-0 hover:bg-dark-blue-300 active:bg-dark-blue-700 focus:bg-dark-blue-300 focus:outline focus:outline-2 focus:outline-dark-blue-500 focus:outline-offset-2 disabled:bg-neutral-150 disabled:text-neutral-700 disabled:outline disabled:outline-1 disabled:outline-neutral mt-4"
href="/content/6-aplikacja" data-testid="split-teaser-cta"><span class="truncate px-1">Pobierz aplikację i nie przegap żadnej okazji!</span></a></div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>


{hook h='displayViewedProducts'}

{/block}