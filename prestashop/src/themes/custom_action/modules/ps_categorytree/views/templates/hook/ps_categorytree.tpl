{if $carousel}
  {if !empty($categories.children)}
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
                      {foreach from=$categories.children item=category}
                        <div class="w-(--itemWidth)">
                          <a class="group flex flex-col gap-2" href="{$category.link}" data-testid="category-card"
                            aria-labelledby="category-{$category.id}">
                            <span class="relative aspect-square w-full shrink-0 rounded-full overflow-clip">
                              <img data-testid="category-card-image" alt="" loading="lazy" decoding="async" data-nimg="fill"
                                class="object-contain object-center group-hover:scale-110 transition-all duration-300 h-full w-full"
                                style="position:absolute;height:100%;width:100%;left:0;top:0;right:0;bottom:0;color:transparent"
                                sizes="(min-width: 1280px) calc(1280px / 8), (min-width: 1024px) calc(100vw / 8), (min-width: 768px) calc(100vw / 6), (min-width: 640px) calc(100vw / 5), calc(100vw / 4)"
                                src="{$category.image}" />
                            </span>
                            <span id="category-{$category.id}"
                              class="line-clamp-2 text-center break-words text-caption text-dark-blue-500 md:text-body-small font-medium"
                              data-testid="category-card-title">{$category.name}</span>
                          </a>
                        </div>
                      {/foreach}
                    </div>
                    <div class="w-4 shrink-0 lg:w-0 pointer-fine:w-0"></div>
                  </div>
                </div>
                <div class="pointer-events-none absolute inset-0">
                  <button type="button" aria-label="Następna"
                    class="absolute -translate-y-1/2 top-[calc(var(--isSingleRow)*var(--itemWidth)/2+var(--isMultiRow)*50%)] bg-neutral-0 shadow-overlay-button rounded-full p-4 hidden lg:block pointer-fine:block transition duration-200 hover:scale-[1.15] -right-2 lg:-right-4 xl:-right-7 pointer-events-auto"
                    data-testid="carousel-next-navigation-button" onclick="nextCarouselPage(this)">
                    <svg aria-hidden="true" data-testid="ArrowRightMd" xmlns="http://www.w3.org/2000/svg" width="24"
                      height="24" fill="none" viewBox="0 0 24 24">
                      <path fill="#001489"
                        d="M13 19a1 1 0 0 1-.707-1.707L16.586 13H5a1 1 0 0 1 0-2h11.586l-4.293-4.293a1 1 0 1 1 1.414-1.414l6 6a1 1 0 0 1 .293.704v.006a1 1 0 0 1-.293.704l-6 6A1 1 0 0 1 13 19">
                      </path>
                    </svg>
                  </button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      </div>
    </section>
  {/if}
{else}
  {function name="categories" nodes=[] depth=0}
    {strip}
      {if $nodes|count}
        <ul class="category-sub-menu">
          {foreach from=$nodes item=node}
            <li data-depth="{$depth}">
              {if $depth===0}
                <a href="{$node.link}">{$node.name}</a>
                {if $node.children}
                  <div class="navbar-toggler collapse-icons" data-toggle="collapse" data-target="#exCollapsingNavbar{$node.id}">
                    <i class="material-icons add">&#xE145;</i>
                    <i class="material-icons remove">&#xE15B;</i>
                  </div>
                  <div class="collapse" id="exCollapsingNavbar{$node.id}">
                    {categories nodes=$node.children depth=$depth+1}
                  </div>
                {/if}
              {else}
                <a class="category-sub-link" href="{$node.link}">{$node.name}</a>
                {if $node.children}
                  <span class="arrows" data-toggle="collapse" data-target="#exCollapsingNavbar{$node.id}">
                    <i class="material-icons arrow-right">&#xE315;</i>
                    <i class="material-icons arrow-down">&#xE313;</i>
                  </span>
                  <div class="collapse" id="exCollapsingNavbar{$node.id}">
                    {categories nodes=$node.children depth=$depth+1}
                  </div>
                {/if}
              {/if}
            </li>
          {/foreach}
        </ul>
      {/if}
    {/strip}
  {/function}

  <div class="block-categories">
    <ul class="category-top-menu">
      <li><a class="text-uppercase h6" href="{$categories.link nofilter}">{$categories.name}</a></li>
      <li>{categories nodes=$categories.children}</li>
    </ul>
  </div>
{/if}