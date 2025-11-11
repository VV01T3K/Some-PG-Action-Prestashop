{extends file=$layout}

{block name='content'}

  <div class="hidden h-8 lg:block"></div>
  <section class="bg-neutral-0 pt-6 md:pt-8 pb-6 md:pb-8 lg:pt-0" aria-label="Kategorie"
    data-testid="cms-category-carousel">
    <div class="relative flex w-full flex-col px-4 lg:px-8">
      <div class="mx-auto w-full max-w-7xl">
        <div class="flex flex-col gap-4 md:gap-6"
          style="--rowsXl:1;--columnsXl:8;--rowsLg:1;--columnsLg:8;--rowsMd:1;--columnsMd:6;--rowsSm:1;--columnsSm:5;--rowsDefault:1;--columnsDefault:4">
          <div class="@container relative" style="--numberOfPages: 2.5; --currentPage: 0;">
            <div
              class="xl:[--columns:var(--columnsXl)] xl:[--rows:var(--rowsXl)] lg:[--columns:var(--columnsLg)] lg:[--rows:var(--rowsLg)] md:[--columns:var(--columnsMd)] md:[--rows:var(--rowsMd)] sm:[--columns:var(--columnsSm)] sm:[--rows:var(--rowsSm)] [--columns:var(--columnsDefault)] [--rows:var(--rowsDefault)] [--itemSpacing:8px] md:[--itemSpacing:16px] [--lastItemPartial:16px] sm:[--lastItemPartial:32px] [--itemWidth:calc((100cqw-var(--itemSpacing)*var(--columns)-var(--lastItemPartial))/var(--columns))] lg:[--itemWidth:calc((100cqw-var(--itemSpacing)*(var(--columns)-1))/var(--columns))] pointer-fine:[--itemWidth:calc((100cqw-var(--itemSpacing)*(var(--columns)-1))/var(--columns))] [--isMultiRow:calc(min(1,var(--rows)-1))] [--isSingleRow:calc(1-var(--isMultiRow))]">
              <div class="pointer-events-none absolute inset-0 z-1"><button type="button" aria-label="Poprzednia"
                  class="custom-invisible absolute -translate-y-1/2 top-[calc(var(--isSingleRow)*var(--itemWidth)/2+var(--isMultiRow)*50%)] bg-neutral-0 shadow-overlay-button rounded-full p-4 hidden lg:block pointer-fine:block transition duration-200 hover:scale-[1.15] -left-2 lg:-left-4 xl:-left-7 pointer-events-auto"
                  data-testid="carousel-previous-navigation-button" onclick="prevCarouselPage(this)"><svg
                    aria-hidden="true" data-testid="ArrowLeftMd" xmlns="http://www.w3.org/2000/svg" width="24" height="24"
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
                  <div class="grid grid-flow-col grid-rows-[repeat(var(--rows),minmax(0,auto))] gap-(--itemSpacing)">
                    <div class="w-(--itemWidth)"><a class="group flex flex-col gap-2" href="/pl-pl/c/wyposaenie-domu/"
                        data-testid="category-card" aria-labelledby="_R_d8binpfivjap5snpfivb_"><span
                          class="relative aspect-square w-full shrink-0 rounded-full overflow-clip"><img
                            data-testid="category-card-image" alt="" loading="lazy" decoding="async" data-nimg="fill"
                            class="object-contain object-center group-hover:scale-110 transition-all duration-300 h-full w-full"
                            style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent"
                            sizes="(min-width: 1280px) calc(1280px / 8), (min-width: 1024px) calc(100vw / 8), (min-width: 768px) calc(100vw / 6), (min-width: 640px) calc(100vw / 5), calc(100vw / 4)"
                            srcset="https://asset.action.com/image/upload/t_digital_square/w_128/Categoryslider_Decoration_Home__2024_qatudm.webp 128w, https://asset.action.com/image/upload/t_digital_square/w_256/Categoryslider_Decoration_Home__2024_qatudm.webp 256w, https://asset.action.com/image/upload/t_digital_square/w_640/Categoryslider_Decoration_Home__2024_qatudm.webp 640w, https://asset.action.com/image/upload/t_digital_square/w_1080/Categoryslider_Decoration_Home__2024_qatudm.webp 1080w, https://asset.action.com/image/upload/t_digital_square/w_1920/Categoryslider_Decoration_Home__2024_qatudm.webp 1920w"
                            src="https://asset.action.com/image/upload/t_digital_square/w_1920/Categoryslider_Decoration_Home__2024_qatudm.webp"></span><span
                          id="_R_d8binpfivjap5snpfivb_"
                          class="line-clamp-2 text-center break-words text-caption text-dark-blue-500 md:text-body-small font-medium"
                          data-testid="category-card-title">Wyposażenie domu</span></a></div>
                    <div class="w-(--itemWidth)"><a class="group flex flex-col gap-2" href="/pl-pl/c/kuchnia/"
                        data-testid="category-card" aria-labelledby="_R_l8binpfivjap5snpfivb_"><span
                          class="relative aspect-square w-full shrink-0 rounded-full overflow-clip"><img
                            data-testid="category-card-image" alt="" loading="lazy" decoding="async" data-nimg="fill"
                            class="object-contain object-center group-hover:scale-110 transition-all duration-300 h-full w-full"
                            style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent"
                            sizes="(min-width: 1280px) calc(1280px / 8), (min-width: 1024px) calc(100vw / 8), (min-width: 768px) calc(100vw / 6), (min-width: 640px) calc(100vw / 5), calc(100vw / 4)"
                            srcset="https://asset.action.com/image/upload/t_digital_square/w_128/Categoryslider_Kitchen_2024_fi7jou.webp 128w, https://asset.action.com/image/upload/t_digital_square/w_256/Categoryslider_Kitchen_2024_fi7jou.webp 256w, https://asset.action.com/image/upload/t_digital_square/w_640/Categoryslider_Kitchen_2024_fi7jou.webp 640w, https://asset.action.com/image/upload/t_digital_square/w_1080/Categoryslider_Kitchen_2024_fi7jou.webp 1080w, https://asset.action.com/image/upload/t_digital_square/w_1920/Categoryslider_Kitchen_2024_fi7jou.webp 1920w"
                            src="https://asset.action.com/image/upload/t_digital_square/w_1920/Categoryslider_Kitchen_2024_fi7jou.webp"></span><span
                          id="_R_l8binpfivjap5snpfivb_"
                          class="line-clamp-2 text-center break-words text-caption text-dark-blue-500 md:text-body-small font-medium"
                          data-testid="category-card-title">Kuchnia</span></a></div>
                    <div class="w-(--itemWidth)"><a class="group flex flex-col gap-2"
                        href="/pl-pl/c/sprztanie-i-przechowywanie/" data-testid="category-card"
                        aria-labelledby="_R_t8binpfivjap5snpfivb_"><span
                          class="relative aspect-square w-full shrink-0 rounded-full overflow-clip"><img
                            data-testid="category-card-image" alt="" loading="lazy" decoding="async" data-nimg="fill"
                            class="object-contain object-center group-hover:scale-110 transition-all duration-300 h-full w-full"
                            style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent"
                            sizes="(min-width: 1280px) calc(1280px / 8), (min-width: 1024px) calc(100vw / 8), (min-width: 768px) calc(100vw / 6), (min-width: 640px) calc(100vw / 5), calc(100vw / 4)"
                            srcset="https://asset.action.com/image/upload/t_digital_square/w_128/Categoryslider_HouseholdGoods_2024_eejxld.webp 128w, https://asset.action.com/image/upload/t_digital_square/w_256/Categoryslider_HouseholdGoods_2024_eejxld.webp 256w, https://asset.action.com/image/upload/t_digital_square/w_640/Categoryslider_HouseholdGoods_2024_eejxld.webp 640w, https://asset.action.com/image/upload/t_digital_square/w_1080/Categoryslider_HouseholdGoods_2024_eejxld.webp 1080w, https://asset.action.com/image/upload/t_digital_square/w_1920/Categoryslider_HouseholdGoods_2024_eejxld.webp 1920w"
                            src="https://asset.action.com/image/upload/t_digital_square/w_1920/Categoryslider_HouseholdGoods_2024_eejxld.webp"></span><span
                          id="_R_t8binpfivjap5snpfivb_"
                          class="line-clamp-2 text-center break-words text-caption text-dark-blue-500 md:text-body-small font-medium"
                          data-testid="category-card-title">Sprzątanie i przechowywanie</span></a></div>
                    <div class="w-(--itemWidth)"><a class="group flex flex-col gap-2" href="/pl-pl/c/szkoa-i-biuro/"
                        data-testid="category-card" aria-labelledby="_R_158binpfivjap5snpfivb_"><span
                          class="relative aspect-square w-full shrink-0 rounded-full overflow-clip"><img
                            data-testid="category-card-image" alt="" loading="lazy" decoding="async" data-nimg="fill"
                            class="object-contain object-center group-hover:scale-110 transition-all duration-300 h-full w-full"
                            style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent"
                            sizes="(min-width: 1280px) calc(1280px / 8), (min-width: 1024px) calc(100vw / 8), (min-width: 768px) calc(100vw / 6), (min-width: 640px) calc(100vw / 5), calc(100vw / 4)"
                            srcset="https://asset.action.com/image/upload/t_digital_square/w_128/Categoryslider_StationeryAndHobby_Office_School__2024_lcqhpw.webp 128w, https://asset.action.com/image/upload/t_digital_square/w_256/Categoryslider_StationeryAndHobby_Office_School__2024_lcqhpw.webp 256w, https://asset.action.com/image/upload/t_digital_square/w_640/Categoryslider_StationeryAndHobby_Office_School__2024_lcqhpw.webp 640w, https://asset.action.com/image/upload/t_digital_square/w_1080/Categoryslider_StationeryAndHobby_Office_School__2024_lcqhpw.webp 1080w, https://asset.action.com/image/upload/t_digital_square/w_1920/Categoryslider_StationeryAndHobby_Office_School__2024_lcqhpw.webp 1920w"
                            src="https://asset.action.com/image/upload/t_digital_square/w_1920/Categoryslider_StationeryAndHobby_Office_School__2024_lcqhpw.webp"></span><span
                          id="_R_158binpfivjap5snpfivb_"
                          class="line-clamp-2 text-center break-words text-caption text-dark-blue-500 md:text-body-small font-medium"
                          data-testid="category-card-title">Szkoła i biuro</span></a></div>
                    <div class="w-(--itemWidth)"><a class="group flex flex-col gap-2" href="/pl-pl/c/hobby/"
                        data-testid="category-card" aria-labelledby="_R_1d8binpfivjap5snpfivb_"><span
                          class="relative aspect-square w-full shrink-0 rounded-full overflow-clip"><img
                            data-testid="category-card-image" alt="" loading="lazy" decoding="async" data-nimg="fill"
                            class="object-contain object-center group-hover:scale-110 transition-all duration-300 h-full w-full"
                            style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent"
                            sizes="(min-width: 1280px) calc(1280px / 8), (min-width: 1024px) calc(100vw / 8), (min-width: 768px) calc(100vw / 6), (min-width: 640px) calc(100vw / 5), calc(100vw / 4)"
                            srcset="https://asset.action.com/image/upload/t_digital_square/w_128/Categoryslider_Hobby_2024_mo9wmb.webp 128w, https://asset.action.com/image/upload/t_digital_square/w_256/Categoryslider_Hobby_2024_mo9wmb.webp 256w, https://asset.action.com/image/upload/t_digital_square/w_640/Categoryslider_Hobby_2024_mo9wmb.webp 640w, https://asset.action.com/image/upload/t_digital_square/w_1080/Categoryslider_Hobby_2024_mo9wmb.webp 1080w, https://asset.action.com/image/upload/t_digital_square/w_1920/Categoryslider_Hobby_2024_mo9wmb.webp 1920w"
                            src="https://asset.action.com/image/upload/t_digital_square/w_1920/Categoryslider_Hobby_2024_mo9wmb.webp"></span><span
                          id="_R_1d8binpfivjap5snpfivb_"
                          class="line-clamp-2 text-center break-words text-caption text-dark-blue-500 md:text-body-small font-medium"
                          data-testid="category-card-title">Hobby</span></a></div>
                    <div class="w-(--itemWidth)"><a class="group flex flex-col gap-2" href="/pl-pl/c/zrob-to-sam/"
                        data-testid="category-card" aria-labelledby="_R_1l8binpfivjap5snpfivb_"><span
                          class="relative aspect-square w-full shrink-0 rounded-full overflow-clip"><img
                            data-testid="category-card-image" alt="" loading="lazy" decoding="async" data-nimg="fill"
                            class="object-contain object-center group-hover:scale-110 transition-all duration-300 h-full w-full"
                            style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent"
                            sizes="(min-width: 1280px) calc(1280px / 8), (min-width: 1024px) calc(100vw / 8), (min-width: 768px) calc(100vw / 6), (min-width: 640px) calc(100vw / 5), calc(100vw / 4)"
                            srcset="https://asset.action.com/image/upload/t_digital_square/w_128/Categoryslider_DIY_2024_g11b4t.webp 128w, https://asset.action.com/image/upload/t_digital_square/w_256/Categoryslider_DIY_2024_g11b4t.webp 256w, https://asset.action.com/image/upload/t_digital_square/w_640/Categoryslider_DIY_2024_g11b4t.webp 640w, https://asset.action.com/image/upload/t_digital_square/w_1080/Categoryslider_DIY_2024_g11b4t.webp 1080w, https://asset.action.com/image/upload/t_digital_square/w_1920/Categoryslider_DIY_2024_g11b4t.webp 1920w"
                            src="https://asset.action.com/image/upload/t_digital_square/w_1920/Categoryslider_DIY_2024_g11b4t.webp"></span><span
                          id="_R_1l8binpfivjap5snpfivb_"
                          class="line-clamp-2 text-center break-words text-caption text-dark-blue-500 md:text-body-small font-medium"
                          data-testid="category-card-title">Zrób to sam</span></a></div>
                    <div class="w-(--itemWidth)"><a class="group flex flex-col gap-2" href="/pl-pl/c/zabawki/"
                        data-testid="category-card" aria-labelledby="_R_1t8binpfivjap5snpfivb_"><span
                          class="relative aspect-square w-full shrink-0 rounded-full overflow-clip"><img
                            data-testid="category-card-image" alt="" loading="lazy" decoding="async" data-nimg="fill"
                            class="object-contain object-center group-hover:scale-110 transition-all duration-300 h-full w-full"
                            style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent"
                            sizes="(min-width: 1280px) calc(1280px / 8), (min-width: 1024px) calc(100vw / 8), (min-width: 768px) calc(100vw / 6), (min-width: 640px) calc(100vw / 5), calc(100vw / 4)"
                            srcset="https://asset.action.com/image/upload/t_digital_square/w_128/Categoryslider_Toys_Entertainment_Toys__2024_ujx4hs.webp 128w, https://asset.action.com/image/upload/t_digital_square/w_256/Categoryslider_Toys_Entertainment_Toys__2024_ujx4hs.webp 256w, https://asset.action.com/image/upload/t_digital_square/w_640/Categoryslider_Toys_Entertainment_Toys__2024_ujx4hs.webp 640w, https://asset.action.com/image/upload/t_digital_square/w_1080/Categoryslider_Toys_Entertainment_Toys__2024_ujx4hs.webp 1080w, https://asset.action.com/image/upload/t_digital_square/w_1920/Categoryslider_Toys_Entertainment_Toys__2024_ujx4hs.webp 1920w"
                            src="https://asset.action.com/image/upload/t_digital_square/w_1920/Categoryslider_Toys_Entertainment_Toys__2024_ujx4hs.webp"></span><span
                          id="_R_1t8binpfivjap5snpfivb_"
                          class="line-clamp-2 text-center break-words text-caption text-dark-blue-500 md:text-body-small font-medium"
                          data-testid="category-card-title">Zabawki</span></a></div>
                    <div class="w-(--itemWidth)"><a class="group flex flex-col gap-2" href="/pl-pl/c/ogrod/"
                        data-testid="category-card" aria-labelledby="_R_258binpfivjap5snpfivb_"><span
                          class="relative aspect-square w-full shrink-0 rounded-full overflow-clip"><img
                            data-testid="category-card-image" alt="" loading="lazy" decoding="async" data-nimg="fill"
                            class="object-contain object-center group-hover:scale-110 transition-all duration-300 h-full w-full"
                            style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent"
                            sizes="(min-width: 1280px) calc(1280px / 8), (min-width: 1024px) calc(100vw / 8), (min-width: 768px) calc(100vw / 6), (min-width: 640px) calc(100vw / 5), calc(100vw / 4)"
                            srcset="https://asset.action.com/image/upload/t_digital_square/w_128/Categoryslider_GardenAndOutdoor_2024_dqquea.webp 128w, https://asset.action.com/image/upload/t_digital_square/w_256/Categoryslider_GardenAndOutdoor_2024_dqquea.webp 256w, https://asset.action.com/image/upload/t_digital_square/w_640/Categoryslider_GardenAndOutdoor_2024_dqquea.webp 640w, https://asset.action.com/image/upload/t_digital_square/w_1080/Categoryslider_GardenAndOutdoor_2024_dqquea.webp 1080w, https://asset.action.com/image/upload/t_digital_square/w_1920/Categoryslider_GardenAndOutdoor_2024_dqquea.webp 1920w"
                            src="https://asset.action.com/image/upload/t_digital_square/w_1920/Categoryslider_GardenAndOutdoor_2024_dqquea.webp"></span><span
                          id="_R_258binpfivjap5snpfivb_"
                          class="line-clamp-2 text-center break-words text-caption text-dark-blue-500 md:text-body-small font-medium"
                          data-testid="category-card-title">Ogród</span></a></div>
                    <div class="w-(--itemWidth)"><a class="group flex flex-col gap-2" href="/pl-pl/c/podroe/"
                        data-testid="category-card" aria-labelledby="_R_2d8binpfivjap5snpfivb_"><span
                          class="relative aspect-square w-full shrink-0 rounded-full overflow-clip"><img
                            data-testid="category-card-image" alt="" loading="lazy" decoding="async" data-nimg="fill"
                            class="object-contain object-center group-hover:scale-110 transition-all duration-300 h-full w-full"
                            style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent"
                            sizes="(min-width: 1280px) calc(1280px / 8), (min-width: 1024px) calc(100vw / 8), (min-width: 768px) calc(100vw / 6), (min-width: 640px) calc(100vw / 5), calc(100vw / 4)"
                            srcset="https://asset.action.com/image/upload/t_digital_square/w_128/Categoryslider_Travel_2024_goaz6v.webp 128w, https://asset.action.com/image/upload/t_digital_square/w_256/Categoryslider_Travel_2024_goaz6v.webp 256w, https://asset.action.com/image/upload/t_digital_square/w_640/Categoryslider_Travel_2024_goaz6v.webp 640w, https://asset.action.com/image/upload/t_digital_square/w_1080/Categoryslider_Travel_2024_goaz6v.webp 1080w, https://asset.action.com/image/upload/t_digital_square/w_1920/Categoryslider_Travel_2024_goaz6v.webp 1920w"
                            src="https://asset.action.com/image/upload/t_digital_square/w_1920/Categoryslider_Travel_2024_goaz6v.webp"></span><span
                          id="_R_2d8binpfivjap5snpfivb_"
                          class="line-clamp-2 text-center break-words text-caption text-dark-blue-500 md:text-body-small font-medium"
                          data-testid="category-card-title">Podróże</span></a></div>
                    <div class="w-(--itemWidth)"><a class="group flex flex-col gap-2" href="/pl-pl/c/pielgnacja/"
                        data-testid="category-card" aria-labelledby="_R_2l8binpfivjap5snpfivb_"><span
                          class="relative aspect-square w-full shrink-0 rounded-full overflow-clip"><img
                            data-testid="category-card-image" alt="" loading="lazy" decoding="async" data-nimg="fill"
                            class="object-contain object-center group-hover:scale-110 transition-all duration-300 h-full w-full"
                            style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent"
                            sizes="(min-width: 1280px) calc(1280px / 8), (min-width: 1024px) calc(100vw / 8), (min-width: 768px) calc(100vw / 6), (min-width: 640px) calc(100vw / 5), calc(100vw / 4)"
                            srcset="https://asset.action.com/image/upload/t_digital_square/w_128/Categoryslider_PersonalCare_2024_ci5mv5.webp 128w, https://asset.action.com/image/upload/t_digital_square/w_256/Categoryslider_PersonalCare_2024_ci5mv5.webp 256w, https://asset.action.com/image/upload/t_digital_square/w_640/Categoryslider_PersonalCare_2024_ci5mv5.webp 640w, https://asset.action.com/image/upload/t_digital_square/w_1080/Categoryslider_PersonalCare_2024_ci5mv5.webp 1080w, https://asset.action.com/image/upload/t_digital_square/w_1920/Categoryslider_PersonalCare_2024_ci5mv5.webp 1920w"
                            src="https://asset.action.com/image/upload/t_digital_square/w_1920/Categoryslider_PersonalCare_2024_ci5mv5.webp"></span><span
                          id="_R_2l8binpfivjap5snpfivb_"
                          class="line-clamp-2 text-center break-words text-caption text-dark-blue-500 md:text-body-small font-medium"
                          data-testid="category-card-title">Pielęgnacja</span></a></div>
                    <div class="w-(--itemWidth)"><a class="group flex flex-col gap-2" href="/pl-pl/c/jedzenie-i-napoje/"
                        data-testid="category-card" aria-labelledby="_R_2t8binpfivjap5snpfivb_"><span
                          class="relative aspect-square w-full shrink-0 rounded-full overflow-clip"><img
                            data-testid="category-card-image" alt="" loading="lazy" decoding="async" data-nimg="fill"
                            class="object-contain object-center group-hover:scale-110 transition-all duration-300 h-full w-full"
                            style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent"
                            sizes="(min-width: 1280px) calc(1280px / 8), (min-width: 1024px) calc(100vw / 8), (min-width: 768px) calc(100vw / 6), (min-width: 640px) calc(100vw / 5), calc(100vw / 4)"
                            srcset="https://asset.action.com/image/upload/t_digital_square/w_128/Categoryslider_FoodAndDrink_2024_z353fk.webp 128w, https://asset.action.com/image/upload/t_digital_square/w_256/Categoryslider_FoodAndDrink_2024_z353fk.webp 256w, https://asset.action.com/image/upload/t_digital_square/w_640/Categoryslider_FoodAndDrink_2024_z353fk.webp 640w, https://asset.action.com/image/upload/t_digital_square/w_1080/Categoryslider_FoodAndDrink_2024_z353fk.webp 1080w, https://asset.action.com/image/upload/t_digital_square/w_1920/Categoryslider_FoodAndDrink_2024_z353fk.webp 1920w"
                            src="https://asset.action.com/image/upload/t_digital_square/w_1920/Categoryslider_FoodAndDrink_2024_z353fk.webp"></span><span
                          id="_R_2t8binpfivjap5snpfivb_"
                          class="line-clamp-2 text-center break-words text-caption text-dark-blue-500 md:text-body-small font-medium"
                          data-testid="category-card-title">Jedzenie i napoje</span></a></div>
                    <div class="w-(--itemWidth)"><a class="group flex flex-col gap-2" href="/pl-pl/c/multimedia/"
                        data-testid="category-card" aria-labelledby="_R_358binpfivjap5snpfivb_"><span
                          class="relative aspect-square w-full shrink-0 rounded-full overflow-clip"><img
                            data-testid="category-card-image" alt="" loading="lazy" decoding="async" data-nimg="fill"
                            class="object-contain object-center group-hover:scale-110 transition-all duration-300 h-full w-full"
                            style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent"
                            sizes="(min-width: 1280px) calc(1280px / 8), (min-width: 1024px) calc(100vw / 8), (min-width: 768px) calc(100vw / 6), (min-width: 640px) calc(100vw / 5), calc(100vw / 4)"
                            srcset="https://asset.action.com/image/upload/t_digital_square/w_128/Categoryslider_Multimedia_2024_d5vqsc.webp 128w, https://asset.action.com/image/upload/t_digital_square/w_256/Categoryslider_Multimedia_2024_d5vqsc.webp 256w, https://asset.action.com/image/upload/t_digital_square/w_640/Categoryslider_Multimedia_2024_d5vqsc.webp 640w, https://asset.action.com/image/upload/t_digital_square/w_1080/Categoryslider_Multimedia_2024_d5vqsc.webp 1080w, https://asset.action.com/image/upload/t_digital_square/w_1920/Categoryslider_Multimedia_2024_d5vqsc.webp 1920w"
                            src="https://asset.action.com/image/upload/t_digital_square/w_1920/Categoryslider_Multimedia_2024_d5vqsc.webp"></span><span
                          id="_R_358binpfivjap5snpfivb_"
                          class="line-clamp-2 text-center break-words text-caption text-dark-blue-500 md:text-body-small font-medium"
                          data-testid="category-card-title">Multimedia</span></a></div>
                    <div class="w-(--itemWidth)"><a class="group flex flex-col gap-2" href="/pl-pl/c/moda/"
                        data-testid="category-card" aria-labelledby="_R_3d8binpfivjap5snpfivb_"><span
                          class="relative aspect-square w-full shrink-0 rounded-full overflow-clip"><img
                            data-testid="category-card-image" alt="" loading="lazy" decoding="async" data-nimg="fill"
                            class="object-contain object-center group-hover:scale-110 transition-all duration-300 h-full w-full"
                            style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent"
                            sizes="(min-width: 1280px) calc(1280px / 8), (min-width: 1024px) calc(100vw / 8), (min-width: 768px) calc(100vw / 6), (min-width: 640px) calc(100vw / 5), calc(100vw / 4)"
                            srcset="https://asset.action.com/image/upload/t_digital_square/w_128/Categoryslider_Fashion_2024_yauwgr.webp 128w, https://asset.action.com/image/upload/t_digital_square/w_256/Categoryslider_Fashion_2024_yauwgr.webp 256w, https://asset.action.com/image/upload/t_digital_square/w_640/Categoryslider_Fashion_2024_yauwgr.webp 640w, https://asset.action.com/image/upload/t_digital_square/w_1080/Categoryslider_Fashion_2024_yauwgr.webp 1080w, https://asset.action.com/image/upload/t_digital_square/w_1920/Categoryslider_Fashion_2024_yauwgr.webp 1920w"
                            src="https://asset.action.com/image/upload/t_digital_square/w_1920/Categoryslider_Fashion_2024_yauwgr.webp"></span><span
                          id="_R_3d8binpfivjap5snpfivb_"
                          class="line-clamp-2 text-center break-words text-caption text-dark-blue-500 md:text-body-small font-medium"
                          data-testid="category-card-title">Moda</span></a></div>
                    <div class="w-(--itemWidth)"><a class="group flex flex-col gap-2" href="/pl-pl/c/sport/"
                        data-testid="category-card" aria-labelledby="_R_3l8binpfivjap5snpfivb_"><span
                          class="relative aspect-square w-full shrink-0 rounded-full overflow-clip"><img
                            data-testid="category-card-image" alt="" loading="lazy" decoding="async" data-nimg="fill"
                            class="object-contain object-center group-hover:scale-110 transition-all duration-300 h-full w-full"
                            style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent"
                            sizes="(min-width: 1280px) calc(1280px / 8), (min-width: 1024px) calc(100vw / 8), (min-width: 768px) calc(100vw / 6), (min-width: 640px) calc(100vw / 5), calc(100vw / 4)"
                            srcset="https://asset.action.com/image/upload/t_digital_square/w_128/Categoryslider_Health_2024_fc10ds.webp 128w, https://asset.action.com/image/upload/t_digital_square/w_256/Categoryslider_Health_2024_fc10ds.webp 256w, https://asset.action.com/image/upload/t_digital_square/w_640/Categoryslider_Health_2024_fc10ds.webp 640w, https://asset.action.com/image/upload/t_digital_square/w_1080/Categoryslider_Health_2024_fc10ds.webp 1080w, https://asset.action.com/image/upload/t_digital_square/w_1920/Categoryslider_Health_2024_fc10ds.webp 1920w"
                            src="https://asset.action.com/image/upload/t_digital_square/w_1920/Categoryslider_Health_2024_fc10ds.webp"></span><span
                          id="_R_3l8binpfivjap5snpfivb_"
                          class="line-clamp-2 text-center break-words text-caption text-dark-blue-500 md:text-body-small font-medium"
                          data-testid="category-card-title">Sport</span></a></div>
                    <div class="w-(--itemWidth)"><a class="group flex flex-col gap-2" href="/pl-pl/c/zwierzta/"
                        data-testid="category-card" aria-labelledby="_R_3t8binpfivjap5snpfivb_"><span
                          class="relative aspect-square w-full shrink-0 rounded-full overflow-clip"><img
                            data-testid="category-card-image" alt="" loading="lazy" decoding="async" data-nimg="fill"
                            class="object-contain object-center group-hover:scale-110 transition-all duration-300 h-full w-full"
                            style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent"
                            sizes="(min-width: 1280px) calc(1280px / 8), (min-width: 1024px) calc(100vw / 8), (min-width: 768px) calc(100vw / 6), (min-width: 640px) calc(100vw / 5), calc(100vw / 4)"
                            srcset="https://asset.action.com/image/upload/t_digital_square/w_128/Categoryslider_Pets_2024_qbjxku.webp 128w, https://asset.action.com/image/upload/t_digital_square/w_256/Categoryslider_Pets_2024_qbjxku.webp 256w, https://asset.action.com/image/upload/t_digital_square/w_640/Categoryslider_Pets_2024_qbjxku.webp 640w, https://asset.action.com/image/upload/t_digital_square/w_1080/Categoryslider_Pets_2024_qbjxku.webp 1080w, https://asset.action.com/image/upload/t_digital_square/w_1920/Categoryslider_Pets_2024_qbjxku.webp 1920w"
                            src="https://asset.action.com/image/upload/t_digital_square/w_1920/Categoryslider_Pets_2024_qbjxku.webp"></span><span
                          id="_R_3t8binpfivjap5snpfivb_"
                          class="line-clamp-2 text-center break-words text-caption text-dark-blue-500 md:text-body-small font-medium"
                          data-testid="category-card-title">Zwierzęta</span></a></div>
                  </div>
                  <div class="w-4 shrink-0 lg:w-0 pointer-fine:w-0"></div>
                </div>
              </div>
              <div class="pointer-events-none absolute inset-0"><button type="button" aria-label="Następna"
                  class="absolute -translate-y-1/2 top-[calc(var(--isSingleRow)*var(--itemWidth)/2+var(--isMultiRow)*50%)] bg-neutral-0 shadow-overlay-button rounded-full p-4 hidden lg:block pointer-fine:block transition duration-200 hover:scale-[1.15] -right-2 lg:-right-4 xl:-right-7 pointer-events-auto"
                  data-testid="carousel-next-navigation-button" onclick="nextCarouselPage(this)"><svg aria-hidden="true"
                    data-testid="ArrowRightMd" xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none"
                    viewBox="0 0 24 24">
                    <path fill="#001489"
                      d="M13 19a1 1 0 0 1-.707-1.707L16.586 13H5a1 1 0 0 1 0-2h11.586l-4.293-4.293a1 1 0 1 1 1.414-1.414l6 6a1 1 0 0 1 .293.704v.006a1 1 0 0 1-.293.704l-6 6A1 1 0 0 1 13 19">
                    </path>
                  </svg></button></div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <section class="bg-neutral-50 pt-6 md:pt-8 pb-6 md:pb-8" aria-label="Promocja Tygodnia"
    data-testid="cms-weekdeals-product-carousel">
    <div class="relative flex w-full flex-col px-4 lg:px-8">
      <div class="mx-auto w-full max-w-7xl">
        <div class="flex flex-col gap-4 md:gap-6"
          style="--rowsXl:1;--columnsXl:5;--rowsLg:1;--columnsLg:4;--rowsMd:1;--columnsMd:3;--rowsSm:1;--columnsSm:3;--rowsDefault:1;--columnsDefault:2">
          <div class="flex justify-between">
            <div class="flex flex-col gap-1">
              <h2
                class="line-clamp-2 text-dark-blue-500 font-bold tracking-[-1px] text-[22px] leading-[30px] md:text-[28px] md:leading-[36px]"
                data-testid="title-view-title">Promocja Tygodnia</h2>
              <p class="line-clamp-5 text-base leading-5 font-normal text-neutral-700" data-testid="title-view-subtitle">
                05.11 – 11.11</p>
            </div>
          </div>
          <div class="@container relative" style="--numberOfPages: 2.25; --currentPage: 0;">
            <div
              class="xl:[--columns:var(--columnsXl)] xl:[--rows:var(--rowsXl)] lg:[--columns:var(--columnsLg)] lg:[--rows:var(--rowsLg)] md:[--columns:var(--columnsMd)] md:[--rows:var(--rowsMd)] sm:[--columns:var(--columnsSm)] sm:[--rows:var(--rowsSm)] [--columns:var(--columnsDefault)] [--rows:var(--rowsDefault)] [--itemSpacing:8px] md:[--itemSpacing:16px] [--lastItemPartial:16px] sm:[--lastItemPartial:32px] [--itemWidth:calc((100cqw-var(--itemSpacing)*var(--columns)-var(--lastItemPartial))/var(--columns))] lg:[--itemWidth:calc((100cqw-var(--itemSpacing)*(var(--columns)-1))/var(--columns))] pointer-fine:[--itemWidth:calc((100cqw-var(--itemSpacing)*(var(--columns)-1))/var(--columns))] [--isMultiRow:calc(min(1,var(--rows)-1))] [--isSingleRow:calc(1-var(--isMultiRow))]">
              <div class="pointer-events-none absolute inset-0 z-1">
                <button type="button" aria-label="Poprzednia"
                  class="custom-invisible absolute -translate-y-1/2 top-1/2 bg-neutral-0 shadow-overlay-button rounded-full p-4 hidden lg:block pointer-fine:block transition duration-200 hover:scale-[1.15] -left-2 lg:-left-4 xl:-left-7 pointer-events-auto"
                  data-testid="carousel-previous-navigation-button" onclick="prevCarouselPage(this)">
                  <svg aria-hidden="true" data-testid="ArrowLeftMd" xmlns="http://www.w3.org/2000/svg" width="24"
                    height="24" fill="none" viewBox="0 0 24 24">
                    <path fill="#001489"
                      d="M11 19a1 1 0 0 1-.707-.293l-6-6A1 1 0 0 1 4 12.003v-.006a1 1 0 0 1 .293-.704l6-6a1 1 0 1 1 1.414 1.414L7.414 11H19a1 1 0 0 1 0 2H7.414l4.293 4.293A1 1 0 0 1 11 19">
                    </path>
                  </svg></button>
              </div>
              <div
                class="no-scrollbar flex overflow-auto lg:overflow-clip pointer-fine:overflow-clip lg:[overflow-clip-margin:2px] pointer-fine:[overflow-clip-margin:2px] -mx-4 lg:mx-0 pointer-fine:mx-0">
                <div class="relative flex transition-transform duration-600 ease-in-out"
                  style="transform: translateX(calc((100cqw + ((100% - (100cqw * var(--numberOfPages)))) / (var(--numberOfPages) - 1)) * var(--currentPage) * -1));">
                  <div class="w-4 shrink-0 lg:w-0 pointer-fine:w-0"></div>
                  <div class="grid grid-flow-col grid-rows-[repeat(var(--rows),minmax(0,auto))] gap-(--itemSpacing)">
                    <div class="w-(--itemWidth)"><a
                        class="group flex h-full w-full flex-col items-start gap-2 overflow-hidden bg-orange-300 xs:p-4 p-3 border-neutral-150 border"
                        href="/pl-pl/gazetka-action/" data-testid="promotion-card"
                        aria-labelledby="_R_1l4jinpfivjap5snpfivb_"><span
                          class="relative aspect-square max-h-[190px] shrink-1 transition-all duration-300 group-hover:scale-105 md:max-h-[230px] mx-auto mt-0 aspect-square w-full object-contain"><img
                            data-testid="promotion-card-image" alt="" loading="lazy" decoding="async" data-nimg="fill"
                            class="object-contain PromotionCard_floatingImage__5_Vnr h-full w-full"
                            style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent"
                            sizes="(min-width: 1280px) calc(1280px / 5), (min-width: 1024px) calc(100vw / 4), (min-width: 768px) calc(100vw / 3), (min-width: 640px) calc(100vw / 3), calc(100vw / 2)"
                            srcset="https://asset.action.com/image/upload/t_digital_square/w_128/Folder_Icon_PL_tpa5jd.webp 128w, https://asset.action.com/image/upload/t_digital_square/w_256/Folder_Icon_PL_tpa5jd.webp 256w, https://asset.action.com/image/upload/t_digital_square/w_640/Folder_Icon_PL_tpa5jd.webp 640w, https://asset.action.com/image/upload/t_digital_square/w_1080/Folder_Icon_PL_tpa5jd.webp 1080w, https://asset.action.com/image/upload/t_digital_square/w_1920/Folder_Icon_PL_tpa5jd.webp 1920w"
                            src="https://asset.action.com/image/upload/t_digital_square/w_1920/Folder_Icon_PL_tpa5jd.webp"></span><span
                          id="_R_1l4jinpfivjap5snpfivb_"
                          class="text-dark-blue-500 xs:text-[16px] xs:leading-5 grow text-sm leading-[18px] font-bold break-words">Sprawdź
                          oferty tygodnia</span><span
                          class="relative box-border flex max-w-full items-center justify-center gap-1 rounded-full text-base font-medium py-2.5 px-5 bg-dark-blue-500 text-neutral-0 hover:bg-dark-blue-300 active:bg-dark-blue-700 focus:bg-dark-blue-300 focus:outline focus:outline-2 focus:outline-dark-blue-500 focus:outline-offset-2 disabled:bg-neutral-150 disabled:text-neutral-700 disabled:outline disabled:outline-1 disabled:outline-neutral mt-2 hidden shrink-0 md:block lg:mt-4"><span
                            class="truncate px-1">Czytaj więcej</span></span><button type="button"
                          class="relative box-border flex max-w-full items-center justify-center gap-1 rounded-full text-base font-medium py-2.5 px-2.5 bg-dark-blue-500 text-neutral-0 hover:bg-dark-blue-300 active:bg-dark-blue-700 focus:bg-dark-blue-300 focus:outline focus:outline-2 focus:outline-dark-blue-500 focus:outline-offset-2 disabled:bg-neutral-150 disabled:text-neutral-700 disabled:outline disabled:outline-1 disabled:outline-neutral block md:hidden"
                          aria-label="Czytaj więcej"><span class="shrink-0"
                            style="display:block;width:24px;height:24px"><svg aria-hidden="true"
                              data-testid="ArrowRightMd" class="shrink-0" xmlns="http://www.w3.org/2000/svg" width="24"
                              height="24" fill="currentColor" viewBox="0 0 24 24">
                              <path
                                d="M13 19a1 1 0 0 1-.707-1.707L16.586 13H5a1 1 0 0 1 0-2h11.586l-4.293-4.293a1 1 0 1 1 1.414-1.414l6 6a1 1 0 0 1 .293.704v.006a1 1 0 0 1-.293.704l-6 6A1 1 0 0 1 13 19">
                              </path>
                            </svg></span></button></a></div>
                    <div class="w-(--itemWidth)">
                      <div class="border-neutral-150 border bg-neutral-0 relative h-full w-full"
                        data-testid="product-card" data-content-king="product-card" analytics="[object Object]"><a
                          class="group relative flex h-full w-full flex-col p-3 xs:p-4"
                          href="/pl-pl/p/3217516/wafelki-jajeczne-cookies-crumbs-orzech-laskowy/"
                          data-testid="product-card-link"><span
                            class="xs:max-h-[180px] relative aspect-square w-full md:max-h-[230px]"><img
                              data-testid="product-card-image" alt="" loading="lazy" decoding="async" data-nimg="fill"
                              class="object-contain object-center py-2 transition-transform duration-250 group-hover:scale-105 md:py-4 h-full w-full"
                              style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent"
                              sizes="(min-width: 1280px) calc(1280px / 5), (min-width: 1024px) calc(100vw / 4), (min-width: 768px) calc(100vw / 3), (min-width: 640px) calc(100vw / 3), calc(100vw / 2)"
                              srcset="https://asset.action.com/image/upload/t_digital_product_image/w_128/3217516_8713627082466-111_01_fv9x3z.webp 128w, https://asset.action.com/image/upload/t_digital_product_image/w_256/3217516_8713627082466-111_01_fv9x3z.webp 256w, https://asset.action.com/image/upload/t_digital_product_image/w_640/3217516_8713627082466-111_01_fv9x3z.webp 640w, https://asset.action.com/image/upload/t_digital_product_image/w_1080/3217516_8713627082466-111_01_fv9x3z.webp 1080w, https://asset.action.com/image/upload/t_digital_product_image/w_1920/3217516_8713627082466-111_01_fv9x3z.webp 1920w"
                              src="https://asset.action.com/image/upload/t_digital_product_image/w_1920/3217516_8713627082466-111_01_fv9x3z.webp"><span
                              class="absolute bottom-0 flex flex-col gap-2"></span></span><span
                            class="mt-2 mb-3 flex grow flex-col gap-1 leading-tight sm:mb-4"><span
                              class="xs:text-[16px] xs:leading-5 text-sm leading-[18px] font-medium text-dark-blue-500 line-clamp-2 break-words"
                              data-testid="product-card-title">Wafelki jajeczne Cookies &amp; Crumbs Orzech
                              laskowy</span><span
                              class="max-h-fit text-sm leading-[18px] font-normal line-clamp-2 grow break-words text-neutral-700"
                              data-testid="product-card-description">270 g</span></span><span
                            aria-label="6,95&nbsp;zł 25,74&nbsp;zł/kg" class="flex flex-col"><span
                              data-testid="product-card-price-description"
                              class="mb-1 block w-max text-xs leading-[12px] text-neutral-700">25,74&nbsp;zł/kg</span><span
                              class="flex items-start text-orange-500"><span data-testid="product-card-price-whole"
                                class="font-bold tracking-[1px] text-[40px] leading-[28px] md:text-[48px] md:leading-[33px]">6</span><span
                                class="inline-flex items-baseline"><span data-testid="product-card-price-fractional"
                                  class="font-bold tracking-[1px] text-[20px] leading-[14px] md:text-[28px] md:leading-[19px]">95</span></span></span></span><span
                            class="flex leading-none text-neutral-700 mt-1 flex-row items-baseline self-baseline"
                            data-testid="product-card-price-discount"><span class="flex items-center"
                              data-testid="product-card-price-original-amount"><span
                                class="text-center text-[12px] font-normal line-through">7,88&nbsp;zł</span><span
                                class="pl-0.5 text-xs">*</span></span><span
                              class="ml-1 rounded border border-neutral-700 px-[2px] py-px text-xs leading-[12px] font-medium"
                              data-testid="product-card-price-discount-percentage">-11%</span></span><span
                            class="mt-2 flex text-xs font-normal text-neutral-700"
                            data-testid="product-card-price-discount-footnote"><span class="italic">*
                              <!-- -->Najniższa cena z 30 dni przed obniżką
                            </span></span><span class="absolute top-0 left-0 flex flex-col gap-0.5"><span
                              class="flex overflow-hidden h-[22px] sm:h-[26px] text-neutral-0 text-[12px] leading-[14px] font-bold sm:text-sm sm:leading-[18px]"
                              aria-labelledby="_R_76il4jinpfivjap5snpfivb_" data-testid="product-tag"><span
                                class="flex w-fit items-center pr-1 pl-1.5 sm:pr-1.5 sm:pl-2 bg-orange-500"><span
                                  id="_R_76il4jinpfivjap5snpfivb_">Promocja tygodnia</span></span><span
                                class="w-[8px]"><span class="-mr-px block h-full -translate-x-px bg-orange-500"
                                  style="clip-path:polygon(0 0, 100% 0, 1px 100%, 0 100%)"></span></span></span></span></a><button
                          type="button" data-testid="favorite-button" class="absolute top-0 right-0 p-2"
                          aria-label="Dodaj do ulubionych"><svg aria-hidden="true" data-testid="Heart01"
                            xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                            <path fill="#8593a3"
                              d="M12 21a1 1 0 0 1-.486-.126C11.126 20.658 2 15.514 2 9c0-3.665 2.218-5.425 4.293-5.849 2.171-.44 4.328.402 5.707 2.113 1.38-1.712 3.537-2.552 5.707-2.113C19.782 3.575 22 5.335 22 9.001c0 6.513-9.126 11.657-9.515 11.873A1 1 0 0 1 12 21M7.4 5.041q-.368 0-.707.07C5.007 5.456 4 6.91 4 9.001c0 4.584 6.197 8.728 8 9.836 1.804-1.108 8-5.252 8-9.837 0-2.09-1.007-3.544-2.693-3.889-1.482-.3-3.479.346-4.387 2.475a1 1 0 0 1-1.84 0C10.31 5.78 8.755 5.04 7.4 5.04">
                            </path>
                          </svg></button></div>
                    </div>
                    <div class="w-(--itemWidth)">
                      <div class="border-neutral-150 border bg-neutral-0 relative h-full w-full"
                        data-testid="product-card" data-content-king="product-card" analytics="[object Object]"><a
                          class="group relative flex h-full w-full flex-col p-3 xs:p-4"
                          href="/pl-pl/p/2554979/rekawiczki-thermolate/" data-testid="product-card-link"><span
                            class="xs:max-h-[180px] relative aspect-square w-full md:max-h-[230px]"><img
                              data-testid="product-card-image" alt="" loading="lazy" decoding="async" data-nimg="fill"
                              class="object-contain object-center py-2 transition-transform duration-250 group-hover:scale-105 md:py-4 h-full w-full"
                              style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent"
                              sizes="(min-width: 1280px) calc(1280px / 5), (min-width: 1024px) calc(100vw / 4), (min-width: 768px) calc(100vw / 3), (min-width: 640px) calc(100vw / 3), calc(100vw / 2)"
                              srcset="https://asset.action.com/image/upload/t_digital_product_image/w_128/2554979_8720955509114-110_01_cjhoev.webp 128w, https://asset.action.com/image/upload/t_digital_product_image/w_256/2554979_8720955509114-110_01_cjhoev.webp 256w, https://asset.action.com/image/upload/t_digital_product_image/w_640/2554979_8720955509114-110_01_cjhoev.webp 640w, https://asset.action.com/image/upload/t_digital_product_image/w_1080/2554979_8720955509114-110_01_cjhoev.webp 1080w, https://asset.action.com/image/upload/t_digital_product_image/w_1920/2554979_8720955509114-110_01_cjhoev.webp 1920w"
                              src="https://asset.action.com/image/upload/t_digital_product_image/w_1920/2554979_8720955509114-110_01_cjhoev.webp"><span
                              class="absolute bottom-0 flex flex-col gap-2"></span></span><span
                            class="mt-2 mb-3 flex grow flex-col gap-1 leading-tight sm:mb-4"><span
                              class="xs:text-[16px] xs:leading-5 text-sm leading-[18px] font-medium text-dark-blue-500 line-clamp-2 break-words"
                              data-testid="product-card-title">Rękawiczki Thermolate</span><span
                              class="max-h-fit text-sm leading-[18px] font-normal line-clamp-2 grow break-words text-neutral-700"
                              data-testid="product-card-description">Rozmiary S-M</span></span><span
                            aria-label="8,95&nbsp;zł 8,95&nbsp;zł/szt." class="flex flex-col"><span
                              data-testid="product-card-price-description"
                              class="mb-1 block w-max text-xs leading-[12px] text-neutral-700">8,95&nbsp;zł/szt.</span><span
                              class="flex items-start text-orange-500"><span data-testid="product-card-price-whole"
                                class="font-bold tracking-[1px] text-[40px] leading-[28px] md:text-[48px] md:leading-[33px]">8</span><span
                                class="inline-flex items-baseline"><span data-testid="product-card-price-fractional"
                                  class="font-bold tracking-[1px] text-[20px] leading-[14px] md:text-[28px] md:leading-[19px]">95</span></span></span></span><span
                            class="flex leading-none text-neutral-700 mt-1 flex-row items-baseline self-baseline"
                            data-testid="product-card-price-discount"><span class="flex items-center"
                              data-testid="product-card-price-original-amount"><span
                                class="text-center text-[12px] font-normal line-through">12,95&nbsp;zł</span><span
                                class="pl-0.5 text-xs">*</span></span><span
                              class="ml-1 rounded border border-neutral-700 px-[2px] py-px text-xs leading-[12px] font-medium"
                              data-testid="product-card-price-discount-percentage">-30%</span></span><span
                            class="mt-2 flex text-xs font-normal text-neutral-700"
                            data-testid="product-card-price-discount-footnote"><span class="italic">*
                              <!-- -->Najniższa cena z 30 dni przed obniżką
                            </span></span><span class="absolute top-0 left-0 flex flex-col gap-0.5"><span
                              class="flex overflow-hidden h-[22px] sm:h-[26px] text-neutral-0 text-[12px] leading-[14px] font-bold sm:text-sm sm:leading-[18px]"
                              aria-labelledby="_R_76jl4jinpfivjap5snpfivb_" data-testid="product-tag"><span
                                class="flex w-fit items-center pr-1 pl-1.5 sm:pr-1.5 sm:pl-2 bg-orange-500"><span
                                  id="_R_76jl4jinpfivjap5snpfivb_">Promocja tygodnia</span></span><span
                                class="w-[8px]"><span class="-mr-px block h-full -translate-x-px bg-orange-500"
                                  style="clip-path:polygon(0 0, 100% 0, 1px 100%, 0 100%)"></span></span></span></span></a><button
                          type="button" data-testid="favorite-button" class="absolute top-0 right-0 p-2"
                          aria-label="Dodaj do ulubionych"><svg aria-hidden="true" data-testid="Heart01"
                            xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                            <path fill="#8593a3"
                              d="M12 21a1 1 0 0 1-.486-.126C11.126 20.658 2 15.514 2 9c0-3.665 2.218-5.425 4.293-5.849 2.171-.44 4.328.402 5.707 2.113 1.38-1.712 3.537-2.552 5.707-2.113C19.782 3.575 22 5.335 22 9.001c0 6.513-9.126 11.657-9.515 11.873A1 1 0 0 1 12 21M7.4 5.041q-.368 0-.707.07C5.007 5.456 4 6.91 4 9.001c0 4.584 6.197 8.728 8 9.836 1.804-1.108 8-5.252 8-9.837 0-2.09-1.007-3.544-2.693-3.889-1.482-.3-3.479.346-4.387 2.475a1 1 0 0 1-1.84 0C10.31 5.78 8.755 5.04 7.4 5.04">
                            </path>
                          </svg></button></div>
                    </div>
                    <div class="w-(--itemWidth)">
                      <div class="border-neutral-150 border bg-neutral-0 relative h-full w-full"
                        data-testid="product-card" data-content-king="product-card" analytics="[object Object]"><a
                          class="group relative flex h-full w-full flex-col p-3 xs:p-4"
                          href="/pl-pl/p/3218319/obracajacy-sie-czubek-na-choinke/" data-testid="product-card-link"><span
                            class="xs:max-h-[180px] relative aspect-square w-full md:max-h-[230px]"><img
                              data-testid="product-card-image" alt="" loading="lazy" decoding="async" data-nimg="fill"
                              class="object-contain object-center py-2 transition-transform duration-250 group-hover:scale-105 md:py-4 h-full w-full"
                              style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent"
                              sizes="(min-width: 1280px) calc(1280px / 5), (min-width: 1024px) calc(100vw / 4), (min-width: 768px) calc(100vw / 3), (min-width: 640px) calc(100vw / 3), calc(100vw / 2)"
                              srcset="https://asset.action.com/image/upload/t_digital_product_image/w_128/3218319_8718964252985-110_03_rcygew.webp 128w, https://asset.action.com/image/upload/t_digital_product_image/w_256/3218319_8718964252985-110_03_rcygew.webp 256w, https://asset.action.com/image/upload/t_digital_product_image/w_640/3218319_8718964252985-110_03_rcygew.webp 640w, https://asset.action.com/image/upload/t_digital_product_image/w_1080/3218319_8718964252985-110_03_rcygew.webp 1080w, https://asset.action.com/image/upload/t_digital_product_image/w_1920/3218319_8718964252985-110_03_rcygew.webp 1920w"
                              src="https://asset.action.com/image/upload/t_digital_product_image/w_1920/3218319_8718964252985-110_03_rcygew.webp"><span
                              class="absolute bottom-0 flex flex-col gap-2"></span></span><span
                            class="mt-2 mb-3 flex grow flex-col gap-1 leading-tight sm:mb-4"><span
                              class="xs:text-[16px] xs:leading-5 text-sm leading-[18px] font-medium text-dark-blue-500 line-clamp-2 break-words"
                              data-testid="product-card-title">Obracający się czubek na choinkę</span><span
                              class="max-h-fit text-sm leading-[18px] font-normal line-clamp-2 grow break-words text-neutral-700"
                              data-testid="product-card-description">5 elementów | Różne warianty</span></span><span
                            aria-label="37,99&nbsp;zł 37,99&nbsp;zł/szt." class="flex flex-col"><span
                              data-testid="product-card-price-description"
                              class="mb-1 block w-max text-xs leading-[12px] text-neutral-700">37,99&nbsp;zł/szt.</span><span
                              class="flex items-start text-orange-500"><span data-testid="product-card-price-whole"
                                class="font-bold tracking-[1px] text-[40px] leading-[28px] md:text-[48px] md:leading-[33px]">37</span><span
                                class="inline-flex items-baseline"><span data-testid="product-card-price-fractional"
                                  class="font-bold tracking-[1px] text-[20px] leading-[14px] md:text-[28px] md:leading-[19px]">99</span></span></span></span><span
                            class="flex leading-none text-neutral-700 mt-1 flex-row items-baseline self-baseline"
                            data-testid="product-card-price-discount"><span class="flex items-center"
                              data-testid="product-card-price-original-amount"><span
                                class="text-center text-[12px] font-normal line-through">47,95&nbsp;zł</span><span
                                class="pl-0.5 text-xs">*</span></span><span
                              class="ml-1 rounded border border-neutral-700 px-[2px] py-px text-xs leading-[12px] font-medium"
                              data-testid="product-card-price-discount-percentage">-20%</span></span><span
                            class="mt-2 flex text-xs font-normal text-neutral-700"
                            data-testid="product-card-price-discount-footnote"><span class="italic">*
                              <!-- -->Najniższa cena z 30 dni przed obniżką
                            </span></span><span class="absolute top-0 left-0 flex flex-col gap-0.5"><span
                              class="flex overflow-hidden h-[22px] sm:h-[26px] text-neutral-0 text-[12px] leading-[14px] font-bold sm:text-sm sm:leading-[18px]"
                              aria-labelledby="_R_76kl4jinpfivjap5snpfivb_" data-testid="product-tag"><span
                                class="flex w-fit items-center pr-1 pl-1.5 sm:pr-1.5 sm:pl-2 bg-orange-500"><span
                                  id="_R_76kl4jinpfivjap5snpfivb_">Promocja tygodnia</span></span><span
                                class="w-[8px]"><span class="-mr-px block h-full -translate-x-px bg-orange-500"
                                  style="clip-path:polygon(0 0, 100% 0, 1px 100%, 0 100%)"></span></span></span></span></a><button
                          type="button" data-testid="favorite-button" class="absolute top-0 right-0 p-2"
                          aria-label="Dodaj do ulubionych"><svg aria-hidden="true" data-testid="Heart01"
                            xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                            <path fill="#8593a3"
                              d="M12 21a1 1 0 0 1-.486-.126C11.126 20.658 2 15.514 2 9c0-3.665 2.218-5.425 4.293-5.849 2.171-.44 4.328.402 5.707 2.113 1.38-1.712 3.537-2.552 5.707-2.113C19.782 3.575 22 5.335 22 9.001c0 6.513-9.126 11.657-9.515 11.873A1 1 0 0 1 12 21M7.4 5.041q-.368 0-.707.07C5.007 5.456 4 6.91 4 9.001c0 4.584 6.197 8.728 8 9.836 1.804-1.108 8-5.252 8-9.837 0-2.09-1.007-3.544-2.693-3.889-1.482-.3-3.479.346-4.387 2.475a1 1 0 0 1-1.84 0C10.31 5.78 8.755 5.04 7.4 5.04">
                            </path>
                          </svg></button></div>
                    </div>
                    <div class="w-(--itemWidth)">
                      <div class="border-neutral-150 border bg-neutral-0 relative h-full w-full"
                        data-testid="product-card" data-content-king="product-card" analytics="[object Object]"><a
                          class="group relative flex h-full w-full flex-col p-3 xs:p-4"
                          href="/pl-pl/p/3007233/opakowanie-zbiorcze-haribo-slodkie-lub-kwasne/"
                          data-testid="product-card-link"><span
                            class="xs:max-h-[180px] relative aspect-square w-full md:max-h-[230px]"><img
                              data-testid="product-card-image" alt="" loading="lazy" decoding="async" data-nimg="fill"
                              class="object-contain object-center py-2 transition-transform duration-250 group-hover:scale-105 md:py-4 h-full w-full"
                              style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent"
                              sizes="(min-width: 1280px) calc(1280px / 5), (min-width: 1024px) calc(100vw / 4), (min-width: 768px) calc(100vw / 3), (min-width: 640px) calc(100vw / 3), calc(100vw / 2)"
                              srcset="https://asset.action.com/image/upload/t_digital_product_image/w_128/36717208.webp 128w, https://asset.action.com/image/upload/t_digital_product_image/w_256/36717208.webp 256w, https://asset.action.com/image/upload/t_digital_product_image/w_640/36717208.webp 640w, https://asset.action.com/image/upload/t_digital_product_image/w_1080/36717208.webp 1080w, https://asset.action.com/image/upload/t_digital_product_image/w_1920/36717208.webp 1920w"
                              src="https://asset.action.com/image/upload/t_digital_product_image/w_1920/36717208.webp"><span
                              class="absolute bottom-0 flex flex-col gap-2"></span></span><span
                            class="mt-2 mb-3 flex grow flex-col gap-1 leading-tight sm:mb-4"><span
                              class="xs:text-[16px] xs:leading-5 text-sm leading-[18px] font-medium text-dark-blue-500 line-clamp-2 break-words"
                              data-testid="product-card-title">Opakowanie zbiorcze Haribo Słodkie lub kwaśne</span><span
                              class="max-h-fit text-sm leading-[18px] font-normal line-clamp-2 grow break-words text-neutral-700"
                              data-testid="product-card-description">350 g</span></span><span
                            aria-label="13,39&nbsp;zł 38,26&nbsp;zł/kg" class="flex flex-col"><span
                              data-testid="product-card-price-description"
                              class="mb-1 block w-max text-xs leading-[12px] text-neutral-700">38,26&nbsp;zł/kg</span><span
                              class="flex items-start text-orange-500"><span data-testid="product-card-price-whole"
                                class="font-bold tracking-[1px] text-[40px] leading-[28px] md:text-[48px] md:leading-[33px]">13</span><span
                                class="inline-flex items-baseline"><span data-testid="product-card-price-fractional"
                                  class="font-bold tracking-[1px] text-[20px] leading-[14px] md:text-[28px] md:leading-[19px]">39</span></span></span></span><span
                            class="flex leading-none text-neutral-700 mt-1 flex-row items-baseline self-baseline"
                            data-testid="product-card-price-discount"><span class="flex items-center"
                              data-testid="product-card-price-original-amount"><span
                                class="text-center text-[12px] font-normal line-through">15,79&nbsp;zł</span><span
                                class="pl-0.5 text-xs">*</span></span><span
                              class="ml-1 rounded border border-neutral-700 px-[2px] py-px text-xs leading-[12px] font-medium"
                              data-testid="product-card-price-discount-percentage">-15%</span></span><span
                            class="mt-2 flex text-xs font-normal text-neutral-700"
                            data-testid="product-card-price-discount-footnote"><span class="italic">*
                              <!-- -->Najniższa cena z 30 dni przed obniżką
                            </span></span><span class="absolute top-0 left-0 flex flex-col gap-0.5"><span
                              class="flex overflow-hidden h-[22px] sm:h-[26px] text-neutral-0 text-[12px] leading-[14px] font-bold sm:text-sm sm:leading-[18px]"
                              aria-labelledby="_R_76ll4jinpfivjap5snpfivb_" data-testid="product-tag"><span
                                class="flex w-fit items-center pr-1 pl-1.5 sm:pr-1.5 sm:pl-2 bg-orange-500"><span
                                  id="_R_76ll4jinpfivjap5snpfivb_">Promocja tygodnia</span></span><span
                                class="w-[8px]"><span class="-mr-px block h-full -translate-x-px bg-orange-500"
                                  style="clip-path:polygon(0 0, 100% 0, 1px 100%, 0 100%)"></span></span></span></span></a><button
                          type="button" data-testid="favorite-button" class="absolute top-0 right-0 p-2"
                          aria-label="Dodaj do ulubionych"><svg aria-hidden="true" data-testid="Heart01"
                            xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                            <path fill="#8593a3"
                              d="M12 21a1 1 0 0 1-.486-.126C11.126 20.658 2 15.514 2 9c0-3.665 2.218-5.425 4.293-5.849 2.171-.44 4.328.402 5.707 2.113 1.38-1.712 3.537-2.552 5.707-2.113C19.782 3.575 22 5.335 22 9.001c0 6.513-9.126 11.657-9.515 11.873A1 1 0 0 1 12 21M7.4 5.041q-.368 0-.707.07C5.007 5.456 4 6.91 4 9.001c0 4.584 6.197 8.728 8 9.836 1.804-1.108 8-5.252 8-9.837 0-2.09-1.007-3.544-2.693-3.889-1.482-.3-3.479.346-4.387 2.475a1 1 0 0 1-1.84 0C10.31 5.78 8.755 5.04 7.4 5.04">
                            </path>
                          </svg></button></div>
                    </div>
                    <div class="w-(--itemWidth)">
                      <div class="border-neutral-150 border bg-neutral-0 relative h-full w-full"
                        data-testid="product-card" data-content-king="product-card" analytics="[object Object]"><a
                          class="group relative flex h-full w-full flex-col p-3 xs:p-4"
                          href="/pl-pl/p/3207853/grzejnik-konwektorowy-lsc-smart-connect/"
                          data-testid="product-card-link"><span
                            class="xs:max-h-[180px] relative aspect-square w-full md:max-h-[230px]"><img
                              data-testid="product-card-image" alt="" loading="lazy" decoding="async" data-nimg="fill"
                              class="object-contain object-center py-2 transition-transform duration-250 group-hover:scale-105 md:py-4 h-full w-full"
                              style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent"
                              sizes="(min-width: 1280px) calc(1280px / 5), (min-width: 1024px) calc(100vw / 4), (min-width: 768px) calc(100vw / 3), (min-width: 640px) calc(100vw / 3), calc(100vw / 2)"
                              srcset="https://asset.action.com/image/upload/t_digital_product_image/w_128/3207853_8712879164838-112_01_dx4jch.webp 128w, https://asset.action.com/image/upload/t_digital_product_image/w_256/3207853_8712879164838-112_01_dx4jch.webp 256w, https://asset.action.com/image/upload/t_digital_product_image/w_640/3207853_8712879164838-112_01_dx4jch.webp 640w, https://asset.action.com/image/upload/t_digital_product_image/w_1080/3207853_8712879164838-112_01_dx4jch.webp 1080w, https://asset.action.com/image/upload/t_digital_product_image/w_1920/3207853_8712879164838-112_01_dx4jch.webp 1920w"
                              src="https://asset.action.com/image/upload/t_digital_product_image/w_1920/3207853_8712879164838-112_01_dx4jch.webp"><span
                              class="absolute bottom-0 flex flex-col gap-2"></span></span><span
                            class="mt-2 mb-3 flex grow flex-col gap-1 leading-tight sm:mb-4"><span
                              class="xs:text-[16px] xs:leading-5 text-sm leading-[18px] font-medium text-dark-blue-500 line-clamp-2 break-words"
                              data-testid="product-card-title">Grzejnik konwektorowy LSC Smart Connect</span><span
                              class="max-h-fit text-sm leading-[18px] font-normal line-clamp-2 grow break-words text-neutral-700"
                              data-testid="product-card-description">2000 W</span></span><span
                            aria-label="219,99&nbsp;zł 219,99&nbsp;zł/szt." class="flex flex-col"><span
                              data-testid="product-card-price-description"
                              class="mb-1 block w-max text-xs leading-[12px] text-neutral-700">219,99&nbsp;zł/szt.</span><span
                              class="flex items-start text-orange-500"><span data-testid="product-card-price-whole"
                                class="font-bold tracking-[1px] text-[40px] leading-[28px] md:text-[48px] md:leading-[33px]">219</span><span
                                class="inline-flex items-baseline"><span data-testid="product-card-price-fractional"
                                  class="font-bold tracking-[1px] text-[20px] leading-[14px] md:text-[28px] md:leading-[19px]">99</span></span></span></span><span
                            class="flex leading-none text-neutral-700 mt-1 flex-row items-baseline self-baseline"
                            data-testid="product-card-price-discount"><span class="flex items-center"
                              data-testid="product-card-price-original-amount"><span
                                class="text-center text-[12px] font-normal line-through">289,99&nbsp;zł</span><span
                                class="pl-0.5 text-xs">*</span></span><span
                              class="ml-1 rounded border border-neutral-700 px-[2px] py-px text-xs leading-[12px] font-medium"
                              data-testid="product-card-price-discount-percentage">-24%</span></span><span
                            class="mt-2 flex text-xs font-normal text-neutral-700"
                            data-testid="product-card-price-discount-footnote"><span class="italic">*
                              <!-- -->Najniższa cena z 30 dni przed obniżką
                            </span></span><span class="absolute top-0 left-0 flex flex-col gap-0.5"><span
                              class="flex overflow-hidden h-[22px] sm:h-[26px] text-neutral-0 text-[12px] leading-[14px] font-bold sm:text-sm sm:leading-[18px]"
                              aria-labelledby="_R_76ml4jinpfivjap5snpfivb_" data-testid="product-tag"><span
                                class="flex w-fit items-center pr-1 pl-1.5 sm:pr-1.5 sm:pl-2 bg-orange-500"><span
                                  id="_R_76ml4jinpfivjap5snpfivb_">Promocja tygodnia</span></span><span
                                class="w-[8px]"><span class="-mr-px block h-full -translate-x-px bg-orange-500"
                                  style="clip-path:polygon(0 0, 100% 0, 1px 100%, 0 100%)"></span></span></span></span></a><button
                          type="button" data-testid="favorite-button" class="absolute top-0 right-0 p-2"
                          aria-label="Dodaj do ulubionych"><svg aria-hidden="true" data-testid="Heart01"
                            xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                            <path fill="#8593a3"
                              d="M12 21a1 1 0 0 1-.486-.126C11.126 20.658 2 15.514 2 9c0-3.665 2.218-5.425 4.293-5.849 2.171-.44 4.328.402 5.707 2.113 1.38-1.712 3.537-2.552 5.707-2.113C19.782 3.575 22 5.335 22 9.001c0 6.513-9.126 11.657-9.515 11.873A1 1 0 0 1 12 21M7.4 5.041q-.368 0-.707.07C5.007 5.456 4 6.91 4 9.001c0 4.584 6.197 8.728 8 9.836 1.804-1.108 8-5.252 8-9.837 0-2.09-1.007-3.544-2.693-3.889-1.482-.3-3.479.346-4.387 2.475a1 1 0 0 1-1.84 0C10.31 5.78 8.755 5.04 7.4 5.04">
                            </path>
                          </svg></button></div>
                    </div>
                    <div class="w-(--itemWidth)">
                      <div class="border-neutral-150 border bg-neutral-0 relative h-full w-full"
                        data-testid="product-card" data-content-king="product-card" analytics="[object Object]"><a
                          class="group relative flex h-full w-full flex-col p-3 xs:p-4"
                          href="/pl-pl/p/3218152/kamera-ptz-zasilana-energia-sloneczna-lsc-smart-connect/"
                          data-testid="product-card-link"><span
                            class="xs:max-h-[180px] relative aspect-square w-full md:max-h-[230px]"><img
                              data-testid="product-card-image" alt="" loading="lazy" decoding="async" data-nimg="fill"
                              class="object-contain object-center py-2 transition-transform duration-250 group-hover:scale-105 md:py-4 h-full w-full"
                              style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent"
                              sizes="(min-width: 1280px) calc(1280px / 5), (min-width: 1024px) calc(100vw / 4), (min-width: 768px) calc(100vw / 3), (min-width: 640px) calc(100vw / 3), calc(100vw / 2)"
                              srcset="https://asset.action.com/image/upload/t_digital_product_image/w_128/3218152_8712879164852-111_01_ilrggp.webp 128w, https://asset.action.com/image/upload/t_digital_product_image/w_256/3218152_8712879164852-111_01_ilrggp.webp 256w, https://asset.action.com/image/upload/t_digital_product_image/w_640/3218152_8712879164852-111_01_ilrggp.webp 640w, https://asset.action.com/image/upload/t_digital_product_image/w_1080/3218152_8712879164852-111_01_ilrggp.webp 1080w, https://asset.action.com/image/upload/t_digital_product_image/w_1920/3218152_8712879164852-111_01_ilrggp.webp 1920w"
                              src="https://asset.action.com/image/upload/t_digital_product_image/w_1920/3218152_8712879164852-111_01_ilrggp.webp"><span
                              class="absolute bottom-0 flex flex-col gap-2"></span></span><span
                            class="mt-2 mb-3 flex grow flex-col gap-1 leading-tight sm:mb-4"><span
                              class="xs:text-[16px] xs:leading-5 text-sm leading-[18px] font-medium text-dark-blue-500 line-clamp-2 break-words"
                              data-testid="product-card-title">Kamera PTZ zasilana energią słoneczną LSC Smart
                              Connect</span><span
                              class="max-h-fit text-sm leading-[18px] font-normal line-clamp-2 grow break-words text-neutral-700"
                              data-testid="product-card-description">1296p HD</span></span><span
                            aria-label="134,99&nbsp;zł 134,99&nbsp;zł/szt." class="flex flex-col"><span
                              data-testid="product-card-price-description"
                              class="mb-1 block w-max text-xs leading-[12px] text-neutral-700">134,99&nbsp;zł/szt.</span><span
                              class="flex items-start text-orange-500"><span data-testid="product-card-price-whole"
                                class="font-bold tracking-[1px] text-[40px] leading-[28px] md:text-[48px] md:leading-[33px]">134</span><span
                                class="inline-flex items-baseline"><span data-testid="product-card-price-fractional"
                                  class="font-bold tracking-[1px] text-[20px] leading-[14px] md:text-[28px] md:leading-[19px]">99</span></span></span></span><span
                            class="flex leading-none text-neutral-700 mt-1 flex-row items-baseline self-baseline"
                            data-testid="product-card-price-discount"><span class="flex items-center"
                              data-testid="product-card-price-original-amount"><span
                                class="text-center text-[12px] font-normal line-through">169,90&nbsp;zł</span><span
                                class="pl-0.5 text-xs">*</span></span><span
                              class="ml-1 rounded border border-neutral-700 px-[2px] py-px text-xs leading-[12px] font-medium"
                              data-testid="product-card-price-discount-percentage">-20%</span></span><span
                            class="mt-2 flex text-xs font-normal text-neutral-700"
                            data-testid="product-card-price-discount-footnote"><span class="italic">*
                              <!-- -->Najniższa cena z 30 dni przed obniżką
                            </span></span><span class="absolute top-0 left-0 flex flex-col gap-0.5"><span
                              class="flex overflow-hidden h-[22px] sm:h-[26px] text-neutral-0 text-[12px] leading-[14px] font-bold sm:text-sm sm:leading-[18px]"
                              aria-labelledby="_R_76nl4jinpfivjap5snpfivb_" data-testid="product-tag"><span
                                class="flex w-fit items-center pr-1 pl-1.5 sm:pr-1.5 sm:pl-2 bg-orange-500"><span
                                  id="_R_76nl4jinpfivjap5snpfivb_">Promocja tygodnia</span></span><span
                                class="w-[8px]"><span class="-mr-px block h-full -translate-x-px bg-orange-500"
                                  style="clip-path:polygon(0 0, 100% 0, 1px 100%, 0 100%)"></span></span></span></span></a><button
                          type="button" data-testid="favorite-button" class="absolute top-0 right-0 p-2"
                          aria-label="Dodaj do ulubionych"><svg aria-hidden="true" data-testid="Heart01"
                            xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                            <path fill="#8593a3"
                              d="M12 21a1 1 0 0 1-.486-.126C11.126 20.658 2 15.514 2 9c0-3.665 2.218-5.425 4.293-5.849 2.171-.44 4.328.402 5.707 2.113 1.38-1.712 3.537-2.552 5.707-2.113C19.782 3.575 22 5.335 22 9.001c0 6.513-9.126 11.657-9.515 11.873A1 1 0 0 1 12 21M7.4 5.041q-.368 0-.707.07C5.007 5.456 4 6.91 4 9.001c0 4.584 6.197 8.728 8 9.836 1.804-1.108 8-5.252 8-9.837 0-2.09-1.007-3.544-2.693-3.889-1.482-.3-3.479.346-4.387 2.475a1 1 0 0 1-1.84 0C10.31 5.78 8.755 5.04 7.4 5.04">
                            </path>
                          </svg></button></div>
                    </div>
                    <div class="w-(--itemWidth)">
                      <div class="border-neutral-150 border bg-neutral-0 relative h-full w-full"
                        data-testid="product-card" data-content-king="product-card" analytics="[object Object]"><a
                          class="group relative flex h-full w-full flex-col p-3 xs:p-4" href="/pl-pl/p/3215097/widelce/"
                          data-testid="product-card-link"><span
                            class="xs:max-h-[180px] relative aspect-square w-full md:max-h-[230px]"><img
                              data-testid="product-card-image" alt="" loading="lazy" decoding="async" data-nimg="fill"
                              class="object-contain object-center py-2 transition-transform duration-250 group-hover:scale-105 md:py-4 h-full w-full"
                              style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent"
                              sizes="(min-width: 1280px) calc(1280px / 5), (min-width: 1024px) calc(100vw / 4), (min-width: 768px) calc(100vw / 3), (min-width: 640px) calc(100vw / 3), calc(100vw / 2)"
                              srcset="https://asset.action.com/image/upload/t_digital_product_image/w_128/3215097_8718964224685-110_01_p6uqiy.webp 128w, https://asset.action.com/image/upload/t_digital_product_image/w_256/3215097_8718964224685-110_01_p6uqiy.webp 256w, https://asset.action.com/image/upload/t_digital_product_image/w_640/3215097_8718964224685-110_01_p6uqiy.webp 640w, https://asset.action.com/image/upload/t_digital_product_image/w_1080/3215097_8718964224685-110_01_p6uqiy.webp 1080w, https://asset.action.com/image/upload/t_digital_product_image/w_1920/3215097_8718964224685-110_01_p6uqiy.webp 1920w"
                              src="https://asset.action.com/image/upload/t_digital_product_image/w_1920/3215097_8718964224685-110_01_p6uqiy.webp"><span
                              class="absolute bottom-0 flex flex-col gap-2"></span></span><span
                            class="mt-2 mb-3 flex grow flex-col gap-1 leading-tight sm:mb-4"><span
                              class="xs:text-[16px] xs:leading-5 text-sm leading-[18px] font-medium text-dark-blue-500 line-clamp-2 break-words"
                              data-testid="product-card-title">Widelce</span><span
                              class="max-h-fit text-sm leading-[18px] font-normal line-clamp-2 grow break-words text-neutral-700"
                              data-testid="product-card-description">4 sztuki</span></span><span
                            aria-label="4,95&nbsp;zł 1,24&nbsp;zł/szt." class="flex flex-col"><span
                              data-testid="product-card-price-description"
                              class="mb-1 block w-max text-xs leading-[12px] text-neutral-700">1,24&nbsp;zł/szt.</span><span
                              class="flex items-start text-orange-500"><span data-testid="product-card-price-whole"
                                class="font-bold tracking-[1px] text-[40px] leading-[28px] md:text-[48px] md:leading-[33px]">4</span><span
                                class="inline-flex items-baseline"><span data-testid="product-card-price-fractional"
                                  class="font-bold tracking-[1px] text-[20px] leading-[14px] md:text-[28px] md:leading-[19px]">95</span></span></span></span><span
                            class="flex leading-none text-neutral-700 mt-1 flex-row items-baseline self-baseline"
                            data-testid="product-card-price-discount"><span class="flex items-center"
                              data-testid="product-card-price-original-amount"><span
                                class="text-center text-[12px] font-normal line-through">6,49&nbsp;zł</span><span
                                class="pl-0.5 text-xs">*</span></span><span
                              class="ml-1 rounded border border-neutral-700 px-[2px] py-px text-xs leading-[12px] font-medium"
                              data-testid="product-card-price-discount-percentage">-23%</span></span><span
                            class="mt-2 flex text-xs font-normal text-neutral-700"
                            data-testid="product-card-price-discount-footnote"><span class="italic">*
                              <!-- -->Najniższa cena z 30 dni przed obniżką
                            </span></span><span class="absolute top-0 left-0 flex flex-col gap-0.5"><span
                              class="flex overflow-hidden h-[22px] sm:h-[26px] text-neutral-0 text-[12px] leading-[14px] font-bold sm:text-sm sm:leading-[18px]"
                              aria-labelledby="_R_76ol4jinpfivjap5snpfivb_" data-testid="product-tag"><span
                                class="flex w-fit items-center pr-1 pl-1.5 sm:pr-1.5 sm:pl-2 bg-orange-500"><span
                                  id="_R_76ol4jinpfivjap5snpfivb_">Promocja tygodnia</span></span><span
                                class="w-[8px]"><span class="-mr-px block h-full -translate-x-px bg-orange-500"
                                  style="clip-path:polygon(0 0, 100% 0, 1px 100%, 0 100%)"></span></span></span></span></a><button
                          type="button" data-testid="favorite-button" class="absolute top-0 right-0 p-2"
                          aria-label="Dodaj do ulubionych"><svg aria-hidden="true" data-testid="Heart01"
                            xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                            <path fill="#8593a3"
                              d="M12 21a1 1 0 0 1-.486-.126C11.126 20.658 2 15.514 2 9c0-3.665 2.218-5.425 4.293-5.849 2.171-.44 4.328.402 5.707 2.113 1.38-1.712 3.537-2.552 5.707-2.113C19.782 3.575 22 5.335 22 9.001c0 6.513-9.126 11.657-9.515 11.873A1 1 0 0 1 12 21M7.4 5.041q-.368 0-.707.07C5.007 5.456 4 6.91 4 9.001c0 4.584 6.197 8.728 8 9.836 1.804-1.108 8-5.252 8-9.837 0-2.09-1.007-3.544-2.693-3.889-1.482-.3-3.479.346-4.387 2.475a1 1 0 0 1-1.84 0C10.31 5.78 8.755 5.04 7.4 5.04">
                            </path>
                          </svg></button></div>
                    </div>
                    <div class="w-(--itemWidth)">
                      <div class="border-neutral-150 border bg-neutral-0 relative h-full w-full"
                        data-testid="product-card" data-content-king="product-card" analytics="[object Object]"><a
                          class="group relative flex h-full w-full flex-col p-3 xs:p-4"
                          href="/pl-pl/p/3204627/kolorowanka-paw-patrol/" data-testid="product-card-link"><span
                            class="xs:max-h-[180px] relative aspect-square w-full md:max-h-[230px]"><img
                              data-testid="product-card-image" alt="" loading="lazy" decoding="async" data-nimg="fill"
                              class="object-contain object-center py-2 transition-transform duration-250 group-hover:scale-105 md:py-4 h-full w-full"
                              style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent"
                              sizes="(min-width: 1280px) calc(1280px / 5), (min-width: 1024px) calc(100vw / 4), (min-width: 768px) calc(100vw / 3), (min-width: 640px) calc(100vw / 3), calc(100vw / 2)"
                              srcset="https://asset.action.com/image/upload/t_digital_product_image/w_128/20692429.webp 128w, https://asset.action.com/image/upload/t_digital_product_image/w_256/20692429.webp 256w, https://asset.action.com/image/upload/t_digital_product_image/w_640/20692429.webp 640w, https://asset.action.com/image/upload/t_digital_product_image/w_1080/20692429.webp 1080w, https://asset.action.com/image/upload/t_digital_product_image/w_1920/20692429.webp 1920w"
                              src="https://asset.action.com/image/upload/t_digital_product_image/w_1920/20692429.webp"><span
                              class="absolute bottom-0 flex flex-col gap-2"></span></span><span
                            class="mt-2 mb-3 flex grow flex-col gap-1 leading-tight sm:mb-4"><span
                              class="xs:text-[16px] xs:leading-5 text-sm leading-[18px] font-medium text-dark-blue-500 line-clamp-2 break-words"
                              data-testid="product-card-title">Kolorowanka Paw Patrol</span><span
                              class="max-h-fit text-sm leading-[18px] font-normal line-clamp-2 grow break-words text-neutral-700"
                              data-testid="product-card-description">Różne warianty</span></span><span
                            aria-label="3,59&nbsp;zł 3,59&nbsp;zł/szt." class="flex flex-col"><span
                              data-testid="product-card-price-description"
                              class="mb-1 block w-max text-xs leading-[12px] text-neutral-700">3,59&nbsp;zł/szt.</span><span
                              class="flex items-start text-orange-500"><span data-testid="product-card-price-whole"
                                class="font-bold tracking-[1px] text-[40px] leading-[28px] md:text-[48px] md:leading-[33px]">3</span><span
                                class="inline-flex items-baseline"><span data-testid="product-card-price-fractional"
                                  class="font-bold tracking-[1px] text-[20px] leading-[14px] md:text-[28px] md:leading-[19px]">59</span></span></span></span><span
                            class="flex leading-none text-neutral-700 mt-1 flex-row items-baseline self-baseline"
                            data-testid="product-card-price-discount"><span class="flex items-center"
                              data-testid="product-card-price-original-amount"><span
                                class="text-center text-[12px] font-normal line-through">4,49&nbsp;zł</span><span
                                class="pl-0.5 text-xs">*</span></span><span
                              class="ml-1 rounded border border-neutral-700 px-[2px] py-px text-xs leading-[12px] font-medium"
                              data-testid="product-card-price-discount-percentage">-20%</span></span><span
                            class="mt-2 flex text-xs font-normal text-neutral-700"
                            data-testid="product-card-price-discount-footnote"><span class="italic">*
                              <!-- -->Najniższa cena z 30 dni przed obniżką
                            </span></span><span class="absolute top-0 left-0 flex flex-col gap-0.5"><span
                              class="flex overflow-hidden h-[22px] sm:h-[26px] text-neutral-0 text-[12px] leading-[14px] font-bold sm:text-sm sm:leading-[18px]"
                              aria-labelledby="_R_76pl4jinpfivjap5snpfivb_" data-testid="product-tag"><span
                                class="flex w-fit items-center pr-1 pl-1.5 sm:pr-1.5 sm:pl-2 bg-orange-500"><span
                                  id="_R_76pl4jinpfivjap5snpfivb_">Promocja tygodnia</span></span><span
                                class="w-[8px]"><span class="-mr-px block h-full -translate-x-px bg-orange-500"
                                  style="clip-path:polygon(0 0, 100% 0, 1px 100%, 0 100%)"></span></span></span></span></a><button
                          type="button" data-testid="favorite-button" class="absolute top-0 right-0 p-2"
                          aria-label="Dodaj do ulubionych"><svg aria-hidden="true" data-testid="Heart01"
                            xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
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
                  data-testid="carousel-next-navigation-button" onclick="nextCarouselPage(this)">
                  <svg aria-hidden="true" data-testid="ArrowRightMd" xmlns="http://www.w3.org/2000/svg" width="24"
                    height="24" fill="none" viewBox="0 0 24 24">
                    <path fill="#001489"
                      d="M13 19a1 1 0 0 1-.707-1.707L16.586 13H5a1 1 0 0 1 0-2h11.586l-4.293-4.293a1 1 0 1 1 1.414-1.414l6 6a1 1 0 0 1 .293.704v.006a1 1 0 0 1-.293.704l-6 6A1 1 0 0 1 13 19">
                    </path>
                  </svg></button></div>
            </div>
          </div>
          <div class="flex justify-center"><a
              class="relative box-border flex max-w-full items-center justify-center gap-1 rounded-full text-base font-medium py-2.5 px-5 bg-orange-500 text-neutral-0 hover:bg-orange-700 active:bg-orange-900 focus:bg-orange-700 focus:outline focus:outline-2 focus:outline-dark-blue-500 focus:outline-offset-2 disabled:bg-neutral-150 disabled:text-neutral-700 disabled:outline disabled:outline-1 disabled:outline-neutral"
              href="/pl-pl/promocja-tygodnia/" data-testid="carousel-cta-link"><span class="truncate px-1">Zobacz
                więcej</span></a></div>
        </div>
        {* <script type="application/ld+json">
{"itemListElement":[{"@type":"ListItem","position":1,"url":"https://www.action.com/pl-pl/p/3217516/wafelki-jajeczne-cookies-crumbs-orzech-laskowy/"},{"@type":"ListItem","position":2,"url":"https://www.action.com/pl-pl/p/2554979/rekawiczki-thermolate/"},{"@type":"ListItem","position":3,"url":"https://www.action.com/pl-pl/p/3218319/obracajacy-sie-czubek-na-choinke/"},{"@type":"ListItem","position":4,"url":"https://www.action.com/pl-pl/p/3007233/opakowanie-zbiorcze-haribo-slodkie-lub-kwasne/"},{"@type":"ListItem","position":5,"url":"https://www.action.com/pl-pl/p/3207853/grzejnik-konwektorowy-lsc-smart-connect/"},{"@type":"ListItem","position":6,"url":"https://www.action.com/pl-pl/p/3218152/kamera-ptz-zasilana-energia-sloneczna-lsc-smart-connect/"},{"@type":"ListItem","position":7,"url":"https://www.action.com/pl-pl/p/3215097/widelce/"},{"@type":"ListItem","position":8,"url":"https://www.action.com/pl-pl/p/3204627/kolorowanka-paw-patrol/"}],"@context":"https://schema.org","@type":"ItemList"}
      </script> *}
      </div>
    </div>
  </section>

  <section class="bg-neutral-0 pt-6 md:pt-8 pb-6 md:pb-8" data-testid="cms-page-teaser-carousel">
    <div class="relative flex w-full flex-col px-4 lg:px-8">
      <div class="mx-auto w-full max-w-7xl">
        <div class="flex flex-col gap-4 md:gap-6"
          style="--rowsXl:1;--columnsXl:3;--rowsLg:1;--columnsLg:3;--rowsMd:1;--columnsMd:2;--rowsSm:1;--columnsSm:1;--rowsDefault:1;--columnsDefault:1">
          <div class="@container relative" style="--numberOfPages: 1; --currentPage: 0;">
            <div
              class="xl:[--columns:var(--columnsXl)] xl:[--rows:var(--rowsXl)] lg:[--columns:var(--columnsLg)] lg:[--rows:var(--rowsLg)] md:[--columns:var(--columnsMd)] md:[--rows:var(--rowsMd)] sm:[--columns:var(--columnsSm)] sm:[--rows:var(--rowsSm)] [--columns:var(--columnsDefault)] [--rows:var(--rowsDefault)] [--itemSpacing:8px] md:[--itemSpacing:16px] [--lastItemPartial:16px] sm:[--lastItemPartial:32px] [--itemWidth:calc((100cqw-var(--itemSpacing)*var(--columns)-var(--lastItemPartial))/var(--columns))] lg:[--itemWidth:calc((100cqw-var(--itemSpacing)*(var(--columns)-1))/var(--columns))] pointer-fine:[--itemWidth:calc((100cqw-var(--itemSpacing)*(var(--columns)-1))/var(--columns))] [--isMultiRow:calc(min(1,var(--rows)-1))] [--isSingleRow:calc(1-var(--isMultiRow))]">
              <div class="pointer-events-none absolute inset-0 z-1"><button type="button" inert="" aria-label="Poprzednia"
                  class="custom-invisible absolute -translate-y-1/2 top-1/2 bg-neutral-0 shadow-overlay-button rounded-full p-4 hidden lg:block pointer-fine:block transition duration-200 hover:scale-[1.15] -left-2 lg:-left-4 xl:-left-7 pointer-events-none opacity-0"
                  data-testid="carousel-previous-navigation-button" onclick="prevCarouselPage(this)"><svg
                    aria-hidden="true" data-testid="ArrowLeftMd" xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                    fill="none" viewBox="0 0 24 24">
                    <path fill="#001489"
                      d="M11 19a1 1 0 0 1-.707-.293l-6-6A1 1 0 0 1 4 12.003v-.006a1 1 0 0 1 .293-.704l6-6a1 1 0 1 1 1.414 1.414L7.414 11H19a1 1 0 0 1 0 2H7.414l4.293 4.293A1 1 0 0 1 11 19">
                    </path>
                  </svg></button></div>
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
              <div class="pointer-events-none absolute inset-0"><button type="button" aria-label="Następna"
                  class="absolute -translate-y-1/2 top-1/2 bg-neutral-0 shadow-overlay-button rounded-full p-4 hidden lg:block pointer-fine:block transition duration-200 hover:scale-[1.15] -right-2 lg:-right-4 xl:-right-7 pointer-events-none opacity-0"
                  data-testid="carousel-next-navigation-button" onclick="nextCarouselPage(this)" inert=""><svg
                    aria-hidden="true" data-testid="ArrowRightMd" xmlns="http://www.w3.org/2000/svg" width="24"
                    height="24" fill="none" viewBox="0 0 24 24">
                    <path fill="#001489"
                      d="M13 19a1 1 0 0 1-.707-1.707L16.586 13H5a1 1 0 0 1 0-2h11.586l-4.293-4.293a1 1 0 1 1 1.414-1.414l6 6a1 1 0 0 1 .293.704v.006a1 1 0 0 1-.293.704l-6 6A1 1 0 0 1 13 19">
                    </path>
                  </svg></button></div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <section class="bg-neutral-50 pt-6 md:pt-8 pb-6 md:pb-8" aria-label="Nowości" data-testid="cms-new-product-carousel">
    <div class="relative flex w-full flex-col px-4 lg:px-8">
      <div class="mx-auto w-full max-w-7xl">
        <div class="flex flex-col gap-4 md:gap-6"
          style="--rowsXl:1;--columnsXl:5;--rowsLg:1;--columnsLg:4;--rowsMd:1;--columnsMd:3;--rowsSm:1;--columnsSm:3;--rowsDefault:1;--columnsDefault:2">
          <div class="flex justify-between">
            <div class="flex flex-col gap-1">
              <h2
                class="line-clamp-2 text-dark-blue-500 font-bold tracking-[-1px] text-[22px] leading-[30px] md:text-[28px] md:leading-[36px]"
                data-testid="title-view-title">Nowości</h2>
              <p class="line-clamp-5 text-base leading-5 font-normal text-neutral-700" data-testid="title-view-subtitle">
                Co tydzień 150 nowych produktów</p>
            </div>
          </div>
          <div class="@container relative" style="--numberOfPages: 2.6666666666666665; --currentPage: 0;">
            <div
              class="xl:[--columns:var(--columnsXl)] xl:[--rows:var(--rowsXl)] lg:[--columns:var(--columnsLg)] lg:[--rows:var(--rowsLg)] md:[--columns:var(--columnsMd)] md:[--rows:var(--rowsMd)] sm:[--columns:var(--columnsSm)] sm:[--rows:var(--rowsSm)] [--columns:var(--columnsDefault)] [--rows:var(--rowsDefault)] [--itemSpacing:8px] md:[--itemSpacing:16px] [--lastItemPartial:16px] sm:[--lastItemPartial:32px] [--itemWidth:calc((100cqw-var(--itemSpacing)*var(--columns)-var(--lastItemPartial))/var(--columns))] lg:[--itemWidth:calc((100cqw-var(--itemSpacing)*(var(--columns)-1))/var(--columns))] pointer-fine:[--itemWidth:calc((100cqw-var(--itemSpacing)*(var(--columns)-1))/var(--columns))] [--isMultiRow:calc(min(1,var(--rows)-1))] [--isSingleRow:calc(1-var(--isMultiRow))]">
              <div class="pointer-events-none absolute inset-0 z-1"><button type="button" aria-label="Poprzednia"
                  class="custom-invisible absolute -translate-y-1/2 top-1/2 bg-neutral-0 shadow-overlay-button rounded-full p-4 hidden lg:block pointer-fine:block transition duration-200 hover:scale-[1.15] -left-2 lg:-left-4 xl:-left-7 pointer-events-auto"
                  data-testid="carousel-previous-navigation-button" onclick="prevCarouselPage(this)"><svg
                    aria-hidden="true" data-testid="ArrowLeftMd" xmlns="http://www.w3.org/2000/svg" width="24" height="24"
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
                  <div class="grid grid-flow-col grid-rows-[repeat(var(--rows),minmax(0,auto))] gap-(--itemSpacing)">
                    <div class="w-(--itemWidth)">
                      <div class="border-neutral-150 border bg-neutral-0 relative h-full w-full"
                        data-testid="product-card" data-content-king="product-card" analytics="[object Object]"><a
                          class="group relative flex h-full w-full flex-col p-3 xs:p-4"
                          href="/pl-pl/p/3219338/foremki-do-wycinania/" data-testid="product-card-link"><span
                            class="xs:max-h-[180px] relative aspect-square w-full md:max-h-[230px]"><img
                              data-testid="product-card-image" alt="" loading="lazy" decoding="async" data-nimg="fill"
                              class="object-contain object-center py-2 transition-transform duration-250 group-hover:scale-105 md:py-4 h-full w-full"
                              style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent"
                              sizes="(min-width: 1280px) calc(1280px / 5), (min-width: 1024px) calc(100vw / 4), (min-width: 768px) calc(100vw / 3), (min-width: 640px) calc(100vw / 3), calc(100vw / 2)"
                              srcset="https://asset.action.com/image/upload/t_digital_product_image/w_128/3219338_8715275390603-111_01_onyd0y.webp 128w, https://asset.action.com/image/upload/t_digital_product_image/w_256/3219338_8715275390603-111_01_onyd0y.webp 256w, https://asset.action.com/image/upload/t_digital_product_image/w_640/3219338_8715275390603-111_01_onyd0y.webp 640w, https://asset.action.com/image/upload/t_digital_product_image/w_1080/3219338_8715275390603-111_01_onyd0y.webp 1080w, https://asset.action.com/image/upload/t_digital_product_image/w_1920/3219338_8715275390603-111_01_onyd0y.webp 1920w"
                              src="https://asset.action.com/image/upload/t_digital_product_image/w_1920/3219338_8715275390603-111_01_onyd0y.webp"><span
                              class="absolute bottom-0 flex flex-col gap-2"></span></span><span
                            class="mt-2 mb-3 flex grow flex-col gap-1 leading-tight sm:mb-4"><span
                              class="xs:text-[16px] xs:leading-5 text-sm leading-[18px] font-medium text-dark-blue-500 line-clamp-2 break-words"
                              data-testid="product-card-title">Foremki do wycinania</span><span
                              class="max-h-fit text-sm leading-[18px] font-normal line-clamp-2 grow break-words text-neutral-700"
                              data-testid="product-card-description">5 sztuk | Różne warianty</span></span><span
                            aria-label="4,95&nbsp;zł 4,95&nbsp;zł/szt." class="flex flex-col"><span
                              data-testid="product-card-price-description"
                              class="mb-1 block w-max text-xs leading-[12px] text-neutral-700">4,95&nbsp;zł/szt.</span><span
                              class="flex items-start text-dark-blue-500"><span data-testid="product-card-price-whole"
                                class="font-bold tracking-[1px] text-[40px] leading-[28px] md:text-[48px] md:leading-[33px]">4</span><span
                                class="inline-flex items-baseline"><span data-testid="product-card-price-fractional"
                                  class="font-bold tracking-[1px] text-[20px] leading-[14px] md:text-[28px] md:leading-[19px]">95</span></span></span></span><span
                            class="absolute top-0 left-0 flex flex-col gap-0.5"><span
                              class="flex overflow-hidden h-[22px] sm:h-[26px] text-neutral-0 text-[12px] leading-[14px] font-bold sm:text-sm sm:leading-[18px]"
                              aria-labelledby="_R_76hl53inpfivjap5snpfivb_" data-testid="product-tag"><span
                                class="flex w-fit items-center pr-1 pl-1.5 sm:pr-1.5 sm:pl-2 bg-cyan-500"><span
                                  id="_R_76hl53inpfivjap5snpfivb_">Nowości</span></span><span class="w-[8px]"><span
                                  class="-mr-px block h-full -translate-x-px bg-cyan-500"
                                  style="clip-path:polygon(0 0, 100% 0, 1px 100%, 0 100%)"></span></span></span></span></a><button
                          type="button" data-testid="favorite-button" class="absolute top-0 right-0 p-2"
                          aria-label="Dodaj do ulubionych"><svg aria-hidden="true" data-testid="Heart01"
                            xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                            <path fill="#8593a3"
                              d="M12 21a1 1 0 0 1-.486-.126C11.126 20.658 2 15.514 2 9c0-3.665 2.218-5.425 4.293-5.849 2.171-.44 4.328.402 5.707 2.113 1.38-1.712 3.537-2.552 5.707-2.113C19.782 3.575 22 5.335 22 9.001c0 6.513-9.126 11.657-9.515 11.873A1 1 0 0 1 12 21M7.4 5.041q-.368 0-.707.07C5.007 5.456 4 6.91 4 9.001c0 4.584 6.197 8.728 8 9.836 1.804-1.108 8-5.252 8-9.837 0-2.09-1.007-3.544-2.693-3.889-1.482-.3-3.479.346-4.387 2.475a1 1 0 0 1-1.84 0C10.31 5.78 8.755 5.04 7.4 5.04">
                            </path>
                          </svg></button></div>
                    </div>
                    <div class="w-(--itemWidth)">
                      <div class="border-neutral-150 border bg-neutral-0 relative h-full w-full"
                        data-testid="product-card" data-content-king="product-card" analytics="[object Object]"><a
                          class="group relative flex h-full w-full flex-col p-3 xs:p-4"
                          href="/pl-pl/p/3216016/organizer-na-przybory-do-makijazu/" data-testid="product-card-link"><span
                            class="xs:max-h-[180px] relative aspect-square w-full md:max-h-[230px]"><img
                              data-testid="product-card-image" alt="" loading="lazy" decoding="async" data-nimg="fill"
                              class="object-contain object-center py-2 transition-transform duration-250 group-hover:scale-105 md:py-4 h-full w-full"
                              style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent"
                              sizes="(min-width: 1280px) calc(1280px / 5), (min-width: 1024px) calc(100vw / 4), (min-width: 768px) calc(100vw / 3), (min-width: 640px) calc(100vw / 3), calc(100vw / 2)"
                              srcset="https://asset.action.com/image/upload/t_digital_product_image/w_128/3216016_8718964231676-110_01_miwelb.webp 128w, https://asset.action.com/image/upload/t_digital_product_image/w_256/3216016_8718964231676-110_01_miwelb.webp 256w, https://asset.action.com/image/upload/t_digital_product_image/w_640/3216016_8718964231676-110_01_miwelb.webp 640w, https://asset.action.com/image/upload/t_digital_product_image/w_1080/3216016_8718964231676-110_01_miwelb.webp 1080w, https://asset.action.com/image/upload/t_digital_product_image/w_1920/3216016_8718964231676-110_01_miwelb.webp 1920w"
                              src="https://asset.action.com/image/upload/t_digital_product_image/w_1920/3216016_8718964231676-110_01_miwelb.webp"><span
                              class="absolute bottom-0 flex flex-col gap-2"></span></span><span
                            class="mt-2 mb-3 flex grow flex-col gap-1 leading-tight sm:mb-4"><span
                              class="xs:text-[16px] xs:leading-5 text-sm leading-[18px] font-medium text-dark-blue-500 line-clamp-2 break-words"
                              data-testid="product-card-title">Organizer na przybory do makijażu</span><span
                              class="max-h-fit text-sm leading-[18px] font-normal line-clamp-2 grow break-words text-neutral-700"
                              data-testid="product-card-description">30 x 20 x 34 cm</span></span><span
                            aria-label="44,90&nbsp;zł 44,90&nbsp;zł/szt." class="flex flex-col"><span
                              data-testid="product-card-price-description"
                              class="mb-1 block w-max text-xs leading-[12px] text-neutral-700">44,90&nbsp;zł/szt.</span><span
                              class="flex items-start text-dark-blue-500"><span data-testid="product-card-price-whole"
                                class="font-bold tracking-[1px] text-[40px] leading-[28px] md:text-[48px] md:leading-[33px]">44</span><span
                                class="inline-flex items-baseline"><span data-testid="product-card-price-fractional"
                                  class="font-bold tracking-[1px] text-[20px] leading-[14px] md:text-[28px] md:leading-[19px]">90</span></span></span></span><span
                            class="absolute top-0 left-0 flex flex-col gap-0.5"><span
                              class="flex overflow-hidden h-[22px] sm:h-[26px] text-neutral-0 text-[12px] leading-[14px] font-bold sm:text-sm sm:leading-[18px]"
                              aria-labelledby="_R_76il53inpfivjap5snpfivb_" data-testid="product-tag"><span
                                class="flex w-fit items-center pr-1 pl-1.5 sm:pr-1.5 sm:pl-2 bg-cyan-500"><span
                                  id="_R_76il53inpfivjap5snpfivb_">Nowości</span></span><span class="w-[8px]"><span
                                  class="-mr-px block h-full -translate-x-px bg-cyan-500"
                                  style="clip-path:polygon(0 0, 100% 0, 1px 100%, 0 100%)"></span></span></span></span></a><button
                          type="button" data-testid="favorite-button" class="absolute top-0 right-0 p-2"
                          aria-label="Dodaj do ulubionych"><svg aria-hidden="true" data-testid="Heart01"
                            xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                            <path fill="#8593a3"
                              d="M12 21a1 1 0 0 1-.486-.126C11.126 20.658 2 15.514 2 9c0-3.665 2.218-5.425 4.293-5.849 2.171-.44 4.328.402 5.707 2.113 1.38-1.712 3.537-2.552 5.707-2.113C19.782 3.575 22 5.335 22 9.001c0 6.513-9.126 11.657-9.515 11.873A1 1 0 0 1 12 21M7.4 5.041q-.368 0-.707.07C5.007 5.456 4 6.91 4 9.001c0 4.584 6.197 8.728 8 9.836 1.804-1.108 8-5.252 8-9.837 0-2.09-1.007-3.544-2.693-3.889-1.482-.3-3.479.346-4.387 2.475a1 1 0 0 1-1.84 0C10.31 5.78 8.755 5.04 7.4 5.04">
                            </path>
                          </svg></button></div>
                    </div>
                    <div class="w-(--itemWidth)">
                      <div class="border-neutral-150 border bg-neutral-0 relative h-full w-full"
                        data-testid="product-card" data-content-king="product-card" analytics="[object Object]"><a
                          class="group relative flex h-full w-full flex-col p-3 xs:p-4"
                          href="/pl-pl/p/2514838/teczka-na-dokumenty/" data-testid="product-card-link"><span
                            class="xs:max-h-[180px] relative aspect-square w-full md:max-h-[230px]"><img
                              data-testid="product-card-image" alt="" loading="lazy" decoding="async" data-nimg="fill"
                              class="object-contain object-center py-2 transition-transform duration-250 group-hover:scale-105 md:py-4 h-full w-full"
                              style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent"
                              sizes="(min-width: 1280px) calc(1280px / 5), (min-width: 1024px) calc(100vw / 4), (min-width: 768px) calc(100vw / 3), (min-width: 640px) calc(100vw / 3), calc(100vw / 2)"
                              srcset="https://asset.action.com/image/upload/t_digital_product_image/w_128/2514838_8712417244442-111_01_ttcuj4.webp 128w, https://asset.action.com/image/upload/t_digital_product_image/w_256/2514838_8712417244442-111_01_ttcuj4.webp 256w, https://asset.action.com/image/upload/t_digital_product_image/w_640/2514838_8712417244442-111_01_ttcuj4.webp 640w, https://asset.action.com/image/upload/t_digital_product_image/w_1080/2514838_8712417244442-111_01_ttcuj4.webp 1080w, https://asset.action.com/image/upload/t_digital_product_image/w_1920/2514838_8712417244442-111_01_ttcuj4.webp 1920w"
                              src="https://asset.action.com/image/upload/t_digital_product_image/w_1920/2514838_8712417244442-111_01_ttcuj4.webp"><span
                              class="absolute bottom-0 flex flex-col gap-2"></span></span><span
                            class="mt-2 mb-3 flex grow flex-col gap-1 leading-tight sm:mb-4"><span
                              class="xs:text-[16px] xs:leading-5 text-sm leading-[18px] font-medium text-dark-blue-500 line-clamp-2 break-words"
                              data-testid="product-card-title">Teczka na dokumenty</span><span
                              class="max-h-fit text-sm leading-[18px] font-normal line-clamp-2 grow break-words text-neutral-700"
                              data-testid="product-card-description">Różne warianty</span></span><span
                            aria-label="1,49&nbsp;zł 1,49&nbsp;zł/szt." class="flex flex-col"><span
                              data-testid="product-card-price-description"
                              class="mb-1 block w-max text-xs leading-[12px] text-neutral-700">1,49&nbsp;zł/szt.</span><span
                              class="flex items-start text-dark-blue-500"><span data-testid="product-card-price-whole"
                                class="font-bold tracking-[1px] text-[40px] leading-[28px] md:text-[48px] md:leading-[33px]">1</span><span
                                class="inline-flex items-baseline"><span data-testid="product-card-price-fractional"
                                  class="font-bold tracking-[1px] text-[20px] leading-[14px] md:text-[28px] md:leading-[19px]">49</span></span></span></span><span
                            class="absolute top-0 left-0 flex flex-col gap-0.5"><span
                              class="flex overflow-hidden h-[22px] sm:h-[26px] text-neutral-0 text-[12px] leading-[14px] font-bold sm:text-sm sm:leading-[18px]"
                              aria-labelledby="_R_76jl53inpfivjap5snpfivb_" data-testid="product-tag"><span
                                class="flex w-fit items-center pr-1 pl-1.5 sm:pr-1.5 sm:pl-2 bg-cyan-500"><span
                                  id="_R_76jl53inpfivjap5snpfivb_">Nowości</span></span><span class="w-[8px]"><span
                                  class="-mr-px block h-full -translate-x-px bg-cyan-500"
                                  style="clip-path:polygon(0 0, 100% 0, 1px 100%, 0 100%)"></span></span></span></span></a><button
                          type="button" data-testid="favorite-button" class="absolute top-0 right-0 p-2"
                          aria-label="Dodaj do ulubionych"><svg aria-hidden="true" data-testid="Heart01"
                            xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                            <path fill="#8593a3"
                              d="M12 21a1 1 0 0 1-.486-.126C11.126 20.658 2 15.514 2 9c0-3.665 2.218-5.425 4.293-5.849 2.171-.44 4.328.402 5.707 2.113 1.38-1.712 3.537-2.552 5.707-2.113C19.782 3.575 22 5.335 22 9.001c0 6.513-9.126 11.657-9.515 11.873A1 1 0 0 1 12 21M7.4 5.041q-.368 0-.707.07C5.007 5.456 4 6.91 4 9.001c0 4.584 6.197 8.728 8 9.836 1.804-1.108 8-5.252 8-9.837 0-2.09-1.007-3.544-2.693-3.889-1.482-.3-3.479.346-4.387 2.475a1 1 0 0 1-1.84 0C10.31 5.78 8.755 5.04 7.4 5.04">
                            </path>
                          </svg></button></div>
                    </div>
                    <div class="w-(--itemWidth)">
                      <div class="border-neutral-150 border bg-neutral-0 relative h-full w-full"
                        data-testid="product-card" data-content-king="product-card" analytics="[object Object]"><a
                          class="group relative flex h-full w-full flex-col p-3 xs:p-4"
                          href="/pl-pl/p/3218222/paleczki-glow-in-the-dark/" data-testid="product-card-link"><span
                            class="xs:max-h-[180px] relative aspect-square w-full md:max-h-[230px]"><img
                              data-testid="product-card-image" alt="" loading="lazy" decoding="async" data-nimg="fill"
                              class="object-contain object-center py-2 transition-transform duration-250 group-hover:scale-105 md:py-4 h-full w-full"
                              style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent"
                              sizes="(min-width: 1280px) calc(1280px / 5), (min-width: 1024px) calc(100vw / 4), (min-width: 768px) calc(100vw / 3), (min-width: 640px) calc(100vw / 3), calc(100vw / 2)"
                              srcset="https://asset.action.com/image/upload/t_digital_product_image/w_128/3218222_8714572965330-111_01_xjzfyp.webp 128w, https://asset.action.com/image/upload/t_digital_product_image/w_256/3218222_8714572965330-111_01_xjzfyp.webp 256w, https://asset.action.com/image/upload/t_digital_product_image/w_640/3218222_8714572965330-111_01_xjzfyp.webp 640w, https://asset.action.com/image/upload/t_digital_product_image/w_1080/3218222_8714572965330-111_01_xjzfyp.webp 1080w, https://asset.action.com/image/upload/t_digital_product_image/w_1920/3218222_8714572965330-111_01_xjzfyp.webp 1920w"
                              src="https://asset.action.com/image/upload/t_digital_product_image/w_1920/3218222_8714572965330-111_01_xjzfyp.webp"><span
                              class="absolute bottom-0 flex flex-col gap-2"></span></span><span
                            class="mt-2 mb-3 flex grow flex-col gap-1 leading-tight sm:mb-4"><span
                              class="xs:text-[16px] xs:leading-5 text-sm leading-[18px] font-medium text-dark-blue-500 line-clamp-2 break-words"
                              data-testid="product-card-title">Pałeczki Glow in the dark</span><span
                              class="max-h-fit text-sm leading-[18px] font-normal line-clamp-2 grow break-words text-neutral-700"
                              data-testid="product-card-description">Różne warianty</span></span><span
                            aria-label="2,99&nbsp;zł 2,99&nbsp;zł/szt." class="flex flex-col"><span
                              data-testid="product-card-price-description"
                              class="mb-1 block w-max text-xs leading-[12px] text-neutral-700">2,99&nbsp;zł/szt.</span><span
                              class="flex items-start text-dark-blue-500"><span data-testid="product-card-price-whole"
                                class="font-bold tracking-[1px] text-[40px] leading-[28px] md:text-[48px] md:leading-[33px]">2</span><span
                                class="inline-flex items-baseline"><span data-testid="product-card-price-fractional"
                                  class="font-bold tracking-[1px] text-[20px] leading-[14px] md:text-[28px] md:leading-[19px]">99</span></span></span></span><span
                            class="absolute top-0 left-0 flex flex-col gap-0.5"><span
                              class="flex overflow-hidden h-[22px] sm:h-[26px] text-neutral-0 text-[12px] leading-[14px] font-bold sm:text-sm sm:leading-[18px]"
                              aria-labelledby="_R_76kl53inpfivjap5snpfivb_" data-testid="product-tag"><span
                                class="flex w-fit items-center pr-1 pl-1.5 sm:pr-1.5 sm:pl-2 bg-cyan-500"><span
                                  id="_R_76kl53inpfivjap5snpfivb_">Nowości</span></span><span class="w-[8px]"><span
                                  class="-mr-px block h-full -translate-x-px bg-cyan-500"
                                  style="clip-path:polygon(0 0, 100% 0, 1px 100%, 0 100%)"></span></span></span></span></a><button
                          type="button" data-testid="favorite-button" class="absolute top-0 right-0 p-2"
                          aria-label="Dodaj do ulubionych"><svg aria-hidden="true" data-testid="Heart01"
                            xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                            <path fill="#8593a3"
                              d="M12 21a1 1 0 0 1-.486-.126C11.126 20.658 2 15.514 2 9c0-3.665 2.218-5.425 4.293-5.849 2.171-.44 4.328.402 5.707 2.113 1.38-1.712 3.537-2.552 5.707-2.113C19.782 3.575 22 5.335 22 9.001c0 6.513-9.126 11.657-9.515 11.873A1 1 0 0 1 12 21M7.4 5.041q-.368 0-.707.07C5.007 5.456 4 6.91 4 9.001c0 4.584 6.197 8.728 8 9.836 1.804-1.108 8-5.252 8-9.837 0-2.09-1.007-3.544-2.693-3.889-1.482-.3-3.479.346-4.387 2.475a1 1 0 0 1-1.84 0C10.31 5.78 8.755 5.04 7.4 5.04">
                            </path>
                          </svg></button></div>
                    </div>
                    <div class="w-(--itemWidth)">
                      <div class="border-neutral-150 border bg-neutral-0 relative h-full w-full"
                        data-testid="product-card" data-content-king="product-card" analytics="[object Object]"><a
                          class="group relative flex h-full w-full flex-col p-3 xs:p-4"
                          href="/pl-pl/p/2508891/blok-z-karteczkami-office-essentials/"
                          data-testid="product-card-link"><span
                            class="xs:max-h-[180px] relative aspect-square w-full md:max-h-[230px]"><img
                              data-testid="product-card-image" alt="" loading="lazy" decoding="async" data-nimg="fill"
                              class="object-contain object-center py-2 transition-transform duration-250 group-hover:scale-105 md:py-4 h-full w-full"
                              style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent"
                              sizes="(min-width: 1280px) calc(1280px / 5), (min-width: 1024px) calc(100vw / 4), (min-width: 768px) calc(100vw / 3), (min-width: 640px) calc(100vw / 3), calc(100vw / 2)"
                              srcset="https://asset.action.com/image/upload/t_digital_product_image/w_128/26502467.webp 128w, https://asset.action.com/image/upload/t_digital_product_image/w_256/26502467.webp 256w, https://asset.action.com/image/upload/t_digital_product_image/w_640/26502467.webp 640w, https://asset.action.com/image/upload/t_digital_product_image/w_1080/26502467.webp 1080w, https://asset.action.com/image/upload/t_digital_product_image/w_1920/26502467.webp 1920w"
                              src="https://asset.action.com/image/upload/t_digital_product_image/w_1920/26502467.webp"><span
                              class="absolute bottom-0 flex flex-col gap-2"></span></span><span
                            class="mt-2 mb-3 flex grow flex-col gap-1 leading-tight sm:mb-4"><span
                              class="xs:text-[16px] xs:leading-5 text-sm leading-[18px] font-medium text-dark-blue-500 line-clamp-2 break-words"
                              data-testid="product-card-title">Blok z karteczkami Office Essentials</span><span
                              class="max-h-fit text-sm leading-[18px] font-normal line-clamp-2 grow break-words text-neutral-700"
                              data-testid="product-card-description">4 x 100 karteczek</span></span><span
                            aria-label="3,16&nbsp;zł 3,16&nbsp;zł/szt." class="flex flex-col"><span
                              data-testid="product-card-price-description"
                              class="mb-1 block w-max text-xs leading-[12px] text-neutral-700">3,16&nbsp;zł/szt.</span><span
                              class="flex items-start text-dark-blue-500"><span data-testid="product-card-price-whole"
                                class="font-bold tracking-[1px] text-[40px] leading-[28px] md:text-[48px] md:leading-[33px]">3</span><span
                                class="inline-flex items-baseline"><span data-testid="product-card-price-fractional"
                                  class="font-bold tracking-[1px] text-[20px] leading-[14px] md:text-[28px] md:leading-[19px]">16</span></span></span></span><span
                            class="absolute top-0 left-0 flex flex-col gap-0.5"><span
                              class="flex overflow-hidden h-[22px] sm:h-[26px] text-neutral-0 text-[12px] leading-[14px] font-bold sm:text-sm sm:leading-[18px]"
                              aria-labelledby="_R_76ll53inpfivjap5snpfivb_" data-testid="product-tag"><span
                                class="flex w-fit items-center pr-1 pl-1.5 sm:pr-1.5 sm:pl-2 bg-cyan-500"><span
                                  id="_R_76ll53inpfivjap5snpfivb_">Nowości</span></span><span class="w-[8px]"><span
                                  class="-mr-px block h-full -translate-x-px bg-cyan-500"
                                  style="clip-path:polygon(0 0, 100% 0, 1px 100%, 0 100%)"></span></span></span></span></a><button
                          type="button" data-testid="favorite-button" class="absolute top-0 right-0 p-2"
                          aria-label="Dodaj do ulubionych"><svg aria-hidden="true" data-testid="Heart01"
                            xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                            <path fill="#8593a3"
                              d="M12 21a1 1 0 0 1-.486-.126C11.126 20.658 2 15.514 2 9c0-3.665 2.218-5.425 4.293-5.849 2.171-.44 4.328.402 5.707 2.113 1.38-1.712 3.537-2.552 5.707-2.113C19.782 3.575 22 5.335 22 9.001c0 6.513-9.126 11.657-9.515 11.873A1 1 0 0 1 12 21M7.4 5.041q-.368 0-.707.07C5.007 5.456 4 6.91 4 9.001c0 4.584 6.197 8.728 8 9.836 1.804-1.108 8-5.252 8-9.837 0-2.09-1.007-3.544-2.693-3.889-1.482-.3-3.479.346-4.387 2.475a1 1 0 0 1-1.84 0C10.31 5.78 8.755 5.04 7.4 5.04">
                            </path>
                          </svg></button></div>
                    </div>
                    <div class="w-(--itemWidth)">
                      <div class="border-neutral-150 border bg-neutral-0 relative h-full w-full"
                        data-testid="product-card" data-content-king="product-card" analytics="[object Object]"><a
                          class="group relative flex h-full w-full flex-col p-3 xs:p-4"
                          href="/pl-pl/p/3215381/puszysty-kolorowy-dlugopis/" data-testid="product-card-link"><span
                            class="xs:max-h-[180px] relative aspect-square w-full md:max-h-[230px]"><img
                              data-testid="product-card-image" alt="" loading="lazy" decoding="async" data-nimg="fill"
                              class="object-contain object-center py-2 transition-transform duration-250 group-hover:scale-105 md:py-4 h-full w-full"
                              style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent"
                              sizes="(min-width: 1280px) calc(1280px / 5), (min-width: 1024px) calc(100vw / 4), (min-width: 768px) calc(100vw / 3), (min-width: 640px) calc(100vw / 3), calc(100vw / 2)"
                              srcset="https://asset.action.com/image/upload/t_digital_product_image/w_128/3215381_8719668029217-111_01_asyz6r.webp 128w, https://asset.action.com/image/upload/t_digital_product_image/w_256/3215381_8719668029217-111_01_asyz6r.webp 256w, https://asset.action.com/image/upload/t_digital_product_image/w_640/3215381_8719668029217-111_01_asyz6r.webp 640w, https://asset.action.com/image/upload/t_digital_product_image/w_1080/3215381_8719668029217-111_01_asyz6r.webp 1080w, https://asset.action.com/image/upload/t_digital_product_image/w_1920/3215381_8719668029217-111_01_asyz6r.webp 1920w"
                              src="https://asset.action.com/image/upload/t_digital_product_image/w_1920/3215381_8719668029217-111_01_asyz6r.webp"><span
                              class="absolute bottom-0 flex flex-col gap-2"></span></span><span
                            class="mt-2 mb-3 flex grow flex-col gap-1 leading-tight sm:mb-4"><span
                              class="xs:text-[16px] xs:leading-5 text-sm leading-[18px] font-medium text-dark-blue-500 line-clamp-2 break-words"
                              data-testid="product-card-title">Puszysty kolorowy długopis</span><span
                              class="max-h-fit text-sm leading-[18px] font-normal line-clamp-2 grow break-words text-neutral-700"
                              data-testid="product-card-description">Różne kolory</span></span><span
                            aria-label="3,49&nbsp;zł 3,49&nbsp;zł/szt." class="flex flex-col"><span
                              data-testid="product-card-price-description"
                              class="mb-1 block w-max text-xs leading-[12px] text-neutral-700">3,49&nbsp;zł/szt.</span><span
                              class="flex items-start text-dark-blue-500"><span data-testid="product-card-price-whole"
                                class="font-bold tracking-[1px] text-[40px] leading-[28px] md:text-[48px] md:leading-[33px]">3</span><span
                                class="inline-flex items-baseline"><span data-testid="product-card-price-fractional"
                                  class="font-bold tracking-[1px] text-[20px] leading-[14px] md:text-[28px] md:leading-[19px]">49</span></span></span></span><span
                            class="absolute top-0 left-0 flex flex-col gap-0.5"><span
                              class="flex overflow-hidden h-[22px] sm:h-[26px] text-neutral-0 text-[12px] leading-[14px] font-bold sm:text-sm sm:leading-[18px]"
                              aria-labelledby="_R_76ml53inpfivjap5snpfivb_" data-testid="product-tag"><span
                                class="flex w-fit items-center pr-1 pl-1.5 sm:pr-1.5 sm:pl-2 bg-cyan-500"><span
                                  id="_R_76ml53inpfivjap5snpfivb_">Nowości</span></span><span class="w-[8px]"><span
                                  class="-mr-px block h-full -translate-x-px bg-cyan-500"
                                  style="clip-path:polygon(0 0, 100% 0, 1px 100%, 0 100%)"></span></span></span></span></a><button
                          type="button" data-testid="favorite-button" class="absolute top-0 right-0 p-2"
                          aria-label="Dodaj do ulubionych"><svg aria-hidden="true" data-testid="Heart01"
                            xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                            <path fill="#8593a3"
                              d="M12 21a1 1 0 0 1-.486-.126C11.126 20.658 2 15.514 2 9c0-3.665 2.218-5.425 4.293-5.849 2.171-.44 4.328.402 5.707 2.113 1.38-1.712 3.537-2.552 5.707-2.113C19.782 3.575 22 5.335 22 9.001c0 6.513-9.126 11.657-9.515 11.873A1 1 0 0 1 12 21M7.4 5.041q-.368 0-.707.07C5.007 5.456 4 6.91 4 9.001c0 4.584 6.197 8.728 8 9.836 1.804-1.108 8-5.252 8-9.837 0-2.09-1.007-3.544-2.693-3.889-1.482-.3-3.479.346-4.387 2.475a1 1 0 0 1-1.84 0C10.31 5.78 8.755 5.04 7.4 5.04">
                            </path>
                          </svg></button></div>
                    </div>
                    <div class="w-(--itemWidth)">
                      <div class="border-neutral-150 border bg-neutral-0 relative h-full w-full"
                        data-testid="product-card" data-content-king="product-card" analytics="[object Object]"><a
                          class="group relative flex h-full w-full flex-col p-3 xs:p-4"
                          href="/pl-pl/p/3214933/zestaw-akwareli/" data-testid="product-card-link"><span
                            class="xs:max-h-[180px] relative aspect-square w-full md:max-h-[230px]"><img
                              data-testid="product-card-image" alt="" loading="lazy" decoding="async" data-nimg="fill"
                              class="object-contain object-center py-2 transition-transform duration-250 group-hover:scale-105 md:py-4 h-full w-full"
                              style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent"
                              sizes="(min-width: 1280px) calc(1280px / 5), (min-width: 1024px) calc(100vw / 4), (min-width: 768px) calc(100vw / 3), (min-width: 640px) calc(100vw / 3), calc(100vw / 2)"
                              srcset="https://asset.action.com/image/upload/t_digital_product_image/w_128/3214933_8721037535373-110_01_rhwg6k.webp 128w, https://asset.action.com/image/upload/t_digital_product_image/w_256/3214933_8721037535373-110_01_rhwg6k.webp 256w, https://asset.action.com/image/upload/t_digital_product_image/w_640/3214933_8721037535373-110_01_rhwg6k.webp 640w, https://asset.action.com/image/upload/t_digital_product_image/w_1080/3214933_8721037535373-110_01_rhwg6k.webp 1080w, https://asset.action.com/image/upload/t_digital_product_image/w_1920/3214933_8721037535373-110_01_rhwg6k.webp 1920w"
                              src="https://asset.action.com/image/upload/t_digital_product_image/w_1920/3214933_8721037535373-110_01_rhwg6k.webp"><span
                              class="absolute bottom-0 flex flex-col gap-2"></span></span><span
                            class="mt-2 mb-3 flex grow flex-col gap-1 leading-tight sm:mb-4"><span
                              class="xs:text-[16px] xs:leading-5 text-sm leading-[18px] font-medium text-dark-blue-500 line-clamp-2 break-words"
                              data-testid="product-card-title">Zestaw akwareli</span><span
                              class="max-h-fit text-sm leading-[18px] font-normal line-clamp-2 grow break-words text-neutral-700"
                              data-testid="product-card-description">Różne kolory</span></span><span
                            aria-label="3,49&nbsp;zł 3,49&nbsp;zł/szt." class="flex flex-col"><span
                              data-testid="product-card-price-description"
                              class="mb-1 block w-max text-xs leading-[12px] text-neutral-700">3,49&nbsp;zł/szt.</span><span
                              class="flex items-start text-dark-blue-500"><span data-testid="product-card-price-whole"
                                class="font-bold tracking-[1px] text-[40px] leading-[28px] md:text-[48px] md:leading-[33px]">3</span><span
                                class="inline-flex items-baseline"><span data-testid="product-card-price-fractional"
                                  class="font-bold tracking-[1px] text-[20px] leading-[14px] md:text-[28px] md:leading-[19px]">49</span></span></span></span><span
                            class="absolute top-0 left-0 flex flex-col gap-0.5"><span
                              class="flex overflow-hidden h-[22px] sm:h-[26px] text-neutral-0 text-[12px] leading-[14px] font-bold sm:text-sm sm:leading-[18px]"
                              aria-labelledby="_R_76nl53inpfivjap5snpfivb_" data-testid="product-tag"><span
                                class="flex w-fit items-center pr-1 pl-1.5 sm:pr-1.5 sm:pl-2 bg-cyan-500"><span
                                  id="_R_76nl53inpfivjap5snpfivb_">Nowości</span></span><span class="w-[8px]"><span
                                  class="-mr-px block h-full -translate-x-px bg-cyan-500"
                                  style="clip-path:polygon(0 0, 100% 0, 1px 100%, 0 100%)"></span></span></span></span></a><button
                          type="button" data-testid="favorite-button" class="absolute top-0 right-0 p-2"
                          aria-label="Dodaj do ulubionych"><svg aria-hidden="true" data-testid="Heart01"
                            xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                            <path fill="#8593a3"
                              d="M12 21a1 1 0 0 1-.486-.126C11.126 20.658 2 15.514 2 9c0-3.665 2.218-5.425 4.293-5.849 2.171-.44 4.328.402 5.707 2.113 1.38-1.712 3.537-2.552 5.707-2.113C19.782 3.575 22 5.335 22 9.001c0 6.513-9.126 11.657-9.515 11.873A1 1 0 0 1 12 21M7.4 5.041q-.368 0-.707.07C5.007 5.456 4 6.91 4 9.001c0 4.584 6.197 8.728 8 9.836 1.804-1.108 8-5.252 8-9.837 0-2.09-1.007-3.544-2.693-3.889-1.482-.3-3.479.346-4.387 2.475a1 1 0 0 1-1.84 0C10.31 5.78 8.755 5.04 7.4 5.04">
                            </path>
                          </svg></button></div>
                    </div>
                    <div class="w-(--itemWidth)">
                      <div class="border-neutral-150 border bg-neutral-0 relative h-full w-full"
                        data-testid="product-card" data-content-king="product-card" analytics="[object Object]"><a
                          class="group relative flex h-full w-full flex-col p-3 xs:p-4" href="/pl-pl/p/2556723/konfetti/"
                          data-testid="product-card-link"><span
                            class="xs:max-h-[180px] relative aspect-square w-full md:max-h-[230px]"><img
                              data-testid="product-card-image" alt="" loading="lazy" decoding="async" data-nimg="fill"
                              class="object-contain object-center py-2 transition-transform duration-250 group-hover:scale-105 md:py-4 h-full w-full"
                              style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent"
                              sizes="(min-width: 1280px) calc(1280px / 5), (min-width: 1024px) calc(100vw / 4), (min-width: 768px) calc(100vw / 3), (min-width: 640px) calc(100vw / 3), calc(100vw / 2)"
                              srcset="https://asset.action.com/image/upload/t_digital_product_image/w_128/4980604.webp 128w, https://asset.action.com/image/upload/t_digital_product_image/w_256/4980604.webp 256w, https://asset.action.com/image/upload/t_digital_product_image/w_640/4980604.webp 640w, https://asset.action.com/image/upload/t_digital_product_image/w_1080/4980604.webp 1080w, https://asset.action.com/image/upload/t_digital_product_image/w_1920/4980604.webp 1920w"
                              src="https://asset.action.com/image/upload/t_digital_product_image/w_1920/4980604.webp"><span
                              class="absolute bottom-0 flex flex-col gap-2"></span></span><span
                            class="mt-2 mb-3 flex grow flex-col gap-1 leading-tight sm:mb-4"><span
                              class="xs:text-[16px] xs:leading-5 text-sm leading-[18px] font-medium text-dark-blue-500 line-clamp-2 break-words"
                              data-testid="product-card-title">Konfetti</span><span
                              class="max-h-fit text-sm leading-[18px] font-normal line-clamp-2 grow break-words text-neutral-700"
                              data-testid="product-card-description">100 gramów</span></span><span
                            aria-label="3,59&nbsp;zł 35,90&nbsp;zł/kg" class="flex flex-col"><span
                              data-testid="product-card-price-description"
                              class="mb-1 block w-max text-xs leading-[12px] text-neutral-700">35,90&nbsp;zł/kg</span><span
                              class="flex items-start text-dark-blue-500"><span data-testid="product-card-price-whole"
                                class="font-bold tracking-[1px] text-[40px] leading-[28px] md:text-[48px] md:leading-[33px]">3</span><span
                                class="inline-flex items-baseline"><span data-testid="product-card-price-fractional"
                                  class="font-bold tracking-[1px] text-[20px] leading-[14px] md:text-[28px] md:leading-[19px]">59</span></span></span></span><span
                            class="absolute top-0 left-0 flex flex-col gap-0.5"><span
                              class="flex overflow-hidden h-[22px] sm:h-[26px] text-neutral-0 text-[12px] leading-[14px] font-bold sm:text-sm sm:leading-[18px]"
                              aria-labelledby="_R_76ol53inpfivjap5snpfivb_" data-testid="product-tag"><span
                                class="flex w-fit items-center pr-1 pl-1.5 sm:pr-1.5 sm:pl-2 bg-cyan-500"><span
                                  id="_R_76ol53inpfivjap5snpfivb_">Nowości</span></span><span class="w-[8px]"><span
                                  class="-mr-px block h-full -translate-x-px bg-cyan-500"
                                  style="clip-path:polygon(0 0, 100% 0, 1px 100%, 0 100%)"></span></span></span></span></a><button
                          type="button" data-testid="favorite-button" class="absolute top-0 right-0 p-2"
                          aria-label="Dodaj do ulubionych"><svg aria-hidden="true" data-testid="Heart01"
                            xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
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
                  data-testid="carousel-next-navigation-button" onclick="nextCarouselPage(this)"><svg aria-hidden="true"
                    data-testid="ArrowRightMd" xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none"
                    viewBox="0 0 24 24">
                    <path fill="#001489"
                      d="M13 19a1 1 0 0 1-.707-1.707L16.586 13H5a1 1 0 0 1 0-2h11.586l-4.293-4.293a1 1 0 1 1 1.414-1.414l6 6a1 1 0 0 1 .293.704v.006a1 1 0 0 1-.293.704l-6 6A1 1 0 0 1 13 19">
                    </path>
                  </svg></button></div>
            </div>
          </div>
          <div class="flex justify-center"><a
              class="relative box-border flex max-w-full items-center justify-center gap-1 rounded-full text-base font-medium py-2.5 px-5 bg-dark-blue-500 text-neutral-0 hover:bg-dark-blue-300 active:bg-dark-blue-700 focus:bg-dark-blue-300 focus:outline focus:outline-2 focus:outline-dark-blue-500 focus:outline-offset-2 disabled:bg-neutral-150 disabled:text-neutral-700 disabled:outline disabled:outline-1 disabled:outline-neutral"
              href="/pl-pl/nowosci/" data-testid="carousel-cta-link"><span class="truncate px-1">Zobacz więcej</span></a>
          </div>
        </div>
        {* <script type="application/ld+json">
{"itemListElement":[{"@type":"ListItem","position":1,"url":"https://www.action.com/pl-pl/p/3219338/foremki-do-wycinania/"},{"@type":"ListItem","position":2,"url":"https://www.action.com/pl-pl/p/3216016/organizer-na-przybory-do-makijazu/"},{"@type":"ListItem","position":3,"url":"https://www.action.com/pl-pl/p/2514838/teczka-na-dokumenty/"},{"@type":"ListItem","position":4,"url":"https://www.action.com/pl-pl/p/3218222/paleczki-glow-in-the-dark/"},{"@type":"ListItem","position":5,"url":"https://www.action.com/pl-pl/p/2508891/blok-z-karteczkami-office-essentials/"},{"@type":"ListItem","position":6,"url":"https://www.action.com/pl-pl/p/3215381/puszysty-kolorowy-dlugopis/"},{"@type":"ListItem","position":7,"url":"https://www.action.com/pl-pl/p/3214933/zestaw-akwareli/"},{"@type":"ListItem","position":8,"url":"https://www.action.com/pl-pl/p/2556723/konfetti/"}],"@context":"https://schema.org","@type":"ItemList"}
        </script> *}
      </div>
    </div>
  </section>

  <section class="bg-neutral-0 pt-6 md:pt-8 pb-6 md:pb-8" aria-label="Marki premium" data-testid="cms-inspirational-row">
    <div class="relative flex w-full flex-col px-4 lg:px-8">
      <div class="mx-auto w-full max-w-7xl">
        <div class="flex flex-col gap-2">
          <div class="flex items-end justify-between gap-4 mb-2">
            <div class="flex flex-col">
              <h2 class="heading-xl" data-testid="title-view-title">Marki premium</h2>
            </div><a class="btn-base group btn-link w-fit max-w-[160px] sm:max-w-full"
              href="/pl-pl/moment/najnizsze-ceny/marki-premium/" data-testid="title-view-link"><span
                class="btn-content-label btn-content-link btn-shadow-dark-blue">Zobacz więcej</span><span
                aria-hidden="true" class="content-center ml-1"><svg aria-hidden="true" data-testid="ChevronRightMd"
                  xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                  <path fill="#4e769c"
                    d="M10 17a1 1 0 0 1-.707-1.707L12.586 12 9.293 8.707a1 1 0 1 1 1.414-1.414l4 4a1 1 0 0 1 0 1.414l-4 4A1 1 0 0 1 10 17">
                  </path>
                </svg></span></a>
          </div>
          <div class="min-h-[325px] md:hidden">
            <div class="flex flex-col gap-4 md:gap-6"
              style="--rowsXl:1;--columnsXl:5;--rowsLg:1;--columnsLg:4;--rowsMd:1;--columnsMd:3;--rowsSm:1;--columnsSm:3;--rowsDefault:1;--columnsDefault:2">
              <div class="@container relative" style="--numberOfPages:1;--currentPage:0">
                <div
                  class="xl:[--columns:var(--columnsXl)] xl:[--rows:var(--rowsXl)] lg:[--columns:var(--columnsLg)] lg:[--rows:var(--rowsLg)] md:[--columns:var(--columnsMd)] md:[--rows:var(--rowsMd)] sm:[--columns:var(--columnsSm)] sm:[--rows:var(--rowsSm)] [--columns:var(--columnsDefault)] [--rows:var(--rowsDefault)] [--itemSpacing:8px] md:[--itemSpacing:16px] [--lastItemPartial:16px] sm:[--lastItemPartial:32px] [--itemWidth:calc((100cqw-var(--itemSpacing)*var(--columns)-var(--lastItemPartial))/var(--columns))] lg:[--itemWidth:calc((100cqw-var(--itemSpacing)*(var(--columns)-1))/var(--columns))] pointer-fine:[--itemWidth:calc((100cqw-var(--itemSpacing)*(var(--columns)-1))/var(--columns))] [--isMultiRow:calc(min(1,var(--rows)-1))] [--isSingleRow:calc(1-var(--isMultiRow))]">
                  <div class="pointer-events-none absolute inset-0 z-1"><button type="button" inert=""
                      aria-label="Poprzednia"
                      class="custom-invisible absolute -translate-y-1/2 top-1/2 bg-neutral-0 shadow-overlay-button rounded-full p-4 hidden lg:block pointer-fine:block transition duration-200 hover:scale-[1.15] -left-2 lg:-left-4 xl:-left-7 pointer-events-none opacity-0"
                      data-testid="carousel-previous-navigation-button" onclick="prevCarouselPage(this)"><svg
                        aria-hidden="true" data-testid="ArrowLeftMd" xmlns="http://www.w3.org/2000/svg" width="24"
                        height="24" fill="none" viewBox="0 0 24 24">
                        <path fill="#001489"
                          d="M11 19a1 1 0 0 1-.707-.293l-6-6A1 1 0 0 1 4 12.003v-.006a1 1 0 0 1 .293-.704l6-6a1 1 0 1 1 1.414 1.414L7.414 11H19a1 1 0 0 1 0 2H7.414l4.293 4.293A1 1 0 0 1 11 19">
                        </path>
                      </svg></button></div>
                  <div
                    class="no-scrollbar flex overflow-auto lg:overflow-clip pointer-fine:overflow-clip lg:[overflow-clip-margin:2px] pointer-fine:[overflow-clip-margin:2px] -mx-4 lg:mx-0 pointer-fine:mx-0">
                    <div class="relative flex transition-transform duration-600 ease-in-out">
                      <div class="w-4 shrink-0 lg:w-0 pointer-fine:w-0"></div>
                      <div class="grid grid-flow-col grid-rows-[repeat(var(--rows),minmax(0,auto))] gap-(--itemSpacing)">
                        <div class="w-(--itemWidth)"><a class="relative h-full w-full group"
                            href="/pl-pl/moment/najnizsze-ceny/marki-premium/" aria-label="Zobacz więcej"
                            data-testid="content-card">
                            <div
                              class="lg:min-w-none relative flex h-full min-h-[300px] w-full flex-col overflow-hidden rounded-md md:max-w-none InspirationContentCard_contentCard__YE4xI">
                              <div class="relative h-full w-full overflow-hidden"><img data-testid="content-card-image"
                                  alt="" loading="lazy" decoding="async" data-nimg="fill"
                                  class="bg-neutral-10 object-cover object-center transition-all duration-300 group-hover:scale-105 transition-transform duration-250 hover:scale-105 h-full w-full"
                                  style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent"
                                  sizes="(min-width: 1280px) calc( 1280px / 2) ,(min-width: 768px) calc( 100vw / 2 ),calc( 100vw / 3 * 2 )"
                                  srcset="https://asset.action.com/image/upload/t_digital_content_card/w_128/Web_A-merken_Webcard_2025_bdlnsk.webp 128w, https://asset.action.com/image/upload/t_digital_content_card/w_256/Web_A-merken_Webcard_2025_bdlnsk.webp 256w, https://asset.action.com/image/upload/t_digital_content_card/w_640/Web_A-merken_Webcard_2025_bdlnsk.webp 640w, https://asset.action.com/image/upload/t_digital_content_card/w_1080/Web_A-merken_Webcard_2025_bdlnsk.webp 1080w, https://asset.action.com/image/upload/t_digital_content_card/w_1920/Web_A-merken_Webcard_2025_bdlnsk.webp 1920w"
                                  src="https://asset.action.com/image/upload/t_digital_content_card/w_1920/Web_A-merken_Webcard_2025_bdlnsk.webp">
                              </div>
                              <div class="relative w-full p-4 InspirationContentCard_titleContainer__TmDDF bg-dark-blue">
                                <h3
                                  class="heading-lg text-neutral-0 line-clamp-2 flex min-w-0 items-center font-bold first-letter:uppercase"
                                  data-testid="content-card-title">Zawsze tanio</h3>
                                <div class="InspirationContentCard_chevronButton__98Zcv"><svg aria-hidden="true"
                                    data-testid="ChevronRightMd" class="h-8 w-8" xmlns="http://www.w3.org/2000/svg"
                                    width="24" height="24" fill="none" viewBox="0 0 24 24">
                                    <path fill="#001489"
                                      d="M10 17a1 1 0 0 1-.707-1.707L12.586 12 9.293 8.707a1 1 0 1 1 1.414-1.414l4 4a1 1 0 0 1 0 1.414l-4 4A1 1 0 0 1 10 17">
                                    </path>
                                  </svg></div>
                              </div>
                            </div>
                          </a></div>
                        <div class="w-(--itemWidth)">
                          <div class="block h-full">
                            <div
                              class="border-neutral-150 bg-neutral-0 col-span-1 border bg-neutral-0 relative h-full w-full"
                              data-testid="product-card" data-content-king="product-card" analytics="[object Object]"><a
                                class="group relative flex h-full w-full flex-col p-3 xs:p-4"
                                href="/pl-pl/p/2569169/skarpetki-sportowe-kappa/" data-testid="product-card-link"><span
                                  class="xs:max-h-[180px] relative aspect-square w-full md:max-h-[230px]"><img
                                    data-testid="product-card-image" alt="" loading="lazy" decoding="async"
                                    data-nimg="fill"
                                    class="object-contain object-center py-2 transition-transform duration-250 group-hover:scale-105 md:py-4 h-full w-full"
                                    style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent"
                                    sizes="(min-width: 1280px) calc(1280px / 4), (min-width: 1024px) calc(100vw / 4), (min-width: 768px) calc(100vw / 4), (min-width: 640px) calc(100vw / 3), calc(100vw / 2)"
                                    srcset="https://asset.action.com/image/upload/t_digital_product_image/w_128/20607375.webp 128w, https://asset.action.com/image/upload/t_digital_product_image/w_256/20607375.webp 256w, https://asset.action.com/image/upload/t_digital_product_image/w_640/20607375.webp 640w, https://asset.action.com/image/upload/t_digital_product_image/w_1080/20607375.webp 1080w, https://asset.action.com/image/upload/t_digital_product_image/w_1920/20607375.webp 1920w"
                                    src="https://asset.action.com/image/upload/t_digital_product_image/w_1920/20607375.webp"><span
                                    class="absolute bottom-0 flex flex-col gap-2"></span></span><span
                                  class="mt-2 mb-3 flex grow flex-col gap-1 leading-tight sm:mb-4"><span
                                    class="xs:text-[16px] xs:leading-5 text-sm leading-[18px] font-medium text-dark-blue-500 line-clamp-2 break-words"
                                    data-testid="product-card-title">Skarpetki sportowe Kappa</span><span
                                    class="max-h-fit text-sm leading-[18px] font-normal line-clamp-2 grow break-words text-neutral-700"
                                    data-testid="product-card-description">Rozmiary 39-46 | 3 pary | Różne
                                    kolory</span></span><span aria-label="10,95&nbsp;zł 3,65&nbsp;zł/szt."
                                  class="flex flex-col"><span data-testid="product-card-price-description"
                                    class="mb-1 block w-max text-xs leading-[12px] text-neutral-700">3,65&nbsp;zł/szt.</span><span
                                    class="flex items-start text-orange-500"><span data-testid="product-card-price-whole"
                                      class="font-bold tracking-[1px] text-[40px] leading-[28px] md:text-[48px] md:leading-[33px]">10</span><span
                                      class="inline-flex items-baseline"><span data-testid="product-card-price-fractional"
                                        class="font-bold tracking-[1px] text-[20px] leading-[14px] md:text-[28px] md:leading-[19px]">95</span></span></span></span><span
                                  class="flex leading-none text-neutral-700 mt-1 flex-row items-baseline self-baseline"
                                  data-testid="product-card-price-discount"><span class="flex items-center"
                                    data-testid="product-card-price-original-amount"><span
                                      class="text-center text-[12px] font-normal line-through">13,95&nbsp;zł</span><span
                                      class="pl-0.5 text-xs">*</span></span><span
                                    class="ml-1 rounded border border-neutral-700 px-[2px] py-px text-xs leading-[12px] font-medium"
                                    data-testid="product-card-price-discount-percentage">-21%</span></span><span
                                  class="mt-2 flex text-xs font-normal text-neutral-700"
                                  data-testid="product-card-price-discount-footnote"><span class="italic">*
                                    <!-- -->Najniższa cena z 30 dni przed obniżką
                                  </span></span><span class="absolute top-0 left-0 flex flex-col gap-0.5"><span
                                    class="flex overflow-hidden h-[22px] sm:h-[26px] text-neutral-0 text-[12px] leading-[14px] font-bold sm:text-sm sm:leading-[18px]"
                                    aria-labelledby="_R_3jda9binpfivjap5snpfivb_" data-testid="product-tag"><span
                                      class="flex w-fit items-center pr-1 pl-1.5 sm:pr-1.5 sm:pl-2 bg-orange-500"><span
                                        id="_R_3jda9binpfivjap5snpfivb_">Promocja tygodnia</span></span><span
                                      class="w-[8px]"><span class="-mr-px block h-full -translate-x-px bg-orange-500"
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
                        </div>
                        <div class="w-(--itemWidth)">
                          <div class="block h-full">
                            <div
                              class="border-neutral-150 bg-neutral-0 col-span-1 border bg-neutral-0 relative h-full w-full"
                              data-testid="product-card" data-content-king="product-card" analytics="[object Object]"><a
                                class="group relative flex h-full w-full flex-col p-3 xs:p-4"
                                href="/pl-pl/p/3007233/opakowanie-zbiorcze-haribo-slodkie-lub-kwasne/"
                                data-testid="product-card-link"><span
                                  class="xs:max-h-[180px] relative aspect-square w-full md:max-h-[230px]"><img
                                    data-testid="product-card-image" alt="" loading="lazy" decoding="async"
                                    data-nimg="fill"
                                    class="object-contain object-center py-2 transition-transform duration-250 group-hover:scale-105 md:py-4 h-full w-full"
                                    style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent"
                                    sizes="(min-width: 1280px) calc(1280px / 4), (min-width: 1024px) calc(100vw / 4), (min-width: 768px) calc(100vw / 4), (min-width: 640px) calc(100vw / 3), calc(100vw / 2)"
                                    srcset="https://asset.action.com/image/upload/t_digital_product_image/w_128/36717208.webp 128w, https://asset.action.com/image/upload/t_digital_product_image/w_256/36717208.webp 256w, https://asset.action.com/image/upload/t_digital_product_image/w_640/36717208.webp 640w, https://asset.action.com/image/upload/t_digital_product_image/w_1080/36717208.webp 1080w, https://asset.action.com/image/upload/t_digital_product_image/w_1920/36717208.webp 1920w"
                                    src="https://asset.action.com/image/upload/t_digital_product_image/w_1920/36717208.webp"><span
                                    class="absolute bottom-0 flex flex-col gap-2"></span></span><span
                                  class="mt-2 mb-3 flex grow flex-col gap-1 leading-tight sm:mb-4"><span
                                    class="xs:text-[16px] xs:leading-5 text-sm leading-[18px] font-medium text-dark-blue-500 line-clamp-2 break-words"
                                    data-testid="product-card-title">Opakowanie zbiorcze Haribo Słodkie lub
                                    kwaśne</span><span
                                    class="max-h-fit text-sm leading-[18px] font-normal line-clamp-2 grow break-words text-neutral-700"
                                    data-testid="product-card-description">350 g</span></span><span
                                  aria-label="13,39&nbsp;zł 38,26&nbsp;zł/kg" class="flex flex-col"><span
                                    data-testid="product-card-price-description"
                                    class="mb-1 block w-max text-xs leading-[12px] text-neutral-700">38,26&nbsp;zł/kg</span><span
                                    class="flex items-start text-orange-500"><span data-testid="product-card-price-whole"
                                      class="font-bold tracking-[1px] text-[40px] leading-[28px] md:text-[48px] md:leading-[33px]">13</span><span
                                      class="inline-flex items-baseline"><span data-testid="product-card-price-fractional"
                                        class="font-bold tracking-[1px] text-[20px] leading-[14px] md:text-[28px] md:leading-[19px]">39</span></span></span></span><span
                                  class="flex leading-none text-neutral-700 mt-1 flex-row items-baseline self-baseline"
                                  data-testid="product-card-price-discount"><span class="flex items-center"
                                    data-testid="product-card-price-original-amount"><span
                                      class="text-center text-[12px] font-normal line-through">15,79&nbsp;zł</span><span
                                      class="pl-0.5 text-xs">*</span></span><span
                                    class="ml-1 rounded border border-neutral-700 px-[2px] py-px text-xs leading-[12px] font-medium"
                                    data-testid="product-card-price-discount-percentage">-15%</span></span><span
                                  class="mt-2 flex text-xs font-normal text-neutral-700"
                                  data-testid="product-card-price-discount-footnote"><span class="italic">*
                                    <!-- -->Najniższa cena z 30 dni przed obniżką
                                  </span></span><span class="absolute top-0 left-0 flex flex-col gap-0.5"><span
                                    class="flex overflow-hidden h-[22px] sm:h-[26px] text-neutral-0 text-[12px] leading-[14px] font-bold sm:text-sm sm:leading-[18px]"
                                    aria-labelledby="_R_3jfa9binpfivjap5snpfivb_" data-testid="product-tag"><span
                                      class="flex w-fit items-center pr-1 pl-1.5 sm:pr-1.5 sm:pl-2 bg-orange-500"><span
                                        id="_R_3jfa9binpfivjap5snpfivb_">Promocja tygodnia</span></span><span
                                      class="w-[8px]"><span class="-mr-px block h-full -translate-x-px bg-orange-500"
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
                        </div>
                      </div>
                      <div class="w-4 shrink-0 lg:w-0 pointer-fine:w-0"></div>
                    </div>
                  </div>
                  <div class="pointer-events-none absolute inset-0"><button type="button" inert="" aria-label="Następna"
                      class="absolute -translate-y-1/2 top-1/2 bg-neutral-0 shadow-overlay-button rounded-full p-4 hidden lg:block pointer-fine:block transition duration-200 hover:scale-[1.15] -right-2 lg:-right-4 xl:-right-7 pointer-events-none opacity-0"
                      data-testid="carousel-next-navigation-button" onclick="nextCarouselPage(this)"><svg
                        aria-hidden="true" data-testid="ArrowRightMd" xmlns="http://www.w3.org/2000/svg" width="24"
                        height="24" fill="none" viewBox="0 0 24 24">
                        <path fill="#001489"
                          d="M13 19a1 1 0 0 1-.707-1.707L16.586 13H5a1 1 0 0 1 0-2h11.586l-4.293-4.293a1 1 0 1 1 1.414-1.414l6 6a1 1 0 0 1 .293.704v.006a1 1 0 0 1-.293.704l-6 6A1 1 0 0 1 13 19">
                        </path>
                      </svg></button></div>
                </div>
              </div>
            </div>
          </div>
          <div
            class="hidden h-fit min-h-[325px] gap-2 md:grid md:min-h-[380px] md:grid-cols-3 md:gap-3 lg:grid-cols-4 lg:gap-6">
            <div data-testid="inspirational-row-content-card" class="lg:col-span-2"><a
                class="relative h-full w-full group" href="/pl-pl/moment/najnizsze-ceny/marki-premium/"
                aria-label="Zobacz więcej" data-testid="content-card">
                <div
                  class="lg:min-w-none relative flex h-full min-h-[300px] w-full flex-col overflow-hidden rounded-md md:max-w-none InspirationContentCard_contentCard__YE4xI">
                  <div class="relative h-full w-full overflow-hidden"><img data-testid="content-card-image" alt=""
                      loading="lazy" decoding="async" data-nimg="fill"
                      class="bg-neutral-10 object-cover object-center transition-all duration-300 group-hover:scale-105 transition-transform duration-250 hover:scale-105 h-full w-full"
                      style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent"
                      sizes="(min-width: 1280px) calc( 1280px / 2) ,(min-width: 768px) calc( 100vw / 2 ),calc( 100vw / 3 * 2 )"
                      srcset="https://asset.action.com/image/upload/t_digital_content_card/w_128/Web_A-merken_Webcard_2025_bdlnsk.webp 128w, https://asset.action.com/image/upload/t_digital_content_card/w_256/Web_A-merken_Webcard_2025_bdlnsk.webp 256w, https://asset.action.com/image/upload/t_digital_content_card/w_640/Web_A-merken_Webcard_2025_bdlnsk.webp 640w, https://asset.action.com/image/upload/t_digital_content_card/w_1080/Web_A-merken_Webcard_2025_bdlnsk.webp 1080w, https://asset.action.com/image/upload/t_digital_content_card/w_1920/Web_A-merken_Webcard_2025_bdlnsk.webp 1920w"
                      src="https://asset.action.com/image/upload/t_digital_content_card/w_1920/Web_A-merken_Webcard_2025_bdlnsk.webp">
                  </div>
                  <div class="relative w-full p-4 InspirationContentCard_titleContainer__TmDDF bg-dark-blue">
                    <h3
                      class="heading-lg text-neutral-0 line-clamp-2 flex min-w-0 items-center font-bold first-letter:uppercase"
                      data-testid="content-card-title">Zawsze tanio</h3>
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
            <div class="block h-full">
              <div class="border-neutral-150 bg-neutral-0 col-span-1 border bg-neutral-0 relative h-full w-full"
                data-testid="product-card" data-content-king="product-card" analytics="[object Object]"><a
                  class="group relative flex h-full w-full flex-col p-3 xs:p-4"
                  href="/pl-pl/p/2569169/skarpetki-sportowe-kappa/" data-testid="product-card-link"><span
                    class="xs:max-h-[180px] relative aspect-square w-full md:max-h-[230px]"><img
                      data-testid="product-card-image" alt="" loading="lazy" decoding="async" data-nimg="fill"
                      class="object-contain object-center py-2 transition-transform duration-250 group-hover:scale-105 md:py-4 h-full w-full"
                      style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent"
                      sizes="(min-width: 1280px) calc(1280px / 4), (min-width: 1024px) calc(100vw / 4), (min-width: 768px) calc(100vw / 4), (min-width: 640px) calc(100vw / 3), calc(100vw / 2)"
                      srcset="https://asset.action.com/image/upload/t_digital_product_image/w_128/20607375.webp 128w, https://asset.action.com/image/upload/t_digital_product_image/w_256/20607375.webp 256w, https://asset.action.com/image/upload/t_digital_product_image/w_640/20607375.webp 640w, https://asset.action.com/image/upload/t_digital_product_image/w_1080/20607375.webp 1080w, https://asset.action.com/image/upload/t_digital_product_image/w_1920/20607375.webp 1920w"
                      src="https://asset.action.com/image/upload/t_digital_product_image/w_1920/20607375.webp"><span
                      class="absolute bottom-0 flex flex-col gap-2"></span></span><span
                    class="mt-2 mb-3 flex grow flex-col gap-1 leading-tight sm:mb-4"><span
                      class="xs:text-[16px] xs:leading-5 text-sm leading-[18px] font-medium text-dark-blue-500 line-clamp-2 break-words"
                      data-testid="product-card-title">Skarpetki sportowe Kappa</span><span
                      class="max-h-fit text-sm leading-[18px] font-normal line-clamp-2 grow break-words text-neutral-700"
                      data-testid="product-card-description">Rozmiary 39-46 | 3 pary | Różne kolory</span></span><span
                    aria-label="10,95&nbsp;zł 3,65&nbsp;zł/szt." class="flex flex-col"><span
                      data-testid="product-card-price-description"
                      class="mb-1 block w-max text-xs leading-[12px] text-neutral-700">3,65&nbsp;zł/szt.</span><span
                      class="flex items-start text-orange-500"><span data-testid="product-card-price-whole"
                        class="font-bold tracking-[1px] text-[40px] leading-[28px] md:text-[48px] md:leading-[33px]">10</span><span
                        class="inline-flex items-baseline"><span data-testid="product-card-price-fractional"
                          class="font-bold tracking-[1px] text-[20px] leading-[14px] md:text-[28px] md:leading-[19px]">95</span></span></span></span><span
                    class="flex leading-none text-neutral-700 mt-1 flex-row items-baseline self-baseline"
                    data-testid="product-card-price-discount"><span class="flex items-center"
                      data-testid="product-card-price-original-amount"><span
                        class="text-center text-[12px] font-normal line-through">13,95&nbsp;zł</span><span
                        class="pl-0.5 text-xs">*</span></span><span
                      class="ml-1 rounded border border-neutral-700 px-[2px] py-px text-xs leading-[12px] font-medium"
                      data-testid="product-card-price-discount-percentage">-21%</span></span><span
                    class="mt-2 flex text-xs font-normal text-neutral-700"
                    data-testid="product-card-price-discount-footnote"><span class="italic">*
                      <!-- -->Najniższa cena z 30 dni przed obniżką
                    </span></span><span class="absolute top-0 left-0 flex flex-col gap-0.5"><span
                      class="flex overflow-hidden h-[22px] sm:h-[26px] text-neutral-0 text-[12px] leading-[14px] font-bold sm:text-sm sm:leading-[18px]"
                      aria-labelledby="_R_76mdbinpfivjap5snpfivb_" data-testid="product-tag"><span
                        class="flex w-fit items-center pr-1 pl-1.5 sm:pr-1.5 sm:pl-2 bg-orange-500"><span
                          id="_R_76mdbinpfivjap5snpfivb_">Promocja tygodnia</span></span><span class="w-[8px]"><span
                          class="-mr-px block h-full -translate-x-px bg-orange-500"
                          style="clip-path:polygon(0 0, 100% 0, 1px 100%, 0 100%)"></span></span></span></span></a><button
                  type="button" data-testid="favorite-button" class="absolute top-0 right-0 p-2"
                  aria-label="Dodaj do ulubionych"><svg aria-hidden="true" data-testid="Heart01"
                    xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                    <path fill="#8593a3"
                      d="M12 21a1 1 0 0 1-.486-.126C11.126 20.658 2 15.514 2 9c0-3.665 2.218-5.425 4.293-5.849 2.171-.44 4.328.402 5.707 2.113 1.38-1.712 3.537-2.552 5.707-2.113C19.782 3.575 22 5.335 22 9.001c0 6.513-9.126 11.657-9.515 11.873A1 1 0 0 1 12 21M7.4 5.041q-.368 0-.707.07C5.007 5.456 4 6.91 4 9.001c0 4.584 6.197 8.728 8 9.836 1.804-1.108 8-5.252 8-9.837 0-2.09-1.007-3.544-2.693-3.889-1.482-.3-3.479.346-4.387 2.475a1 1 0 0 1-1.84 0C10.31 5.78 8.755 5.04 7.4 5.04">
                    </path>
                  </svg></button></div>
            </div>
            <div class="block h-full">
              <div class="border-neutral-150 bg-neutral-0 col-span-1 border bg-neutral-0 relative h-full w-full"
                data-testid="product-card" data-content-king="product-card" analytics="[object Object]"><a
                  class="group relative flex h-full w-full flex-col p-3 xs:p-4"
                  href="/pl-pl/p/3007233/opakowanie-zbiorcze-haribo-slodkie-lub-kwasne/"
                  data-testid="product-card-link"><span
                    class="xs:max-h-[180px] relative aspect-square w-full md:max-h-[230px]"><img
                      data-testid="product-card-image" alt="" loading="lazy" decoding="async" data-nimg="fill"
                      class="object-contain object-center py-2 transition-transform duration-250 group-hover:scale-105 md:py-4 h-full w-full"
                      style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent"
                      sizes="(min-width: 1280px) calc(1280px / 4), (min-width: 1024px) calc(100vw / 4), (min-width: 768px) calc(100vw / 4), (min-width: 640px) calc(100vw / 3), calc(100vw / 2)"
                      srcset="https://asset.action.com/image/upload/t_digital_product_image/w_128/36717208.webp 128w, https://asset.action.com/image/upload/t_digital_product_image/w_256/36717208.webp 256w, https://asset.action.com/image/upload/t_digital_product_image/w_640/36717208.webp 640w, https://asset.action.com/image/upload/t_digital_product_image/w_1080/36717208.webp 1080w, https://asset.action.com/image/upload/t_digital_product_image/w_1920/36717208.webp 1920w"
                      src="https://asset.action.com/image/upload/t_digital_product_image/w_1920/36717208.webp"><span
                      class="absolute bottom-0 flex flex-col gap-2"></span></span><span
                    class="mt-2 mb-3 flex grow flex-col gap-1 leading-tight sm:mb-4"><span
                      class="xs:text-[16px] xs:leading-5 text-sm leading-[18px] font-medium text-dark-blue-500 line-clamp-2 break-words"
                      data-testid="product-card-title">Opakowanie zbiorcze Haribo Słodkie lub kwaśne</span><span
                      class="max-h-fit text-sm leading-[18px] font-normal line-clamp-2 grow break-words text-neutral-700"
                      data-testid="product-card-description">350 g</span></span><span
                    aria-label="13,39&nbsp;zł 38,26&nbsp;zł/kg" class="flex flex-col"><span
                      data-testid="product-card-price-description"
                      class="mb-1 block w-max text-xs leading-[12px] text-neutral-700">38,26&nbsp;zł/kg</span><span
                      class="flex items-start text-orange-500"><span data-testid="product-card-price-whole"
                        class="font-bold tracking-[1px] text-[40px] leading-[28px] md:text-[48px] md:leading-[33px]">13</span><span
                        class="inline-flex items-baseline"><span data-testid="product-card-price-fractional"
                          class="font-bold tracking-[1px] text-[20px] leading-[14px] md:text-[28px] md:leading-[19px]">39</span></span></span></span><span
                    class="flex leading-none text-neutral-700 mt-1 flex-row items-baseline self-baseline"
                    data-testid="product-card-price-discount"><span class="flex items-center"
                      data-testid="product-card-price-original-amount"><span
                        class="text-center text-[12px] font-normal line-through">15,79&nbsp;zł</span><span
                        class="pl-0.5 text-xs">*</span></span><span
                      class="ml-1 rounded border border-neutral-700 px-[2px] py-px text-xs leading-[12px] font-medium"
                      data-testid="product-card-price-discount-percentage">-15%</span></span><span
                    class="mt-2 flex text-xs font-normal text-neutral-700"
                    data-testid="product-card-price-discount-footnote"><span class="italic">*
                      <!-- -->Najniższa cena z 30 dni przed obniżką
                    </span></span><span class="absolute top-0 left-0 flex flex-col gap-0.5"><span
                      class="flex overflow-hidden h-[22px] sm:h-[26px] text-neutral-0 text-[12px] leading-[14px] font-bold sm:text-sm sm:leading-[18px]"
                      aria-labelledby="_R_76qdbinpfivjap5snpfivb_" data-testid="product-tag"><span
                        class="flex w-fit items-center pr-1 pl-1.5 sm:pr-1.5 sm:pl-2 bg-orange-500"><span
                          id="_R_76qdbinpfivjap5snpfivb_">Promocja tygodnia</span></span><span class="w-[8px]"><span
                          class="-mr-px block h-full -translate-x-px bg-orange-500"
                          style="clip-path:polygon(0 0, 100% 0, 1px 100%, 0 100%)"></span></span></span></span></a><button
                  type="button" data-testid="favorite-button" class="absolute top-0 right-0 p-2"
                  aria-label="Dodaj do ulubionych"><svg aria-hidden="true" data-testid="Heart01"
                    xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                    <path fill="#8593a3"
                      d="M12 21a1 1 0 0 1-.486-.126C11.126 20.658 2 15.514 2 9c0-3.665 2.218-5.425 4.293-5.849 2.171-.44 4.328.402 5.707 2.113 1.38-1.712 3.537-2.552 5.707-2.113C19.782 3.575 22 5.335 22 9.001c0 6.513-9.126 11.657-9.515 11.873A1 1 0 0 1 12 21M7.4 5.041q-.368 0-.707.07C5.007 5.456 4 6.91 4 9.001c0 4.584 6.197 8.728 8 9.836 1.804-1.108 8-5.252 8-9.837 0-2.09-1.007-3.544-2.693-3.889-1.482-.3-3.479.346-4.387 2.475a1 1 0 0 1-1.84 0C10.31 5.78 8.755 5.04 7.4 5.04">
                    </path>
                  </svg></button></div>
            </div>
          </div>
          {* <script type="application/ld+json">
{"itemListElement":[{"@type":"ListItem","position":1,"url":"https://www.action.com/pl-pl/p/2569169/skarpetki-sportowe-kappa/"},{"@type":"ListItem","position":2,"url":"https://www.action.com/pl-pl/p/3007233/opakowanie-zbiorcze-haribo-slodkie-lub-kwasne/"}],"@context":"https://schema.org","@type":"ItemList"}
          </script> *}
        </div>
      </div>
    </div>
  </section>

  <section class="bg-neutral-50 pt-6 md:pt-8 pb-6 md:pb-8" aria-label="Wiele produktów"
    data-testid="cms-inspirational-row">
    <div class="relative flex w-full flex-col px-4 lg:px-8">
      <div class="mx-auto w-full max-w-7xl">
        <div class="flex flex-col gap-2">
          <div class="flex items-end justify-between gap-4 mb-2">
            <div class="flex flex-col">
              <h2 class="heading-xl" data-testid="title-view-title">Wiele produktów</h2>
            </div><a class="btn-base group btn-link w-fit max-w-[160px] sm:max-w-full"
              href="/pl-pl/moment/najnizsze-ceny/artykuy-za-mniej-ni-5-zotych/" data-testid="title-view-link"><span
                class="btn-content-label btn-content-link btn-shadow-dark-blue">Zobacz więcej</span><span
                aria-hidden="true" class="content-center ml-1"><svg aria-hidden="true" data-testid="ChevronRightMd"
                  xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                  <path fill="#4e769c"
                    d="M10 17a1 1 0 0 1-.707-1.707L12.586 12 9.293 8.707a1 1 0 1 1 1.414-1.414l4 4a1 1 0 0 1 0 1.414l-4 4A1 1 0 0 1 10 17">
                  </path>
                </svg></span></a>
          </div>
          <div class="min-h-[325px] md:hidden">
            <div class="flex flex-col gap-4 md:gap-6"
              style="--rowsXl:1;--columnsXl:5;--rowsLg:1;--columnsLg:4;--rowsMd:1;--columnsMd:3;--rowsSm:1;--columnsSm:3;--rowsDefault:1;--columnsDefault:2">
              <div class="@container relative" style="--numberOfPages:1;--currentPage:0">
                <div
                  class="xl:[--columns:var(--columnsXl)] xl:[--rows:var(--rowsXl)] lg:[--columns:var(--columnsLg)] lg:[--rows:var(--rowsLg)] md:[--columns:var(--columnsMd)] md:[--rows:var(--rowsMd)] sm:[--columns:var(--columnsSm)] sm:[--rows:var(--rowsSm)] [--columns:var(--columnsDefault)] [--rows:var(--rowsDefault)] [--itemSpacing:8px] md:[--itemSpacing:16px] [--lastItemPartial:16px] sm:[--lastItemPartial:32px] [--itemWidth:calc((100cqw-var(--itemSpacing)*var(--columns)-var(--lastItemPartial))/var(--columns))] lg:[--itemWidth:calc((100cqw-var(--itemSpacing)*(var(--columns)-1))/var(--columns))] pointer-fine:[--itemWidth:calc((100cqw-var(--itemSpacing)*(var(--columns)-1))/var(--columns))] [--isMultiRow:calc(min(1,var(--rows)-1))] [--isSingleRow:calc(1-var(--isMultiRow))]">
                  <div class="pointer-events-none absolute inset-0 z-1"><button type="button" inert=""
                      aria-label="Poprzednia"
                      class="custom-invisible absolute -translate-y-1/2 top-1/2 bg-neutral-0 shadow-overlay-button rounded-full p-4 hidden lg:block pointer-fine:block transition duration-200 hover:scale-[1.15] -left-2 lg:-left-4 xl:-left-7 pointer-events-none opacity-0"
                      data-testid="carousel-previous-navigation-button" onclick="prevCarouselPage(this)"><svg
                        aria-hidden="true" data-testid="ArrowLeftMd" xmlns="http://www.w3.org/2000/svg" width="24"
                        height="24" fill="none" viewBox="0 0 24 24">
                        <path fill="#001489"
                          d="M11 19a1 1 0 0 1-.707-.293l-6-6A1 1 0 0 1 4 12.003v-.006a1 1 0 0 1 .293-.704l6-6a1 1 0 1 1 1.414 1.414L7.414 11H19a1 1 0 0 1 0 2H7.414l4.293 4.293A1 1 0 0 1 11 19">
                        </path>
                      </svg></button></div>
                  <div
                    class="no-scrollbar flex overflow-auto lg:overflow-clip pointer-fine:overflow-clip lg:[overflow-clip-margin:2px] pointer-fine:[overflow-clip-margin:2px] -mx-4 lg:mx-0 pointer-fine:mx-0">
                    <div class="relative flex transition-transform duration-600 ease-in-out">
                      <div class="w-4 shrink-0 lg:w-0 pointer-fine:w-0"></div>
                      <div class="grid grid-flow-col grid-rows-[repeat(var(--rows),minmax(0,auto))] gap-(--itemSpacing)">
                        <div class="w-(--itemWidth)"><a class="relative h-full w-full group"
                            href="/pl-pl/moment/najnizsze-ceny/artykuy-za-mniej-ni-5-zotych/" aria-label="Zobacz więcej"
                            data-testid="content-card">
                            <div
                              class="lg:min-w-none relative flex h-full min-h-[300px] w-full flex-col overflow-hidden rounded-md md:max-w-none InspirationContentCard_contentCard__YE4xI">
                              <div class="relative h-full w-full overflow-hidden"><img data-testid="content-card-image"
                                  alt="" loading="lazy" decoding="async" data-nimg="fill"
                                  class="bg-neutral-10 object-cover object-center transition-all duration-300 group-hover:scale-105 transition-transform duration-250 hover:scale-105 h-full w-full"
                                  style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent"
                                  sizes="(min-width: 1280px) calc( 1280px / 2) ,(min-width: 768px) calc( 100vw / 2 ),calc( 100vw / 3 * 2 )"
                                  srcset="https://asset.action.com/image/upload/t_digital_content_card/w_128/Web_ELP_Webcard_2025_FR_btdhhn.webp 128w, https://asset.action.com/image/upload/t_digital_content_card/w_256/Web_ELP_Webcard_2025_FR_btdhhn.webp 256w, https://asset.action.com/image/upload/t_digital_content_card/w_640/Web_ELP_Webcard_2025_FR_btdhhn.webp 640w, https://asset.action.com/image/upload/t_digital_content_card/w_1080/Web_ELP_Webcard_2025_FR_btdhhn.webp 1080w, https://asset.action.com/image/upload/t_digital_content_card/w_1920/Web_ELP_Webcard_2025_FR_btdhhn.webp 1920w"
                                  src="https://asset.action.com/image/upload/t_digital_content_card/w_1920/Web_ELP_Webcard_2025_FR_btdhhn.webp">
                              </div>
                              <div class="relative w-full p-4 InspirationContentCard_titleContainer__TmDDF bg-dark-blue">
                                <h3
                                  class="heading-lg text-neutral-0 line-clamp-2 flex min-w-0 items-center font-bold first-letter:uppercase"
                                  data-testid="content-card-title">poniżej 5 złotych</h3>
                                <div class="InspirationContentCard_chevronButton__98Zcv"><svg aria-hidden="true"
                                    data-testid="ChevronRightMd" class="h-8 w-8" xmlns="http://www.w3.org/2000/svg"
                                    width="24" height="24" fill="none" viewBox="0 0 24 24">
                                    <path fill="#001489"
                                      d="M10 17a1 1 0 0 1-.707-1.707L12.586 12 9.293 8.707a1 1 0 1 1 1.414-1.414l4 4a1 1 0 0 1 0 1.414l-4 4A1 1 0 0 1 10 17">
                                    </path>
                                  </svg></div>
                              </div>
                            </div>
                          </a></div>
                        <div class="w-(--itemWidth)">
                          <div class="block h-full">
                            <div
                              class="border-neutral-150 bg-neutral-0 col-span-1 border bg-neutral-0 relative h-full w-full"
                              data-testid="product-card" data-content-king="product-card" analytics="[object Object]"><a
                                class="group relative flex h-full w-full flex-col p-3 xs:p-4"
                                href="/pl-pl/p/3013727/squishmeez-rozciagliwe-figurki/"
                                data-testid="product-card-link"><span
                                  class="xs:max-h-[180px] relative aspect-square w-full md:max-h-[230px]"><img
                                    data-testid="product-card-image" alt="" loading="lazy" decoding="async"
                                    data-nimg="fill"
                                    class="object-contain object-center py-2 transition-transform duration-250 group-hover:scale-105 md:py-4 h-full w-full"
                                    style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent"
                                    sizes="(min-width: 1280px) calc(1280px / 4), (min-width: 1024px) calc(100vw / 4), (min-width: 768px) calc(100vw / 4), (min-width: 640px) calc(100vw / 3), calc(100vw / 2)"
                                    srcset="https://asset.action.com/image/upload/t_digital_product_image/w_128/3013727_5014761016113-110_18_jrjkxd.webp 128w, https://asset.action.com/image/upload/t_digital_product_image/w_256/3013727_5014761016113-110_18_jrjkxd.webp 256w, https://asset.action.com/image/upload/t_digital_product_image/w_640/3013727_5014761016113-110_18_jrjkxd.webp 640w, https://asset.action.com/image/upload/t_digital_product_image/w_1080/3013727_5014761016113-110_18_jrjkxd.webp 1080w, https://asset.action.com/image/upload/t_digital_product_image/w_1920/3013727_5014761016113-110_18_jrjkxd.webp 1920w"
                                    src="https://asset.action.com/image/upload/t_digital_product_image/w_1920/3013727_5014761016113-110_18_jrjkxd.webp"><span
                                    class="absolute bottom-0 flex flex-col gap-2"></span></span><span
                                  class="mt-2 mb-3 flex grow flex-col gap-1 leading-tight sm:mb-4"><span
                                    class="xs:text-[16px] xs:leading-5 text-sm leading-[18px] font-medium text-dark-blue-500 line-clamp-2 break-words"
                                    data-testid="product-card-title">Squishmeez Rozciągliwe figurki</span><span
                                    class="max-h-fit text-sm leading-[18px] font-normal line-clamp-2 grow break-words text-neutral-700"
                                    data-testid="product-card-description">2 sztuki | Różne warianty</span></span><span
                                  aria-label="2,79&nbsp;zł 1,40&nbsp;zł/szt." class="flex flex-col"><span
                                    data-testid="product-card-price-description"
                                    class="mb-1 block w-max text-xs leading-[12px] text-neutral-700">1,40&nbsp;zł/szt.</span><span
                                    class="flex items-start text-orange-500"><span data-testid="product-card-price-whole"
                                      class="font-bold tracking-[1px] text-[40px] leading-[28px] md:text-[48px] md:leading-[33px]">2</span><span
                                      class="inline-flex items-baseline"><span data-testid="product-card-price-fractional"
                                        class="font-bold tracking-[1px] text-[20px] leading-[14px] md:text-[28px] md:leading-[19px]">79</span></span></span></span><span
                                  class="flex leading-none text-neutral-700 mt-1 flex-row items-baseline self-baseline"
                                  data-testid="product-card-price-discount"><span class="flex items-center"
                                    data-testid="product-card-price-original-amount"><span
                                      class="text-center text-[12px] font-normal line-through">3,69&nbsp;zł</span><span
                                      class="pl-0.5 text-xs">*</span></span><span
                                    class="ml-1 rounded border border-neutral-700 px-[2px] py-px text-xs leading-[12px] font-medium"
                                    data-testid="product-card-price-discount-percentage">-24%</span></span><span
                                  class="mt-2 flex text-xs font-normal text-neutral-700"
                                  data-testid="product-card-price-discount-footnote"><span class="italic">*
                                    <!-- -->Najniższa cena z 30 dni przed obniżką
                                  </span></span><span class="absolute top-0 left-0 flex flex-col gap-0.5"><span
                                    class="flex overflow-hidden h-[22px] sm:h-[26px] text-neutral-0 text-[12px] leading-[14px] font-bold sm:text-sm sm:leading-[18px]"
                                    aria-labelledby="_R_3jda9jinpfivjap5snpfivb_" data-testid="product-tag"><span
                                      class="flex w-fit items-center pr-1 pl-1.5 sm:pr-1.5 sm:pl-2 bg-orange-500"><span
                                        id="_R_3jda9jinpfivjap5snpfivb_">Promocja tygodnia</span></span><span
                                      class="w-[8px]"><span class="-mr-px block h-full -translate-x-px bg-orange-500"
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
                        </div>
                        <div class="w-(--itemWidth)">
                          <div class="block h-full">
                            <div
                              class="border-neutral-150 bg-neutral-0 col-span-1 border bg-neutral-0 relative h-full w-full"
                              data-testid="product-card" data-content-king="product-card" analytics="[object Object]"><a
                                class="group relative flex h-full w-full flex-col p-3 xs:p-4"
                                href="/pl-pl/p/3200874/balsam-do-ust-i-love-my-style/"
                                data-testid="product-card-link"><span
                                  class="xs:max-h-[180px] relative aspect-square w-full md:max-h-[230px]"><img
                                    data-testid="product-card-image" alt="" loading="lazy" decoding="async"
                                    data-nimg="fill"
                                    class="object-contain object-center py-2 transition-transform duration-250 group-hover:scale-105 md:py-4 h-full w-full"
                                    style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent"
                                    sizes="(min-width: 1280px) calc(1280px / 4), (min-width: 1024px) calc(100vw / 4), (min-width: 768px) calc(100vw / 4), (min-width: 640px) calc(100vw / 3), calc(100vw / 2)"
                                    srcset="https://asset.action.com/image/upload/t_digital_product_image/w_128/3200874_8719668028364-110_01_gsvky2.webp 128w, https://asset.action.com/image/upload/t_digital_product_image/w_256/3200874_8719668028364-110_01_gsvky2.webp 256w, https://asset.action.com/image/upload/t_digital_product_image/w_640/3200874_8719668028364-110_01_gsvky2.webp 640w, https://asset.action.com/image/upload/t_digital_product_image/w_1080/3200874_8719668028364-110_01_gsvky2.webp 1080w, https://asset.action.com/image/upload/t_digital_product_image/w_1920/3200874_8719668028364-110_01_gsvky2.webp 1920w"
                                    src="https://asset.action.com/image/upload/t_digital_product_image/w_1920/3200874_8719668028364-110_01_gsvky2.webp"><span
                                    class="absolute bottom-0 flex flex-col gap-2"></span></span><span
                                  class="mt-2 mb-3 flex grow flex-col gap-1 leading-tight sm:mb-4"><span
                                    class="xs:text-[16px] xs:leading-5 text-sm leading-[18px] font-medium text-dark-blue-500 line-clamp-2 break-words"
                                    data-testid="product-card-title">Balsam do ust I Love My Style</span><span
                                    class="max-h-fit text-sm leading-[18px] font-normal line-clamp-2 grow break-words text-neutral-700"
                                    data-testid="product-card-description">Różne warianty</span></span><span
                                  aria-label="3,49&nbsp;zł 3,49&nbsp;zł/szt." class="flex flex-col"><span
                                    data-testid="product-card-price-description"
                                    class="mb-1 block w-max text-xs leading-[12px] text-neutral-700">3,49&nbsp;zł/szt.</span><span
                                    class="flex items-start text-orange-500"><span data-testid="product-card-price-whole"
                                      class="font-bold tracking-[1px] text-[40px] leading-[28px] md:text-[48px] md:leading-[33px]">3</span><span
                                      class="inline-flex items-baseline"><span data-testid="product-card-price-fractional"
                                        class="font-bold tracking-[1px] text-[20px] leading-[14px] md:text-[28px] md:leading-[19px]">49</span></span></span></span><span
                                  class="flex leading-none text-neutral-700 mt-1 flex-row items-baseline self-baseline"
                                  data-testid="product-card-price-discount"><span class="flex items-center"
                                    data-testid="product-card-price-original-amount"><span
                                      class="text-center text-[12px] font-normal line-through">4,49&nbsp;zł</span><span
                                      class="pl-0.5 text-xs">*</span></span><span
                                    class="ml-1 rounded border border-neutral-700 px-[2px] py-px text-xs leading-[12px] font-medium"
                                    data-testid="product-card-price-discount-percentage">-22%</span></span><span
                                  class="mt-2 flex text-xs font-normal text-neutral-700"
                                  data-testid="product-card-price-discount-footnote"><span class="italic">*
                                    <!-- -->Najniższa cena z 30 dni przed obniżką
                                  </span></span><span class="absolute top-0 left-0 flex flex-col gap-0.5"><span
                                    class="flex overflow-hidden h-[22px] sm:h-[26px] text-neutral-0 text-[12px] leading-[14px] font-bold sm:text-sm sm:leading-[18px]"
                                    aria-labelledby="_R_3jfa9jinpfivjap5snpfivb_" data-testid="product-tag"><span
                                      class="flex w-fit items-center pr-1 pl-1.5 sm:pr-1.5 sm:pl-2 bg-orange-500"><span
                                        id="_R_3jfa9jinpfivjap5snpfivb_">Promocja tygodnia</span></span><span
                                      class="w-[8px]"><span class="-mr-px block h-full -translate-x-px bg-orange-500"
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
                        </div>
                      </div>
                      <div class="w-4 shrink-0 lg:w-0 pointer-fine:w-0"></div>
                    </div>
                  </div>
                  <div class="pointer-events-none absolute inset-0"><button type="button" inert="" aria-label="Następna"
                      class="absolute -translate-y-1/2 top-1/2 bg-neutral-0 shadow-overlay-button rounded-full p-4 hidden lg:block pointer-fine:block transition duration-200 hover:scale-[1.15] -right-2 lg:-right-4 xl:-right-7 pointer-events-none opacity-0"
                      data-testid="carousel-next-navigation-button" onclick="nextCarouselPage(this)"><svg
                        aria-hidden="true" data-testid="ArrowRightMd" xmlns="http://www.w3.org/2000/svg" width="24"
                        height="24" fill="none" viewBox="0 0 24 24">
                        <path fill="#001489"
                          d="M13 19a1 1 0 0 1-.707-1.707L16.586 13H5a1 1 0 0 1 0-2h11.586l-4.293-4.293a1 1 0 1 1 1.414-1.414l6 6a1 1 0 0 1 .293.704v.006a1 1 0 0 1-.293.704l-6 6A1 1 0 0 1 13 19">
                        </path>
                      </svg></button></div>
                </div>
              </div>
            </div>
          </div>
          <div
            class="hidden h-fit min-h-[325px] gap-2 md:grid md:min-h-[380px] md:grid-cols-3 md:gap-3 lg:grid-cols-4 lg:gap-6">
            <div data-testid="inspirational-row-content-card" class="lg:col-span-2"><a
                class="relative h-full w-full group" href="/pl-pl/moment/najnizsze-ceny/artykuy-za-mniej-ni-5-zotych/"
                aria-label="Zobacz więcej" data-testid="content-card">
                <div
                  class="lg:min-w-none relative flex h-full min-h-[300px] w-full flex-col overflow-hidden rounded-md md:max-w-none InspirationContentCard_contentCard__YE4xI">
                  <div class="relative h-full w-full overflow-hidden"><img data-testid="content-card-image" alt=""
                      loading="lazy" decoding="async" data-nimg="fill"
                      class="bg-neutral-10 object-cover object-center transition-all duration-300 group-hover:scale-105 transition-transform duration-250 hover:scale-105 h-full w-full"
                      style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent"
                      sizes="(min-width: 1280px) calc( 1280px / 2) ,(min-width: 768px) calc( 100vw / 2 ),calc( 100vw / 3 * 2 )"
                      srcset="https://asset.action.com/image/upload/t_digital_content_card/w_128/Web_ELP_Webcard_2025_FR_btdhhn.webp 128w, https://asset.action.com/image/upload/t_digital_content_card/w_256/Web_ELP_Webcard_2025_FR_btdhhn.webp 256w, https://asset.action.com/image/upload/t_digital_content_card/w_640/Web_ELP_Webcard_2025_FR_btdhhn.webp 640w, https://asset.action.com/image/upload/t_digital_content_card/w_1080/Web_ELP_Webcard_2025_FR_btdhhn.webp 1080w, https://asset.action.com/image/upload/t_digital_content_card/w_1920/Web_ELP_Webcard_2025_FR_btdhhn.webp 1920w"
                      src="https://asset.action.com/image/upload/t_digital_content_card/w_1920/Web_ELP_Webcard_2025_FR_btdhhn.webp">
                  </div>
                  <div class="relative w-full p-4 InspirationContentCard_titleContainer__TmDDF bg-dark-blue">
                    <h3
                      class="heading-lg text-neutral-0 line-clamp-2 flex min-w-0 items-center font-bold first-letter:uppercase"
                      data-testid="content-card-title">poniżej 5 złotych</h3>
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
            <div class="block h-full">
              <div class="border-neutral-150 bg-neutral-0 col-span-1 border bg-neutral-0 relative h-full w-full"
                data-testid="product-card" data-content-king="product-card" analytics="[object Object]"><a
                  class="group relative flex h-full w-full flex-col p-3 xs:p-4"
                  href="/pl-pl/p/3013727/squishmeez-rozciagliwe-figurki/" data-testid="product-card-link"><span
                    class="xs:max-h-[180px] relative aspect-square w-full md:max-h-[230px]"><img
                      data-testid="product-card-image" alt="" loading="lazy" decoding="async" data-nimg="fill"
                      class="object-contain object-center py-2 transition-transform duration-250 group-hover:scale-105 md:py-4 h-full w-full"
                      style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent"
                      sizes="(min-width: 1280px) calc(1280px / 4), (min-width: 1024px) calc(100vw / 4), (min-width: 768px) calc(100vw / 4), (min-width: 640px) calc(100vw / 3), calc(100vw / 2)"
                      srcset="https://asset.action.com/image/upload/t_digital_product_image/w_128/3013727_5014761016113-110_18_jrjkxd.webp 128w, https://asset.action.com/image/upload/t_digital_product_image/w_256/3013727_5014761016113-110_18_jrjkxd.webp 256w, https://asset.action.com/image/upload/t_digital_product_image/w_640/3013727_5014761016113-110_18_jrjkxd.webp 640w, https://asset.action.com/image/upload/t_digital_product_image/w_1080/3013727_5014761016113-110_18_jrjkxd.webp 1080w, https://asset.action.com/image/upload/t_digital_product_image/w_1920/3013727_5014761016113-110_18_jrjkxd.webp 1920w"
                      src="https://asset.action.com/image/upload/t_digital_product_image/w_1920/3013727_5014761016113-110_18_jrjkxd.webp"><span
                      class="absolute bottom-0 flex flex-col gap-2"></span></span><span
                    class="mt-2 mb-3 flex grow flex-col gap-1 leading-tight sm:mb-4"><span
                      class="xs:text-[16px] xs:leading-5 text-sm leading-[18px] font-medium text-dark-blue-500 line-clamp-2 break-words"
                      data-testid="product-card-title">Squishmeez Rozciągliwe figurki</span><span
                      class="max-h-fit text-sm leading-[18px] font-normal line-clamp-2 grow break-words text-neutral-700"
                      data-testid="product-card-description">2 sztuki | Różne warianty</span></span><span
                    aria-label="2,79&nbsp;zł 1,40&nbsp;zł/szt." class="flex flex-col"><span
                      data-testid="product-card-price-description"
                      class="mb-1 block w-max text-xs leading-[12px] text-neutral-700">1,40&nbsp;zł/szt.</span><span
                      class="flex items-start text-orange-500"><span data-testid="product-card-price-whole"
                        class="font-bold tracking-[1px] text-[40px] leading-[28px] md:text-[48px] md:leading-[33px]">2</span><span
                        class="inline-flex items-baseline"><span data-testid="product-card-price-fractional"
                          class="font-bold tracking-[1px] text-[20px] leading-[14px] md:text-[28px] md:leading-[19px]">79</span></span></span></span><span
                    class="flex leading-none text-neutral-700 mt-1 flex-row items-baseline self-baseline"
                    data-testid="product-card-price-discount"><span class="flex items-center"
                      data-testid="product-card-price-original-amount"><span
                        class="text-center text-[12px] font-normal line-through">3,69&nbsp;zł</span><span
                        class="pl-0.5 text-xs">*</span></span><span
                      class="ml-1 rounded border border-neutral-700 px-[2px] py-px text-xs leading-[12px] font-medium"
                      data-testid="product-card-price-discount-percentage">-24%</span></span><span
                    class="mt-2 flex text-xs font-normal text-neutral-700"
                    data-testid="product-card-price-discount-footnote"><span class="italic">*
                      <!-- -->Najniższa cena z 30 dni przed obniżką
                    </span></span><span class="absolute top-0 left-0 flex flex-col gap-0.5"><span
                      class="flex overflow-hidden h-[22px] sm:h-[26px] text-neutral-0 text-[12px] leading-[14px] font-bold sm:text-sm sm:leading-[18px]"
                      aria-labelledby="_R_76mdjinpfivjap5snpfivb_" data-testid="product-tag"><span
                        class="flex w-fit items-center pr-1 pl-1.5 sm:pr-1.5 sm:pl-2 bg-orange-500"><span
                          id="_R_76mdjinpfivjap5snpfivb_">Promocja tygodnia</span></span><span class="w-[8px]"><span
                          class="-mr-px block h-full -translate-x-px bg-orange-500"
                          style="clip-path:polygon(0 0, 100% 0, 1px 100%, 0 100%)"></span></span></span></span></a><button
                  type="button" data-testid="favorite-button" class="absolute top-0 right-0 p-2"
                  aria-label="Dodaj do ulubionych"><svg aria-hidden="true" data-testid="Heart01"
                    xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                    <path fill="#8593a3"
                      d="M12 21a1 1 0 0 1-.486-.126C11.126 20.658 2 15.514 2 9c0-3.665 2.218-5.425 4.293-5.849 2.171-.44 4.328.402 5.707 2.113 1.38-1.712 3.537-2.552 5.707-2.113C19.782 3.575 22 5.335 22 9.001c0 6.513-9.126 11.657-9.515 11.873A1 1 0 0 1 12 21M7.4 5.041q-.368 0-.707.07C5.007 5.456 4 6.91 4 9.001c0 4.584 6.197 8.728 8 9.836 1.804-1.108 8-5.252 8-9.837 0-2.09-1.007-3.544-2.693-3.889-1.482-.3-3.479.346-4.387 2.475a1 1 0 0 1-1.84 0C10.31 5.78 8.755 5.04 7.4 5.04">
                    </path>
                  </svg></button></div>
            </div>
            <div class="block h-full">
              <div class="border-neutral-150 bg-neutral-0 col-span-1 border bg-neutral-0 relative h-full w-full"
                data-testid="product-card" data-content-king="product-card" analytics="[object Object]"><a
                  class="group relative flex h-full w-full flex-col p-3 xs:p-4"
                  href="/pl-pl/p/3200874/balsam-do-ust-i-love-my-style/" data-testid="product-card-link"><span
                    class="xs:max-h-[180px] relative aspect-square w-full md:max-h-[230px]"><img
                      data-testid="product-card-image" alt="" loading="lazy" decoding="async" data-nimg="fill"
                      class="object-contain object-center py-2 transition-transform duration-250 group-hover:scale-105 md:py-4 h-full w-full"
                      style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent"
                      sizes="(min-width: 1280px) calc(1280px / 4), (min-width: 1024px) calc(100vw / 4), (min-width: 768px) calc(100vw / 4), (min-width: 640px) calc(100vw / 3), calc(100vw / 2)"
                      srcset="https://asset.action.com/image/upload/t_digital_product_image/w_128/3200874_8719668028364-110_01_gsvky2.webp 128w, https://asset.action.com/image/upload/t_digital_product_image/w_256/3200874_8719668028364-110_01_gsvky2.webp 256w, https://asset.action.com/image/upload/t_digital_product_image/w_640/3200874_8719668028364-110_01_gsvky2.webp 640w, https://asset.action.com/image/upload/t_digital_product_image/w_1080/3200874_8719668028364-110_01_gsvky2.webp 1080w, https://asset.action.com/image/upload/t_digital_product_image/w_1920/3200874_8719668028364-110_01_gsvky2.webp 1920w"
                      src="https://asset.action.com/image/upload/t_digital_product_image/w_1920/3200874_8719668028364-110_01_gsvky2.webp"><span
                      class="absolute bottom-0 flex flex-col gap-2"></span></span><span
                    class="mt-2 mb-3 flex grow flex-col gap-1 leading-tight sm:mb-4"><span
                      class="xs:text-[16px] xs:leading-5 text-sm leading-[18px] font-medium text-dark-blue-500 line-clamp-2 break-words"
                      data-testid="product-card-title">Balsam do ust I Love My Style</span><span
                      class="max-h-fit text-sm leading-[18px] font-normal line-clamp-2 grow break-words text-neutral-700"
                      data-testid="product-card-description">Różne warianty</span></span><span
                    aria-label="3,49&nbsp;zł 3,49&nbsp;zł/szt." class="flex flex-col"><span
                      data-testid="product-card-price-description"
                      class="mb-1 block w-max text-xs leading-[12px] text-neutral-700">3,49&nbsp;zł/szt.</span><span
                      class="flex items-start text-orange-500"><span data-testid="product-card-price-whole"
                        class="font-bold tracking-[1px] text-[40px] leading-[28px] md:text-[48px] md:leading-[33px]">3</span><span
                        class="inline-flex items-baseline"><span data-testid="product-card-price-fractional"
                          class="font-bold tracking-[1px] text-[20px] leading-[14px] md:text-[28px] md:leading-[19px]">49</span></span></span></span><span
                    class="flex leading-none text-neutral-700 mt-1 flex-row items-baseline self-baseline"
                    data-testid="product-card-price-discount"><span class="flex items-center"
                      data-testid="product-card-price-original-amount"><span
                        class="text-center text-[12px] font-normal line-through">4,49&nbsp;zł</span><span
                        class="pl-0.5 text-xs">*</span></span><span
                      class="ml-1 rounded border border-neutral-700 px-[2px] py-px text-xs leading-[12px] font-medium"
                      data-testid="product-card-price-discount-percentage">-22%</span></span><span
                    class="mt-2 flex text-xs font-normal text-neutral-700"
                    data-testid="product-card-price-discount-footnote"><span class="italic">*
                      <!-- -->Najniższa cena z 30 dni przed obniżką
                    </span></span><span class="absolute top-0 left-0 flex flex-col gap-0.5"><span
                      class="flex overflow-hidden h-[22px] sm:h-[26px] text-neutral-0 text-[12px] leading-[14px] font-bold sm:text-sm sm:leading-[18px]"
                      aria-labelledby="_R_76qdjinpfivjap5snpfivb_" data-testid="product-tag"><span
                        class="flex w-fit items-center pr-1 pl-1.5 sm:pr-1.5 sm:pl-2 bg-orange-500"><span
                          id="_R_76qdjinpfivjap5snpfivb_">Promocja tygodnia</span></span><span class="w-[8px]"><span
                          class="-mr-px block h-full -translate-x-px bg-orange-500"
                          style="clip-path:polygon(0 0, 100% 0, 1px 100%, 0 100%)"></span></span></span></span></a><button
                  type="button" data-testid="favorite-button" class="absolute top-0 right-0 p-2"
                  aria-label="Dodaj do ulubionych"><svg aria-hidden="true" data-testid="Heart01"
                    xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                    <path fill="#8593a3"
                      d="M12 21a1 1 0 0 1-.486-.126C11.126 20.658 2 15.514 2 9c0-3.665 2.218-5.425 4.293-5.849 2.171-.44 4.328.402 5.707 2.113 1.38-1.712 3.537-2.552 5.707-2.113C19.782 3.575 22 5.335 22 9.001c0 6.513-9.126 11.657-9.515 11.873A1 1 0 0 1 12 21M7.4 5.041q-.368 0-.707.07C5.007 5.456 4 6.91 4 9.001c0 4.584 6.197 8.728 8 9.836 1.804-1.108 8-5.252 8-9.837 0-2.09-1.007-3.544-2.693-3.889-1.482-.3-3.479.346-4.387 2.475a1 1 0 0 1-1.84 0C10.31 5.78 8.755 5.04 7.4 5.04">
                    </path>
                  </svg></button></div>
            </div>
          </div>
          {* <script type="application/ld+json">
{"itemListElement":[{"@type":"ListItem","position":1,"url":"https://www.action.com/pl-pl/p/3013727/squishmeez-rozciagliwe-figurki/"},{"@type":"ListItem","position":2,"url":"https://www.action.com/pl-pl/p/3200874/balsam-do-ust-i-love-my-style/"}],"@context":"https://schema.org","@type":"ItemList"}
          </script> *}
        </div>
      </div>
    </div>
  </section>

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
                srcset="https://asset.action.com/image/upload/w_128/Basics_HouseholdGoods_Cleaning_2024_hdqa3e.webp 128w, https://asset.action.com/image/upload/w_256/Basics_HouseholdGoods_Cleaning_2024_hdqa3e.webp 256w, https://asset.action.com/image/upload/w_640/Basics_HouseholdGoods_Cleaning_2024_hdqa3e.webp 640w, https://asset.action.com/image/upload/w_1080/Basics_HouseholdGoods_Cleaning_2024_hdqa3e.webp 1080w, https://asset.action.com/image/upload/w_1920/Basics_HouseholdGoods_Cleaning_2024_hdqa3e.webp 1920w"
                src="https://asset.action.com/image/upload/w_1920/Basics_HouseholdGoods_Cleaning_2024_hdqa3e.webp">
            </div>
          </div>
          <div data-testid="split-teaser-content" class="md:m-0 md:self-center">
            <div class="flex flex-col sm:justify-center md:h-[300px]">
              <h2 class="heading-xl pb-2" data-testid="split-teaser-content-title">Wszystko na co dzień</h2>
              <p class="text-body-normal whitespace-break-spaces text-neutral-900"
                data-testid="split-teaser-content-description">w najniższej cenie

              </p>
              <div class="flex items-center justify-start md:items-start"><a
                  class="relative box-border flex max-w-full items-center justify-center gap-1 rounded-full text-base font-medium py-2.5 px-5 bg-dark-blue-500 text-neutral-0 hover:bg-dark-blue-300 active:bg-dark-blue-700 focus:bg-dark-blue-300 focus:outline focus:outline-2 focus:outline-dark-blue-500 focus:outline-offset-2 disabled:bg-neutral-150 disabled:text-neutral-700 disabled:outline disabled:outline-1 disabled:outline-neutral mt-4"
                  href="/pl-pl/moment/odziez-basic/" data-testid="split-teaser-cta"><span class="truncate px-1">Zobacz
                    więcej</span></a></div>
            </div>
            <div data-testid="product-carousel" class="mt-6 md:-ml-[60%] lg:-ml-[40%]">
              <div class="relative">
                <div class="flex flex-col gap-4 md:gap-6"
                  style="--rowsXl:1;--columnsXl:5;--rowsLg:1;--columnsLg:4;--rowsMd:1;--columnsMd:3;--rowsSm:1;--columnsSm:3;--rowsDefault:1;--columnsDefault:2">
                  <div class="@container relative" style="--numberOfPages: 2.6666666666666665; --currentPage: 0;">
                    <div
                      class="xl:[--columns:var(--columnsXl)] xl:[--rows:var(--rowsXl)] lg:[--columns:var(--columnsLg)] lg:[--rows:var(--rowsLg)] md:[--columns:var(--columnsMd)] md:[--rows:var(--rowsMd)] sm:[--columns:var(--columnsSm)] sm:[--rows:var(--rowsSm)] [--columns:var(--columnsDefault)] [--rows:var(--rowsDefault)] [--itemSpacing:8px] md:[--itemSpacing:16px] [--lastItemPartial:16px] sm:[--lastItemPartial:32px] [--itemWidth:calc((100cqw-var(--itemSpacing)*var(--columns)-var(--lastItemPartial))/var(--columns))] lg:[--itemWidth:calc((100cqw-var(--itemSpacing)*(var(--columns)-1))/var(--columns))] pointer-fine:[--itemWidth:calc((100cqw-var(--itemSpacing)*(var(--columns)-1))/var(--columns))] [--isMultiRow:calc(min(1,var(--rows)-1))] [--isSingleRow:calc(1-var(--isMultiRow))]">
                      <div class="pointer-events-none absolute inset-0 z-1"><button type="button" aria-label="Poprzednia"
                          class="custom-invisible absolute -translate-y-1/2 top-1/2 bg-neutral-0 shadow-overlay-button rounded-full p-4 hidden lg:block pointer-fine:block transition duration-200 hover:scale-[1.15] -left-2 lg:-left-4 xl:-left-7 pointer-events-auto"
                          data-testid="carousel-previous-navigation-button" onclick="prevCarouselPage(this)"><svg
                            aria-hidden="true" data-testid="ArrowLeftMd" xmlns="http://www.w3.org/2000/svg" width="24"
                            height="24" fill="none" viewBox="0 0 24 24">
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
                                  href="/pl-pl/p/2532075/kartonowe-pudlo-do-przeprowadzki-action/"
                                  data-testid="product-card-link"><span
                                    class="xs:max-h-[180px] relative aspect-square w-full md:max-h-[230px]"><img
                                      data-testid="product-card-image" alt="" loading="lazy" decoding="async"
                                      data-nimg="fill"
                                      class="object-contain object-center py-2 transition-transform duration-250 group-hover:scale-105 md:py-4 h-full w-full"
                                      style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent"
                                      sizes="(min-width: 1280px) calc(1280px / 5), (min-width: 1024px) calc(100vw / 4), (min-width: 768px) calc(100vw / 3), (min-width: 640px) calc(100vw / 3), calc(100vw / 2)"
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
                                  href="/pl-pl/p/2525250/folia-do-laminowania/" data-testid="product-card-link"><span
                                    class="xs:max-h-[180px] relative aspect-square w-full md:max-h-[230px]"><img
                                      data-testid="product-card-image" alt="" loading="lazy" decoding="async"
                                      data-nimg="fill"
                                      class="object-contain object-center py-2 transition-transform duration-250 group-hover:scale-105 md:py-4 h-full w-full"
                                      style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent"
                                      sizes="(min-width: 1280px) calc(1280px / 5), (min-width: 1024px) calc(100vw / 4), (min-width: 768px) calc(100vw / 3), (min-width: 640px) calc(100vw / 3), calc(100vw / 2)"
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
                            <div class="w-(--itemWidth)">
                              <div class="border-neutral-150 border bg-neutral-0 relative h-full w-full"
                                data-testid="product-card" data-content-king="product-card" analytics="[object Object]"><a
                                  class="group relative flex h-full w-full flex-col p-3 xs:p-4"
                                  href="/pl-pl/p/2560087/skarpetki-stopki-lotto-czarne/"
                                  data-testid="product-card-link"><span
                                    class="xs:max-h-[180px] relative aspect-square w-full md:max-h-[230px]"><img
                                      data-testid="product-card-image" alt="" loading="lazy" decoding="async"
                                      data-nimg="fill"
                                      class="object-contain object-center py-2 transition-transform duration-250 group-hover:scale-105 md:py-4 h-full w-full"
                                      style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent"
                                      sizes="(min-width: 1280px) calc(1280px / 5), (min-width: 1024px) calc(100vw / 4), (min-width: 768px) calc(100vw / 3), (min-width: 640px) calc(100vw / 3), calc(100vw / 2)"
                                      srcset="https://asset.action.com/image/upload/t_digital_product_image/w_128/20622420.webp 128w, https://asset.action.com/image/upload/t_digital_product_image/w_256/20622420.webp 256w, https://asset.action.com/image/upload/t_digital_product_image/w_640/20622420.webp 640w, https://asset.action.com/image/upload/t_digital_product_image/w_1080/20622420.webp 1080w, https://asset.action.com/image/upload/t_digital_product_image/w_1920/20622420.webp 1920w"
                                      src="https://asset.action.com/image/upload/t_digital_product_image/w_1920/20622420.webp"><span
                                      class="absolute bottom-0 flex flex-col gap-2"></span></span><span
                                    class="mt-2 mb-3 flex grow flex-col gap-1 leading-tight sm:mb-4"><span
                                      class="xs:text-[16px] xs:leading-5 text-sm leading-[18px] font-medium text-dark-blue-500 line-clamp-2 break-words"
                                      data-testid="product-card-title">Skarpetki stopki Lotto czarne</span><span
                                      class="max-h-fit text-sm leading-[18px] font-normal line-clamp-2 grow break-words text-neutral-700"
                                      data-testid="product-card-description">Rozmiar 43-46 | 3 pary</span></span><span
                                    aria-label="11,95&nbsp;zł 3,98&nbsp;zł/szt." class="flex flex-col"><span
                                      data-testid="product-card-price-description"
                                      class="mb-1 block w-max text-xs leading-[12px] text-neutral-700">3,98&nbsp;zł/szt.</span><span
                                      class="flex items-start text-dark-blue-500"><span
                                        data-testid="product-card-price-whole"
                                        class="font-bold tracking-[1px] text-[40px] leading-[28px] md:text-[48px] md:leading-[33px]">11</span><span
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
                                  href="/pl-pl/p/2525815/srodek-do-prania-sendil-ultra-wash-universal/"
                                  data-testid="product-card-link"><span
                                    class="xs:max-h-[180px] relative aspect-square w-full md:max-h-[230px]"><img
                                      data-testid="product-card-image" alt="" loading="lazy" decoding="async"
                                      data-nimg="fill"
                                      class="object-contain object-center py-2 transition-transform duration-250 group-hover:scale-105 md:py-4 h-full w-full"
                                      style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent"
                                      sizes="(min-width: 1280px) calc(1280px / 5), (min-width: 1024px) calc(100vw / 4), (min-width: 768px) calc(100vw / 3), (min-width: 640px) calc(100vw / 3), calc(100vw / 2)"
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
                                  href="/pl-pl/p/2582428/majonez-heinz/" data-testid="product-card-link"><span
                                    class="xs:max-h-[180px] relative aspect-square w-full md:max-h-[230px]"><img
                                      data-testid="product-card-image" alt="" loading="lazy" decoding="async"
                                      data-nimg="fill"
                                      class="object-contain object-center py-2 transition-transform duration-250 group-hover:scale-105 md:py-4 h-full w-full"
                                      style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent"
                                      sizes="(min-width: 1280px) calc(1280px / 5), (min-width: 1024px) calc(100vw / 4), (min-width: 768px) calc(100vw / 3), (min-width: 640px) calc(100vw / 3), calc(100vw / 2)"
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
                                      data-testid="product-card-image" alt="" loading="lazy" decoding="async"
                                      data-nimg="fill"
                                      class="object-contain object-center py-2 transition-transform duration-250 group-hover:scale-105 md:py-4 h-full w-full"
                                      style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent"
                                      sizes="(min-width: 1280px) calc(1280px / 5), (min-width: 1024px) calc(100vw / 4), (min-width: 768px) calc(100vw / 3), (min-width: 640px) calc(100vw / 3), calc(100vw / 2)"
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
                                  href="/pl-pl/p/3016327/szenilowy-dywanik-lazienkowy/"
                                  data-testid="product-card-link"><span
                                    class="xs:max-h-[180px] relative aspect-square w-full md:max-h-[230px]"><img
                                      data-testid="product-card-image" alt="" loading="lazy" decoding="async"
                                      data-nimg="fill"
                                      class="object-contain object-center py-2 transition-transform duration-250 group-hover:scale-105 md:py-4 h-full w-full"
                                      style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent"
                                      sizes="(min-width: 1280px) calc(1280px / 5), (min-width: 1024px) calc(100vw / 4), (min-width: 768px) calc(100vw / 3), (min-width: 640px) calc(100vw / 3), calc(100vw / 2)"
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
                                  href="/pl-pl/p/3216780/zestaw-podwojnych-markerow-decotime/"
                                  data-testid="product-card-link"><span
                                    class="xs:max-h-[180px] relative aspect-square w-full md:max-h-[230px]"><img
                                      data-testid="product-card-image" alt="" loading="lazy" decoding="async"
                                      data-nimg="fill"
                                      class="object-contain object-center py-2 transition-transform duration-250 group-hover:scale-105 md:py-4 h-full w-full"
                                      style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent"
                                      sizes="(min-width: 1280px) calc(1280px / 5), (min-width: 1024px) calc(100vw / 4), (min-width: 768px) calc(100vw / 3), (min-width: 640px) calc(100vw / 3), calc(100vw / 2)"
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
                          data-testid="carousel-next-navigation-button" onclick="nextCarouselPage(this)"><svg
                            aria-hidden="true" data-testid="ArrowRightMd" xmlns="http://www.w3.org/2000/svg" width="24"
                            height="24" fill="none" viewBox="0 0 24 24">
                            <path fill="#001489"
                              d="M13 19a1 1 0 0 1-.707-1.707L16.586 13H5a1 1 0 0 1 0-2h11.586l-4.293-4.293a1 1 0 1 1 1.414-1.414l6 6a1 1 0 0 1 .293.704v.006a1 1 0 0 1-.293.704l-6 6A1 1 0 0 1 13 19">
                            </path>
                          </svg></button></div>
                    </div>
                  </div>
                </div>
              </div>
              {* <script type="application/ld+json">
{"itemListElement":[{"@type":"ListItem","position":1,"url":"https://www.action.com/pl-pl/p/2532075/kartonowe-pudlo-do-przeprowadzki-action/"},{"@type":"ListItem","position":2,"url":"https://www.action.com/pl-pl/p/2525250/folia-do-laminowania/"},{"@type":"ListItem","position":3,"url":"https://www.action.com/pl-pl/p/2560087/skarpetki-stopki-lotto-czarne/"},{"@type":"ListItem","position":4,"url":"https://www.action.com/pl-pl/p/2525815/srodek-do-prania-sendil-ultra-wash-universal/"},{"@type":"ListItem","position":5,"url":"https://www.action.com/pl-pl/p/2582428/majonez-heinz/"},{"@type":"ListItem","position":6,"url":"https://www.action.com/pl-pl/p/2558422/papier-toaletowy-pure-soft-miekki-i-ekstra-mocny/"},{"@type":"ListItem","position":7,"url":"https://www.action.com/pl-pl/p/3016327/szenilowy-dywanik-lazienkowy/"},{"@type":"ListItem","position":8,"url":"https://www.action.com/pl-pl/p/3216780/zestaw-podwojnych-markerow-decotime/"}],"@context":"https://schema.org","@type":"ItemList"}
            </script> *}
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

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

  <section class="bg-neutral-50 pt-6 md:pt-8 pb-6 md:pb-8" aria-label="Świąteczne DIY"
    data-testid="cms-inspirational-row">
    <div class="relative flex w-full flex-col px-4 lg:px-8">
      <div class="mx-auto w-full max-w-7xl">
        <div class="flex flex-col gap-2">
          <div class="flex items-end justify-between gap-4">
            <div class="flex flex-col">
              <h2 class="heading-xl" data-testid="title-view-title">Świąteczne DIY</h2>
              <p class="text-neutral-700" data-testid="title-view-subtitle">Stwórz własne dekoracje!</p>
            </div><a class="btn-base group btn-link w-fit max-w-[160px] sm:max-w-full"
              href="/pl-pl/c/hobby/prace-kreatywne/" data-testid="title-view-link"><span
                class="btn-content-label btn-content-link btn-shadow-dark-blue">Zobacz więcej</span><span
                aria-hidden="true" class="content-center ml-1"><svg aria-hidden="true" data-testid="ChevronRightMd"
                  xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                  <path fill="#4e769c"
                    d="M10 17a1 1 0 0 1-.707-1.707L12.586 12 9.293 8.707a1 1 0 1 1 1.414-1.414l4 4a1 1 0 0 1 0 1.414l-4 4A1 1 0 0 1 10 17">
                  </path>
                </svg></span></a>
          </div>
          <div class="min-h-[325px] md:hidden">
            <div class="flex flex-col gap-4 md:gap-6"
              style="--rowsXl:1;--columnsXl:5;--rowsLg:1;--columnsLg:4;--rowsMd:1;--columnsMd:3;--rowsSm:1;--columnsSm:3;--rowsDefault:1;--columnsDefault:2">
              <div class="@container relative" style="--numberOfPages:1;--currentPage:0">
                <div
                  class="xl:[--columns:var(--columnsXl)] xl:[--rows:var(--rowsXl)] lg:[--columns:var(--columnsLg)] lg:[--rows:var(--rowsLg)] md:[--columns:var(--columnsMd)] md:[--rows:var(--rowsMd)] sm:[--columns:var(--columnsSm)] sm:[--rows:var(--rowsSm)] [--columns:var(--columnsDefault)] [--rows:var(--rowsDefault)] [--itemSpacing:8px] md:[--itemSpacing:16px] [--lastItemPartial:16px] sm:[--lastItemPartial:32px] [--itemWidth:calc((100cqw-var(--itemSpacing)*var(--columns)-var(--lastItemPartial))/var(--columns))] lg:[--itemWidth:calc((100cqw-var(--itemSpacing)*(var(--columns)-1))/var(--columns))] pointer-fine:[--itemWidth:calc((100cqw-var(--itemSpacing)*(var(--columns)-1))/var(--columns))] [--isMultiRow:calc(min(1,var(--rows)-1))] [--isSingleRow:calc(1-var(--isMultiRow))]">
                  <div class="pointer-events-none absolute inset-0 z-1"><button type="button" inert=""
                      aria-label="Poprzednia"
                      class="custom-invisible absolute -translate-y-1/2 top-1/2 bg-neutral-0 shadow-overlay-button rounded-full p-4 hidden lg:block pointer-fine:block transition duration-200 hover:scale-[1.15] -left-2 lg:-left-4 xl:-left-7 pointer-events-none opacity-0"
                      data-testid="carousel-previous-navigation-button" onclick="prevCarouselPage(this)"><svg
                        aria-hidden="true" data-testid="ArrowLeftMd" xmlns="http://www.w3.org/2000/svg" width="24"
                        height="24" fill="none" viewBox="0 0 24 24">
                        <path fill="#001489"
                          d="M11 19a1 1 0 0 1-.707-.293l-6-6A1 1 0 0 1 4 12.003v-.006a1 1 0 0 1 .293-.704l6-6a1 1 0 1 1 1.414 1.414L7.414 11H19a1 1 0 0 1 0 2H7.414l4.293 4.293A1 1 0 0 1 11 19">
                        </path>
                      </svg></button></div>
                  <div
                    class="no-scrollbar flex overflow-auto lg:overflow-clip pointer-fine:overflow-clip lg:[overflow-clip-margin:2px] pointer-fine:[overflow-clip-margin:2px] -mx-4 lg:mx-0 pointer-fine:mx-0">
                    <div class="relative flex transition-transform duration-600 ease-in-out">
                      <div class="w-4 shrink-0 lg:w-0 pointer-fine:w-0"></div>
                      <div class="grid grid-flow-col grid-rows-[repeat(var(--rows),minmax(0,auto))] gap-(--itemSpacing)">
                        <div class="w-(--itemWidth)"><a class="relative h-full w-full group"
                            href="/pl-pl/c/hobby/prace-kreatywne/" aria-label="Zobacz więcej" data-testid="content-card">
                            <div
                              class="lg:min-w-none relative flex h-full min-h-[300px] w-full flex-col overflow-hidden rounded-md md:max-w-none InspirationContentCard_contentCard__YE4xI">
                              <div class="relative h-full w-full overflow-hidden"><img data-testid="content-card-image"
                                  alt="" loading="lazy" decoding="async" data-nimg="fill"
                                  class="bg-neutral-10 object-cover object-center transition-all duration-300 group-hover:scale-105 transition-transform duration-250 hover:scale-105 h-full w-full"
                                  style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent"
                                  sizes="(min-width: 1280px) calc( 1280px / 2) ,(min-width: 768px) calc( 100vw / 2 ),calc( 100vw / 3 * 2 )"
                                  srcset="https://asset.action.com/image/upload/t_digital_content_card/w_128/Christmas_StationeryHobby_GiftboxesCards__ChristmasCrafting_2025_irnvkh.webp 128w, https://asset.action.com/image/upload/t_digital_content_card/w_256/Christmas_StationeryHobby_GiftboxesCards__ChristmasCrafting_2025_irnvkh.webp 256w, https://asset.action.com/image/upload/t_digital_content_card/w_640/Christmas_StationeryHobby_GiftboxesCards__ChristmasCrafting_2025_irnvkh.webp 640w, https://asset.action.com/image/upload/t_digital_content_card/w_1080/Christmas_StationeryHobby_GiftboxesCards__ChristmasCrafting_2025_irnvkh.webp 1080w, https://asset.action.com/image/upload/t_digital_content_card/w_1920/Christmas_StationeryHobby_GiftboxesCards__ChristmasCrafting_2025_irnvkh.webp 1920w"
                                  src="https://asset.action.com/image/upload/t_digital_content_card/w_1920/Christmas_StationeryHobby_GiftboxesCards__ChristmasCrafting_2025_irnvkh.webp">
                              </div>
                              <div class="relative w-full p-4 InspirationContentCard_titleContainer__TmDDF bg-dark-blue">
                                <h3
                                  class="heading-lg text-neutral-0 line-clamp-2 flex min-w-0 items-center font-bold first-letter:uppercase"
                                  data-testid="content-card-title">Ale frajda!</h3>
                                <div class="InspirationContentCard_chevronButton__98Zcv"><svg aria-hidden="true"
                                    data-testid="ChevronRightMd" class="h-8 w-8" xmlns="http://www.w3.org/2000/svg"
                                    width="24" height="24" fill="none" viewBox="0 0 24 24">
                                    <path fill="#001489"
                                      d="M10 17a1 1 0 0 1-.707-1.707L12.586 12 9.293 8.707a1 1 0 1 1 1.414-1.414l4 4a1 1 0 0 1 0 1.414l-4 4A1 1 0 0 1 10 17">
                                    </path>
                                  </svg></div>
                              </div>
                            </div>
                          </a></div>
                        <div class="w-(--itemWidth)">
                          <div class="block h-full">
                            <div
                              class="border-neutral-150 bg-neutral-0 col-span-1 border bg-neutral-0 relative h-full w-full"
                              data-testid="product-card" data-content-king="product-card" analytics="[object Object]"><a
                                class="group relative flex h-full w-full flex-col p-3 xs:p-4"
                                href="/pl-pl/p/3217385/diamentowe-malowanie-boze-narodzenie/"
                                data-testid="product-card-link"><span
                                  class="xs:max-h-[180px] relative aspect-square w-full md:max-h-[230px]"><img
                                    data-testid="product-card-image" alt="" loading="lazy" decoding="async"
                                    data-nimg="fill"
                                    class="object-contain object-center py-2 transition-transform duration-250 group-hover:scale-105 md:py-4 h-full w-full"
                                    style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent"
                                    sizes="(min-width: 1280px) calc(1280px / 4), (min-width: 1024px) calc(100vw / 4), (min-width: 768px) calc(100vw / 4), (min-width: 640px) calc(100vw / 3), calc(100vw / 2)"
                                    srcset="https://asset.action.com/image/upload/t_digital_product_image/w_128/3217385_8715275526095-111_01_rvkfjb.webp 128w, https://asset.action.com/image/upload/t_digital_product_image/w_256/3217385_8715275526095-111_01_rvkfjb.webp 256w, https://asset.action.com/image/upload/t_digital_product_image/w_640/3217385_8715275526095-111_01_rvkfjb.webp 640w, https://asset.action.com/image/upload/t_digital_product_image/w_1080/3217385_8715275526095-111_01_rvkfjb.webp 1080w, https://asset.action.com/image/upload/t_digital_product_image/w_1920/3217385_8715275526095-111_01_rvkfjb.webp 1920w"
                                    src="https://asset.action.com/image/upload/t_digital_product_image/w_1920/3217385_8715275526095-111_01_rvkfjb.webp"><span
                                    class="absolute bottom-0 flex flex-col gap-2"></span></span><span
                                  class="mt-2 mb-3 flex grow flex-col gap-1 leading-tight sm:mb-4"><span
                                    class="xs:text-[16px] xs:leading-5 text-sm leading-[18px] font-medium text-dark-blue-500 line-clamp-2 break-words"
                                    data-testid="product-card-title">Diamentowe malowanie Boże Narodzenie</span><span
                                    class="max-h-fit text-sm leading-[18px] font-normal line-clamp-2 grow break-words text-neutral-700"
                                    data-testid="product-card-description">30 x 30 cm | Różne warianty</span></span><span
                                  aria-label="9,95&nbsp;zł 9,95&nbsp;zł/szt." class="flex flex-col"><span
                                    data-testid="product-card-price-description"
                                    class="mb-1 block w-max text-xs leading-[12px] text-neutral-700">9,95&nbsp;zł/szt.</span><span
                                    class="flex items-start text-orange-500"><span data-testid="product-card-price-whole"
                                      class="font-bold tracking-[1px] text-[40px] leading-[28px] md:text-[48px] md:leading-[33px]">9</span><span
                                      class="inline-flex items-baseline"><span data-testid="product-card-price-fractional"
                                        class="font-bold tracking-[1px] text-[20px] leading-[14px] md:text-[28px] md:leading-[19px]">95</span></span></span></span><span
                                  class="flex leading-none text-neutral-700 mt-1 flex-row items-baseline self-baseline"
                                  data-testid="product-card-price-discount"><span class="flex items-center"
                                    data-testid="product-card-price-original-amount"><span
                                      class="text-center text-[12px] font-normal line-through">13,95&nbsp;zł</span><span
                                      class="pl-0.5 text-xs">*</span></span><span
                                    class="ml-1 rounded border border-neutral-700 px-[2px] py-px text-xs leading-[12px] font-medium"
                                    data-testid="product-card-price-discount-percentage">-28%</span></span><span
                                  class="mt-2 flex text-xs font-normal text-neutral-700"
                                  data-testid="product-card-price-discount-footnote"><span class="italic">*
                                    <!-- -->Najniższa cena z 30 dni przed obniżką
                                  </span></span><span class="absolute top-0 left-0 flex flex-col gap-0.5"><span
                                    class="flex overflow-hidden h-[22px] sm:h-[26px] text-neutral-0 text-[12px] leading-[14px] font-bold sm:text-sm sm:leading-[18px]"
                                    aria-labelledby="_R_3jdabbinpfivjap5snpfivb_" data-testid="product-tag"><span
                                      class="flex w-fit items-center pr-1 pl-1.5 sm:pr-1.5 sm:pl-2 bg-orange-500"><span
                                        id="_R_3jdabbinpfivjap5snpfivb_">Promocja tygodnia</span></span><span
                                      class="w-[8px]"><span class="-mr-px block h-full -translate-x-px bg-orange-500"
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
                        </div>
                        <div class="w-(--itemWidth)">
                          <div class="block h-full">
                            <div
                              class="border-neutral-150 bg-neutral-0 col-span-1 border bg-neutral-0 relative h-full w-full"
                              data-testid="product-card" data-content-king="product-card" analytics="[object Object]"><a
                                class="group relative flex h-full w-full flex-col p-3 xs:p-4"
                                href="/pl-pl/p/3207811/zrob-to-sam-a-domek-bozonarodzeniowy-crafts-co/"
                                data-testid="product-card-link"><span
                                  class="xs:max-h-[180px] relative aspect-square w-full md:max-h-[230px]"><img
                                    data-testid="product-card-image" alt="" loading="lazy" decoding="async"
                                    data-nimg="fill"
                                    class="object-contain object-center py-2 transition-transform duration-250 group-hover:scale-105 md:py-4 h-full w-full"
                                    style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent"
                                    sizes="(min-width: 1280px) calc(1280px / 4), (min-width: 1024px) calc(100vw / 4), (min-width: 768px) calc(100vw / 4), (min-width: 640px) calc(100vw / 3), calc(100vw / 2)"
                                    srcset="https://asset.action.com/image/upload/t_digital_product_image/w_128/3207811_8711568136606-111_01_e45mch.webp 128w, https://asset.action.com/image/upload/t_digital_product_image/w_256/3207811_8711568136606-111_01_e45mch.webp 256w, https://asset.action.com/image/upload/t_digital_product_image/w_640/3207811_8711568136606-111_01_e45mch.webp 640w, https://asset.action.com/image/upload/t_digital_product_image/w_1080/3207811_8711568136606-111_01_e45mch.webp 1080w, https://asset.action.com/image/upload/t_digital_product_image/w_1920/3207811_8711568136606-111_01_e45mch.webp 1920w"
                                    src="https://asset.action.com/image/upload/t_digital_product_image/w_1920/3207811_8711568136606-111_01_e45mch.webp"><span
                                    class="absolute bottom-0 flex flex-col gap-2"></span></span><span
                                  class="mt-2 mb-3 flex grow flex-col gap-1 leading-tight sm:mb-4"><span
                                    class="xs:text-[16px] xs:leading-5 text-sm leading-[18px] font-medium text-dark-blue-500 line-clamp-2 break-words"
                                    data-testid="product-card-title">Zrób to sam(a): domek bożonarodzeniowy Crafts &amp;
                                    Co</span><span
                                    class="max-h-fit text-sm leading-[18px] font-normal line-clamp-2 grow break-words text-neutral-700"
                                    data-testid="product-card-description">Różne warianty</span></span><span
                                  aria-label="44,92&nbsp;zł 44,92&nbsp;zł/szt." class="flex flex-col"><span
                                    data-testid="product-card-price-description"
                                    class="mb-1 block w-max text-xs leading-[12px] text-neutral-700">44,92&nbsp;zł/szt.</span><span
                                    class="flex items-start text-orange-500"><span data-testid="product-card-price-whole"
                                      class="font-bold tracking-[1px] text-[40px] leading-[28px] md:text-[48px] md:leading-[33px]">44</span><span
                                      class="inline-flex items-baseline"><span data-testid="product-card-price-fractional"
                                        class="font-bold tracking-[1px] text-[20px] leading-[14px] md:text-[28px] md:leading-[19px]">92</span></span></span></span><span
                                  class="flex leading-none text-neutral-700 mt-1 flex-row items-baseline self-baseline"
                                  data-testid="product-card-price-discount"><span class="flex items-center"
                                    data-testid="product-card-price-original-amount"><span
                                      class="text-center text-[12px] font-normal line-through">59,90&nbsp;zł</span><span
                                      class="pl-0.5 text-xs">*</span></span><span
                                    class="ml-1 rounded border border-neutral-700 px-[2px] py-px text-xs leading-[12px] font-medium"
                                    data-testid="product-card-price-discount-percentage">-25%</span></span><span
                                  class="mt-2 flex text-xs font-normal text-neutral-700"
                                  data-testid="product-card-price-discount-footnote"><span class="italic">*
                                    <!-- -->Najniższa cena z 30 dni przed obniżką
                                  </span></span><span class="absolute top-0 left-0 flex flex-col gap-0.5"><span
                                    class="flex overflow-hidden h-[22px] sm:h-[26px] text-neutral-0 text-[12px] leading-[14px] font-bold sm:text-sm sm:leading-[18px]"
                                    aria-labelledby="_R_3jfabbinpfivjap5snpfivb_" data-testid="product-tag"><span
                                      class="flex w-fit items-center pr-1 pl-1.5 sm:pr-1.5 sm:pl-2 bg-orange-500"><span
                                        id="_R_3jfabbinpfivjap5snpfivb_">Promocja tygodnia</span></span><span
                                      class="w-[8px]"><span class="-mr-px block h-full -translate-x-px bg-orange-500"
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
                        </div>
                      </div>
                      <div class="w-4 shrink-0 lg:w-0 pointer-fine:w-0"></div>
                    </div>
                  </div>
                  <div class="pointer-events-none absolute inset-0"><button type="button" inert="" aria-label="Następna"
                      class="absolute -translate-y-1/2 top-1/2 bg-neutral-0 shadow-overlay-button rounded-full p-4 hidden lg:block pointer-fine:block transition duration-200 hover:scale-[1.15] -right-2 lg:-right-4 xl:-right-7 pointer-events-none opacity-0"
                      data-testid="carousel-next-navigation-button" onclick="nextCarouselPage(this)"><svg
                        aria-hidden="true" data-testid="ArrowRightMd" xmlns="http://www.w3.org/2000/svg" width="24"
                        height="24" fill="none" viewBox="0 0 24 24">
                        <path fill="#001489"
                          d="M13 19a1 1 0 0 1-.707-1.707L16.586 13H5a1 1 0 0 1 0-2h11.586l-4.293-4.293a1 1 0 1 1 1.414-1.414l6 6a1 1 0 0 1 .293.704v.006a1 1 0 0 1-.293.704l-6 6A1 1 0 0 1 13 19">
                        </path>
                      </svg></button></div>
                </div>
              </div>
            </div>
          </div>
          <div
            class="hidden h-fit min-h-[325px] gap-2 md:grid md:min-h-[380px] md:grid-cols-3 md:gap-3 lg:grid-cols-4 lg:gap-6">
            <div data-testid="inspirational-row-content-card" class="lg:col-span-2"><a
                class="relative h-full w-full group" href="/pl-pl/c/hobby/prace-kreatywne/" aria-label="Zobacz więcej"
                data-testid="content-card">
                <div
                  class="lg:min-w-none relative flex h-full min-h-[300px] w-full flex-col overflow-hidden rounded-md md:max-w-none InspirationContentCard_contentCard__YE4xI">
                  <div class="relative h-full w-full overflow-hidden"><img data-testid="content-card-image" alt=""
                      loading="lazy" decoding="async" data-nimg="fill"
                      class="bg-neutral-10 object-cover object-center transition-all duration-300 group-hover:scale-105 transition-transform duration-250 hover:scale-105 h-full w-full"
                      style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent"
                      sizes="(min-width: 1280px) calc( 1280px / 2) ,(min-width: 768px) calc( 100vw / 2 ),calc( 100vw / 3 * 2 )"
                      srcset="https://asset.action.com/image/upload/t_digital_content_card/w_128/Christmas_StationeryHobby_GiftboxesCards__ChristmasCrafting_2025_irnvkh.webp 128w, https://asset.action.com/image/upload/t_digital_content_card/w_256/Christmas_StationeryHobby_GiftboxesCards__ChristmasCrafting_2025_irnvkh.webp 256w, https://asset.action.com/image/upload/t_digital_content_card/w_640/Christmas_StationeryHobby_GiftboxesCards__ChristmasCrafting_2025_irnvkh.webp 640w, https://asset.action.com/image/upload/t_digital_content_card/w_1080/Christmas_StationeryHobby_GiftboxesCards__ChristmasCrafting_2025_irnvkh.webp 1080w, https://asset.action.com/image/upload/t_digital_content_card/w_1920/Christmas_StationeryHobby_GiftboxesCards__ChristmasCrafting_2025_irnvkh.webp 1920w"
                      src="https://asset.action.com/image/upload/t_digital_content_card/w_1920/Christmas_StationeryHobby_GiftboxesCards__ChristmasCrafting_2025_irnvkh.webp">
                  </div>
                  <div class="relative w-full p-4 InspirationContentCard_titleContainer__TmDDF bg-dark-blue">
                    <h3
                      class="heading-lg text-neutral-0 line-clamp-2 flex min-w-0 items-center font-bold first-letter:uppercase"
                      data-testid="content-card-title">Ale frajda!</h3>
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
            <div class="block h-full">
              <div class="border-neutral-150 bg-neutral-0 col-span-1 border bg-neutral-0 relative h-full w-full"
                data-testid="product-card" data-content-king="product-card" analytics="[object Object]"><a
                  class="group relative flex h-full w-full flex-col p-3 xs:p-4"
                  href="/pl-pl/p/3217385/diamentowe-malowanie-boze-narodzenie/" data-testid="product-card-link"><span
                    class="xs:max-h-[180px] relative aspect-square w-full md:max-h-[230px]"><img
                      data-testid="product-card-image" alt="" loading="lazy" decoding="async" data-nimg="fill"
                      class="object-contain object-center py-2 transition-transform duration-250 group-hover:scale-105 md:py-4 h-full w-full"
                      style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent"
                      sizes="(min-width: 1280px) calc(1280px / 4), (min-width: 1024px) calc(100vw / 4), (min-width: 768px) calc(100vw / 4), (min-width: 640px) calc(100vw / 3), calc(100vw / 2)"
                      srcset="https://asset.action.com/image/upload/t_digital_product_image/w_128/3217385_8715275526095-111_01_rvkfjb.webp 128w, https://asset.action.com/image/upload/t_digital_product_image/w_256/3217385_8715275526095-111_01_rvkfjb.webp 256w, https://asset.action.com/image/upload/t_digital_product_image/w_640/3217385_8715275526095-111_01_rvkfjb.webp 640w, https://asset.action.com/image/upload/t_digital_product_image/w_1080/3217385_8715275526095-111_01_rvkfjb.webp 1080w, https://asset.action.com/image/upload/t_digital_product_image/w_1920/3217385_8715275526095-111_01_rvkfjb.webp 1920w"
                      src="https://asset.action.com/image/upload/t_digital_product_image/w_1920/3217385_8715275526095-111_01_rvkfjb.webp"><span
                      class="absolute bottom-0 flex flex-col gap-2"></span></span><span
                    class="mt-2 mb-3 flex grow flex-col gap-1 leading-tight sm:mb-4"><span
                      class="xs:text-[16px] xs:leading-5 text-sm leading-[18px] font-medium text-dark-blue-500 line-clamp-2 break-words"
                      data-testid="product-card-title">Diamentowe malowanie Boże Narodzenie</span><span
                      class="max-h-fit text-sm leading-[18px] font-normal line-clamp-2 grow break-words text-neutral-700"
                      data-testid="product-card-description">30 x 30 cm | Różne warianty</span></span><span
                    aria-label="9,95&nbsp;zł 9,95&nbsp;zł/szt." class="flex flex-col"><span
                      data-testid="product-card-price-description"
                      class="mb-1 block w-max text-xs leading-[12px] text-neutral-700">9,95&nbsp;zł/szt.</span><span
                      class="flex items-start text-orange-500"><span data-testid="product-card-price-whole"
                        class="font-bold tracking-[1px] text-[40px] leading-[28px] md:text-[48px] md:leading-[33px]">9</span><span
                        class="inline-flex items-baseline"><span data-testid="product-card-price-fractional"
                          class="font-bold tracking-[1px] text-[20px] leading-[14px] md:text-[28px] md:leading-[19px]">95</span></span></span></span><span
                    class="flex leading-none text-neutral-700 mt-1 flex-row items-baseline self-baseline"
                    data-testid="product-card-price-discount"><span class="flex items-center"
                      data-testid="product-card-price-original-amount"><span
                        class="text-center text-[12px] font-normal line-through">13,95&nbsp;zł</span><span
                        class="pl-0.5 text-xs">*</span></span><span
                      class="ml-1 rounded border border-neutral-700 px-[2px] py-px text-xs leading-[12px] font-medium"
                      data-testid="product-card-price-discount-percentage">-28%</span></span><span
                    class="mt-2 flex text-xs font-normal text-neutral-700"
                    data-testid="product-card-price-discount-footnote"><span class="italic">*
                      <!-- -->Najniższa cena z 30 dni przed obniżką
                    </span></span><span class="absolute top-0 left-0 flex flex-col gap-0.5"><span
                      class="flex overflow-hidden h-[22px] sm:h-[26px] text-neutral-0 text-[12px] leading-[14px] font-bold sm:text-sm sm:leading-[18px]"
                      aria-labelledby="_R_76mfbinpfivjap5snpfivb_" data-testid="product-tag"><span
                        class="flex w-fit items-center pr-1 pl-1.5 sm:pr-1.5 sm:pl-2 bg-orange-500"><span
                          id="_R_76mfbinpfivjap5snpfivb_">Promocja tygodnia</span></span><span class="w-[8px]"><span
                          class="-mr-px block h-full -translate-x-px bg-orange-500"
                          style="clip-path:polygon(0 0, 100% 0, 1px 100%, 0 100%)"></span></span></span></span></a><button
                  type="button" data-testid="favorite-button" class="absolute top-0 right-0 p-2"
                  aria-label="Dodaj do ulubionych"><svg aria-hidden="true" data-testid="Heart01"
                    xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                    <path fill="#8593a3"
                      d="M12 21a1 1 0 0 1-.486-.126C11.126 20.658 2 15.514 2 9c0-3.665 2.218-5.425 4.293-5.849 2.171-.44 4.328.402 5.707 2.113 1.38-1.712 3.537-2.552 5.707-2.113C19.782 3.575 22 5.335 22 9.001c0 6.513-9.126 11.657-9.515 11.873A1 1 0 0 1 12 21M7.4 5.041q-.368 0-.707.07C5.007 5.456 4 6.91 4 9.001c0 4.584 6.197 8.728 8 9.836 1.804-1.108 8-5.252 8-9.837 0-2.09-1.007-3.544-2.693-3.889-1.482-.3-3.479.346-4.387 2.475a1 1 0 0 1-1.84 0C10.31 5.78 8.755 5.04 7.4 5.04">
                    </path>
                  </svg></button></div>
            </div>
            <div class="block h-full">
              <div class="border-neutral-150 bg-neutral-0 col-span-1 border bg-neutral-0 relative h-full w-full"
                data-testid="product-card" data-content-king="product-card" analytics="[object Object]"><a
                  class="group relative flex h-full w-full flex-col p-3 xs:p-4"
                  href="/pl-pl/p/3207811/zrob-to-sam-a-domek-bozonarodzeniowy-crafts-co/"
                  data-testid="product-card-link"><span
                    class="xs:max-h-[180px] relative aspect-square w-full md:max-h-[230px]"><img
                      data-testid="product-card-image" alt="" loading="lazy" decoding="async" data-nimg="fill"
                      class="object-contain object-center py-2 transition-transform duration-250 group-hover:scale-105 md:py-4 h-full w-full"
                      style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent"
                      sizes="(min-width: 1280px) calc(1280px / 4), (min-width: 1024px) calc(100vw / 4), (min-width: 768px) calc(100vw / 4), (min-width: 640px) calc(100vw / 3), calc(100vw / 2)"
                      srcset="https://asset.action.com/image/upload/t_digital_product_image/w_128/3207811_8711568136606-111_01_e45mch.webp 128w, https://asset.action.com/image/upload/t_digital_product_image/w_256/3207811_8711568136606-111_01_e45mch.webp 256w, https://asset.action.com/image/upload/t_digital_product_image/w_640/3207811_8711568136606-111_01_e45mch.webp 640w, https://asset.action.com/image/upload/t_digital_product_image/w_1080/3207811_8711568136606-111_01_e45mch.webp 1080w, https://asset.action.com/image/upload/t_digital_product_image/w_1920/3207811_8711568136606-111_01_e45mch.webp 1920w"
                      src="https://asset.action.com/image/upload/t_digital_product_image/w_1920/3207811_8711568136606-111_01_e45mch.webp"><span
                      class="absolute bottom-0 flex flex-col gap-2"></span></span><span
                    class="mt-2 mb-3 flex grow flex-col gap-1 leading-tight sm:mb-4"><span
                      class="xs:text-[16px] xs:leading-5 text-sm leading-[18px] font-medium text-dark-blue-500 line-clamp-2 break-words"
                      data-testid="product-card-title">Zrób to sam(a): domek bożonarodzeniowy Crafts &amp; Co</span><span
                      class="max-h-fit text-sm leading-[18px] font-normal line-clamp-2 grow break-words text-neutral-700"
                      data-testid="product-card-description">Różne warianty</span></span><span
                    aria-label="44,92&nbsp;zł 44,92&nbsp;zł/szt." class="flex flex-col"><span
                      data-testid="product-card-price-description"
                      class="mb-1 block w-max text-xs leading-[12px] text-neutral-700">44,92&nbsp;zł/szt.</span><span
                      class="flex items-start text-orange-500"><span data-testid="product-card-price-whole"
                        class="font-bold tracking-[1px] text-[40px] leading-[28px] md:text-[48px] md:leading-[33px]">44</span><span
                        class="inline-flex items-baseline"><span data-testid="product-card-price-fractional"
                          class="font-bold tracking-[1px] text-[20px] leading-[14px] md:text-[28px] md:leading-[19px]">92</span></span></span></span><span
                    class="flex leading-none text-neutral-700 mt-1 flex-row items-baseline self-baseline"
                    data-testid="product-card-price-discount"><span class="flex items-center"
                      data-testid="product-card-price-original-amount"><span
                        class="text-center text-[12px] font-normal line-through">59,90&nbsp;zł</span><span
                        class="pl-0.5 text-xs">*</span></span><span
                      class="ml-1 rounded border border-neutral-700 px-[2px] py-px text-xs leading-[12px] font-medium"
                      data-testid="product-card-price-discount-percentage">-25%</span></span><span
                    class="mt-2 flex text-xs font-normal text-neutral-700"
                    data-testid="product-card-price-discount-footnote"><span class="italic">*
                      <!-- -->Najniższa cena z 30 dni przed obniżką
                    </span></span><span class="absolute top-0 left-0 flex flex-col gap-0.5"><span
                      class="flex overflow-hidden h-[22px] sm:h-[26px] text-neutral-0 text-[12px] leading-[14px] font-bold sm:text-sm sm:leading-[18px]"
                      aria-labelledby="_R_76qfbinpfivjap5snpfivb_" data-testid="product-tag"><span
                        class="flex w-fit items-center pr-1 pl-1.5 sm:pr-1.5 sm:pl-2 bg-orange-500"><span
                          id="_R_76qfbinpfivjap5snpfivb_">Promocja tygodnia</span></span><span class="w-[8px]"><span
                          class="-mr-px block h-full -translate-x-px bg-orange-500"
                          style="clip-path:polygon(0 0, 100% 0, 1px 100%, 0 100%)"></span></span></span></span></a><button
                  type="button" data-testid="favorite-button" class="absolute top-0 right-0 p-2"
                  aria-label="Dodaj do ulubionych"><svg aria-hidden="true" data-testid="Heart01"
                    xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                    <path fill="#8593a3"
                      d="M12 21a1 1 0 0 1-.486-.126C11.126 20.658 2 15.514 2 9c0-3.665 2.218-5.425 4.293-5.849 2.171-.44 4.328.402 5.707 2.113 1.38-1.712 3.537-2.552 5.707-2.113C19.782 3.575 22 5.335 22 9.001c0 6.513-9.126 11.657-9.515 11.873A1 1 0 0 1 12 21M7.4 5.041q-.368 0-.707.07C5.007 5.456 4 6.91 4 9.001c0 4.584 6.197 8.728 8 9.836 1.804-1.108 8-5.252 8-9.837 0-2.09-1.007-3.544-2.693-3.889-1.482-.3-3.479.346-4.387 2.475a1 1 0 0 1-1.84 0C10.31 5.78 8.755 5.04 7.4 5.04">
                    </path>
                  </svg></button></div>
            </div>
          </div>
          {* <script type="application/ld+json">
{"itemListElement":[{"@type":"ListItem","position":1,"url":"https://www.action.com/pl-pl/p/3217385/diamentowe-malowanie-boze-narodzenie/"},{"@type":"ListItem","position":2,"url":"https://www.action.com/pl-pl/p/3207811/zrob-to-sam-a-domek-bozonarodzeniowy-crafts-co/"}],"@context":"https://schema.org","@type":"ItemList"}
          </script> *}
        </div>
      </div>
    </div>
  </section>

  <section class="bg-neutral-0 pt-6 md:pt-8 pb-6 md:pb-8" aria-label="Klimatyczne lampki"
    data-testid="cms-inspirational-row">
    <div class="relative flex w-full flex-col px-4 lg:px-8">
      <div class="mx-auto w-full max-w-7xl">
        <div class="flex flex-col gap-2">
          <div class="flex items-end justify-between gap-4">
            <div class="flex flex-col">
              <h2 class="heading-xl" data-testid="title-view-title">Klimatyczne lampki</h2>
              <p class="text-neutral-700" data-testid="title-view-subtitle">rozświetlą Twoją przestrzeń</p>
            </div><a class="btn-base group btn-link w-fit max-w-[160px] sm:max-w-full"
              href="/pl-pl/brand/luxuriance-lights/" data-testid="title-view-link"><span
                class="btn-content-label btn-content-link btn-shadow-dark-blue">Zobacz więcej</span><span
                aria-hidden="true" class="content-center ml-1"><svg aria-hidden="true" data-testid="ChevronRightMd"
                  xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                  <path fill="#4e769c"
                    d="M10 17a1 1 0 0 1-.707-1.707L12.586 12 9.293 8.707a1 1 0 1 1 1.414-1.414l4 4a1 1 0 0 1 0 1.414l-4 4A1 1 0 0 1 10 17">
                  </path>
                </svg></span></a>
          </div>
          <div class="min-h-[325px] md:hidden">
            <div class="flex flex-col gap-4 md:gap-6"
              style="--rowsXl:1;--columnsXl:5;--rowsLg:1;--columnsLg:4;--rowsMd:1;--columnsMd:3;--rowsSm:1;--columnsSm:3;--rowsDefault:1;--columnsDefault:2">
              <div class="@container relative" style="--numberOfPages:1;--currentPage:0">
                <div
                  class="xl:[--columns:var(--columnsXl)] xl:[--rows:var(--rowsXl)] lg:[--columns:var(--columnsLg)] lg:[--rows:var(--rowsLg)] md:[--columns:var(--columnsMd)] md:[--rows:var(--rowsMd)] sm:[--columns:var(--columnsSm)] sm:[--rows:var(--rowsSm)] [--columns:var(--columnsDefault)] [--rows:var(--rowsDefault)] [--itemSpacing:8px] md:[--itemSpacing:16px] [--lastItemPartial:16px] sm:[--lastItemPartial:32px] [--itemWidth:calc((100cqw-var(--itemSpacing)*var(--columns)-var(--lastItemPartial))/var(--columns))] lg:[--itemWidth:calc((100cqw-var(--itemSpacing)*(var(--columns)-1))/var(--columns))] pointer-fine:[--itemWidth:calc((100cqw-var(--itemSpacing)*(var(--columns)-1))/var(--columns))] [--isMultiRow:calc(min(1,var(--rows)-1))] [--isSingleRow:calc(1-var(--isMultiRow))]">
                  <div class="pointer-events-none absolute inset-0 z-1"><button type="button" inert=""
                      aria-label="Poprzednia"
                      class="custom-invisible absolute -translate-y-1/2 top-1/2 bg-neutral-0 shadow-overlay-button rounded-full p-4 hidden lg:block pointer-fine:block transition duration-200 hover:scale-[1.15] -left-2 lg:-left-4 xl:-left-7 pointer-events-none opacity-0"
                      data-testid="carousel-previous-navigation-button" onclick="prevCarouselPage(this)"><svg
                        aria-hidden="true" data-testid="ArrowLeftMd" xmlns="http://www.w3.org/2000/svg" width="24"
                        height="24" fill="none" viewBox="0 0 24 24">
                        <path fill="#001489"
                          d="M11 19a1 1 0 0 1-.707-.293l-6-6A1 1 0 0 1 4 12.003v-.006a1 1 0 0 1 .293-.704l6-6a1 1 0 1 1 1.414 1.414L7.414 11H19a1 1 0 0 1 0 2H7.414l4.293 4.293A1 1 0 0 1 11 19">
                        </path>
                      </svg></button></div>
                  <div
                    class="no-scrollbar flex overflow-auto lg:overflow-clip pointer-fine:overflow-clip lg:[overflow-clip-margin:2px] pointer-fine:[overflow-clip-margin:2px] -mx-4 lg:mx-0 pointer-fine:mx-0">
                    <div class="relative flex transition-transform duration-600 ease-in-out">
                      <div class="w-4 shrink-0 lg:w-0 pointer-fine:w-0"></div>
                      <div class="grid grid-flow-col grid-rows-[repeat(var(--rows),minmax(0,auto))] gap-(--itemSpacing)">
                        <div class="w-(--itemWidth)"><a class="relative h-full w-full group"
                            href="/pl-pl/brand/luxuriance-lights/" aria-label="Zobacz więcej" data-testid="content-card">
                            <div
                              class="lg:min-w-none relative flex h-full min-h-[300px] w-full flex-col overflow-hidden rounded-md md:max-w-none InspirationContentCard_contentCard__YE4xI">
                              <div class="relative h-full w-full overflow-hidden"><img data-testid="content-card-image"
                                  alt="" loading="lazy" decoding="async" data-nimg="fill"
                                  class="bg-neutral-10 object-cover object-center transition-all duration-300 group-hover:scale-105 transition-transform duration-250 hover:scale-105 h-full w-full"
                                  style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent"
                                  sizes="(min-width: 1280px) calc( 1280px / 2) ,(min-width: 768px) calc( 100vw / 2 ),calc( 100vw / 3 * 2 )"
                                  srcset="https://asset.action.com/image/upload/t_digital_content_card/w_128/Christmas_Decoration_SeasonalDecoration_OutdoorLights_2025_ua3efx.webp 128w, https://asset.action.com/image/upload/t_digital_content_card/w_256/Christmas_Decoration_SeasonalDecoration_OutdoorLights_2025_ua3efx.webp 256w, https://asset.action.com/image/upload/t_digital_content_card/w_640/Christmas_Decoration_SeasonalDecoration_OutdoorLights_2025_ua3efx.webp 640w, https://asset.action.com/image/upload/t_digital_content_card/w_1080/Christmas_Decoration_SeasonalDecoration_OutdoorLights_2025_ua3efx.webp 1080w, https://asset.action.com/image/upload/t_digital_content_card/w_1920/Christmas_Decoration_SeasonalDecoration_OutdoorLights_2025_ua3efx.webp 1920w"
                                  src="https://asset.action.com/image/upload/t_digital_content_card/w_1920/Christmas_Decoration_SeasonalDecoration_OutdoorLights_2025_ua3efx.webp">
                              </div>
                              <div class="relative w-full p-4 InspirationContentCard_titleContainer__TmDDF bg-dark-blue">
                                <h3
                                  class="heading-lg text-neutral-0 line-clamp-2 flex min-w-0 items-center font-bold first-letter:uppercase"
                                  data-testid="content-card-title">Piękne oświetlenie</h3>
                                <div class="InspirationContentCard_chevronButton__98Zcv"><svg aria-hidden="true"
                                    data-testid="ChevronRightMd" class="h-8 w-8" xmlns="http://www.w3.org/2000/svg"
                                    width="24" height="24" fill="none" viewBox="0 0 24 24">
                                    <path fill="#001489"
                                      d="M10 17a1 1 0 0 1-.707-1.707L12.586 12 9.293 8.707a1 1 0 1 1 1.414-1.414l4 4a1 1 0 0 1 0 1.414l-4 4A1 1 0 0 1 10 17">
                                    </path>
                                  </svg></div>
                              </div>
                            </div>
                          </a></div>
                        <div class="w-(--itemWidth)">
                          <div class="block h-full">
                            <div
                              class="border-neutral-150 bg-neutral-0 col-span-1 border bg-neutral-0 relative h-full w-full"
                              data-testid="product-card" data-content-king="product-card" analytics="[object Object]"><a
                                class="group relative flex h-full w-full flex-col p-3 xs:p-4"
                                href="/pl-pl/p/3218264/oswietlenie-swiateczne-luxuriance-lights/"
                                data-testid="product-card-link"><span
                                  class="xs:max-h-[180px] relative aspect-square w-full md:max-h-[230px]"><img
                                    data-testid="product-card-image" alt="" loading="lazy" decoding="async"
                                    data-nimg="fill"
                                    class="object-contain object-center py-2 transition-transform duration-250 group-hover:scale-105 md:py-4 h-full w-full"
                                    style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent"
                                    sizes="(min-width: 1280px) calc(1280px / 4), (min-width: 1024px) calc(100vw / 4), (min-width: 768px) calc(100vw / 4), (min-width: 640px) calc(100vw / 3), calc(100vw / 2)"
                                    srcset="https://asset.action.com/image/upload/t_digital_product_image/w_128/3218264_8718964252220-111_01_kuukw7.webp 128w, https://asset.action.com/image/upload/t_digital_product_image/w_256/3218264_8718964252220-111_01_kuukw7.webp 256w, https://asset.action.com/image/upload/t_digital_product_image/w_640/3218264_8718964252220-111_01_kuukw7.webp 640w, https://asset.action.com/image/upload/t_digital_product_image/w_1080/3218264_8718964252220-111_01_kuukw7.webp 1080w, https://asset.action.com/image/upload/t_digital_product_image/w_1920/3218264_8718964252220-111_01_kuukw7.webp 1920w"
                                    src="https://asset.action.com/image/upload/t_digital_product_image/w_1920/3218264_8718964252220-111_01_kuukw7.webp"><span
                                    class="absolute bottom-0 flex flex-col gap-2"></span></span><span
                                  class="mt-2 mb-3 flex grow flex-col gap-1 leading-tight sm:mb-4"><span
                                    class="xs:text-[16px] xs:leading-5 text-sm leading-[18px] font-medium text-dark-blue-500 line-clamp-2 break-words"
                                    data-testid="product-card-title">Oświetlenie świąteczne Luxuriance Lights</span><span
                                    class="max-h-fit text-sm leading-[18px] font-normal line-clamp-2 grow break-words text-neutral-700"
                                    data-testid="product-card-description">160 LED | 12,4 m | Różne
                                    kolory</span></span><span aria-label="19,95&nbsp;zł 19,95&nbsp;zł/szt."
                                  class="flex flex-col"><span data-testid="product-card-price-description"
                                    class="mb-1 block w-max text-xs leading-[12px] text-neutral-700">19,95&nbsp;zł/szt.</span><span
                                    class="flex items-start text-orange-500"><span data-testid="product-card-price-whole"
                                      class="font-bold tracking-[1px] text-[40px] leading-[28px] md:text-[48px] md:leading-[33px]">19</span><span
                                      class="inline-flex items-baseline"><span data-testid="product-card-price-fractional"
                                        class="font-bold tracking-[1px] text-[20px] leading-[14px] md:text-[28px] md:leading-[19px]">95</span></span></span></span><span
                                  class="flex leading-none text-neutral-700 mt-1 flex-row items-baseline self-baseline"
                                  data-testid="product-card-price-discount"><span class="flex items-center"
                                    data-testid="product-card-price-original-amount"><span
                                      class="text-center text-[12px] font-normal line-through">22,95&nbsp;zł</span><span
                                      class="pl-0.5 text-xs">*</span></span><span
                                    class="ml-1 rounded border border-neutral-700 px-[2px] py-px text-xs leading-[12px] font-medium"
                                    data-testid="product-card-price-discount-percentage">-13%</span></span><span
                                  class="mt-2 flex text-xs font-normal text-neutral-700"
                                  data-testid="product-card-price-discount-footnote"><span class="italic">*
                                    <!-- -->Najniższa cena z 30 dni przed obniżką
                                  </span></span><span class="absolute top-0 left-0 flex flex-col gap-0.5"><span
                                    class="flex overflow-hidden h-[22px] sm:h-[26px] text-neutral-0 text-[12px] leading-[14px] font-bold sm:text-sm sm:leading-[18px]"
                                    aria-labelledby="_R_3jdabjinpfivjap5snpfivb_" data-testid="product-tag"><span
                                      class="flex w-fit items-center pr-1 pl-1.5 sm:pr-1.5 sm:pl-2 bg-orange-500"><span
                                        id="_R_3jdabjinpfivjap5snpfivb_">Promocja tygodnia</span></span><span
                                      class="w-[8px]"><span class="-mr-px block h-full -translate-x-px bg-orange-500"
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
                        </div>
                        <div class="w-(--itemWidth)">
                          <div class="block h-full">
                            <div
                              class="border-neutral-150 bg-neutral-0 col-span-1 border bg-neutral-0 relative h-full w-full"
                              data-testid="product-card" data-content-king="product-card" analytics="[object Object]"><a
                                class="group relative flex h-full w-full flex-col p-3 xs:p-4"
                                href="/pl-pl/p/3011001/oswietlenie-led-w-ksztalcie-sopli-luxuriance-lights/"
                                data-testid="product-card-link"><span
                                  class="xs:max-h-[180px] relative aspect-square w-full md:max-h-[230px]"><img
                                    data-testid="product-card-image" alt="" loading="lazy" decoding="async"
                                    data-nimg="fill"
                                    class="object-contain object-center py-2 transition-transform duration-250 group-hover:scale-105 md:py-4 h-full w-full"
                                    style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent"
                                    sizes="(min-width: 1280px) calc(1280px / 4), (min-width: 1024px) calc(100vw / 4), (min-width: 768px) calc(100vw / 4), (min-width: 640px) calc(100vw / 3), calc(100vw / 2)"
                                    srcset="https://asset.action.com/image/upload/t_digital_product_image/w_128/3011001_8718964135707-111_01_xlul4n.webp 128w, https://asset.action.com/image/upload/t_digital_product_image/w_256/3011001_8718964135707-111_01_xlul4n.webp 256w, https://asset.action.com/image/upload/t_digital_product_image/w_640/3011001_8718964135707-111_01_xlul4n.webp 640w, https://asset.action.com/image/upload/t_digital_product_image/w_1080/3011001_8718964135707-111_01_xlul4n.webp 1080w, https://asset.action.com/image/upload/t_digital_product_image/w_1920/3011001_8718964135707-111_01_xlul4n.webp 1920w"
                                    src="https://asset.action.com/image/upload/t_digital_product_image/w_1920/3011001_8718964135707-111_01_xlul4n.webp"><span
                                    class="absolute bottom-0 flex flex-col gap-2"></span></span><span
                                  class="mt-2 mb-3 flex grow flex-col gap-1 leading-tight sm:mb-4"><span
                                    class="xs:text-[16px] xs:leading-5 text-sm leading-[18px] font-medium text-dark-blue-500 line-clamp-2 break-words"
                                    data-testid="product-card-title">Oświetlenie LED w kształcie sopli Luxuriance Lights
                                  </span><span
                                    class="max-h-fit text-sm leading-[18px] font-normal line-clamp-2 grow break-words text-neutral-700"
                                    data-testid="product-card-description">19 metrów | 720 diod LED</span></span><span
                                  aria-label="99,95&nbsp;zł 99,95&nbsp;zł/szt." class="flex flex-col"><span
                                    data-testid="product-card-price-description"
                                    class="mb-1 block w-max text-xs leading-[12px] text-neutral-700">99,95&nbsp;zł/szt.</span><span
                                    class="flex items-start text-orange-500"><span data-testid="product-card-price-whole"
                                      class="font-bold tracking-[1px] text-[40px] leading-[28px] md:text-[48px] md:leading-[33px]">99</span><span
                                      class="inline-flex items-baseline"><span data-testid="product-card-price-fractional"
                                        class="font-bold tracking-[1px] text-[20px] leading-[14px] md:text-[28px] md:leading-[19px]">95</span></span></span></span><span
                                  class="flex leading-none text-neutral-700 mt-1 flex-row items-baseline self-baseline"
                                  data-testid="product-card-price-discount"><span class="flex items-center"
                                    data-testid="product-card-price-original-amount"><span
                                      class="text-center text-[12px] font-normal line-through">119,95&nbsp;zł</span><span
                                      class="pl-0.5 text-xs">*</span></span><span
                                    class="ml-1 rounded border border-neutral-700 px-[2px] py-px text-xs leading-[12px] font-medium"
                                    data-testid="product-card-price-discount-percentage">-16%</span></span><span
                                  class="mt-2 flex text-xs font-normal text-neutral-700"
                                  data-testid="product-card-price-discount-footnote"><span class="italic">*
                                    <!-- -->Najniższa cena z 30 dni przed obniżką
                                  </span></span><span class="absolute top-0 left-0 flex flex-col gap-0.5"><span
                                    class="flex overflow-hidden h-[22px] sm:h-[26px] text-neutral-0 text-[12px] leading-[14px] font-bold sm:text-sm sm:leading-[18px]"
                                    aria-labelledby="_R_3jfabjinpfivjap5snpfivb_" data-testid="product-tag"><span
                                      class="flex w-fit items-center pr-1 pl-1.5 sm:pr-1.5 sm:pl-2 bg-orange-500"><span
                                        id="_R_3jfabjinpfivjap5snpfivb_">Promocja tygodnia</span></span><span
                                      class="w-[8px]"><span class="-mr-px block h-full -translate-x-px bg-orange-500"
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
                        </div>
                      </div>
                      <div class="w-4 shrink-0 lg:w-0 pointer-fine:w-0"></div>
                    </div>
                  </div>
                  <div class="pointer-events-none absolute inset-0"><button type="button" inert="" aria-label="Następna"
                      class="absolute -translate-y-1/2 top-1/2 bg-neutral-0 shadow-overlay-button rounded-full p-4 hidden lg:block pointer-fine:block transition duration-200 hover:scale-[1.15] -right-2 lg:-right-4 xl:-right-7 pointer-events-none opacity-0"
                      data-testid="carousel-next-navigation-button" onclick="nextCarouselPage(this)"><svg
                        aria-hidden="true" data-testid="ArrowRightMd" xmlns="http://www.w3.org/2000/svg" width="24"
                        height="24" fill="none" viewBox="0 0 24 24">
                        <path fill="#001489"
                          d="M13 19a1 1 0 0 1-.707-1.707L16.586 13H5a1 1 0 0 1 0-2h11.586l-4.293-4.293a1 1 0 1 1 1.414-1.414l6 6a1 1 0 0 1 .293.704v.006a1 1 0 0 1-.293.704l-6 6A1 1 0 0 1 13 19">
                        </path>
                      </svg></button></div>
                </div>
              </div>
            </div>
          </div>
          <div
            class="hidden h-fit min-h-[325px] gap-2 md:grid md:min-h-[380px] md:grid-cols-3 md:gap-3 lg:grid-cols-4 lg:gap-6">
            <div data-testid="inspirational-row-content-card" class="lg:col-span-2"><a
                class="relative h-full w-full group" href="/pl-pl/brand/luxuriance-lights/" aria-label="Zobacz więcej"
                data-testid="content-card">
                <div
                  class="lg:min-w-none relative flex h-full min-h-[300px] w-full flex-col overflow-hidden rounded-md md:max-w-none InspirationContentCard_contentCard__YE4xI">
                  <div class="relative h-full w-full overflow-hidden"><img data-testid="content-card-image" alt=""
                      loading="lazy" decoding="async" data-nimg="fill"
                      class="bg-neutral-10 object-cover object-center transition-all duration-300 group-hover:scale-105 transition-transform duration-250 hover:scale-105 h-full w-full"
                      style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent"
                      sizes="(min-width: 1280px) calc( 1280px / 2) ,(min-width: 768px) calc( 100vw / 2 ),calc( 100vw / 3 * 2 )"
                      srcset="https://asset.action.com/image/upload/t_digital_content_card/w_128/Christmas_Decoration_SeasonalDecoration_OutdoorLights_2025_ua3efx.webp 128w, https://asset.action.com/image/upload/t_digital_content_card/w_256/Christmas_Decoration_SeasonalDecoration_OutdoorLights_2025_ua3efx.webp 256w, https://asset.action.com/image/upload/t_digital_content_card/w_640/Christmas_Decoration_SeasonalDecoration_OutdoorLights_2025_ua3efx.webp 640w, https://asset.action.com/image/upload/t_digital_content_card/w_1080/Christmas_Decoration_SeasonalDecoration_OutdoorLights_2025_ua3efx.webp 1080w, https://asset.action.com/image/upload/t_digital_content_card/w_1920/Christmas_Decoration_SeasonalDecoration_OutdoorLights_2025_ua3efx.webp 1920w"
                      src="https://asset.action.com/image/upload/t_digital_content_card/w_1920/Christmas_Decoration_SeasonalDecoration_OutdoorLights_2025_ua3efx.webp">
                  </div>
                  <div class="relative w-full p-4 InspirationContentCard_titleContainer__TmDDF bg-dark-blue">
                    <h3
                      class="heading-lg text-neutral-0 line-clamp-2 flex min-w-0 items-center font-bold first-letter:uppercase"
                      data-testid="content-card-title">Piękne oświetlenie</h3>
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
            <div class="block h-full">
              <div class="border-neutral-150 bg-neutral-0 col-span-1 border bg-neutral-0 relative h-full w-full"
                data-testid="product-card" data-content-king="product-card" analytics="[object Object]"><a
                  class="group relative flex h-full w-full flex-col p-3 xs:p-4"
                  href="/pl-pl/p/3218264/oswietlenie-swiateczne-luxuriance-lights/" data-testid="product-card-link"><span
                    class="xs:max-h-[180px] relative aspect-square w-full md:max-h-[230px]"><img
                      data-testid="product-card-image" alt="" loading="lazy" decoding="async" data-nimg="fill"
                      class="object-contain object-center py-2 transition-transform duration-250 group-hover:scale-105 md:py-4 h-full w-full"
                      style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent"
                      sizes="(min-width: 1280px) calc(1280px / 4), (min-width: 1024px) calc(100vw / 4), (min-width: 768px) calc(100vw / 4), (min-width: 640px) calc(100vw / 3), calc(100vw / 2)"
                      srcset="https://asset.action.com/image/upload/t_digital_product_image/w_128/3218264_8718964252220-111_01_kuukw7.webp 128w, https://asset.action.com/image/upload/t_digital_product_image/w_256/3218264_8718964252220-111_01_kuukw7.webp 256w, https://asset.action.com/image/upload/t_digital_product_image/w_640/3218264_8718964252220-111_01_kuukw7.webp 640w, https://asset.action.com/image/upload/t_digital_product_image/w_1080/3218264_8718964252220-111_01_kuukw7.webp 1080w, https://asset.action.com/image/upload/t_digital_product_image/w_1920/3218264_8718964252220-111_01_kuukw7.webp 1920w"
                      src="https://asset.action.com/image/upload/t_digital_product_image/w_1920/3218264_8718964252220-111_01_kuukw7.webp"><span
                      class="absolute bottom-0 flex flex-col gap-2"></span></span><span
                    class="mt-2 mb-3 flex grow flex-col gap-1 leading-tight sm:mb-4"><span
                      class="xs:text-[16px] xs:leading-5 text-sm leading-[18px] font-medium text-dark-blue-500 line-clamp-2 break-words"
                      data-testid="product-card-title">Oświetlenie świąteczne Luxuriance Lights</span><span
                      class="max-h-fit text-sm leading-[18px] font-normal line-clamp-2 grow break-words text-neutral-700"
                      data-testid="product-card-description">160 LED | 12,4 m | Różne kolory</span></span><span
                    aria-label="19,95&nbsp;zł 19,95&nbsp;zł/szt." class="flex flex-col"><span
                      data-testid="product-card-price-description"
                      class="mb-1 block w-max text-xs leading-[12px] text-neutral-700">19,95&nbsp;zł/szt.</span><span
                      class="flex items-start text-orange-500"><span data-testid="product-card-price-whole"
                        class="font-bold tracking-[1px] text-[40px] leading-[28px] md:text-[48px] md:leading-[33px]">19</span><span
                        class="inline-flex items-baseline"><span data-testid="product-card-price-fractional"
                          class="font-bold tracking-[1px] text-[20px] leading-[14px] md:text-[28px] md:leading-[19px]">95</span></span></span></span><span
                    class="flex leading-none text-neutral-700 mt-1 flex-row items-baseline self-baseline"
                    data-testid="product-card-price-discount"><span class="flex items-center"
                      data-testid="product-card-price-original-amount"><span
                        class="text-center text-[12px] font-normal line-through">22,95&nbsp;zł</span><span
                        class="pl-0.5 text-xs">*</span></span><span
                      class="ml-1 rounded border border-neutral-700 px-[2px] py-px text-xs leading-[12px] font-medium"
                      data-testid="product-card-price-discount-percentage">-13%</span></span><span
                    class="mt-2 flex text-xs font-normal text-neutral-700"
                    data-testid="product-card-price-discount-footnote"><span class="italic">*
                      <!-- -->Najniższa cena z 30 dni przed obniżką
                    </span></span><span class="absolute top-0 left-0 flex flex-col gap-0.5"><span
                      class="flex overflow-hidden h-[22px] sm:h-[26px] text-neutral-0 text-[12px] leading-[14px] font-bold sm:text-sm sm:leading-[18px]"
                      aria-labelledby="_R_76mfjinpfivjap5snpfivb_" data-testid="product-tag"><span
                        class="flex w-fit items-center pr-1 pl-1.5 sm:pr-1.5 sm:pl-2 bg-orange-500"><span
                          id="_R_76mfjinpfivjap5snpfivb_">Promocja tygodnia</span></span><span class="w-[8px]"><span
                          class="-mr-px block h-full -translate-x-px bg-orange-500"
                          style="clip-path:polygon(0 0, 100% 0, 1px 100%, 0 100%)"></span></span></span></span></a><button
                  type="button" data-testid="favorite-button" class="absolute top-0 right-0 p-2"
                  aria-label="Dodaj do ulubionych"><svg aria-hidden="true" data-testid="Heart01"
                    xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                    <path fill="#8593a3"
                      d="M12 21a1 1 0 0 1-.486-.126C11.126 20.658 2 15.514 2 9c0-3.665 2.218-5.425 4.293-5.849 2.171-.44 4.328.402 5.707 2.113 1.38-1.712 3.537-2.552 5.707-2.113C19.782 3.575 22 5.335 22 9.001c0 6.513-9.126 11.657-9.515 11.873A1 1 0 0 1 12 21M7.4 5.041q-.368 0-.707.07C5.007 5.456 4 6.91 4 9.001c0 4.584 6.197 8.728 8 9.836 1.804-1.108 8-5.252 8-9.837 0-2.09-1.007-3.544-2.693-3.889-1.482-.3-3.479.346-4.387 2.475a1 1 0 0 1-1.84 0C10.31 5.78 8.755 5.04 7.4 5.04">
                    </path>
                  </svg></button></div>
            </div>
            <div class="block h-full">
              <div class="border-neutral-150 bg-neutral-0 col-span-1 border bg-neutral-0 relative h-full w-full"
                data-testid="product-card" data-content-king="product-card" analytics="[object Object]"><a
                  class="group relative flex h-full w-full flex-col p-3 xs:p-4"
                  href="/pl-pl/p/3011001/oswietlenie-led-w-ksztalcie-sopli-luxuriance-lights/"
                  data-testid="product-card-link"><span
                    class="xs:max-h-[180px] relative aspect-square w-full md:max-h-[230px]"><img
                      data-testid="product-card-image" alt="" loading="lazy" decoding="async" data-nimg="fill"
                      class="object-contain object-center py-2 transition-transform duration-250 group-hover:scale-105 md:py-4 h-full w-full"
                      style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent"
                      sizes="(min-width: 1280px) calc(1280px / 4), (min-width: 1024px) calc(100vw / 4), (min-width: 768px) calc(100vw / 4), (min-width: 640px) calc(100vw / 3), calc(100vw / 2)"
                      srcset="https://asset.action.com/image/upload/t_digital_product_image/w_128/3011001_8718964135707-111_01_xlul4n.webp 128w, https://asset.action.com/image/upload/t_digital_product_image/w_256/3011001_8718964135707-111_01_xlul4n.webp 256w, https://asset.action.com/image/upload/t_digital_product_image/w_640/3011001_8718964135707-111_01_xlul4n.webp 640w, https://asset.action.com/image/upload/t_digital_product_image/w_1080/3011001_8718964135707-111_01_xlul4n.webp 1080w, https://asset.action.com/image/upload/t_digital_product_image/w_1920/3011001_8718964135707-111_01_xlul4n.webp 1920w"
                      src="https://asset.action.com/image/upload/t_digital_product_image/w_1920/3011001_8718964135707-111_01_xlul4n.webp"><span
                      class="absolute bottom-0 flex flex-col gap-2"></span></span><span
                    class="mt-2 mb-3 flex grow flex-col gap-1 leading-tight sm:mb-4"><span
                      class="xs:text-[16px] xs:leading-5 text-sm leading-[18px] font-medium text-dark-blue-500 line-clamp-2 break-words"
                      data-testid="product-card-title">Oświetlenie LED w kształcie sopli Luxuriance Lights </span><span
                      class="max-h-fit text-sm leading-[18px] font-normal line-clamp-2 grow break-words text-neutral-700"
                      data-testid="product-card-description">19 metrów | 720 diod LED</span></span><span
                    aria-label="99,95&nbsp;zł 99,95&nbsp;zł/szt." class="flex flex-col"><span
                      data-testid="product-card-price-description"
                      class="mb-1 block w-max text-xs leading-[12px] text-neutral-700">99,95&nbsp;zł/szt.</span><span
                      class="flex items-start text-orange-500"><span data-testid="product-card-price-whole"
                        class="font-bold tracking-[1px] text-[40px] leading-[28px] md:text-[48px] md:leading-[33px]">99</span><span
                        class="inline-flex items-baseline"><span data-testid="product-card-price-fractional"
                          class="font-bold tracking-[1px] text-[20px] leading-[14px] md:text-[28px] md:leading-[19px]">95</span></span></span></span><span
                    class="flex leading-none text-neutral-700 mt-1 flex-row items-baseline self-baseline"
                    data-testid="product-card-price-discount"><span class="flex items-center"
                      data-testid="product-card-price-original-amount"><span
                        class="text-center text-[12px] font-normal line-through">119,95&nbsp;zł</span><span
                        class="pl-0.5 text-xs">*</span></span><span
                      class="ml-1 rounded border border-neutral-700 px-[2px] py-px text-xs leading-[12px] font-medium"
                      data-testid="product-card-price-discount-percentage">-16%</span></span><span
                    class="mt-2 flex text-xs font-normal text-neutral-700"
                    data-testid="product-card-price-discount-footnote"><span class="italic">*
                      <!-- -->Najniższa cena z 30 dni przed obniżką
                    </span></span><span class="absolute top-0 left-0 flex flex-col gap-0.5"><span
                      class="flex overflow-hidden h-[22px] sm:h-[26px] text-neutral-0 text-[12px] leading-[14px] font-bold sm:text-sm sm:leading-[18px]"
                      aria-labelledby="_R_76qfjinpfivjap5snpfivb_" data-testid="product-tag"><span
                        class="flex w-fit items-center pr-1 pl-1.5 sm:pr-1.5 sm:pl-2 bg-orange-500"><span
                          id="_R_76qfjinpfivjap5snpfivb_">Promocja tygodnia</span></span><span class="w-[8px]"><span
                          class="-mr-px block h-full -translate-x-px bg-orange-500"
                          style="clip-path:polygon(0 0, 100% 0, 1px 100%, 0 100%)"></span></span></span></span></a><button
                  type="button" data-testid="favorite-button" class="absolute top-0 right-0 p-2"
                  aria-label="Dodaj do ulubionych"><svg aria-hidden="true" data-testid="Heart01"
                    xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                    <path fill="#8593a3"
                      d="M12 21a1 1 0 0 1-.486-.126C11.126 20.658 2 15.514 2 9c0-3.665 2.218-5.425 4.293-5.849 2.171-.44 4.328.402 5.707 2.113 1.38-1.712 3.537-2.552 5.707-2.113C19.782 3.575 22 5.335 22 9.001c0 6.513-9.126 11.657-9.515 11.873A1 1 0 0 1 12 21M7.4 5.041q-.368 0-.707.07C5.007 5.456 4 6.91 4 9.001c0 4.584 6.197 8.728 8 9.836 1.804-1.108 8-5.252 8-9.837 0-2.09-1.007-3.544-2.693-3.889-1.482-.3-3.479.346-4.387 2.475a1 1 0 0 1-1.84 0C10.31 5.78 8.755 5.04 7.4 5.04">
                    </path>
                  </svg></button></div>
            </div>
          </div>
          {* <script type="application/ld+json">
{"itemListElement":[{"@type":"ListItem","position":1,"url":"https://www.action.com/pl-pl/p/3218264/oswietlenie-swiateczne-luxuriance-lights/"},{"@type":"ListItem","position":2,"url":"https://www.action.com/pl-pl/p/3011001/oswietlenie-led-w-ksztalcie-sopli-luxuriance-lights/"}],"@context":"https://schema.org","@type":"ItemList"}
        </script> *}
        </div>
      </div>
    </div>
  </section>


  <div class="bg-neutral-50 pt-6 pb-6 md:pt-8 md:pb-8">
    <div class="relative flex w-full flex-col px-4 lg:px-8">
      <div class="mx-auto w-full max-w-7xl">
        <h2 class="heading-xl pb-2" data-testid="title-view-title">Ostatnio oglądane</h2>
        <div class="flex flex-col gap-4 md:gap-6"
          style="--rowsXl: 1; --columnsXl: 5; --rowsLg: 1; --columnsLg: 4; --rowsMd: 1; --columnsMd: 3; --rowsSm: 1; --columnsSm: 3; --rowsDefault: 1; --columnsDefault: 2;">
          <div class="@container relative" style="--numberOfPages: 2.6666666666666665; --currentPage: 0;">
            <div
              class="xl:[--columns:var(--columnsXl)] xl:[--rows:var(--rowsXl)] lg:[--columns:var(--columnsLg)] lg:[--rows:var(--rowsLg)] md:[--columns:var(--columnsMd)] md:[--rows:var(--rowsMd)] sm:[--columns:var(--columnsSm)] sm:[--rows:var(--rowsSm)] [--columns:var(--columnsDefault)] [--rows:var(--rowsDefault)] [--itemSpacing:8px] md:[--itemSpacing:16px] [--lastItemPartial:16px] sm:[--lastItemPartial:32px] [--itemWidth:calc((100cqw-var(--itemSpacing)*var(--columns)-var(--lastItemPartial))/var(--columns))] lg:[--itemWidth:calc((100cqw-var(--itemSpacing)*(var(--columns)-1))/var(--columns))] pointer-fine:[--itemWidth:calc((100cqw-var(--itemSpacing)*(var(--columns)-1))/var(--columns))] [--isMultiRow:calc(min(1,var(--rows)-1))] [--isSingleRow:calc(1-var(--isMultiRow))]">
              <div class="pointer-events-none absolute inset-0 z-1"><button type="button" aria-label="Poprzednia"
                  class="custom-invisible absolute -translate-y-1/2 top-1/2 bg-neutral-0 shadow-overlay-button rounded-full p-4 hidden lg:block pointer-fine:block transition duration-200 hover:scale-[1.15] -left-2 lg:-left-4 xl:-left-7 pointer-events-auto"
                  data-testid="carousel-previous-navigation-button" onclick="prevCarouselPage(this)"><svg
                    aria-hidden="true" data-testid="ArrowLeftMd" xmlns="http://www.w3.org/2000/svg" width="24" height="24"
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
                  <div class="grid grid-flow-col grid-rows-[repeat(var(--rows),minmax(0,auto))] gap-(--itemSpacing)">
                    <div class="w-(--itemWidth)">
                      <div class="border-neutral-150 border bg-neutral-0 relative h-full w-full"
                        data-testid="product-card" data-content-king="product-card" analytics="[object Object]"><a
                          class="group relative flex h-full w-full flex-col p-3 xs:p-4"
                          href="/pl-pl/p/3209615/furby-furblets/" data-testid="product-card-link"><span
                            class="xs:max-h-[180px] relative aspect-square w-full md:max-h-[230px]"><img
                              data-testid="product-card-image" alt="" loading="lazy" decoding="async" data-nimg="fill"
                              class="object-contain object-center py-2 transition-transform duration-250 group-hover:scale-105 md:py-4 h-full w-full"
                              sizes="(min-width: 1280px) calc(1280px / 5), (min-width: 1024px) calc(100vw / 4), (min-width: 768px) calc(100vw / 3), (min-width: 640px) calc(100vw / 3), calc(100vw / 2)"
                              srcset="https://asset.action.com/image/upload/t_digital_product_image/w_128/34147718.webp 128w, https://asset.action.com/image/upload/t_digital_product_image/w_256/34147718.webp 256w, https://asset.action.com/image/upload/t_digital_product_image/w_640/34147718.webp 640w, https://asset.action.com/image/upload/t_digital_product_image/w_1080/34147718.webp 1080w, https://asset.action.com/image/upload/t_digital_product_image/w_1920/34147718.webp 1920w"
                              src="https://asset.action.com/image/upload/t_digital_product_image/w_1920/34147718.webp"
                              style="position: absolute; height: 100%; width: 100%; inset: 0px; color: transparent;"><span
                              class="absolute bottom-0 flex flex-col gap-2"></span></span><span
                            class="mt-2 mb-3 flex grow flex-col gap-1 leading-tight sm:mb-4"><span
                              class="xs:text-[16px] xs:leading-5 text-sm leading-[18px] font-medium text-dark-blue-500 line-clamp-2 break-words"
                              data-testid="product-card-title">Furby Furblets</span><span
                              class="max-h-fit text-sm leading-[18px] font-normal line-clamp-2 grow break-words text-neutral-700"
                              data-testid="product-card-description">Różne warianty</span></span><span
                            aria-label="44,90&nbsp;zł 44,90&nbsp;zł/szt." class="flex flex-col"><span
                              data-testid="product-card-price-description"
                              class="mb-1 block w-max text-xs leading-[12px] text-neutral-700">44,90&nbsp;zł/szt.</span><span
                              class="flex items-start text-dark-blue-500"><span data-testid="product-card-price-whole"
                                class="font-bold tracking-[1px] text-[40px] leading-[28px] md:text-[48px] md:leading-[33px]">44</span><span
                                class="inline-flex items-baseline"><span data-testid="product-card-price-fractional"
                                  class="font-bold tracking-[1px] text-[20px] leading-[14px] md:text-[28px] md:leading-[19px]">90</span></span></span></span><span
                            class="absolute top-0 left-0 flex flex-col gap-0.5"><span
                              class="flex overflow-hidden h-[22px] sm:h-[26px] text-neutral-0 text-[12px] leading-[14px] font-bold sm:text-sm sm:leading-[18px]"
                              aria-labelledby="_r_0_" data-testid="product-tag"><span
                                class="flex w-fit items-center pr-1 pl-1.5 sm:pr-1.5 sm:pl-2 bg-cyan-500"><span
                                  id="_r_0_">Nowości</span></span><span class="w-[8px]"><span
                                  class="-mr-px block h-full -translate-x-px bg-cyan-500"
                                  style="clip-path: polygon(0px 0px, 100% 0px, 1px 100%, 0px 100%);"></span></span></span></span></a><button
                          type="button" data-testid="favorite-button" class="absolute top-0 right-0 p-2"
                          aria-label="Usuń z lista życzeń"><svg aria-hidden="true" data-testid="Heart01Filled"
                            xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                            <path fill="#ff8200"
                              d="M12 21a1 1 0 0 1-.486-.126C11.126 20.658 2 15.514 2 9c0-3.665 2.218-5.425 4.293-5.849 2.171-.44 4.328.402 5.707 2.113 1.38-1.712 3.537-2.552 5.707-2.113C19.782 3.575 22 5.335 22 9.001c0 6.513-9.126 11.657-9.515 11.873A1 1 0 0 1 12 21">
                            </path>
                          </svg></button></div>
                    </div>
                    <div class="w-(--itemWidth)">
                      <div class="border-neutral-150 border bg-neutral-0 relative h-full w-full"
                        data-testid="product-card" data-content-king="product-card" analytics="[object Object]"><a
                          class="group relative flex h-full w-full flex-col p-3 xs:p-4"
                          href="/pl-pl/p/3212445/material-opakowaniowy-o-strukturze-plastra-miodu/"
                          data-testid="product-card-link"><span
                            class="xs:max-h-[180px] relative aspect-square w-full md:max-h-[230px]"><img
                              data-testid="product-card-image" alt="" loading="lazy" decoding="async" data-nimg="fill"
                              class="object-contain object-center py-2 transition-transform duration-250 group-hover:scale-105 md:py-4 h-full w-full"
                              sizes="(min-width: 1280px) calc(1280px / 5), (min-width: 1024px) calc(100vw / 4), (min-width: 768px) calc(100vw / 3), (min-width: 640px) calc(100vw / 3), calc(100vw / 2)"
                              srcset="https://asset.action.com/image/upload/t_digital_product_image/w_128/32689415.webp 128w, https://asset.action.com/image/upload/t_digital_product_image/w_256/32689415.webp 256w, https://asset.action.com/image/upload/t_digital_product_image/w_640/32689415.webp 640w, https://asset.action.com/image/upload/t_digital_product_image/w_1080/32689415.webp 1080w, https://asset.action.com/image/upload/t_digital_product_image/w_1920/32689415.webp 1920w"
                              src="https://asset.action.com/image/upload/t_digital_product_image/w_1920/32689415.webp"
                              style="position: absolute; height: 100%; width: 100%; inset: 0px; color: transparent;"><span
                              class="absolute bottom-0 flex flex-col gap-2"></span></span><span
                            class="mt-2 mb-3 flex grow flex-col gap-1 leading-tight sm:mb-4"><span
                              class="xs:text-[16px] xs:leading-5 text-sm leading-[18px] font-medium text-dark-blue-500 line-clamp-2 break-words"
                              data-testid="product-card-title">Materiał opakowaniowy o strukturze plastra
                              miodu</span><span
                              class="max-h-fit text-sm leading-[18px] font-normal line-clamp-2 grow break-words text-neutral-700"
                              data-testid="product-card-description">38 x 1000 cm</span></span><span
                            aria-label="8,99&nbsp;zł 0,90&nbsp;zł/m" class="flex flex-col"><span
                              data-testid="product-card-price-description"
                              class="mb-1 block w-max text-xs leading-[12px] text-neutral-700">0,90&nbsp;zł/m</span><span
                              class="flex items-start text-dark-blue-500"><span data-testid="product-card-price-whole"
                                class="font-bold tracking-[1px] text-[40px] leading-[28px] md:text-[48px] md:leading-[33px]">8</span><span
                                class="inline-flex items-baseline"><span data-testid="product-card-price-fractional"
                                  class="font-bold tracking-[1px] text-[20px] leading-[14px] md:text-[28px] md:leading-[19px]">99</span></span></span></span><span
                            class="absolute top-0 left-0 flex flex-col gap-0.5"></span></a><button type="button"
                          data-testid="favorite-button" class="absolute top-0 right-0 p-2"
                          aria-label="Dodaj do ulubionych"><svg aria-hidden="true" data-testid="Heart01"
                            xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                            <path fill="#8593a3"
                              d="M12 21a1 1 0 0 1-.486-.126C11.126 20.658 2 15.514 2 9c0-3.665 2.218-5.425 4.293-5.849 2.171-.44 4.328.402 5.707 2.113 1.38-1.712 3.537-2.552 5.707-2.113C19.782 3.575 22 5.335 22 9.001c0 6.513-9.126 11.657-9.515 11.873A1 1 0 0 1 12 21M7.4 5.041q-.368 0-.707.07C5.007 5.456 4 6.91 4 9.001c0 4.584 6.197 8.728 8 9.836 1.804-1.108 8-5.252 8-9.837 0-2.09-1.007-3.544-2.693-3.889-1.482-.3-3.479.346-4.387 2.475a1 1 0 0 1-1.84 0C10.31 5.78 8.755 5.04 7.4 5.04">
                            </path>
                          </svg></button></div>
                    </div>
                    <div class="w-(--itemWidth)">
                      <div class="border-neutral-150 border bg-neutral-0 relative h-full w-full"
                        data-testid="product-card" data-content-king="product-card" analytics="[object Object]"><a
                          class="group relative flex h-full w-full flex-col p-3 xs:p-4"
                          href="/pl-pl/p/3207650/kolorowanka-decotime/" data-testid="product-card-link"><span
                            class="xs:max-h-[180px] relative aspect-square w-full md:max-h-[230px]"><img
                              data-testid="product-card-image" alt="" loading="lazy" decoding="async" data-nimg="fill"
                              class="object-contain object-center py-2 transition-transform duration-250 group-hover:scale-105 md:py-4 h-full w-full"
                              sizes="(min-width: 1280px) calc(1280px / 5), (min-width: 1024px) calc(100vw / 4), (min-width: 768px) calc(100vw / 3), (min-width: 640px) calc(100vw / 3), calc(100vw / 2)"
                              srcset="https://asset.action.com/image/upload/t_digital_product_image/w_128/3207650_8721042515490-111_01_vuvaf6.webp 128w, https://asset.action.com/image/upload/t_digital_product_image/w_256/3207650_8721042515490-111_01_vuvaf6.webp 256w, https://asset.action.com/image/upload/t_digital_product_image/w_640/3207650_8721042515490-111_01_vuvaf6.webp 640w, https://asset.action.com/image/upload/t_digital_product_image/w_1080/3207650_8721042515490-111_01_vuvaf6.webp 1080w, https://asset.action.com/image/upload/t_digital_product_image/w_1920/3207650_8721042515490-111_01_vuvaf6.webp 1920w"
                              src="https://asset.action.com/image/upload/t_digital_product_image/w_1920/3207650_8721042515490-111_01_vuvaf6.webp"
                              style="position: absolute; height: 100%; width: 100%; inset: 0px; color: transparent;"><span
                              class="absolute bottom-0 flex flex-col gap-2"></span></span><span
                            class="mt-2 mb-3 flex grow flex-col gap-1 leading-tight sm:mb-4"><span
                              class="xs:text-[16px] xs:leading-5 text-sm leading-[18px] font-medium text-dark-blue-500 line-clamp-2 break-words"
                              data-testid="product-card-title">Kolorowanka DécoTime</span><span
                              class="max-h-fit text-sm leading-[18px] font-normal line-clamp-2 grow break-words text-neutral-700"
                              data-testid="product-card-description">Różne warianty</span></span><span
                            aria-label="9,90&nbsp;zł 9,90&nbsp;zł/szt." class="flex flex-col"><span
                              data-testid="product-card-price-description"
                              class="mb-1 block w-max text-xs leading-[12px] text-neutral-700">9,90&nbsp;zł/szt.</span><span
                              class="flex items-start text-dark-blue-500"><span data-testid="product-card-price-whole"
                                class="font-bold tracking-[1px] text-[40px] leading-[28px] md:text-[48px] md:leading-[33px]">9</span><span
                                class="inline-flex items-baseline"><span data-testid="product-card-price-fractional"
                                  class="font-bold tracking-[1px] text-[20px] leading-[14px] md:text-[28px] md:leading-[19px]">90</span></span></span></span><span
                            class="absolute top-0 left-0 flex flex-col gap-0.5"></span></a><button type="button"
                          data-testid="favorite-button" class="absolute top-0 right-0 p-2"
                          aria-label="Dodaj do ulubionych"><svg aria-hidden="true" data-testid="Heart01"
                            xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                            <path fill="#8593a3"
                              d="M12 21a1 1 0 0 1-.486-.126C11.126 20.658 2 15.514 2 9c0-3.665 2.218-5.425 4.293-5.849 2.171-.44 4.328.402 5.707 2.113 1.38-1.712 3.537-2.552 5.707-2.113C19.782 3.575 22 5.335 22 9.001c0 6.513-9.126 11.657-9.515 11.873A1 1 0 0 1 12 21M7.4 5.041q-.368 0-.707.07C5.007 5.456 4 6.91 4 9.001c0 4.584 6.197 8.728 8 9.836 1.804-1.108 8-5.252 8-9.837 0-2.09-1.007-3.544-2.693-3.889-1.482-.3-3.479.346-4.387 2.475a1 1 0 0 1-1.84 0C10.31 5.78 8.755 5.04 7.4 5.04">
                            </path>
                          </svg></button></div>
                    </div>
                    <div class="w-(--itemWidth)">
                      <div class="border-neutral-150 border bg-neutral-0 relative h-full w-full"
                        data-testid="product-card" data-content-king="product-card" analytics="[object Object]"><a
                          class="group relative flex h-full w-full flex-col p-3 xs:p-4"
                          href="/pl-pl/p/3217710/torba-na-prezenty/" data-testid="product-card-link"><span
                            class="xs:max-h-[180px] relative aspect-square w-full md:max-h-[230px]"><img
                              data-testid="product-card-image" alt="" loading="lazy" decoding="async" data-nimg="fill"
                              class="object-contain object-center py-2 transition-transform duration-250 group-hover:scale-105 md:py-4 h-full w-full"
                              sizes="(min-width: 1280px) calc(1280px / 5), (min-width: 1024px) calc(100vw / 4), (min-width: 768px) calc(100vw / 3), (min-width: 640px) calc(100vw / 3), calc(100vw / 2)"
                              srcset="https://asset.action.com/image/upload/t_digital_product_image/w_128/3217710_8710675268019-111_01_rfv7go.webp 128w, https://asset.action.com/image/upload/t_digital_product_image/w_256/3217710_8710675268019-111_01_rfv7go.webp 256w, https://asset.action.com/image/upload/t_digital_product_image/w_640/3217710_8710675268019-111_01_rfv7go.webp 640w, https://asset.action.com/image/upload/t_digital_product_image/w_1080/3217710_8710675268019-111_01_rfv7go.webp 1080w, https://asset.action.com/image/upload/t_digital_product_image/w_1920/3217710_8710675268019-111_01_rfv7go.webp 1920w"
                              src="https://asset.action.com/image/upload/t_digital_product_image/w_1920/3217710_8710675268019-111_01_rfv7go.webp"
                              style="position: absolute; height: 100%; width: 100%; inset: 0px; color: transparent;"><span
                              class="absolute bottom-0 flex flex-col gap-2"></span></span><span
                            class="mt-2 mb-3 flex grow flex-col gap-1 leading-tight sm:mb-4"><span
                              class="xs:text-[16px] xs:leading-5 text-sm leading-[18px] font-medium text-dark-blue-500 line-clamp-2 break-words"
                              data-testid="product-card-title">Torba na prezenty</span><span
                              class="max-h-fit text-sm leading-[18px] font-normal line-clamp-2 grow break-words text-neutral-700"
                              data-testid="product-card-description">Różne warianty</span></span><span
                            aria-label="1,74&nbsp;zł 1,74&nbsp;zł/szt." class="flex flex-col"><span
                              data-testid="product-card-price-description"
                              class="mb-1 block w-max text-xs leading-[12px] text-neutral-700">1,74&nbsp;zł/szt.</span><span
                              class="flex items-start text-dark-blue-500"><span data-testid="product-card-price-whole"
                                class="font-bold tracking-[1px] text-[40px] leading-[28px] md:text-[48px] md:leading-[33px]">1</span><span
                                class="inline-flex items-baseline"><span data-testid="product-card-price-fractional"
                                  class="font-bold tracking-[1px] text-[20px] leading-[14px] md:text-[28px] md:leading-[19px]">74</span></span></span></span><span
                            class="absolute top-0 left-0 flex flex-col gap-0.5"></span></a><button type="button"
                          data-testid="favorite-button" class="absolute top-0 right-0 p-2"
                          aria-label="Usuń z lista życzeń"><svg aria-hidden="true" data-testid="Heart01Filled"
                            xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                            <path fill="#ff8200"
                              d="M12 21a1 1 0 0 1-.486-.126C11.126 20.658 2 15.514 2 9c0-3.665 2.218-5.425 4.293-5.849 2.171-.44 4.328.402 5.707 2.113 1.38-1.712 3.537-2.552 5.707-2.113C19.782 3.575 22 5.335 22 9.001c0 6.513-9.126 11.657-9.515 11.873A1 1 0 0 1 12 21">
                            </path>
                          </svg></button></div>
                    </div>
                    <div class="w-(--itemWidth)">
                      <div class="border-neutral-150 border bg-neutral-0 relative h-full w-full"
                        data-testid="product-card" data-content-king="product-card" analytics="[object Object]"><a
                          class="group relative flex h-full w-full flex-col p-3 xs:p-4"
                          href="/pl-pl/p/3209333/podstawka-na-jajko/" data-testid="product-card-link"><span
                            class="xs:max-h-[180px] relative aspect-square w-full md:max-h-[230px]"><img
                              data-testid="product-card-image" alt="" loading="lazy" decoding="async" data-nimg="fill"
                              class="object-contain object-center py-2 transition-transform duration-250 group-hover:scale-105 md:py-4 h-full w-full"
                              sizes="(min-width: 1280px) calc(1280px / 5), (min-width: 1024px) calc(100vw / 4), (min-width: 768px) calc(100vw / 3), (min-width: 640px) calc(100vw / 3), calc(100vw / 2)"
                              srcset="https://asset.action.com/image/upload/t_digital_product_image/w_128/37715950.webp 128w, https://asset.action.com/image/upload/t_digital_product_image/w_256/37715950.webp 256w, https://asset.action.com/image/upload/t_digital_product_image/w_640/37715950.webp 640w, https://asset.action.com/image/upload/t_digital_product_image/w_1080/37715950.webp 1080w, https://asset.action.com/image/upload/t_digital_product_image/w_1920/37715950.webp 1920w"
                              src="https://asset.action.com/image/upload/t_digital_product_image/w_1920/37715950.webp"
                              style="position: absolute; height: 100%; width: 100%; inset: 0px; color: transparent;"><span
                              class="absolute bottom-0 flex flex-col gap-2"></span></span><span
                            class="mt-2 mb-3 flex grow flex-col gap-1 leading-tight sm:mb-4"><span
                              class="xs:text-[16px] xs:leading-5 text-sm leading-[18px] font-medium text-dark-blue-500 line-clamp-2 break-words"
                              data-testid="product-card-title">Podstawka na jajko</span><span
                              class="max-h-fit text-sm leading-[18px] font-normal line-clamp-2 grow break-words text-neutral-700"
                              data-testid="product-card-description">Różne kolory</span></span><span
                            aria-label="3,99&nbsp;zł 3,99&nbsp;zł/szt." class="flex flex-col"><span
                              data-testid="product-card-price-description"
                              class="mb-1 block w-max text-xs leading-[12px] text-neutral-700">3,99&nbsp;zł/szt.</span><span
                              class="flex items-start text-dark-blue-500"><span data-testid="product-card-price-whole"
                                class="font-bold tracking-[1px] text-[40px] leading-[28px] md:text-[48px] md:leading-[33px]">3</span><span
                                class="inline-flex items-baseline"><span data-testid="product-card-price-fractional"
                                  class="font-bold tracking-[1px] text-[20px] leading-[14px] md:text-[28px] md:leading-[19px]">99</span></span></span></span><span
                            class="absolute top-0 left-0 flex flex-col gap-0.5"></span></a><button type="button"
                          data-testid="favorite-button" class="absolute top-0 right-0 p-2"
                          aria-label="Usuń z lista życzeń"><svg aria-hidden="true" data-testid="Heart01Filled"
                            xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                            <path fill="#ff8200"
                              d="M12 21a1 1 0 0 1-.486-.126C11.126 20.658 2 15.514 2 9c0-3.665 2.218-5.425 4.293-5.849 2.171-.44 4.328.402 5.707 2.113 1.38-1.712 3.537-2.552 5.707-2.113C19.782 3.575 22 5.335 22 9.001c0 6.513-9.126 11.657-9.515 11.873A1 1 0 0 1 12 21">
                            </path>
                          </svg></button></div>
                    </div>
                    <div class="w-(--itemWidth)">
                      <div class="border-neutral-150 border bg-neutral-0 relative h-full w-full"
                        data-testid="product-card" data-content-king="product-card" analytics="[object Object]"><a
                          class="group relative flex h-full w-full flex-col p-3 xs:p-4"
                          href="/pl-pl/p/3007484/suszone-maczniki-bites-for-birds/" data-testid="product-card-link"><span
                            class="xs:max-h-[180px] relative aspect-square w-full md:max-h-[230px]"><img
                              data-testid="product-card-image" alt="" loading="lazy" decoding="async" data-nimg="fill"
                              class="object-contain object-center py-2 transition-transform duration-250 group-hover:scale-105 md:py-4 h-full w-full"
                              sizes="(min-width: 1280px) calc(1280px / 5), (min-width: 1024px) calc(100vw / 4), (min-width: 768px) calc(100vw / 3), (min-width: 640px) calc(100vw / 3), calc(100vw / 2)"
                              srcset="https://asset.action.com/image/upload/t_digital_product_image/w_128/30200593.webp 128w, https://asset.action.com/image/upload/t_digital_product_image/w_256/30200593.webp 256w, https://asset.action.com/image/upload/t_digital_product_image/w_640/30200593.webp 640w, https://asset.action.com/image/upload/t_digital_product_image/w_1080/30200593.webp 1080w, https://asset.action.com/image/upload/t_digital_product_image/w_1920/30200593.webp 1920w"
                              src="https://asset.action.com/image/upload/t_digital_product_image/w_1920/30200593.webp"
                              style="position: absolute; height: 100%; width: 100%; inset: 0px; color: transparent;"><span
                              class="absolute bottom-0 flex flex-col gap-2"></span></span><span
                            class="mt-2 mb-3 flex grow flex-col gap-1 leading-tight sm:mb-4"><span
                              class="xs:text-[16px] xs:leading-5 text-sm leading-[18px] font-medium text-dark-blue-500 line-clamp-2 break-words"
                              data-testid="product-card-title">Suszone mączniki Bites for Birds</span><span
                              class="max-h-fit text-sm leading-[18px] font-normal line-clamp-2 grow break-words text-neutral-700"
                              data-testid="product-card-description">150 g</span></span><span
                            aria-label="8,49&nbsp;zł 56,60&nbsp;zł/kg" class="flex flex-col"><span
                              data-testid="product-card-price-description"
                              class="mb-1 block w-max text-xs leading-[12px] text-neutral-700">56,60&nbsp;zł/kg</span><span
                              class="flex items-start text-dark-blue-500"><span data-testid="product-card-price-whole"
                                class="font-bold tracking-[1px] text-[40px] leading-[28px] md:text-[48px] md:leading-[33px]">8</span><span
                                class="inline-flex items-baseline"><span data-testid="product-card-price-fractional"
                                  class="font-bold tracking-[1px] text-[20px] leading-[14px] md:text-[28px] md:leading-[19px]">49</span></span></span></span><span
                            class="absolute top-0 left-0 flex flex-col gap-0.5"></span></a><button type="button"
                          data-testid="favorite-button" class="absolute top-0 right-0 p-2"
                          aria-label="Dodaj do ulubionych"><svg aria-hidden="true" data-testid="Heart01"
                            xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                            <path fill="#8593a3"
                              d="M12 21a1 1 0 0 1-.486-.126C11.126 20.658 2 15.514 2 9c0-3.665 2.218-5.425 4.293-5.849 2.171-.44 4.328.402 5.707 2.113 1.38-1.712 3.537-2.552 5.707-2.113C19.782 3.575 22 5.335 22 9.001c0 6.513-9.126 11.657-9.515 11.873A1 1 0 0 1 12 21M7.4 5.041q-.368 0-.707.07C5.007 5.456 4 6.91 4 9.001c0 4.584 6.197 8.728 8 9.836 1.804-1.108 8-5.252 8-9.837 0-2.09-1.007-3.544-2.693-3.889-1.482-.3-3.479.346-4.387 2.475a1 1 0 0 1-1.84 0C10.31 5.78 8.755 5.04 7.4 5.04">
                            </path>
                          </svg></button></div>
                    </div>
                    <div class="w-(--itemWidth)">
                      <div class="border-neutral-150 border bg-neutral-0 relative h-full w-full"
                        data-testid="product-card" data-content-king="product-card" analytics="[object Object]"><a
                          class="group relative flex h-full w-full flex-col p-3 xs:p-4"
                          href="/pl-pl/p/3200749/karma-dla-psow-skyler-kurczak-i-dziczyzna/"
                          data-testid="product-card-link"><span
                            class="xs:max-h-[180px] relative aspect-square w-full md:max-h-[230px]"><img
                              data-testid="product-card-image" alt="" loading="lazy" decoding="async" data-nimg="fill"
                              class="object-contain object-center py-2 transition-transform duration-250 group-hover:scale-105 md:py-4 h-full w-full"
                              sizes="(min-width: 1280px) calc(1280px / 5), (min-width: 1024px) calc(100vw / 4), (min-width: 768px) calc(100vw / 3), (min-width: 640px) calc(100vw / 3), calc(100vw / 2)"
                              srcset="https://asset.action.com/image/upload/t_digital_product_image/w_128/27391177.webp 128w, https://asset.action.com/image/upload/t_digital_product_image/w_256/27391177.webp 256w, https://asset.action.com/image/upload/t_digital_product_image/w_640/27391177.webp 640w, https://asset.action.com/image/upload/t_digital_product_image/w_1080/27391177.webp 1080w, https://asset.action.com/image/upload/t_digital_product_image/w_1920/27391177.webp 1920w"
                              src="https://asset.action.com/image/upload/t_digital_product_image/w_1920/27391177.webp"
                              style="position: absolute; height: 100%; width: 100%; inset: 0px; color: transparent;"><span
                              class="absolute bottom-0 flex flex-col gap-2"></span></span><span
                            class="mt-2 mb-3 flex grow flex-col gap-1 leading-tight sm:mb-4"><span
                              class="xs:text-[16px] xs:leading-5 text-sm leading-[18px] font-medium text-dark-blue-500 line-clamp-2 break-words"
                              data-testid="product-card-title">Karma dla psów Skyler Kurczak i dziczyzna</span><span
                              class="max-h-fit text-sm leading-[18px] font-normal line-clamp-2 grow break-words text-neutral-700"
                              data-testid="product-card-description">300 gramów</span></span><span
                            aria-label="2,29&nbsp;zł 7,63&nbsp;zł/kg" class="flex flex-col"><span
                              data-testid="product-card-price-description"
                              class="mb-1 block w-max text-xs leading-[12px] text-neutral-700">7,63&nbsp;zł/kg</span><span
                              class="flex items-start text-dark-blue-500"><span data-testid="product-card-price-whole"
                                class="font-bold tracking-[1px] text-[40px] leading-[28px] md:text-[48px] md:leading-[33px]">2</span><span
                                class="inline-flex items-baseline"><span data-testid="product-card-price-fractional"
                                  class="font-bold tracking-[1px] text-[20px] leading-[14px] md:text-[28px] md:leading-[19px]">29</span></span></span></span><span
                            class="absolute top-0 left-0 flex flex-col gap-0.5"></span></a><button type="button"
                          data-testid="favorite-button" class="absolute top-0 right-0 p-2"
                          aria-label="Dodaj do ulubionych"><svg aria-hidden="true" data-testid="Heart01"
                            xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                            <path fill="#8593a3"
                              d="M12 21a1 1 0 0 1-.486-.126C11.126 20.658 2 15.514 2 9c0-3.665 2.218-5.425 4.293-5.849 2.171-.44 4.328.402 5.707 2.113 1.38-1.712 3.537-2.552 5.707-2.113C19.782 3.575 22 5.335 22 9.001c0 6.513-9.126 11.657-9.515 11.873A1 1 0 0 1 12 21M7.4 5.041q-.368 0-.707.07C5.007 5.456 4 6.91 4 9.001c0 4.584 6.197 8.728 8 9.836 1.804-1.108 8-5.252 8-9.837 0-2.09-1.007-3.544-2.693-3.889-1.482-.3-3.479.346-4.387 2.475a1 1 0 0 1-1.84 0C10.31 5.78 8.755 5.04 7.4 5.04">
                            </path>
                          </svg></button></div>
                    </div>
                    <div class="w-(--itemWidth)">
                      <div class="border-neutral-150 border bg-neutral-0 relative h-full w-full"
                        data-testid="product-card" data-content-king="product-card" analytics="[object Object]"><a
                          class="group relative flex h-full w-full flex-col p-3 xs:p-4"
                          href="/pl-pl/p/3217463/zrob-swoja-wlasna-pozytywke-decotime/"
                          data-testid="product-card-link"><span
                            class="xs:max-h-[180px] relative aspect-square w-full md:max-h-[230px]"><img
                              data-testid="product-card-image" alt="" loading="lazy" decoding="async" data-nimg="fill"
                              class="object-contain object-center py-2 transition-transform duration-250 group-hover:scale-105 md:py-4 h-full w-full"
                              sizes="(min-width: 1280px) calc(1280px / 5), (min-width: 1024px) calc(100vw / 4), (min-width: 768px) calc(100vw / 3), (min-width: 640px) calc(100vw / 3), calc(100vw / 2)"
                              srcset="https://asset.action.com/image/upload/t_digital_product_image/w_128/3217463_8721042514554-111_01_frhs37.webp 128w, https://asset.action.com/image/upload/t_digital_product_image/w_256/3217463_8721042514554-111_01_frhs37.webp 256w, https://asset.action.com/image/upload/t_digital_product_image/w_640/3217463_8721042514554-111_01_frhs37.webp 640w, https://asset.action.com/image/upload/t_digital_product_image/w_1080/3217463_8721042514554-111_01_frhs37.webp 1080w, https://asset.action.com/image/upload/t_digital_product_image/w_1920/3217463_8721042514554-111_01_frhs37.webp 1920w"
                              src="https://asset.action.com/image/upload/t_digital_product_image/w_1920/3217463_8721042514554-111_01_frhs37.webp"
                              style="position: absolute; height: 100%; width: 100%; inset: 0px; color: transparent;"><span
                              class="absolute bottom-0 flex flex-col gap-2"></span></span><span
                            class="mt-2 mb-3 flex grow flex-col gap-1 leading-tight sm:mb-4"><span
                              class="xs:text-[16px] xs:leading-5 text-sm leading-[18px] font-medium text-dark-blue-500 line-clamp-2 break-words"
                              data-testid="product-card-title">Zrób swoją własną pozytywkę DécoTime</span><span
                              class="max-h-fit text-sm leading-[18px] font-normal line-clamp-2 grow break-words text-neutral-700"
                              data-testid="product-card-description">Różne warianty</span></span><span
                            aria-label="22,95&nbsp;zł 22,95&nbsp;zł/szt." class="flex flex-col"><span
                              data-testid="product-card-price-description"
                              class="mb-1 block w-max text-xs leading-[12px] text-neutral-700">22,95&nbsp;zł/szt.</span><span
                              class="flex items-start text-dark-blue-500"><span data-testid="product-card-price-whole"
                                class="font-bold tracking-[1px] text-[40px] leading-[28px] md:text-[48px] md:leading-[33px]">22</span><span
                                class="inline-flex items-baseline"><span data-testid="product-card-price-fractional"
                                  class="font-bold tracking-[1px] text-[20px] leading-[14px] md:text-[28px] md:leading-[19px]">95</span></span></span></span><span
                            class="absolute top-0 left-0 flex flex-col gap-0.5"></span></a><button type="button"
                          data-testid="favorite-button" class="absolute top-0 right-0 p-2"
                          aria-label="Dodaj do ulubionych"><svg aria-hidden="true" data-testid="Heart01"
                            xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
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
                  data-testid="carousel-next-navigation-button" onclick="nextCarouselPage(this)"><svg aria-hidden="true"
                    data-testid="ArrowRightMd" xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none"
                    viewBox="0 0 24 24">
                    <path fill="#001489"
                      d="M13 19a1 1 0 0 1-.707-1.707L16.586 13H5a1 1 0 0 1 0-2h11.586l-4.293-4.293a1 1 0 1 1 1.414-1.414l6 6a1 1 0 0 1 .293.704v.006a1 1 0 0 1-.293.704l-6 6A1 1 0 0 1 13 19">
                    </path>
                  </svg></button></div>
            </div>
          </div>
        </div>
        {* <script type="application/ld+json">
{"itemListElement":[{"@type":"ListItem","position":1,"url":"https://www.action.com/pl-pl/p/3209615/furby-furblets/"},{"@type":"ListItem","position":2,"url":"https://www.action.com/pl-pl/p/3212445/material-opakowaniowy-o-strukturze-plastra-miodu/"},{"@type":"ListItem","position":3,"url":"https://www.action.com/pl-pl/p/3207650/kolorowanka-decotime/"},{"@type":"ListItem","position":4,"url":"https://www.action.com/pl-pl/p/3217710/torba-na-prezenty/"},{"@type":"ListItem","position":5,"url":"https://www.action.com/pl-pl/p/3209333/podstawka-na-jajko/"},{"@type":"ListItem","position":6,"url":"https://www.action.com/pl-pl/p/3007484/suszone-maczniki-bites-for-birds/"},{"@type":"ListItem","position":7,"url":"https://www.action.com/pl-pl/p/3200749/karma-dla-psow-skyler-kurczak-i-dziczyzna/"},{"@type":"ListItem","position":8,"url":"https://www.action.com/pl-pl/p/3217463/zrob-swoja-wlasna-pozytywke-decotime/"}],"@context":"https://schema.org","@type":"ItemList"}
      </script> *}
      </div>
    </div>
  </div>

{/block}