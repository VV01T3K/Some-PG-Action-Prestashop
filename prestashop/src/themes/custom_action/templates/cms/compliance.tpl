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
  <div class="relative flex w-full flex-col px-4 lg:px-8">
    <div class="mx-auto w-full max-w-7xl">
      <h1 class="heading-2xl my-6 first-letter:capitalize" data-testid="declarations-of-conformity-page-title">
        Deklaracje zgodności i składniki</h1>
      <div class="mb-6" data-testid="declarations-of-conformity-fetcher">
        <style>
          [data-testid='accordion-container-title'] {
            font-weight: 500;
          }

          [data-testid='markdown-unordered-list'] {
            list-style-type: none;
            padding-left: 0;
          }
        </style>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_dc_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3009576 -
                Bezprzewodowy dzwonek do drzwi - zestaw Smartwares DBY-21311W
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_dc_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730448107/Final/Documents/Quality%20Product%20Documents/3009576.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_dd_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3206528 -
                Biurowy pasek świetlny LED Battletron Razer Chroma
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_dd_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730450003/Final/Documents/Quality%20Product%20Documents/product_datasheet_battletron_lsc_razer_led_strip_led_3m.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Dane techniczne</a></p>
                    </div>
                  </li>
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730450006/Final/Documents/Quality%20Product%20Documents/conformiteitsverklaring_battletron_lsc_razer_led_strip_led_3m.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_de_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">2568457 -
                Ciężarek Kaytan
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_de_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1741265647/Final/Documents/Quality%20Product%20Documents/2568457_3003939_2576330_2568446_2568442_2576507_2572735_UserManual_kaytan_exercises_with_dumbbells.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Instrukcja obsługi</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_df_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3003939 -
                Ciężarek Kaytan
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_df_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1741265647/Final/Documents/Quality%20Product%20Documents/2568457_3003939_2576330_2568446_2568442_2576507_2572735_UserManual_kaytan_exercises_with_dumbbells.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Instrukcja obsługi</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_dg_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">2576330 -
                Ciężarek Kaytan
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_dg_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1741265647/Final/Documents/Quality%20Product%20Documents/2568457_3003939_2576330_2568446_2568442_2576507_2572735_UserManual_kaytan_exercises_with_dumbbells.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Instrukcja obsługi</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_dh_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">2568446 -
                Ciężarek Kaytan
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_dh_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1741265647/Final/Documents/Quality%20Product%20Documents/2568457_3003939_2576330_2568446_2568442_2576507_2572735_UserManual_kaytan_exercises_with_dumbbells.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Instrukcja obsługi</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_di_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">2568442 -
                Ciężarek Kaytan
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_di_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1741265647/Final/Documents/Quality%20Product%20Documents/2568457_3003939_2576330_2568446_2568442_2576507_2572735_UserManual_kaytan_exercises_with_dumbbells.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Instrukcja obsługi</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_dj_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">2538641 -
                Ciężarek Q4Life
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_dj_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1741265644/Final/Documents/Quality%20Product%20Documents/2538640_2538641_2566274_UserManual_kaytan_kettlebell.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Instrukcja obsługi</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_dk_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">2576507 -
                Ciężarki Kaytan
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_dk_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1741265647/Final/Documents/Quality%20Product%20Documents/2568457_3003939_2576330_2568446_2568442_2576507_2572735_UserManual_kaytan_exercises_with_dumbbells.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Instrukcja obsługi</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_dl_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3008407 -
                Cyfrowe taśmy LED LSC Smart Connect
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_dl_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730448056/Final/Documents/Quality%20Product%20Documents/conformiteitsverklaring_lsc_smart_c._led_strip_2x5m_rgbwit.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_dm_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">2578678 -
                Czujnik do drzwi LSC Smart Connect
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_dm_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447769/Final/Documents/Quality%20Product%20Documents/970778.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_dn_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3011727 -
                Czujnik dymu LSC Smart Connect
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_dn_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730448187/Final/Documents/Quality%20Product%20Documents/pd_8912_doc_en_20220916.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730448190/Final/Documents/Quality%20Product%20Documents/pd_8912_im.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Instrukcja obsługi</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_do_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">2578679 -
                Czujnik ruchu LSC Smart Connect
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_do_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447771/Final/Documents/Quality%20Product%20Documents/970784.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_dp_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3208972 - dek.
                żaró. led żarnik e27 280lm s140 023
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_dp_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1736169413/Final/Documents/Quality%20Product%20Documents/3208972_DataSheet_deco_filament_led_lamp_e28_280lm.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Dane techniczne</a></p>
                    </div>
                  </li>
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1736169414/Final/Documents/Quality%20Product%20Documents/3208972_DoC_deco_filament_led_lamp_e28_280lm.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_dq_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">2565356 -
                Detergent uniwersalny z sodą oczyszczoną Superfinn
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_dq_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1736171742/Final/Documents/Quality%20Product%20Documents/2565356_Superfinn_Multi_Surface_Cleaner_with_Bicarbonate.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Lista składników</a></p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_dr_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3009919 -
                Diody LED LSC
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_dr_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730448154/Final/Documents/Quality%20Product%20Documents/1325000500_td.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Dane techniczne</a></p>
                    </div>
                  </li>
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730448156/Final/Documents/Quality%20Product%20Documents/1325000500_doc.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_ds_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3006832 -
                Dzwonek do drzwi Gong LSC Smart Connect
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_ds_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447933/Final/Documents/Quality%20Product%20Documents/conformiteitsverklaring_lsc_smart_connect_gong_voor_videodeurbel.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_dt_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3003046 -
                Dzwonek do drzwi z wideo podglądem LSC Smart Connect
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_dt_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447856/Final/Documents/Quality%20Product%20Documents/conformiteitsverklaring_lsc_smart_c._video_deurbel_wifi_1080p_hd.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności
                          1</a></p>
                    </div>
                  </li>
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1733919446/Final/Documents/Quality%20Product%20Documents/3003046.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności
                          2</a></p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_du_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3017060 - ecom
                eurodomest pasekdotel.hdmi sync 023
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_du_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730449672/Final/Documents/Quality%20Product%20Documents/conformiteitsverklaring_ecom_eurodomest_tv_strip_hdmi_sync_box.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_dv_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">2523387 -
                Gąbki metalowe Spargo
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_dv_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1753087760/Final/Documents/Quality%20Product%20Documents/2523387_SOAP_SPONGES.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Lista składników</a></p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_e0_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3202653 -
                Gamingowa podkładka pod mysz XXL LSC Battletron Razer Chroma
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_e0_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1741594442/Final/Documents/Quality%20Product%20Documents/UserManual_battletron_lsc_smart_gaming.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Instrukcja obsługi</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_e1_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">2557809 -
                Gęsty wybielacz Superfinn Mocne Czyszczenie
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_e1_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1736171453/Final/Documents/Quality%20Product%20Documents/2557809_Superfinn_Thick_Bleach_JP.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Lista składników 1</a>
                      </p>
                    </div>
                  </li>
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1736171580/Final/Documents/Quality%20Product%20Documents/2557809_Superfinn_Thick_Bleach.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Lista składników 2</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_e2_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3207853 -
                Grzejnik konwektorowy LSC Smart Connect
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_e2_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730450030/Final/Documents/Quality%20Product%20Documents/conformiteitsverklaring_lsc_smart_connect_kachel.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_e3_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3206306 -
                Inteligentna lampa sufitowa LSC Smart Connect
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_e3_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730449989/Final/Documents/Quality%20Product%20Documents/lsc_smart_connect_plafoniere_calculationsheet.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Dane techniczne 1</a>
                      </p>
                    </div>
                  </li>
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730449992/Final/Documents/Quality%20Product%20Documents/lsc_smart_connect_plafoniere_datasheet.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Dane techniczne 2</a>
                      </p>
                    </div>
                  </li>
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730449995/Final/Documents/Quality%20Product%20Documents/lsc_smart_connect_plafoniere_conformiteitsverklaring.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_e4_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">2578544 -
                Inteligentna lampa sufitowa LSC Smart Connect
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_e4_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447762/Final/Documents/Quality%20Product%20Documents/970702.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_e5_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3011699 -
                Inteligentna lampa z kamerą LSC Smart Connect
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_e5_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730448179/Final/Documents/Quality%20Product%20Documents/cip_39900at_doc_en_20220531_.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730448181/Final/Documents/Quality%20Product%20Documents/cip_39900at_im.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Instrukcja obsługi</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_e6_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">2578690 -
                Inteligentna syrena LSC Smart Connect
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_e6_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447778/Final/Documents/Quality%20Product%20Documents/970772.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_e7_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3200073 -
                Inteligentna taśma LED Lednify
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_e7_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730449830/Final/Documents/Quality%20Product%20Documents/429336.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_e8_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3200072 -
                Inteligentna taśma LED Lednify
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_e8_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730449828/Final/Documents/Quality%20Product%20Documents/429334.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_e9_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">2578539 -
                Inteligentna wielokolorowa żarówka LED LSC Smart Connect
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_e9_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447758/Final/Documents/Quality%20Product%20Documents/5026000201_doc_ce.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności
                          1</a></p>
                    </div>
                  </li>
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1733919483/Final/Documents/Quality%20Product%20Documents/action-2578539.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności
                          2</a></p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_ea_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3006430 -
                Inteligentna wielokolorowa żarówka LED LSC Smart Connect
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_ea_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447904/Final/Documents/Quality%20Product%20Documents/conformiteitsverklaring_lsc_smart_c._led_e27_rgb_warm_wt_g125.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_eb_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3004164 -
                Inteligentna wielokolorowa żarówka LED LSC Smart Connect
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_eb_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447874/Final/Documents/Quality%20Product%20Documents/3004164.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_ec_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">2578517 -
                Inteligentna wielokolorowa żarówka LED LSC Smart Connect
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_ec_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447746/Final/Documents/Quality%20Product%20Documents/970720.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_ed_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">2578685 -
                Inteligentna wtyczka LSC Smart Connect
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_ed_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447773/Final/Documents/Quality%20Product%20Documents/conformiteitsverklaring_lsc_smart_connect_stekker_schakel_ra_16a.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447776/Final/Documents/Quality%20Product%20Documents/5226000200_5226000100_user_manual.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Instrukcja obsługi</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_ee_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">2578677 -
                Inteligentna wtyczka LSC Smart Connect
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_ee_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447767/Final/Documents/Quality%20Product%20Documents/conformiteitsverklaring_lsc_smart_connect_stekker_schakelaar_pa_16a.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_ef_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3202088 -
                Inteligentna wtyczka z monitorowaniem energii LSC Smart Connect
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_ef_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730449869/Final/Documents/Quality%20Product%20Documents/conformiteitsverklaring_lsc_smart_power_plug.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_eg_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3200067 -
                Inteligentna żarówka LED
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_eg_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730449816/Final/Documents/Quality%20Product%20Documents/429310.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_eh_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3200069 -
                Inteligentna żarówka LED Lednify
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_eh_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730449821/Final/Documents/Quality%20Product%20Documents/429314.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_ei_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3200066 -
                Inteligentna żarówka LED Lednify
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_ei_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730449814/Final/Documents/Quality%20Product%20Documents/429308.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_ej_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3200068 -
                Inteligentna żarówka LED Lednify
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_ej_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730449818/Final/Documents/Quality%20Product%20Documents/429312.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_ek_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3200065 -
                Inteligentna żarówka LED Lednify
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_ek_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730449811/Final/Documents/Quality%20Product%20Documents/429306.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_el_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3200062 -
                Inteligentna żarówka LED Lednify
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_el_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730449804/Final/Documents/Quality%20Product%20Documents/429300.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_em_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3200063 -
                Inteligentna żarówka LED Lednify
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_em_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730449807/Final/Documents/Quality%20Product%20Documents/429302.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_en_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3200064 -
                Inteligentna żarówka LED Lednify
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_en_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730449809/Final/Documents/Quality%20Product%20Documents/429304.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_eo_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3200060 -
                Inteligentna żarówka LED Lednify
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_eo_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730449802/Final/Documents/Quality%20Product%20Documents/429324.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_ep_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3200058 -
                Inteligentna żarówka LED Lednify
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_ep_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730449797/Final/Documents/Quality%20Product%20Documents/429326.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_eq_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3200059 -
                Inteligentna żarówka LED Lednify
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_eq_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730449799/Final/Documents/Quality%20Product%20Documents/429322.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_er_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3200057 -
                Inteligentna żarówka LED Lednify
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_er_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730449795/Final/Documents/Quality%20Product%20Documents/429318.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_es_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3200056 -
                Inteligentna żarówka LED Lednify
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_es_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730449792/Final/Documents/Quality%20Product%20Documents/429316.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_et_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3004919 -
                Inteligentna żarówka LED LSC Smart Connect
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_et_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1736169420/Final/Documents/Quality%20Product%20Documents/3004919_DataSheet_lsc_smart_connect_led_gu10.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Dane techniczne</a></p>
                    </div>
                  </li>
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447884/Final/Documents/Quality%20Product%20Documents/conformiteitsverklaring_lsc_smart_connect_led_gu10_rgb_380lm.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_eu_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3000273 -
                Inteligentna żarówka LED LSC Smart Connect
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_eu_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447797/Final/Documents/Quality%20Product%20Documents/conformiteitsverklaring_lsc_smart_connect_led_lamp_e27_1400lm.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_ev_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3000272 -
                Inteligentna żarówka LED LSC Smart Connect
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_ev_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447793/Final/Documents/Quality%20Product%20Documents/970716_datasheet.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Dane techniczne</a></p>
                    </div>
                  </li>
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447795/Final/Documents/Quality%20Product%20Documents/conformiteitsverklaring_lsc_smart_connect_led_lamp_a60_e27_806lm.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_f0_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3000267 -
                Inteligentna żarówka LED LSC Smart Connect
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_f0_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447791/Final/Documents/Quality%20Product%20Documents/conformiteitsverklaring_lsc_smart_connect_led_lamp_gu10_345lm.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_f1_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3200090 -
                Inteligentna żarówka z żarnikiem LED LSC Smart Connect
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_f1_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730449835/Final/Documents/Quality%20Product%20Documents/conformiteitsverklaring_lsc_smart_connect_led_lamp_kaars_b35_e14.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_f2_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3001700 -
                Inteligentna żarówka z żarnikiem LED LSC Smart Connect
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_f2_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447805/Final/Documents/Quality%20Product%20Documents/conformiteitsverklaring_lsc_smart_connect_led_lamp_e27_goud_806l.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_f3_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3001686 -
                Inteligentna żarówka żarnikowa LED LSC Smart Connect
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_f3_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1733919483/Final/Documents/Quality%20Product%20Documents/doc_970709.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_f4_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3006833 -
                Inteligentna żarówka żarnikowa LED LSC Smart Connect
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_f4_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447935/Final/Documents/Quality%20Product%20Documents/conformiteitsverklaring_lsc_smart_connect_led_lamp_g125_goud.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_f5_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3001702 -
                Inteligentna żarówka żarnikowa LED LSC Smart Connect
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_f5_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447808/Final/Documents/Quality%20Product%20Documents/conformiteitsverklaring_lsc_smart_connect_led_kaars_e14_470lm.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_f6_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">2578541 -
                Inteligentna żarówka żarnikowa LED LSC Smart Connect
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_f6_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447759/Final/Documents/Quality%20Product%20Documents/970738.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_f7_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">2578543 -
                Inteligentna żarówka żarnikowa LED LSC Smart Connect
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_f7_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447761/Final/Documents/Quality%20Product%20Documents/970732.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_f8_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">2578519 -
                Inteligentna żarówka żarnikowa LED LSC Smart Connect
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_f8_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447748/Final/Documents/Quality%20Product%20Documents/970726.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_f9_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">2578270 -
                Inteligentna żarówka żarnikowa LED LSC Smart Connect
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_f9_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447742/Final/Documents/Quality%20Product%20Documents/970744.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_fa_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">2578228 -
                Inteligentna żarówka żarnikowa LED LSC Smart Connect
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_fa_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447740/Final/Documents/Quality%20Product%20Documents/970708.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_fb_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3208076 -
                Inteligentne lampy punktowe LSC Smart Connect
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_fb_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730450040/Final/Documents/Quality%20Product%20Documents/conformiteitsverklaring_lsc_smart_led_lamp.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_fc_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">2578516 -
                Inteligentne wielokolorowe oczko LSC Smart Connect
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_fc_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447744/Final/Documents/Quality%20Product%20Documents/2578516.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_fd_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3208075 -
                Inteligentne żarówki LED LSC Smart Connect
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_fd_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1736169424/Final/Documents/Quality%20Product%20Documents/3208075_DataSheet_lsc_smart_led_lamp_a60_e27.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Dane techniczne</a></p>
                    </div>
                  </li>
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1736169425/Final/Documents/Quality%20Product%20Documents/3208075_DoC_lsc_smart_led_lamp_a60_e27.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_fe_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3208999 -
                Inteligentny dzwonek do drzwi z kamerą LSC Smart Connect
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_fe_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730450049/Final/Documents/Quality%20Product%20Documents/conformiteitsverklaring_lsc_smart_c_batterij_videodeurbel_1080p.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_ff_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3200055 -
                Inteligentny pilot zdalnego sterowania Lednify
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_ff_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730449790/Final/Documents/Quality%20Product%20Documents/429328.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_fg_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3200071 -
                Inteligentny przełącznik Lednify
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_fg_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730449826/Final/Documents/Quality%20Product%20Documents/429332.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_fh_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3200070 -
                Inteligentny przełącznik Lednify
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_fh_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730449823/Final/Documents/Quality%20Product%20Documents/429330.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_fi_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3207304 -
                Inteligentny ściemniacz ścienny LSC Smart Connect
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_fi_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730450028/Final/Documents/Quality%20Product%20Documents/conformiteitsverklaring_acryl_boom_led.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_fj_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3200019 -
                Kamera IP do wnętrz LSC Smart Connect
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_fj_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730449754/Final/Documents/Quality%20Product%20Documents/conformiteitsverklaring_lsc_smart_indoor_camera_1080p.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_fk_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3003011 -
                Kamera IP na zewnątrz LSC Smart Connect
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_fk_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447854/Final/Documents/Quality%20Product%20Documents/conformiteitsverklaring_lsc_smart_outdoor_camera_1080p.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności
                          1</a></p>
                    </div>
                  </li>
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1733919447/Final/Documents/Quality%20Product%20Documents/3003011_doc-lsc-camera.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności
                          2</a></p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_fl_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3203968 -
                Kamera IP zasilana energią słoneczną LSC Smart Connect
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_fl_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730449909/Final/Documents/Quality%20Product%20Documents/5525001300_doc.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_fm_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3206233 -
                Kamera obrotowa do użytku na zewnątrz LSC Smart Connect
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_fm_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730449986/Final/Documents/Quality%20Product%20Documents/conformiteitsverklaring_lsc_smart_connect_camera_buiten.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_fn_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3007325 -
                Kamera obrotowa LSC Smart Connect
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_fn_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447985/Final/Documents/Quality%20Product%20Documents/conformiteitsverklaring_lsc_smart_connect_camera_pan_tilt_1080p.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447990/Final/Documents/Quality%20Product%20Documents/5525000100_c4_um.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Instrukcja obsługi</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_fo_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3005984 -
                Kamera wewnętrzna LSC Smart Connect
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_fo_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447894/Final/Documents/Quality%20Product%20Documents/conformiteitsverklaring_lsc_smart_connect_indoor_camera_1080p.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_fp_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3202092 -
                Kamera zewnętrzna IP LSC Smart Connect
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_fp_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730449872/Final/Documents/Quality%20Product%20Documents/conformiteitsverklaring_lsc_smart_outdoor_camera_wit_hd.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_fq_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">1191122 -
                Kamizelka odblaskowa
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_fq_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447687/Final/Documents/Quality%20Product%20Documents/8142_doc_3.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_fr_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3215758 -
                Kapsułki 4 w 1 Superfinn Kolor
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_fr_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1736171583/Final/Documents/Quality%20Product%20Documents/3215758_Superfinn_Colour_Pods.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Lista składników</a></p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_fs_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3215759 -
                Kapsułki 4 w 1 Superfinn White
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_fs_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1736171574/Final/Documents/Quality%20Product%20Documents/3215759_Superfinn_White_Pods.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Lista składników</a></p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_ft_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">2557679 -
                karma dla psów Skyler
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_ft_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1743407692/Final/Documents/Quality%20Product%20Documents/DOC_2557969_2557679.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_fu_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3204599 - Kask
                dziecięcy
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_fu_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1744886966/Final/Documents/Quality%20Product%20Documents/DoC_3204599_helmet.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_fv_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">2538640 -
                Kettlebell Q4Life
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_fv_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1741265644/Final/Documents/Quality%20Product%20Documents/2538640_2538641_2566274_UserManual_kaytan_kettlebell.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Instrukcja obsługi</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_g0_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3010097 -
                Kółko treningowe Kaytan
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_g0_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1741265645/Final/Documents/Quality%20Product%20Documents/3010097_2580556_3005266_UserManual_kaytan_exercises_with_taining_wheel.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Instrukcja obsługi</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_g1_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">2580556 -
                Kółko treningowe Kaytan
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_g1_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1741265645/Final/Documents/Quality%20Product%20Documents/3010097_2580556_3005266_UserManual_kaytan_exercises_with_taining_wheel.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Instrukcja obsługi</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_g2_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3005266 -
                Kółko treningowe Kaytan
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_g2_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1741265645/Final/Documents/Quality%20Product%20Documents/3010097_2580556_3005266_UserManual_kaytan_exercises_with_taining_wheel.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Instrukcja obsługi</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_g3_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3006824 -
                Kolorowe lampki świąteczne LSC Smart Connect
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_g3_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447930/Final/Documents/Quality%20Product%20Documents/conformiteitsverklaring_lsc_smart_verlichting_200_led_20mtr_multicolor.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_g4_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">2556104 -
                Kostka toaletowa Superfinn
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_g4_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1736171580/Final/Documents/Quality%20Product%20Documents/2556104_Superfinn_Toilet_Block_Aqua_Power.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Lista składników 1</a>
                      </p>
                    </div>
                  </li>
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1736171453/Final/Documents/Quality%20Product%20Documents/2556104_Superfinn_Toilet_Block_Lemon_Power.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Lista składników 2</a>
                      </p>
                    </div>
                  </li>
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1736171580/Final/Documents/Quality%20Product%20Documents/2556104_Superfinn_Toilet_Block_Lavender_Power.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Lista składników 3</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_g5_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3202652 - Kula
                świetlna do gier Battletron Razer Chroma
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_g5_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730449875/Final/Documents/Quality%20Product%20Documents/conformiteitsverklaring_battletron_razer_lsc_gaming_lichtbal.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_g6_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3004154 -
                Lampa dekoracyjna LSC Smart Connect
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_g6_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447871/Final/Documents/Quality%20Product%20Documents/conformiteitsverklaring_lsc_smart_connect_led_moodl._rgb_210lm.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_g7_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">2558135 -
                Lampa do piekarnika LSC
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_g7_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447721/Final/Documents/Quality%20Product%20Documents/data_sheet_lsc_ovenkoelkastlamp_e14_helder_25w.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Dane techniczne</a></p>
                    </div>
                  </li>
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447723/Final/Documents/Quality%20Product%20Documents/doc_lsc_ovenkoelkastlamp_e14_helder_25w.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447726/Final/Documents/Quality%20Product%20Documents/dimmer_lsc_ovenkoelkastlamp_e14_helder_25w.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Raport z testów</a></p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_g8_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3204432 -
                Lampa LSC Smart Connect
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_g8_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1739447755/Final/Documents/Quality%20Product%20Documents/3204432_conformiteitsverklaring_lsc_smart_connect_moodlight.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_g9_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3009189 -
                Lampa ogrodowa LSC Smart Connect
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_g9_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730448088/Final/Documents/Quality%20Product%20Documents/conformiteitsverklaring_lsc_smart_outdoor_tuinlamp_set_3_24v.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności
                          1</a></p>
                    </div>
                  </li>
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1733919446/Final/Documents/Quality%20Product%20Documents/3009189-docb.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności
                          2</a></p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_ga_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3005857 -
                Lampa robocza AX-power
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_ga_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447892/Final/Documents/Quality%20Product%20Documents/conformiteitsverklaring_ax_power_werklamp_12w_1200lumen_zonder_accu.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_gb_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3016276 -
                Lampa sufitowa LED Baltimore
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_gb_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1739284031/Final/Documents/Quality%20Product%20Documents/3016276-A240007636_DoC_2022_V01_ZD-Trading_LVD_EMC_RED_ErP_RoHS_V2.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_gc_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3007213 -
                Lampa sufitowa LSC Smart Connect
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_gc_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447975/Final/Documents/Quality%20Product%20Documents/conformiteitsverklaring_lsc_smart_connect_plafonniere_1400lm.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_gd_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3006847 -
                Lampki świąteczne Ciepłe białe światło LSC Smart Connect
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_gd_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447959/Final/Documents/Quality%20Product%20Documents/conformiteitsverklaring_lsc_smart_verlichting_400_led_40mtr_warm_wit.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_ge_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3011840 -
                Lampki świąteczne LSC Smart Connect
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_ge_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730448194/Final/Documents/Quality%20Product%20Documents/conformiteitsverklaring_lsc_smart_kerstverlichting_200led.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności
                          1</a></p>
                    </div>
                  </li>
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730448196/Final/Documents/Quality%20Product%20Documents/conformiteitsverklaring_lsc_smart_kerstverlichting_400led.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności
                          2</a></p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_gf_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3200490 -
                Lampki zewnętrzne LSC Smart Connect
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_gf_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730449840/Final/Documents/Quality%20Product%20Documents/conformiteitsverklaring_lsc_smart_outdoor_partylight_15lamps_rgb.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_gg_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">2582095 -
                Licznik rowerowy Walfort
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_gg_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447789/Final/Documents/Quality%20Product%20Documents/doc_39301_gb.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_gh_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3207958 -
                Listwa z diodami LED Battletron
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_gh_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730450034/Final/Documents/Quality%20Product%20Documents/conformiteitsverklaring_battletron_razer_lsc_lichtbalk_gaming.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1741594442/Final/Documents/Quality%20Product%20Documents/UserManual_battletron_lsc_smart_gaming.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Instrukcja obsługi</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_gi_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3016933 - lsc
                smart conn.wtycz 3szt+mier.16a bolec
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_gi_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1736234468/Final/Documents/Quality%20Product%20Documents/3016933_DoC_lsc_smart_power_plug.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_gj_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3016931 - lsc
                smart conn.wtycz 3szt+mier.16a stnnull
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_gj_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730449603/Final/Documents/Quality%20Product%20Documents/conformiteitsverklaring_lsc_smart_connect_stekker.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_gk_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3202087 - lsc
                smart conn.wtyczka+miernik 16a st023
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_gk_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1733919469/Final/Documents/Quality%20Product%20Documents/3202087---conformiteitsverklaring---5225000200-doc.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_gl_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3202887 - lsc
                smart connect rozgałęźnik 4v styki
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_gl_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730449886/Final/Documents/Quality%20Product%20Documents/conformiteitsverklaring_lsc_smart_connect_stekkerdoos.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_gm_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3006767 -
                Oczko podtynkowe LED LSC Smart Connect
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_gm_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447928/Final/Documents/Quality%20Product%20Documents/conformiteitsverklaring_lsc_smart_connect_inbouwspot_4.8w_360lm.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_gn_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3202618 -
                Odkamieniacz Superfinn
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_gn_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1741160962/Final/Documents/Quality%20Product%20Documents/3202618_Superfinn_Universal_Descaler_v2.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Lista składników</a></p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_go_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3001000 -
                Odtłuszczacz Superfinn
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_go_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1736171684/Final/Documents/Quality%20Product%20Documents/3001000_Superfinn_Super_Degreaser.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Lista składników</a></p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_gp_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">2566274 -
                odważnik kettlebell Q4Life
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_gp_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1741265644/Final/Documents/Quality%20Product%20Documents/2538640_2538641_2566274_UserManual_kaytan_kettlebell.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Instrukcja obsługi</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_gq_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3007102 -
                Oświetlenie robocze LED Baltimore
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_gq_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447970/Final/Documents/Quality%20Product%20Documents/7485_doc_template_20210203.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_gr_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3007324 -
                Oświetlenie zewnętrzne LSC Smart Connect
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_gr_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447980/Final/Documents/Quality%20Product%20Documents/conformiteitsverklaring_lsc_smart_outdoor_updown_2x330lm.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności
                          1</a></p>
                    </div>
                  </li>
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1733913640/Final/Documents/Quality%20Product%20Documents/970800_doc.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności
                          2</a></p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_gs_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3200493 -
                Panel grzewczy na podczerwień LSC Smart Connect
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_gs_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730449844/Final/Documents/Quality%20Product%20Documents/conformiteitsverklaring_lsc_smart_connect_verw.paneel_500w.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_gt_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">2579616 -
                Pilot zdalnego sterowania LSC Smart Connect
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_gt_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447781/Final/Documents/Quality%20Product%20Documents/2579616v_970768.1_doc_ce.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_gu_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3016985 - Płyn
                do czyszczenia szyb
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_gu_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1761734957/Final/Documents/Quality%20Product%20Documents/3016985_GLASS_CLEANER_1L.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Lista składników</a></p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_gv_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">2577181 - Płyn
                do mycia naczyń Superfinn Jabłko
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_gv_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1736171742/Final/Documents/Quality%20Product%20Documents/2577181_Superfinn_Dishwashing_Liquid_Apple.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Lista składników</a></p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_h0_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">2577189 - Płyn
                do mycia naczyń Superfinn Lemon
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_h0_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1736171684/Final/Documents/Quality%20Product%20Documents/2577189_Superfinn_Detergent_Concentrated_Lemon_1l.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Lista składników</a></p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_h1_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">2577183 - Płyn
                do mycia naczyń Superfinn Soft Touch
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_h1_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1736171681/Final/Documents/Quality%20Product%20Documents/2577183_Superfinn_Dishwasher_Liquid_Soft_Touch.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Lista składników</a></p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_h2_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3210269 - Płyn
                do prania Superfinn Colour
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_h2_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1747991001/Final/Documents/Quality%20Product%20Documents/3210269_Superfinn_Detergent_Colour.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Lista składników</a></p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_h3_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3210281 - Płyn
                do prania Superfinn Colour
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_h3_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1747991001/Final/Documents/Quality%20Product%20Documents/3210281_Superfinn_Concentrated_Detergent_Colour.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Lista składników</a></p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_h4_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3210271 - Płyn
                do prania Superfinn White
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_h4_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1747991001/Final/Documents/Quality%20Product%20Documents/3210271_Superfinn_Detergent_White.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Lista składników</a></p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_h5_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3210283 - Płyn
                do prania Superfinn White
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_h5_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1747991001/Final/Documents/Quality%20Product%20Documents/3210283_Superfinn_Concentrated_Detergent_White.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Lista składników</a></p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_h6_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">2565361 - Płyn
                do udrożniania rur Superfinn
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_h6_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1736171742/Final/Documents/Quality%20Product%20Documents/2565361_Superfinn_Drain_Gel_Active.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Lista składników</a></p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_h7_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3004200 -
                Podwójne gniazdko wi-fi LSC Smart Connect
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_h7_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447876/Final/Documents/Quality%20Product%20Documents/doc30042005921_.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_h8_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3215760 -
                Proszek do prania Superfinn Colour
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_h8_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1736171574/Final/Documents/Quality%20Product%20Documents/3215760_Superfinn_Washing_Powder_Colour.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Lista składników</a></p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_h9_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3215761 -
                Proszek do prania Superfinn White
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_h9_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1736171574/Final/Documents/Quality%20Product%20Documents/3215761_Superfinn_Washing_Powder_White.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Lista składników</a></p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_ha_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3003366 -
                Reflektor LED LSC Smart Connect
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_ha_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447868/Final/Documents/Quality%20Product%20Documents/conformiteitsverklaring_lsc_smart_c._schijnwerper_led_met_sensor_20w.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_hb_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3200719 -
                Reflektor zewnętrzny LSC Smart Connect
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_hb_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730449852/Final/Documents/Quality%20Product%20Documents/conformiteitsverklaring_lsc_smart_connect_schijnwerper_10w_rgb.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_hc_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3009188 -
                Reflektory zewnętrzne LSC Smart Connect
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_hc_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730448085/Final/Documents/Quality%20Product%20Documents/conformiteitsverklaring_lsc_smart_outdoor_spot_set_24v_warm_wit_multicolor.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_hd_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">2550095 -
                Rękawice ogrodowe Garden Touch
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_hd_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447715/Final/Documents/Quality%20Product%20Documents/doc_8211_002.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_he_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">2518668 -
                Rękawice ogrodowe Garden Touch
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_he_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447690/Final/Documents/Quality%20Product%20Documents/doc_8044_2518668.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_hf_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">2550094 -
                Rękawice robocze Werckmann
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_hf_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447712/Final/Documents/Quality%20Product%20Documents/doc_9130_178165554a_001.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447712/Final/Documents/Quality%20Product%20Documents/doc_9130_178165554a_001.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Instrukcja obsługi</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_hg_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">2529123 -
                Rękawice robocze Werckmann
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_hg_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447693/Final/Documents/Quality%20Product%20Documents/2529123.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447693/Final/Documents/Quality%20Product%20Documents/2529123.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Instrukcja obsługi</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_hh_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">2557969 -
                Rękawice robocze Werckmann
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_hh_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1743407692/Final/Documents/Quality%20Product%20Documents/DOC_2557969_2557679.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_hi_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">2581944 -
                Rękawice robocze Werckmann
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_hi_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447784/Final/Documents/Quality%20Product%20Documents/2581944.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447784/Final/Documents/Quality%20Product%20Documents/2581944.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Instrukcja obsługi</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_hj_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3006033 -
                Ściemniacz światła LSC Smart Connect
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_hj_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447896/Final/Documents/Quality%20Product%20Documents/conformiteitsverklaring_lsc_smart_con._afstandsbedieningdimmer.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_hk_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3206550 -
                Ściemnialna żarówka żarnikowa LSC
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_hk_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1736169435/Final/Documents/Quality%20Product%20Documents/3206550_DataSheet_lsc_led_filament_softline_kogel_470lm.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Dane techniczne</a></p>
                    </div>
                  </li>
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730450018/Final/Documents/Quality%20Product%20Documents/conformiteitsverklaring_lsc_dimbare_ledlamp.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności
                          1</a></p>
                    </div>
                  </li>
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1736169412/Final/Documents/Quality%20Product%20Documents/3206550_DoC_lsc_led_filament_softline_kogel_470lm.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności
                          2</a></p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_hl_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3206552 -
                Ściemniana żarówka LED LSC
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_hl_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1736169411/Final/Documents/Quality%20Product%20Documents/3206552_DataSheet_lsc_led_lamp_stnd_softline_470lm_3pack.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Dane techniczne</a></p>
                    </div>
                  </li>
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730450024/Final/Documents/Quality%20Product%20Documents/conformiteitsverklaring_lsc_dimbare_ledlampen.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności
                          1</a></p>
                    </div>
                  </li>
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1736169421/Final/Documents/Quality%20Product%20Documents/3206552_DoC_lsc_led_lamp_stnd_softline_470lm_3pack.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności
                          2</a></p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_hm_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3206549 -
                Ściemniana żarówka LED LSC
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_hm_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1736169420/Final/Documents/Quality%20Product%20Documents/3206549_DataSheet_lsc_led_filament_lamp_kaars_470lm.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Dane techniczne</a></p>
                    </div>
                  </li>
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1736169409/Final/Documents/Quality%20Product%20Documents/3206549_DoC_lsc_led_filament_lamp_kaars_470lm.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_hn_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3013907 -
                Środek do czyszczenia pralki Superfinn
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_hn_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1736171681/Final/Documents/Quality%20Product%20Documents/3013907_Superfinn_Washing_Machine_Cleaner.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Lista składników</a></p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_ho_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">1326911 -
                Środek do czyszczenia tapicerki C&amp;C
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_ho_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1736171452/Final/Documents/Quality%20Product%20Documents/1326911_C_C_Textile_Cleaner.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Lista składników</a></p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_hp_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">2530203 -
                Środek do czyszczenia zmywarki do naczyń Superfinn
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_hp_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1736171452/Final/Documents/Quality%20Product%20Documents/2530203_Superfinn_Dishwasher_Cleaner.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Lista składników</a></p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_hq_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3005597 -
                Środek do mycia łazienki Superfinn Usuwa kamień
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_hq_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1736171684/Final/Documents/Quality%20Product%20Documents/3005597_Superfinn_Bathroom_Cleaner_Anti-Limescale.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Lista składników</a></p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_hr_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">2522811 -
                Środek nabłyszczający Superfinn
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_hr_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1736171634/Final/Documents/Quality%20Product%20Documents/2522811_Superfinn_Rinse_Aid.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Lista składników</a></p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_hs_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">2569829 -
                Sterowany samochód ciężarowy z oświetleniem
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_hs_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447733/Final/Documents/Quality%20Product%20Documents/dc_2050_doc.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_ht_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3211407 -
                superfinn super odtłuszczacz marsylia
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_ht_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1761812258/Final/Documents/Quality%20Product%20Documents/3211407_Superfinn_Super_Degreaser_Marseille_750_ML.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Lista składników 1</a>
                      </p>
                    </div>
                  </li>
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1736171652/Final/Documents/Quality%20Product%20Documents/3211407_Superfinn_Degreaser_Marseille.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Lista składników 2</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_hu_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3007791 -
                Tabletki do zmywarki All-in-1
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_hu_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1736171683/Final/Documents/Quality%20Product%20Documents/3007791_Superfinn_ALL_in_1_Dishwasher_Tablets.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Lista składników</a></p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_hv_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3013904 -
                Tabletki do zmywarki Superfinn Classic
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_hv_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1736171681/Final/Documents/Quality%20Product%20Documents/3013904_Superfinn_Classic_Dishwasher_Tablets.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Lista składników</a></p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_i0_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3006858 -
                Taśma elastyczna Kaytan
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_i0_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1741265714/Final/Documents/Quality%20Product%20Documents/3006858_UserManual_kaytan_glute_resistance_band.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Instrukcja obsługi</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_i1_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">2576319 -
                Taśma elastyczna Kaytan
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_i1_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1741265714/Final/Documents/Quality%20Product%20Documents/2576319_2568453_2568478_UserManual_kaytan_exercises_with_loop_resistance_band.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Instrukcja obsługi</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_i2_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">2568453 -
                Taśma elastyczna Kaytan
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_i2_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1741265714/Final/Documents/Quality%20Product%20Documents/2576319_2568453_2568478_UserManual_kaytan_exercises_with_loop_resistance_band.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Instrukcja obsługi</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_i3_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">2568478 -
                Taśma elastyczna Kaytan
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_i3_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1741265714/Final/Documents/Quality%20Product%20Documents/2576319_2568453_2568478_UserManual_kaytan_exercises_with_loop_resistance_band.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Instrukcja obsługi</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_i4_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3003542 -
                Taśma fitness Kaytan
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_i4_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1741265645/Final/Documents/Quality%20Product%20Documents/3003542_UserManual_kaytan_resistance_bands.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Instrukcja obsługi</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_i5_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3206527 -
                Taśma LED do monitora Battletron
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_i5_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730449998/Final/Documents/Quality%20Product%20Documents/battletron_lsc_led_strip_datasheet.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Dane techniczne</a></p>
                    </div>
                  </li>
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730450001/Final/Documents/Quality%20Product%20Documents/battletron_lsc_led_strip_conformiteitsverklaring.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1741594442/Final/Documents/Quality%20Product%20Documents/UserManual_battletron_lsc_smart_gaming.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Instrukcja obsługi</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_i6_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3200654 -
                Taśma LED LSC Smart Connect
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_i6_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730449847/Final/Documents/Quality%20Product%20Documents/product_calculation_sheet_lsc_smart_neon_striplight.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Dane techniczne 1</a>
                      </p>
                    </div>
                  </li>
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730449850/Final/Documents/Quality%20Product%20Documents/product_data_sheet_lsc_smart_neon_striplight.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Dane techniczne 2</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_i7_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3000342 -
                Taśma LED LSC Smart Connect
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_i7_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447799/Final/Documents/Quality%20Product%20Documents/conformiteitsverklaring_lsc_smart_connect_led_strip_rgb_wit_5m.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_i8_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3203632 -
                Taśma LED LSC Smart Connect
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_i8_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1754046136/Final/Documents/Quality%20Product%20Documents/eu_doc_2541949.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_i9_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3005457 -
                Taśma LED zewnętrzna LSC Smart Connect
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_i9_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447887/Final/Documents/Quality%20Product%20Documents/conformiteitsverklaring_lsc_smart_outdoor_led_20w_rgb_5m.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_ia_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3202086 -
                Taśma XXL LED LSC Smart Connect
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_ia_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730449866/Final/Documents/Quality%20Product%20Documents/conformiteitsverklaring_lsc_smart_connect_led_strip_10m_rgbic.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Dane techniczne</a></p>
                    </div>
                  </li>
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730449866/Final/Documents/Quality%20Product%20Documents/conformiteitsverklaring_lsc_smart_connect_led_strip_10m_rgbic.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_ib_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">2557976 -
                Termoaktywne rękawice robocze Werckmann
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_ib_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447718/Final/Documents/Quality%20Product%20Documents/2557976.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447718/Final/Documents/Quality%20Product%20Documents/2557976.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Instrukcja obsługi</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_ic_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3210225 -
                Tylne światło z kierunkowskazem Walfort
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_ic_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1749560213/Final/Documents/Quality%20Product%20Documents/A240009849-3210225_Doc__2024_Action_PPE_V4_approved.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_id_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">2578634 -
                Wielokolorowa taśma LED LSC Smart Connect
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_id_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447764/Final/Documents/Quality%20Product%20Documents/970750.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_ie_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3007108 -
                Wielokolorowa żarówka LED
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_ie_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447972/Final/Documents/Quality%20Product%20Documents/product_data_sheet_multicolor_edlamp_de.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Dane techniczne</a></p>
                    </div>
                  </li>
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447973/Final/Documents/Quality%20Product%20Documents/conformiteitsverklaring_led_lamp_e27.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_if_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">1325690 - Wosk
                samochodowy i pasta polerska C&amp;C
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_if_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1736164323/Final/Documents/Quality%20Product%20Documents/1325690_C_C_Car_Wax_Polish.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Lista składników</a></p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_ig_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3016951 -
                Wybielacz w piance
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_ig_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1761734956/Final/Documents/Quality%20Product%20Documents/3016951_FOAMING_BLEACH_750ML.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Lista składników</a></p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_ih_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3206554 -
                Żarówka LED LSC
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_ih_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1736169429/Final/Documents/Quality%20Product%20Documents/3206554_DataSheet_lsc_led_lamp_standaard_e27.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Dane techniczne</a></p>
                    </div>
                  </li>
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1736169430/Final/Documents/Quality%20Product%20Documents/3206554_DoC_lsc_led_lamp_standaard_e27.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_ii_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3002424 -
                Żarówka LED LSC
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_ii_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1736234464/Final/Documents/Quality%20Product%20Documents/3002424-DataSheet-lsc-led-lamp-softline-kogel-600lm-ra95.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Dane techniczne</a></p>
                    </div>
                  </li>
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1736234465/Final/Documents/Quality%20Product%20Documents/3002424-DoC-lsc-led-lamp-softline-kogel-600lm-ra95.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1736234464/Final/Documents/Quality%20Product%20Documents/3002424-DimmerTest-lsc-led-lamp-softline-kogel-600lm-ra95.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Raport z testów</a></p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_ij_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3008935 -
                Żarówka LED LSC
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_ij_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730448073/Final/Documents/Quality%20Product%20Documents/data_sheet.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Dane techniczne</a></p>
                    </div>
                  </li>
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730448076/Final/Documents/Quality%20Product%20Documents/conformiteitsverklaring_lsc_led_filament_e27_soft_a60_806lm_ra95.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730448078/Final/Documents/Quality%20Product%20Documents/dimmer.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Raport z testów</a></p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_ik_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3007098 -
                Żarówka LED LSC
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_ik_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447963/Final/Documents/Quality%20Product%20Documents/data_sheet_lsc_led_lamp_filament_e27_9w_a60_1055lm.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Dane techniczne</a></p>
                    </div>
                  </li>
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447966/Final/Documents/Quality%20Product%20Documents/conformiteitsverklaring_lsc_led_lamp_filament_e27_9w_a60_1055lm.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447968/Final/Documents/Quality%20Product%20Documents/dimmer_lsc_led_lamp_filament_e27_9w_a60_1055lm.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Raport z testów</a></p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_il_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3006927 -
                Żarówka LED LSC
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_il_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447961/Final/Documents/Quality%20Product%20Documents/conformiteitsverklaring_lsc_led_lamp_g9_4w_dimbaar_400lm.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_im_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3006461 -
                Żarówka LED LSC
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_im_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447921/Final/Documents/Quality%20Product%20Documents/data_sheet_lsc_led_lamp_filament_e27_12w_a60_1521lm.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Dane techniczne</a></p>
                    </div>
                  </li>
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447924/Final/Documents/Quality%20Product%20Documents/conformiteitsverklaring_lsc_led_lamp_filament_e27_12w_a60_1521lm.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_in_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3006445 -
                Żarówka LED LSC
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_in_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447913/Final/Documents/Quality%20Product%20Documents/data_sheet_lsc_led_softline_12w_1521lm_ra95.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Dane techniczne</a></p>
                    </div>
                  </li>
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447915/Final/Documents/Quality%20Product%20Documents/doc_lsc_led_softline_12w_1521lm_ra95.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447917/Final/Documents/Quality%20Product%20Documents/dimmer_lsc_led_softline_12w_1521lm_ra95.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Raport z testów</a></p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_io_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3006444 -
                Żarówka LED LSC
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_io_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447907/Final/Documents/Quality%20Product%20Documents/data_sheet_lsc_led_filament_softline_11w_1055lm.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Dane techniczne</a></p>
                    </div>
                  </li>
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447909/Final/Documents/Quality%20Product%20Documents/conformiteitsverklaring_lsc_led_filament_softline_11w_1055lm.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447911/Final/Documents/Quality%20Product%20Documents/dimmer_lsc_led_filament_softline_11w_1055lm.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Raport z testów</a></p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_ip_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3006423 -
                Żarówka LED LSC
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_ip_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447899/Final/Documents/Quality%20Product%20Documents/conformiteitsverklaring_lsc_led_lamp_e14_2w_t26_filament_helder.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_iq_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3006428 -
                Żarówka LED LSC
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_iq_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447902/Final/Documents/Quality%20Product%20Documents/conformiteitsverklaring_lsc_led_lamp_e27_17w_4000k_2500_lumen.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_ir_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3004229 -
                Żarówka LED LSC
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_ir_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447878/Final/Documents/Quality%20Product%20Documents/conformiteitsverklaring_lsc_led_lamp_e27_7.5w_softline_g80_600lm.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_is_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3003174 -
                Żarówka LED LSC
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_is_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447863/Final/Documents/Quality%20Product%20Documents/conformiteitsverklaring_lsc_led_lamp_e27_standaard_1050lm_11w.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_it_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3003173 -
                Żarówka LED LSC
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_it_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447861/Final/Documents/Quality%20Product%20Documents/conformiteitsverklaring_lsc_led_lamp_e27_standaard_1055lm.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_iu_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3002813 -
                Żarówka LED LSC
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_iu_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447838/Final/Documents/Quality%20Product%20Documents/conformiteitsverklaring_lsc_led_lamp_smd_standaard_e27_2500lm.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_iv_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">2549909 -
                Żarówka LED LSC
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_iv_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447707/Final/Documents/Quality%20Product%20Documents/conformiteitsverklaring_lsc_led_lamp_kogel_e14_7w_kogel.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_j0_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">2549343 -
                Żarówka LED LSC
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_j0_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447705/Final/Documents/Quality%20Product%20Documents/conformiteitsverklaring_lsc_led_lamp_e27_9w_standaard_810lumen.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_j1_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3200074 -
                Żarówka LED LSC Smart Connect
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_j1_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730449833/Final/Documents/Quality%20Product%20Documents/conformiteitsverklaring_lsc_smart_connect_led_lamp_st64_e27_goud.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_j2_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3003352 -
                Żarówka LED punktowa LSC
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_j2_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447866/Final/Documents/Quality%20Product%20Documents/conformiteitsverklaring_lsc_led_lamp_gu10_3w_reflector_230lumen.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_j3_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">2572773 -
                Żarówka LED reflektor LSC
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_j3_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447738/Final/Documents/Quality%20Product%20Documents/conformiteitsverklaring_lsc_ledlamp_reflector_gu10_5w.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_j4_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">2572772 -
                Żarówka LED reflektor LSC
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_j4_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447735/Final/Documents/Quality%20Product%20Documents/conformiteitsverklaring_lsc_ledlamp_reflector_mr16_5.5w.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_j5_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3002414 -
                Żarówka LED typu soft-tone LSC
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_j5_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447810/Final/Documents/Quality%20Product%20Documents/conformiteitsverklaring_lsc_led_lamp_softline_a60_600lm_ra95.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_j6_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3007257 -
                Żarówka LED z tytanowym żarnikiem LSC Smart Connect
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_j6_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447978/Final/Documents/Quality%20Product%20Documents/conformiteitsverklaring_lsc_smart_connect_led_lamp_g95_titanium.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_j7_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3206551 -
                Żarówka LED z żarnikiem LSC
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_j7_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1736169420/Final/Documents/Quality%20Product%20Documents/3206551_DataSheet_lsc_led_filament_softline_kogel_470lm.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Dane techniczne</a></p>
                    </div>
                  </li>
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730450021/Final/Documents/Quality%20Product%20Documents/conformiteitsverklaring_lsc_softline_kogel.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności
                          1</a></p>
                    </div>
                  </li>
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1736169421/Final/Documents/Quality%20Product%20Documents/3206551_DoC_lsc_led_filament_softline_kogel_470lm.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności
                          2</a></p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_j8_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3200042 -
                Żarówka LED z żarnikiem LSC
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_j8_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730449787/Final/Documents/Quality%20Product%20Documents/conformiteitsverklaring_lsc_led_filament_lamp_a55_470lm_e27_dimb.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_j9_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3006835 -
                Żarówka LED z żarnikiem LSC
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_j9_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447944/Final/Documents/Quality%20Product%20Documents/data_sheet_lsc_led_lamp_filament_a60_470lm_3_pack.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Dane techniczne</a></p>
                    </div>
                  </li>
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447947/Final/Documents/Quality%20Product%20Documents/conformiteitsverklaring_lsc_led_lamp_filament_a60_470lm_3_pack.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447949/Final/Documents/Quality%20Product%20Documents/dimmer_lsc_led_lamp_filament_a60_470lm_3_pack.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Raport z testów</a></p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_ja_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3206548 -
                Żarówka LED z żarnikiem LSC Smart Connect
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_ja_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730450009/Final/Documents/Quality%20Product%20Documents/product_calculation_sheet_lsc_smart_connect_g95_goud_600lm.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Dane techniczne 1</a>
                      </p>
                    </div>
                  </li>
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730450012/Final/Documents/Quality%20Product%20Documents/product_datasheet_lsc_smart_connect_g95_goud_600lm.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Dane techniczne 2</a>
                      </p>
                    </div>
                  </li>
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730450015/Final/Documents/Quality%20Product%20Documents/conformiteitsverklaring_lsc_smart_connect_g95_goud_600lm.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_jb_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3007613 -
                Żarówka LED z żarnikiem świeca LSC
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_jb_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447992/Final/Documents/Quality%20Product%20Documents/conformiteitsverklaring_lsc_led_lamp_filament_tipkaars_600lm.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_jc_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">2534924 -
                Żarówka płomyk LSC
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_jc_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447698/Final/Documents/Quality%20Product%20Documents/data_sheet_lsc_gloeilamp_tipkaars_e14_7w.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Dane techniczne</a></p>
                    </div>
                  </li>
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447700/Final/Documents/Quality%20Product%20Documents/conformiteitsverklaring_lsc_gloeilamp_tipkaars_e14_7w.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447703/Final/Documents/Quality%20Product%20Documents/dimmer_lsc_gloeilamp_tipkaars_e14_7w.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Raport z testów</a></p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_jd_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3006836 -
                Żarówka reflektor LED LSC
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_jd_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447951/Final/Documents/Quality%20Product%20Documents/data_sheet_lsc_led_lamp_gu10.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Dane techniczne</a></p>
                    </div>
                  </li>
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447955/Final/Documents/Quality%20Product%20Documents/conformiteitsverklaring_lsc_led_lamp_gu10_460lm_dim_to_warm.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447957/Final/Documents/Quality%20Product%20Documents/dimmer_test_lsc_led_lamp_gu10.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Raport z testów</a></p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_je_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3002435 -
                Żarówka soft tone okrągła LED LSC
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_je_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447819/Final/Documents/Quality%20Product%20Documents/data_sheet_lsc_led_lamp_softline_kogel_600lm_ra95.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Dane techniczne</a></p>
                    </div>
                  </li>
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447822/Final/Documents/Quality%20Product%20Documents/conformiteitsverklaring_lsc_led_lamp_softline_kogel_600lm_ra95.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447824/Final/Documents/Quality%20Product%20Documents/dimmer_lsc_led_lamp_softline_kogel_600lm_ra95.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Raport z testów</a></p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_jf_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3002923 -
                Żarówka świecowa soft-tone LED LSC
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_jf_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447847/Final/Documents/Quality%20Product%20Documents/data_sheet_lsc_led_lamp_softline_kaars_600lm_ra95.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Dane techniczne</a></p>
                    </div>
                  </li>
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447850/Final/Documents/Quality%20Product%20Documents/conformiteitsverklaring_lsc_led_lamp_softline_kaars_600lm_ra95.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447852/Final/Documents/Quality%20Product%20Documents/dimmer_lsc_led_lamp_softline_kaars_600lm_ra95.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Raport z testów</a></p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_jg_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3007615 -
                Żarówka z żarnikiem LED LSC
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_jg_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447995/Final/Documents/Quality%20Product%20Documents/data_sheet_lsc_led_filament_bulb_ball_600lm_ra95.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Dane techniczne</a></p>
                    </div>
                  </li>
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447997/Final/Documents/Quality%20Product%20Documents/conformiteitsverklaring_lsc_led_filament_kogel_600lm_ra95.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447999/Final/Documents/Quality%20Product%20Documents/dimmer_lsc_led_filament_bulb_ball_600lm_ra95.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Raport z testów</a></p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_jh_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3002922 -
                Żarówka z żarnikiem LED LSC
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_jh_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447841/Final/Documents/Quality%20Product%20Documents/data_sheet_lsc_led_lamp_filament_a60_806lm_dimbaar.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Dane techniczne</a></p>
                    </div>
                  </li>
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447843/Final/Documents/Quality%20Product%20Documents/conformiteitsverklaring_lsc_led_lamp_filament_a60_806lm_dimbaar.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_ji_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3200033 -
                Żarówka z żarnikiem LED LSC świeczka
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_ji_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730449785/Final/Documents/Quality%20Product%20Documents/conformiteitsverklaring_lsc_kaars_filament_ledlamp_e14_200lmn.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_jj_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3008934 -
                Żarówka żarnikowa LED LSC
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_jj_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730448069/Final/Documents/Quality%20Product%20Documents/conformiteitsverklaring_lsc_led_filament_e27_kogel_600lm_ra95.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_jk_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3007624 -
                Żarówka żarnikowa LED LSC świeca
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_jk_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730448006/Final/Documents/Quality%20Product%20Documents/conformiteitsverklaring_lsc_led_filament_e14_7w_kaars_600lm_ra95.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_jl_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3007621 -
                Żarówki LED LSC
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_jl_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730448001/Final/Documents/Quality%20Product%20Documents/conformiteitsverklaring_lsc_led_lamp_3w_standaard_250lm_3_pack.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_jm_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3006446 -
                Żarówki LED LSC
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_jm_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447919/Final/Documents/Quality%20Product%20Documents/conformiteitsverklaring_lsc_led_lamp_e27_8.5w_806lm_3pack.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_jn_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3200031 -
                Żarówki LED przyciemniane LSC
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_jn_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730449771/Final/Documents/Quality%20Product%20Documents/td.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Dane techniczne</a></p>
                    </div>
                  </li>
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730449778/Final/Documents/Quality%20Product%20Documents/conformiteitsverklaring_lsc_led_lamps_3pack_f._600lm_std_e27_dim.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730449783/Final/Documents/Quality%20Product%20Documents/dimmer_test_report_lsc_gls_a60.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Raport z testów</a></p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_jo_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3006834 -
                Żarówki LED z żarnikiem LSC świece
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_jo_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447937/Final/Documents/Quality%20Product%20Documents/data_sheet_lsc_led_lamp_filament_kaars_3_pack_470lm.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Dane techniczne</a></p>
                    </div>
                  </li>
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447940/Final/Documents/Quality%20Product%20Documents/conformiteitsverklaring_lsc_led_lamp_filament_kaars_3_pack_470lm.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447942/Final/Documents/Quality%20Product%20Documents/dimmer_lsc_led_lamp_filament_kaars_3_pack_470lm.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Raport z testów</a></p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_jp_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3002772 -
                Żarówki punktowe LED Eurodomest
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_jp_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447833/Final/Documents/Quality%20Product%20Documents/product_datasheet_eurodomest_spot.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Dane techniczne</a></p>
                    </div>
                  </li>
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1736781382/Final/Documents/Quality%20Product%20Documents/3002772_DoC_eurodomest_spot_gu10_345lm_12st.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_jq_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3200030 -
                Żarówki świecowe LED LSC
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_jq_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730449761/Final/Documents/Quality%20Product%20Documents/conformiteitsverklaring_led_lamp_3pack_tipkaars_e14_470lm_dim.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730449766/Final/Documents/Quality%20Product%20Documents/dt.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Raport z testów</a></p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_jr_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3002596 -
                Żarówki wtykowe LED LSC
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_jr_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1730447827/Final/Documents/Quality%20Product%20Documents/conformiteitsverklaring_lsc_led_lamp_g4_2w_200lumen_2st.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Deklaracja zgodności</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_js_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3009674 - Żel
                do WC Superfinn Lawenda
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_js_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1736171682/Final/Documents/Quality%20Product%20Documents/3009674_Superfinn_Toilet_Gel_Lavender.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Lista składników</a></p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_jt_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3009677 - Żel
                do WC Superfinn Lemon
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_jt_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1736171681/Final/Documents/Quality%20Product%20Documents/3009677_Superfinn_Toilet_Gel_Lemon.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Lista składników</a></p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_ju_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">3003338 -
                Zestaw do ćwiczeń Kaytan
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_ju_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1741265644/Final/Documents/Quality%20Product%20Documents/3003338_UserManual_kaytan_resistance_band_with_handles.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Instrukcja obsługi</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_jv_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">2572735 -
                zestaw hantli miękkich Kaytan
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_jv_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1741265647/Final/Documents/Quality%20Product%20Documents/2568457_3003939_2576330_2568446_2568442_2576507_2572735_UserManual_kaytan_exercises_with_dumbbells.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Instrukcja obsługi</a>
                      </p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_k0_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">30016986
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_k0_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1761734957/Final/Documents/Quality%20Product%20Documents/3016986_GREASE_REMOVER_500_ML.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Lista składników</a></p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div data-testid="accordion-container" class="border-neutral-150 flex w-full flex-col border-t py-2">
          <h3><button data-testid="accordion-button" class="flex w-full flex-row items-center gap-1.5"
              aria-expanded="false" aria-controls="_r_k1_"><span data-testid="accordion-container-title"
                class="text-body-medium text-dark-blue-500 grow text-left text-sm font-bold sm:text-base">30016987
              </span><span class="mt-0.5 transform content-center transition-transform duration-300"><svg
                  aria-hidden="true" data-testid="ChevronDown" class="shrink-0" xmlns="http://www.w3.org/2000/svg"
                  width="20" height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#001489"
                    d="M12 17a1 1 0 0 1-.707-.293l-7-7a1 1 0 1 1 1.414-1.414L12 14.586l6.293-6.293a1 1 0 1 1 1.414 1.414l-7 7A1 1 0 0 1 12 17">
                  </path>
                </svg></span></button></h3>
          <div id="_r_k1_" data-testid="accordion-content"
            class="overflow-hidden transition-all duration-300 ease-in-out hidden" hidden="" style="max-height: 0px;">
            <div class="max-w-[800px] pt-2 pb-px **:text-sm sm:**:text-base">
              <div class="flex max-w-[800px] flex-col gap-3">
                <ul data-testid="markdown-unordered-list" class="list-disc pl-5 text-neutral-900 flex flex-col gap-3">
                  <li>
                    <div class="flex flex-col gap-3">
                      <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                          class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                          href="http://asset.action.com/image/upload/v1761734957/Final/Documents/Quality%20Product%20Documents/3016987_ALL_PURPOSE_CLEANER_1L.pdf"
                          target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Lista składników</a></p>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!--$-->
  <!--/$-->
</main>
{/block}
