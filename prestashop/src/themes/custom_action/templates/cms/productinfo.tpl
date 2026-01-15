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
    <div class="px-4 md:hidden" data-testid="mobile-search"></div>
    <div class="relative flex w-full flex-col px-4 lg:px-8" data-testid="product-recall-page-title">
      <div class="mx-auto w-full max-w-7xl">
        <div class="md:py-4">
          <nav class="no-scrollbar -mr-4 flex items-center gap-0.5 overflow-y-auto py-0.5" data-testid="breadcrumbs"
            aria-label="Breadcrumbs" lang="en"><a class="group flex items-center text-body-small whitespace-nowrap"
              href="{$link->getPageLink('customerservice')}" data-testid="breadcrumb-link" lang="pl-pl"><span
                data-content-king="breadcrumbs" data-testid="breadcrumb-label"
                class="text-dark-blue-500 group-hover:shadow-bottom-border">Biuro Obsługi Klienta</span></a>
            <div class="inline"><svg aria-hidden="true" data-testid="ChevronRight" xmlns="http://www.w3.org/2000/svg"
                width="16" height="16" fill="none" viewBox="0 0 24 24">
                <path fill="#1a1a1a"
                  d="M9 20a1 1 0 0 1-.707-1.707L14.586 12 8.293 5.707a1 1 0 1 1 1.414-1.414l7 7a1 1 0 0 1 0 1.414l-7 7A1 1 0 0 1 9 20">
                </path>
              </svg></div>
            <div class="group flex items-center text-body-small whitespace-nowrap" data-testid="breadcrumb-item">
              <p data-content-king="breadcrumbs" class="first-letter:uppercase text-neutral-900" lang="pl-pl"
                data-testid="breadcrumb-label">Ważne informacje o produkcie</p>
            </div><span class="p-2"></span>
          </nav>
        </div>
        <div class="pt-6 lg:pb-6">
          <div class="bg-neutral-0 pb-4 md:pb-6">
            <h1 class="heading-2xl text-dark-blue-500">Ważne informacje o produkcie</h1>
          </div>
          <div data-testid="product-recall-page-text">
            <div data-testid="product-recall-clamped-markdown">
              <p class="text-neutral-900">Zawsze bierzemy za to odpowiedzialność i robimy wszystko, by chronić Cię jako
                klienta. <span class="md:hidden">..</span></p><button class="text-dark-blue-500 md:hidden">Czytaj
                więcej</button>
              <div class="pt-3 md:block hidden">
                <div class="flex max-w-[800px] flex-col gap-3">
                  <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph">Dlatego od razu
                    informujemy, jeżeli któryś z artykułów nie spełnia kryteriów⁠.</p>
                  <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph">Zalecamy niekorzystanie
                    z poniższych artykułów w przypadku wycofania z rynku lub zastosowanie się do ostrzeżenia związanego
                    z bezpieczeństwem w trakcie korzystania⁠. Oczywiście masz prawo do zwrotu wycofywanych z rynku
                    artykułów bez konieczności przedstawienia paragonu⁠. W takim przypadku otrzymasz z powrotem kwotę
                    zakupu w pełnej wysokości⁠. Przepraszamy za wszelkie niedogodności⁠.</p>
                  <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph">Jeżeli masz pytanie w
                    sprawie któregoś z poniższych produktów, prosimy o&nbsp;<a
                      class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                      href="{$link->getPageLink('customerservice')}" data-testid="markdown-link">kontakt</a>⁠.</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="flex flex-1 flex-col" data-testid="cms-content-rows">
      <div class="hidden h-8 lg:block"></div>
      <section class="bg-neutral-0 pt-6 md:pt-8 pb-6 md:pb-8 lg:pt-0" data-testid="cms-product-warnings">
        <div class="relative flex w-full flex-col px-4 lg:px-8">
          <div class="mx-auto w-full max-w-7xl">
            <h2 class="heading-xl mb-6 md:mb-0">Ważne ostrzeżenia dotyczące bezpieczeństwa</h2>
            <div class="mt-6 flex flex-col gap-8">
              <p class="text-body-normal text-neutral-900">Na ten moment nie ma żadnych ostrzeżeń dotyczących
                bezpieczeństwa produktów.</p>
            </div>
          </div>
        </div>
      </section>
      <section class="bg-neutral-50 pt-6 md:pt-8 pb-6 md:pb-8" data-testid="cms-contact-form-link-section">
        <div class="relative flex w-full flex-col px-4 lg:px-8">
          <div class="mx-auto w-full max-w-7xl"><a class="group flex items-start gap-4 rounded-lg p-4 lg:max-w-[580px]"
              href="/kontakt">
              <div class="shrink-0">
                <div class="flex items-center justify-center rounded-full"><span
                    class="transition-transform duration-300 group-hover:scale-105"
                    style="display:block;width:64px;height:64px">
                    <!--$--><svg aria-hidden="true" data-testid="IllustrationNewsletter"
                      class="transition-transform duration-300 group-hover:scale-105" xmlns="http://www.w3.org/2000/svg"
                      width="64" height="64" fill="none" viewBox="0 0 200 200">
                      <path fill="#C4E3F5"
                        d="M100 184.349c46.392 0 84-37.687 84-84.175S146.392 16 100 16s-84 37.686-84 84.174 37.608 84.175 84 84.175">
                      </path>
                      <path fill="#001489" d="M70 114.069v61.529a99 99 0 0 0 10 2.523v-64.052z"></path>
                      <path fill="white" fill-rule="evenodd"
                        d="M100 180.329c44.18 0 79.991-35.888 79.991-80.155 0-44.266-35.811-80.155-79.991-80.155s-79.99 35.889-79.99 80.155c0 44.267 35.81 80.155 79.99 80.155m84-80.155c0 46.488-37.608 84.175-84 84.175s-84-37.687-84-84.175S53.608 16 100 16s84 37.686 84 84.174"
                        clip-rule="evenodd"></path>
                      <path fill="#001489"
                        d="M109.517 41.094c-16.354 0-29.61 13.177-29.61 29.434v44.428h59.22V70.528c0-16.257-13.256-29.434-29.61-29.434">
                      </path>
                      <path fill="black" fill-opacity=".2"
                        d="M109.517 41.094c-16.354 0-29.61 13.177-29.61 29.434v44.428h59.22V70.528c0-16.257-13.256-29.434-29.61-29.434">
                      </path>
                      <path fill="#00B6E7" fill-rule="evenodd"
                        d="M79.906 114.956H5V70.528c0-16.257 15.3-29.434 34.176-29.434h69.796v.005c-16.103.288-29.066 13.353-29.066 29.43z"
                        clip-rule="evenodd"></path>
                      <path fill="#001489"
                        d="M64.495 7H57.6v14.649s6.896-.705 6.896 6.478v33.649c0 1.175.96 2.13 2.142 2.13h.615a2.137 2.137 0 0 0 2.142-2.13V7z">
                      </path>
                      <path fill="#00B6E7"
                        d="m139.112 114.957 13.406 28.05c1.551 3.247-.829 6.993-4.445 6.993h-45.761a8.95 8.95 0 0 1-8.083-5.079l-14.32-29.964">
                      </path>
                      <path fill="#66D3F1"
                        d="m179.568 34.425-68.359 24.007a1.275 1.275 0 0 0-.783 1.628l13.371 37.736a1.283 1.283 0 0 0 1.635.78l68.359-24.008a1.275 1.275 0 0 0 .783-1.628l-13.371-37.736a1.283 1.283 0 0 0-1.635-.78">
                      </path>
                      <path fill="#00B6E7" d="m110.606 58.724 42.724 8.537L180.141 34.3l-24.582 39.056z"></path>
                    </svg>
                    <!--/$-->
                  </span></div>
              </div>
              <div class="flex-1">
                <h3 class="text-dark-blue-500 mb-2 text-lg font-bold">Potrzebujesz pomocy?</h3>
                <p class="text-base text-neutral-600">Skontaktuj się z nami za pomocą <span
                    class="text-dark-blue-500 font-medium">formularza kontaktowego.</span></p>
              </div>
            </a></div>
        </div>
      </section>
      <section class="bg-neutral-0 pt-6 md:pt-8 pb-6 md:pb-8" data-testid="cms-contact-bar">
        <div class="relative flex w-full flex-col px-4 lg:px-8">
          <div class="mx-auto w-full max-w-7xl">
            <div class="mb-8 bg-neutral-50 py-4 ">
              <div class="container mx-auto px-4">
                <div class="flex flex-col flex-wrap items-center justify-center gap-6 md:flex-row md:gap-8"><a
                    class="text-md group text-dark-blue-500 hover:text-dark-blue-700 flex items-center gap-3 font-medium transition-colors"
                    href="/kontakt" target="_blank" rel="noopener noreferrer"><span
                      class="h-5 w-5 transition-transform group-hover:scale-110"
                      style="display:block;width:undefinedpx;height:undefinedpx">
                      <!--$--><svg aria-hidden="true" data-testid="Mail"
                        class="h-5 w-5 transition-transform group-hover:scale-110" xmlns="http://www.w3.org/2000/svg"
                        width="24" height="24" fill="none" viewBox="0 0 24 24">
                        <path fill="#001489"
                          d="M17.8 20H6.2c-1.24 0-1.922 0-2.565-.33a3.04 3.04 0 0 1-1.305-1.303C2 17.722 2 17.04 2 15.8V8.2c0-1.24 0-1.922.33-2.565A3.04 3.04 0 0 1 3.632 4.33C4.278 4 4.96 4 6.2 4h11.6c1.24 0 1.922 0 2.565.33a3.03 3.03 0 0 1 1.305 1.303C22 6.278 22 6.96 22 8.2v7.6c0 1.24 0 1.922-.33 2.565a3.04 3.04 0 0 1-1.303 1.305c-.645.33-1.328.33-2.567.33M4.005 7.377q-.006.35-.005.823v7.6c0 .867 0 1.44.11 1.655.093.182.253.342.437.436C4.76 18 5.333 18 6.2 18h11.6c.867 0 1.44 0 1.655-.11.182-.093.342-.253.436-.437C20 17.24 20 16.667 20 15.8V8.2q.001-.47-.005-.823l-5.515 4.04c-.752.555-1.168.86-1.72 1.009a3.14 3.14 0 0 1-1.495.006c-.577-.155-.992-.46-1.747-1.016zm1.509-1.374 5.187 3.8c.543.4.87.64 1.059.691.152.037.328.036.505-.006.164-.045.49-.285 1.032-.683l5.19-3.802Q18.182 5.999 17.8 6H6.2q-.383 0-.686.003">
                        </path>
                      </svg>
                      <!--/$-->
                    </span><span>Kontakt</span></a></div>
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