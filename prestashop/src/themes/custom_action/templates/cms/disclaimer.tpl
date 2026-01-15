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
      <section class="bg-neutral-0 pt-6 md:pt-8 pb-6 md:pb-8 lg:pt-0" aria-label="Wyłączenie odpowiedzialności" data-testid="cms-content-title">
        <div class="relative flex w-full flex-col px-4 lg:px-8">
          <div class="mx-auto w-full max-w-7xl">
            <h1 class="heading-2xl text-dark-blue-500">Wyłączenie odpowiedzialności</h1>
          </div>
        </div>
      </section>
      <section class="bg-neutral-0 pb-6 md:pb-8 lg:pt-0" aria-label="Klauzula zrzeczenia się odpowiedzialności" data-testid="cms-markdown">
        <div class="relative flex w-full flex-col px-4 lg:px-8">
          <div class="mx-auto w-full max-w-7xl">
            <div class="flex flex-col gap-4" data-content-king="rich-text">
              <h2 id="klauzula-zrzeczenia-się-odpowiedzialności" class="heading-xl" data-testid="markdown-top-title">
                Klauzula zrzeczenia się odpowiedzialności</h2>
              <div class="flex max-w-[800px] flex-col gap-3">
                <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph">Wszystkie informacje
                  zamieszczone na Action⁠.com oraz w newsletterach Action są własnością firmy Action, z wyłączeniem
                  kilku ⁠(hiper⁠)linków⁠. Zabrania się publikowania, kopiowania czy zapisywania tych informacji ⁠(w tym
                  stylu firmowego, logo, tekstów, zdjęć i projektowania⁠) bez uzyskania wyraźnej zgody firmy Action na
                  piśmie⁠. Przy wykorzystywaniu tych informacji wyłącznie do użytku osobistego i niekomercyjnego, takie
                  pozwolenie jest zbędne⁠.</p>
                <h3 class="heading-lg text-dark-blue-500l" data-testid="markdown-title">Informacja</h3>
                <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph">Informacje na naszej
                  stronie internetowej oraz w newsletterach są opracowywane z wielką starannością⁠. Dokładamy wszelkich
                  starań, aby uniknąć błędów, ale niestety, nie zawsze można temu zapobiec⁠. Firma Action nie ponosi
                  odpowiedzialności za kompletność lub poprawność powyższych informacji i ma prawo do natychmiastowego
                  wprowadzenia zmian bez konieczności wcześniejszego ich zgłaszania⁠.</p>
                <h3 class="heading-lg text-dark-blue-500l" data-testid="markdown-title">Linki</h3>
                <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph">Na tej stronie
                  internetowej i w naszych newsletterach znajdują się linki wychodzące do zewnętrznych stron
                  internetowych, które nie są własnością firmy Action⁠. Wchodząc na taki link, opuszcza się naszą stronę
                  internetową lub newsletter⁠. Informacje na zewnętrznych stronach internetowych nie są sprawdzane przez
                  nas pod względem poprawności⁠. Firma Action nie ponosi zatem odpowiedzialności za te strony
                  internetowe⁠.</p>
                <h3 class="heading-lg text-dark-blue-500l" data-testid="markdown-title">Bezpieczeństwo</h3>
                <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph">Nieustannie pracujemy nad
                  bezpieczeństwem naszych systemów i strony internetowej⁠. Choć dokładamy wszelkich starań, mogą zdarzyć
                  się sytuacje, w których pojawiła się luka w bezpieczeństwie⁠. Odkryłeś⁠(⁠-aś⁠) taką lukę? Prosimy
                  zgłosić to na&nbsp;reportphishing@action⁠.eu⁠.</p>
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