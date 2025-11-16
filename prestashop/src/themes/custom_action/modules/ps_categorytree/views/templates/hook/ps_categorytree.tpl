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
  <div class="group/submenu relative">
    <button
      class="text-body-normal text-dark-blue-500 flex flex-row pt-3 pb-4 font-medium group-hover/submenu:shadow-[inset_0_-2px_0]"
      aria-expanded="false" onclick="toggleCategoryMenu(this, event)">
      {$categories.name}
      <svg aria-hidden="true" data-testid="CaretDownMd" class="transition-transform duration-300"
        xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
        <path fill="#001489"
          d="M12 15a1 1 0 0 1-.707-.293l-4-4a1 1 0 1 1 1.414-1.414L12 12.586l3.293-3.293a1 1 0 1 1 1.414 1.414l-4 4A1 1 0 0 1 12 15">
        </path>
      </svg>
    </button>

    <div class="absolute top-full left-0 z-[80] flex overflow-hidden transition-all duration-300 ease-in-out w-[640px]"
      style="opacity: 0; pointer-events: none;" data-menu-dropdown>
      {* Background overlays *}
      <div
        class="bg-neutral-0 pointer-events-none absolute inset-y-0 left-0 h-full w-[320px] transition-all duration-300 ease-in-out rounded-bl-md opacity-100 translate-y-0">
      </div>
      <div
        class="pointer-events-none absolute inset-y-0 left-[320px] w-[320px] rounded-br-md bg-neutral-50 transition-all duration-300 ease-in-out opacity-100 translate-x-0 translate-y-0">
      </div>

      {* Left column - Top level categories *}
      <div
        class="absolute top-0 left-0 w-[320px] flex flex-col pt-2 pb-4 transition-all duration-300 ease-in-out opacity-100 translate-y-0">
        {foreach from=$categories.children item=category name=categoryLoop}
          <div>
            <button
              class="text-body-small text-dark-blue-500 flex w-full items-center gap-3 px-6 py-1 text-left hover:bg-neutral-50 {if $smarty.foreach.categoryLoop.first}bg-neutral-50{/if}"
              aria-expanded="{if $smarty.foreach.categoryLoop.first}true{else}false{/if}" data-category-id="{$category.id}"
              onclick="showSubcategories(this, {$category.id}, event)">
              {if $category.image}
                <img data-testid="menu-category-image" alt="{$category.name}" loading="lazy" width="40" height="40"
                  decoding="async" class="rounded-full" src="{$category.image}">
              {else}
                <div class="w-10 h-10 rounded-full bg-neutral-200"></div>
              {/if}
              <span>{$category.name}</span>
            </button>

            {* Right column - Subcategories for this category *}
            <div
              class="absolute inset-y-0 left-[320px] w-[320px] {if !$smarty.foreach.categoryLoop.first}pointer-events-none{/if}"
              data-subcategory-panel="{$category.id}">
              <div
                class="w-full flex flex-col pt-2 pb-4 transition-all duration-300 ease-in-out {if $smarty.foreach.categoryLoop.first}opacity-100 translate-x-0{else}opacity-0 -translate-x-2 hidden{/if}">
                <a class="group text-body-small text-dark-blue-500 px-6 py-3 text-left" href="{$category.link}">
                  <span class="group-hover:shadow-bottom-border py-1">Wszystko z kategorii {$category.name|lower}</span>
                </a>
                {if $category.children}
                  {foreach from=$category.children item=subcategory}
                    <a class="group text-body-small text-dark-blue-500 px-6 py-3 text-left" href="{$subcategory.link}">
                      <span class="group-hover:shadow-bottom-border py-1">{$subcategory.name}</span>
                    </a>
                  {/foreach}
                {/if}
              </div>
            </div>
          </div>
        {/foreach}

        <div class="sr-only focus-within:not-sr-only">
          <button type="button"
            class="relative box-border flex max-w-full items-center justify-center gap-1 rounded-full text-base font-medium py-2.5 px-5 text-dark-blue-500 active:bg-dark-blue-500 active:text-neutral-0 hover:bg-dark-blue-50 focus:bg-dark-blue-50 focus:text-dark-blue-500 focus:outline focus:outline-2 focus:outline-dark-blue-500 focus:outline-offset-2 disabled:text-neutral-700 w-full"
            onclick="closeCategoryMenu()">
            <span class="truncate px-1">Zamknij</span>
          </button>
        </div>
      </div>
    </div>
  </div>

  <script>
    {literal}
      (function() {
        // Prevent multiple definitions
        if (window.categoryMenuInitialized) return;
        window.categoryMenuInitialized = true;

        window.toggleCategoryMenu = function(button, event) {
          // Stop event propagation to prevent immediate closing
          if (event) {
            event.stopPropagation();
          }

          const dropdown = button.nextElementSibling;
          const isExpanded = button.getAttribute('aria-expanded') === 'true';
          const svg = button.querySelector('svg');

          if (isExpanded) {
            // Close menu
            button.setAttribute('aria-expanded', 'false');
            if (svg) svg.classList.remove('rotate-180');
            if (dropdown) {
              dropdown.style.height = '0px';
              dropdown.style.opacity = '0';
              dropdown.style.pointerEvents = 'none';
            }
          } else {
            // Open menu
            button.setAttribute('aria-expanded', 'true');
            if (svg) svg.classList.add('rotate-180');
            if (dropdown) {
              // Remove hidden class if it exists
              dropdown.classList.remove('hidden');

              // Calculate the actual height needed
              dropdown.style.height = 'auto';
              dropdown.style.opacity = '0';
              dropdown.style.pointerEvents = 'none';
              const height = dropdown.scrollHeight;
              dropdown.style.height = '0px';

              // Force reflow
              dropdown.offsetHeight;

              // Animate to calculated height
              dropdown.style.height = height + 'px';
              dropdown.style.opacity = '1';
              dropdown.style.pointerEvents = 'auto';
            }
          }
        };

        window.showSubcategories = function(button, categoryId, event) {
          if (event) {
            event.stopPropagation(); // Prevent menu from closing
          }

          // Remove active state from all category buttons
          const allButtons = button.parentElement.parentElement.querySelectorAll('button[data-category-id]');
          allButtons.forEach(btn => {
            btn.classList.remove('bg-neutral-50');
            btn.setAttribute('aria-expanded', 'false');
          });

          // Add active state to clicked button
          button.classList.add('bg-neutral-50');
          button.setAttribute('aria-expanded', 'true');

          // Hide all subcategory panels
          const allPanels = document.querySelectorAll('[data-subcategory-panel]');
          allPanels.forEach(panel => {
            panel.classList.add('pointer-events-none');
            const content = panel.querySelector('div');
            if (content) {
              content.classList.add('opacity-0', '-translate-x-2', 'hidden');
              content.classList.remove('opacity-100', 'translate-x-0');
            }
          });

          // Show selected subcategory panel
          const selectedPanel = document.querySelector('[data-subcategory-panel="' + categoryId + '"]');
          if (selectedPanel) {
            selectedPanel.classList.remove('pointer-events-none');
            const content = selectedPanel.querySelector('div');
            if (content) {
              content.classList.remove('opacity-0', '-translate-x-2', 'hidden');
              content.classList.add('opacity-100', 'translate-x-0');
            }
          }
        };

        window.closeCategoryMenu = function() {
          const button = document.querySelector('[data-menu-dropdown]').previousElementSibling;
          if (button) {
            toggleCategoryMenu(button);
          }
        };

        // Close menu when clicking outside - use capture phase
        document.addEventListener('click', function(event) {
          const menu = event.target.closest('.group\\/submenu');
          if (!menu) {
            const allMenus = document.querySelectorAll('[data-menu-dropdown]');
            allMenus.forEach(dropdown => {
              const button = dropdown.previousElementSibling;
              if (button && button.getAttribute('aria-expanded') === 'true') {
                button.setAttribute('aria-expanded', 'false');
                const svg = button.querySelector('svg');
                if (svg) svg.classList.remove('rotate-180');
                dropdown.style.height = '0px';
                dropdown.style.opacity = '0';
                dropdown.style.pointerEvents = 'none';
              }
            });
          }
        }, false);
      })();
    {/literal}
  </script>

  <style>
    .shadow-bottom-border {
      box-shadow: inset 0 -1px 0 currentColor;
    }
  </style>
{/if}