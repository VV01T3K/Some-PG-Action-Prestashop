<section class="bg-neutral-50 pt-6 md:pt-8 pb-6 md:pb-8" aria-label="{l s='On sale' d='Shop.Theme.Catalog'}"
  data-testid="cms-weekdeals-product-carousel">
  <div class="relative flex w-full flex-col px-4 lg:px-8">
    <div class="mx-auto w-full max-w-7xl">
      <div class="flex flex-col gap-4 md:gap-6"
        style="--rowsXl:1;--columnsXl:5;--rowsLg:1;--columnsLg:4;--rowsMd:1;--columnsMd:3;--rowsSm:1;--columnsSm:3;--rowsDefault:1;--columnsDefault:2">
        <div class="flex justify-between">
          <div class="flex flex-col gap-1">
            <h2
              class="line-clamp-2 text-dark-blue-500 font-bold tracking-[-1px] text-[22px] leading-[30px] md:text-[28px] md:leading-[36px]"
              data-testid="title-view-title">{l s='On sale' d='Shop.Theme.Catalog'}</h2>

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
                  <div class="w-(--itemWidth)">
                    <a class="group flex h-full w-full flex-col items-start gap-2 overflow-hidden bg-orange-300 xs:p-4 p-3 border-neutral-150 border"
                      href="{$urls.pages.prices_drop}" data-testid="promotion-card"
                      aria-labelledby="_R_1l4jinpfivjap5snpfivb_"><span
                        class="relative aspect-square max-h-[190px] shrink-1 transition-all duration-300 group-hover:scale-105 md:max-h-[230px] mx-auto mt-0 aspect-square w-full object-contain"><img
                          data-testid="promotion-card-image" alt="" loading="lazy" decoding="async" data-nimg="fill"
                          class="object-contain PromotionCard_floatingImage__5_Vnr h-full w-full"
                          style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent"
                          sizes="(min-width: 1280px) calc(1280px / 5), (min-width: 1024px) calc(100vw / 4), (min-width: 768px) calc(100vw / 3), (min-width: 640px) calc(100vw / 3), calc(100vw / 2)"
src="/static/Folder_Icon_PL_tpa5jd.webp"></span><span
                        id="_R_1l4jinpfivjap5snpfivb_"
                        class="text-dark-blue-500 xs:text-[16px] xs:leading-5 grow text-sm leading-[18px] font-bold break-words">Sprawdź oferty promocyjne</span><span
                        class="relative box-border flex max-w-full items-center justify-center gap-1 rounded-full text-base font-medium py-2.5 px-5 bg-dark-blue-500 text-neutral-0 hover:bg-dark-blue-300 active:bg-dark-blue-700 focus:bg-dark-blue-300 focus:outline focus:outline-2 focus:outline-dark-blue-500 focus:outline-offset-2 disabled:bg-neutral-150 disabled:text-neutral-700 disabled:outline disabled:outline-1 disabled:outline-neutral mt-2 hidden shrink-0 md:block lg:mt-4"><span
                          class="truncate px-1">Zobacz więcej</span></span><button type="button"
                        class="relative box-border flex max-w-full items-center justify-center gap-1 rounded-full text-base font-medium py-2.5 px-2.5 bg-dark-blue-500 text-neutral-0 hover:bg-dark-blue-300 active:bg-dark-blue-700 focus:bg-dark-blue-300 focus:outline focus:outline-2 focus:outline-dark-blue-500 focus:outline-offset-2 disabled:bg-neutral-150 disabled:text-neutral-700 disabled:outline disabled:outline-1 disabled:outline-neutral block md:hidden"
                        aria-label="Zobacz więcej"><span class="shrink-0"
                          style="display:block;width:24px;height:24px"><svg aria-hidden="true"
                            data-testid="ArrowRightMd" class="shrink-0" xmlns="http://www.w3.org/2000/svg" width="24"
                            height="24" fill="currentColor" viewBox="0 0 24 24">
                            <path
                              d="M13 19a1 1 0 0 1-.707-1.707L16.586 13H5a1 1 0 0 1 0-2h11.586l-4.293-4.293a1 1 0 1 1 1.414-1.414l6 6a1 1 0 0 1 .293.704v.006a1 1 0 0 1-.293.704l-6 6A1 1 0 0 1 13 19">
                            </path>
                          </svg></span></button></a>
</div>
  {include file="catalog/_partials/productlist.tpl" products=$products productClass="col-xs-12 col-sm-6 col-lg-4 col-xl-3"}
</div>
<div class="w-4 shrink-0 lg:w-0 pointer-fine:w-0"></div>
</div>
</div>
<div class="pointer-events-none absolute inset-0"><button type="button" aria-label="Następna"
    class="absolute -translate-y-1/2 top-1/2 bg-neutral-0 shadow-overlay-button rounded-full p-4 hidden lg:block pointer-fine:block transition duration-200 hover:scale-[1.15] -right-2 lg:-right-4 xl:-right-7 pointer-events-auto"
    data-testid="carousel-next-navigation-button" onclick="nextCarouselPage(this)">
    <svg aria-hidden="true" data-testid="ArrowRightMd" xmlns="http://www.w3.org/2000/svg" width="24" height="24"
      fill="none" viewBox="0 0 24 24">
      <path fill="#001489"
        d="M13 19a1 1 0 0 1-.707-1.707L16.586 13H5a1 1 0 0 1 0-2h11.586l-4.293-4.293a1 1 0 1 1 1.414-1.414l6 6a1 1 0 0 1 .293.704v.006a1 1 0 0 1-.293.704l-6 6A1 1 0 0 1 13 19">
      </path>
    </svg></button></div>
</div>
</div>
<div class="flex justify-center"><a
    class="relative box-border flex max-w-full items-center justify-center gap-1 rounded-full text-base font-medium py-2.5 px-5 bg-orange-500 text-neutral-0 hover:bg-orange-700 active:bg-orange-900 focus:bg-orange-700 focus:outline focus:outline-2 focus:outline-dark-blue-500 focus:outline-offset-2 disabled:bg-neutral-150 disabled:text-neutral-700 disabled:outline disabled:outline-1 disabled:outline-neutral"
href="{$allSpecialProductsLink}" data-testid="carousel-cta-link"><span
class="truncate px-1"> {l s='All sale products' d='Shop.Theme.Catalog'}</span></a></div>
</div>
</div>
</section>
