{extends file=$layout}

{block name='content'}

  <div class="hidden h-8 lg:block"></div>
  {widget name='ps_categorytree' carousel=true}
  {hook h='displayFeaturedProducts'}


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
                        href="/pl-pl/moment/najwspanialsze-upominki/" aria-label="Zobacz wszystko"
                        data-testid="content-card">
                        <div
                          class="lg:min-w-none relative flex h-full min-h-[300px] w-full flex-col overflow-hidden rounded-md md:max-w-none InspirationContentCard_contentCard__YE4xI md:min-h-[500px] min-h-[340px]">
                          <div class="relative h-full w-full overflow-hidden"><img data-testid="content-card-image" alt=""
                              loading="lazy" decoding="async" data-nimg="fill"
                              class="bg-neutral-10 object-cover object-center transition-all duration-300 group-hover:scale-105 transition-transform duration-250 hover:scale-105 h-full w-full"
                              style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent"
                              sizes="(min-width: 1280px) calc(1280px / 3), (min-width: 1024px) calc(100vw / 3), (min-width: 768px) calc(100vw / 2), (min-width: 640px) calc(100vw / 1), calc(100vw / 1)"
                              srcset="https://asset.action.com/image/upload/t_digital_content_card_small/w_128/Presents_ToysEntertainment_Toys_Dolls_2025_ygfmvt.webp 128w, https://asset.action.com/image/upload/t_digital_content_card_small/w_256/Presents_ToysEntertainment_Toys_Dolls_2025_ygfmvt.webp 256w, https://asset.action.com/image/upload/t_digital_content_card_small/w_640/Presents_ToysEntertainment_Toys_Dolls_2025_ygfmvt.webp 640w, https://asset.action.com/image/upload/t_digital_content_card_small/w_1080/Presents_ToysEntertainment_Toys_Dolls_2025_ygfmvt.webp 1080w, https://asset.action.com/image/upload/t_digital_content_card_small/w_1920/Presents_ToysEntertainment_Toys_Dolls_2025_ygfmvt.webp 1920w"
                              src="https://asset.action.com/image/upload/t_digital_content_card_small/w_1920/Presents_ToysEntertainment_Toys_Dolls_2025_ygfmvt.webp">
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
                        href="/pl-pl/moment/boze-narodzenie/swiateczne-dekoracje/" aria-label="Zobacz wszystko"
                        data-testid="content-card">
                        <div
                          class="lg:min-w-none relative flex h-full min-h-[300px] w-full flex-col overflow-hidden rounded-md md:max-w-none InspirationContentCard_contentCard__YE4xI md:min-h-[500px] min-h-[340px]">
                          <div class="relative h-full w-full overflow-hidden"><img data-testid="content-card-image" alt=""
                              loading="lazy" decoding="async" data-nimg="fill"
                              class="bg-neutral-10 object-cover object-center transition-all duration-300 group-hover:scale-105 transition-transform duration-250 hover:scale-105 h-full w-full"
                              style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent"
                              sizes="(min-width: 1280px) calc(1280px / 3), (min-width: 1024px) calc(100vw / 3), (min-width: 768px) calc(100vw / 2), (min-width: 640px) calc(100vw / 1), calc(100vw / 1)"
                              srcset="https://asset.action.com/image/upload/t_digital_content_card_small/w_128/Christmas_Decoration_SeasonalDecoration_DecoratingTree_2025_d2npid.webp 128w, https://asset.action.com/image/upload/t_digital_content_card_small/w_256/Christmas_Decoration_SeasonalDecoration_DecoratingTree_2025_d2npid.webp 256w, https://asset.action.com/image/upload/t_digital_content_card_small/w_640/Christmas_Decoration_SeasonalDecoration_DecoratingTree_2025_d2npid.webp 640w, https://asset.action.com/image/upload/t_digital_content_card_small/w_1080/Christmas_Decoration_SeasonalDecoration_DecoratingTree_2025_d2npid.webp 1080w, https://asset.action.com/image/upload/t_digital_content_card_small/w_1920/Christmas_Decoration_SeasonalDecoration_DecoratingTree_2025_d2npid.webp 1920w"
                              src="https://asset.action.com/image/upload/t_digital_content_card_small/w_1920/Christmas_Decoration_SeasonalDecoration_DecoratingTree_2025_d2npid.webp">
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
                        href="/pl-pl/moment/przygotowania-do-zimy/" aria-label="Zobacz wszystko"
                        data-testid="content-card">
                        <div
                          class="lg:min-w-none relative flex h-full min-h-[300px] w-full flex-col overflow-hidden rounded-md md:max-w-none InspirationContentCard_contentCard__YE4xI md:min-h-[500px] min-h-[340px]">
                          <div class="relative h-full w-full overflow-hidden"><img data-testid="content-card-image" alt=""
                              loading="lazy" decoding="async" data-nimg="fill"
                              class="bg-neutral-10 object-cover object-center transition-all duration-300 group-hover:scale-105 transition-transform duration-250 hover:scale-105 h-full w-full"
                              style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent"
                              sizes="(min-width: 1280px) calc(1280px / 3), (min-width: 1024px) calc(100vw / 3), (min-width: 768px) calc(100vw / 2), (min-width: 640px) calc(100vw / 1), calc(100vw / 1)"
                              srcset="https://asset.action.com/image/upload/t_digital_content_card_small/w_128/Winter_WinterFashionInside_Clothing_Womenswear_ClothingAccessories_Shoes_Legwear_2025_adcx1s.webp 128w, https://asset.action.com/image/upload/t_digital_content_card_small/w_256/Winter_WinterFashionInside_Clothing_Womenswear_ClothingAccessories_Shoes_Legwear_2025_adcx1s.webp 256w, https://asset.action.com/image/upload/t_digital_content_card_small/w_640/Winter_WinterFashionInside_Clothing_Womenswear_ClothingAccessories_Shoes_Legwear_2025_adcx1s.webp 640w, https://asset.action.com/image/upload/t_digital_content_card_small/w_1080/Winter_WinterFashionInside_Clothing_Womenswear_ClothingAccessories_Shoes_Legwear_2025_adcx1s.webp 1080w, https://asset.action.com/image/upload/t_digital_content_card_small/w_1920/Winter_WinterFashionInside_Clothing_Womenswear_ClothingAccessories_Shoes_Legwear_2025_adcx1s.webp 1920w"
                              src="https://asset.action.com/image/upload/t_digital_content_card_small/w_1920/Winter_WinterFashionInside_Clothing_Womenswear_ClothingAccessories_Shoes_Legwear_2025_adcx1s.webp">
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

{hook h='displayDiscountedProducts'}

  <section class="bg-neutral-50 pt-6 md:pt-8 pb-6 md:pb-8" aria-label="Gazetka prezentowa z mnóstwem prezentów!"
    data-testid="cms-split-teaser">
    <div class="relative flex w-full flex-col px-4 lg:px-8">
      <div class="mx-auto w-full max-w-7xl">
        <div data-testid="split-teaser" class="flex flex-col gap-4 md:grid md:grid-cols-2 md:gap-8">
          <div data-testid="split-teaser-content" class="md:m-0 md:self-center">
            <div class="flex flex-col sm:justify-center md:h-[300px]">
              <h2 class="heading-xl pb-2" data-testid="split-teaser-content-title">Gazetka prezentowa z mnóstwem
                prezentów!</h2>
              <p class="text-body-normal whitespace-break-spaces text-neutral-900"
                data-testid="split-teaser-content-description">Gazetka prezentowa Action powraca! Pełna najlepszych
                zabawek i najpiękniejszych prezentów dla dzieci i dorosłych. W tym sezonie świątecznym zaskocz swoich
                bliskich nie obciążając przy tym portfela.</p>
              <div class="flex items-center justify-start md:items-start"><a
                  class="relative box-border flex max-w-full items-center justify-center gap-1 rounded-full text-base font-medium py-2.5 px-5 bg-dark-blue-500 text-neutral-0 hover:bg-dark-blue-300 active:bg-dark-blue-700 focus:bg-dark-blue-300 focus:outline focus:outline-2 focus:outline-dark-blue-500 focus:outline-offset-2 disabled:bg-neutral-150 disabled:text-neutral-700 disabled:outline disabled:outline-1 disabled:outline-neutral mt-4"
                  href="/pl-pl/gazetkaprezentowa/" data-testid="split-teaser-cta"><span class="truncate px-1">Zobacz
                    gazetkę</span></a></div>
            </div>
          </div>
          <div data-testid="split-teaser-media" class="relative order-first md:order-0 md:mt-0 h-80 sm:min-h-[500px]">
            <div data-testid="split-teaser-image"
              class="relative h-80 overflow-hidden rounded-lg sm:h-[500px] object-cover object-center sm:min-h-[500px]">
              <img alt="" loading="lazy" decoding="async" data-nimg="fill"
                class="overflow-hidden rounded-lg object-cover object-center h-full w-full"
                style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent"
                sizes="(min-width: 768px) 50vw, 100vw"
                srcset="https://asset.action.com/image/upload/w_128/Presents_Splitteaser_665x554_PL_2025_ldwltf.webp 128w, https://asset.action.com/image/upload/w_256/Presents_Splitteaser_665x554_PL_2025_ldwltf.webp 256w, https://asset.action.com/image/upload/w_640/Presents_Splitteaser_665x554_PL_2025_ldwltf.webp 640w, https://asset.action.com/image/upload/w_1080/Presents_Splitteaser_665x554_PL_2025_ldwltf.webp 1080w, https://asset.action.com/image/upload/w_1920/Presents_Splitteaser_665x554_PL_2025_ldwltf.webp 1920w"
                src="https://asset.action.com/image/upload/w_1920/Presents_Splitteaser_665x554_PL_2025_ldwltf.webp">
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

{hook h='displayNewProducts'}

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
                srcset="https://asset.action.com/image/upload/w_128/Hello_Digital_web_2025_PL_q2iekf.webp 128w, https://asset.action.com/image/upload/w_256/Hello_Digital_web_2025_PL_q2iekf.webp 256w, https://asset.action.com/image/upload/w_640/Hello_Digital_web_2025_PL_q2iekf.webp 640w, https://asset.action.com/image/upload/w_1080/Hello_Digital_web_2025_PL_q2iekf.webp 1080w, https://asset.action.com/image/upload/w_1920/Hello_Digital_web_2025_PL_q2iekf.webp 1920w"
                src="https://asset.action.com/image/upload/w_1920/Hello_Digital_web_2025_PL_q2iekf.webp">
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
                  href="/pl-pl/aplikacja/" data-testid="split-teaser-cta"><span class="truncate px-1">Pobierz aplikację i
                    nie przegap żadnej okazji!</span></a></div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>


{hook h='displayViewedProducts'}

{/block}