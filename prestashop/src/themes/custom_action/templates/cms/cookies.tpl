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
        <div data-testid="cookie-declaration" class="CookieDeclaration_cookieScriptBlock__cJl7b">
          <div>
            <style type="text/css">
              .CookieDeclarationDialogText,
              .CookieDeclarationIntro,
              .CookieDeclarationLastUpdated {
                margin: 0 0 14px 0
              }

              .CookieDeclarationType {
                display: block;
                margin: 12px 0 12px 0;
                padding: 8px 8px 0 8px;
                border: 1px solid #333333;
                vertical-align: top;
              }

              .CookieDeclarationTypeHeader {
                font-weight: bold;
              }

              .CookieDeclarationTypeDescription {
                margin: 2px 0 16px 0;
              }

              .CookieDeclarationTable {
                table-layout: fixed;
                width: 100%;
                border-collapse: collapse;
                border-spacing: 0;
                margin: 0 0 18px 0;
                padding: 0;
                border: 0;
                font-size: 100%;
                font: inherit;
                vertical-align: baseline;
              }

              .CookieDeclarationTableHeader {
                font-weight: bold;
                border-bottom: 1px solid #777777;
                text-align: left;
                padding: 4px;
              }

              .CookieDeclarationTableHeader[dir='rtl'] {
                text-align: right;
              }

              .CookieDeclarationTableCell {
                text-overflow: ellipsis;
                word-wrap: break-word;
                border-bottom: 1px solid #777777;
                vertical-align: top;
                padding: 4px 4px 5px 4px;
              }
            </style>
            <div class="CookieDeclaration" lang="pl" dir="ltr">
              <p class="CookieDeclarationDialogText">Strona action.com wykorzystuje pliki cookie. </p>
              <p style="">Action szanuje Twoją prywatność. Dlatego chcielibyśmy Cię poinformować, że wykorzystujemy pliki
                cookies. Korzystamy z podstawowych plików cookies na naszej stronie internetowej i w aplikacji Action w
                celu zapewnienia prawidłowego działania strony, zapamiętania Twoich preferencji i zbierania anonimowych
                statystyk. Korzystamy również z analitycznych plików cookies, które zbierają dane o korzystaniu z naszej
                strony internetowej i aplikacji. Ponadto korzystamy z marketingowych plików cookies do odtwarzania filmów,
                zapamiętywania Twoich preferencji oraz wyświetlania reklam i wiadomości, które mogą Cię zainteresować.
                Niektóre pliki cookies są umieszczane przez strony trzecie, których usługi są oferowane na naszej stronie.
                Dotyczy to np. możliwości udostępniania produktów w mediach społecznościowych.<br style=""><br
                  style="">Wybierz opcję „Akceptuj”, jeśli zgadzasz się na używanie przez nas (i strony trzecie) plików
                cookie. Klikając „Ustawienia własne“, możesz samodzielnie określić swoje preferencje dotyczące plików
                cookie. Możesz też odrzucić wszystkie opcjonalne pliki cookie za jednym zamachem, klikając „Odrzuć“.
Chcesz dowiedzieć się więcej? W naszym <a href="{$link->getPageLink('cookies')}"
                  style="">oświadczeniu o plikach cookie</a> znajdziesz zestawienie wszystkich używanych przez nas cookies
                wraz z ich funkcją. Ponadto pełną treść naszych warunków prywatności znajdziesz w naszym oświadczeniu
dotyczącym <a href="{$link->getPageLink('privacy')}" target="_blank"
                  style="">prywatności</a>.</p>
              <p></p>
              <p class="CookieDeclarationIntro"> </p>
              <p>Twoja zgoda dotyczy następujących domen: www.action.com</p>
              <div id="CookieDeclarationUserStatusPanel" style="display: block; margin: 18px 0px 0px;"
                data-responsemode="leveloptin" data-dialogtemplate="custom_customcolor">
                <div id="CookieDeclarationUserStatusLabel" style="display: block">
                  <div id="CookieDeclarationUserStatusLabelOff" style="display: block;">Twój obecny stan: Odmowa.&nbsp;
                  </div>
                  <div id="CookieDeclarationUserStatusLabelOffDoNotSell" style="display: none;">Twój obecny stan: Moje
                    dane osobowe nie mogą być sprzedawane ani udostępniane.&nbsp;</div>
                  <div id="CookieDeclarationUserStatusLabelMulti" style="display: none;">Twój obecny stan: Zezwól na
                    wybór&nbsp;(Podstawowe pliki cookies<span id="CookieDeclarationUserStatusLabelMultiSettingsPref"
                      style="display: none;">, Preferencje</span><span
                      id="CookieDeclarationUserStatusLabelMultiSettingsStat" style="display: none;">, Analityczne pliki
                      cookies</span><span id="CookieDeclarationUserStatusLabelMultiSettingsMark" style="display: none;">,
                      Marketingowe pliki cookies</span>).&nbsp;</div>
                  <div id="CookieDeclarationUserStatusLabelOn" style="display: none;">Twój obecny stan: Zezwól na
                    wszystkie.&nbsp;</div>
                  <p style="display: block;" id="CookieDeclarationConsentIdAndDate"><span
                      style="display:block">Identyfikator Pana(Pani) zgody: <span
                        id="CookieDeclarationUserStatusLabelConsentId">3Fq3si2tBBWJTdr/bwc00AxejN6ncHyyEb7z9HwrjelxKkzEJaMY/Q==</span></span><span
                      style="display:block">Data zgody: <span id="CookieDeclarationUserStatusLabelConsentDate">niedziela,
                        9 listopada 2025 19:00:08 CET</span></span></p>
                </div>
                <div id="CookieDeclarationChangeConsent" style="display: block"><a
                    id="CookieDeclarationChangeConsentChange" href="#">Zmień swoją zgodę</a><span
                    id="CookieDeclarationUserStatusLabelWithdraw" style="display: none;"><a
                      id="CookieDeclarationChangeConsentWithdraw" href="#">Anulowanie zgody</a></span></div>
                <div id="CookieDeclarationDoNotSell" style="display: none"><a id="CookieDeclarationChangeConsentDoNotSell"
                    href="#">Moje dane osobowe nie mogą być sprzedawane ani udostępniane</a></div>
              </div>
              <div id="our-partners">
                <div class="mt-4">
                  <p><strong>Partnerzy (15)</strong></p>
                  <ul>
                    <li>cloudflare.com</li>
                    <li>scarabresearch.com</li>
                    <li>pinimg.com</li>
                    <li>mopinion.com</li>
                    <li>sc-static.net</li>
                    <li>maze.co</li>
                    <li>googletagmanager.com</li>
                    <li>tiktok.com</li>
                    <li>bing.com</li>
                    <li>facebook.net</li>
                    <li>doubleclick.net</li>
                    <li>google.com</li>
                    <li>pinterest.com</li>
                    <li>snapchat.com</li>
                    <li>youtube.com</li>
                  </ul>
                </div>
              </div><br>
              <p class="CookieDeclarationLastUpdated">Deklarację dot. plików cookie zaktualizowano ostatnio 4.12.2025
                przez <a href="https://www.cookiebot.com" target="_blank" rel="noopener" title="Cookiebot">Cookiebot</a>:
              </p>
              <div class="CookieDeclarationType" lang="pl" dir="ltr">
                <p class="CookieDeclarationTypeHeader">Podstawowe pliki cookies (35) </p>
                <p class="CookieDeclarationTypeDescription">Podstawowe pliki cookies są plikami funkcjonalnymi, które są
                  niezbędne do prawidłowego działania stron internetowych i aplikacji. Bez plików cookies nie można
                  korzystać ze strony i aplikacji Action. Używamy również anonimowych statystycznych plików cookies, aby
                  mieć wgląd w sposób korzystania z naszej strony internetowej i aplikacji. Podjęliśmy kroki w celu
                  ochrony Twojej prywatności. Podstawowe pliki cookies są zawsze wykorzystywane.</p>
                <table class="CookieDeclarationTable">
                  <colgroup>
                    <col style="width: 20%">
                    <col style="width: 20%">
                    <col style="width: 35%">
                    <col style="width: 15%">
                    <col style="width: 10%">
                  </colgroup>
                  <thead>
                    <tr>
                      <th scope="col" class="CookieDeclarationTableHeader" dir="ltr">Nazwa</th>
                      <th scope="col" class="CookieDeclarationTableHeader" dir="ltr">Dostawca</th>
                      <th scope="col" class="CookieDeclarationTableHeader" dir="ltr">Cel</th>
                      <th scope="col" class="CookieDeclarationTableHeader" dir="ltr">Maksymalny okres przechowywania</th>
                      <th scope="col" class="CookieDeclarationTableHeader" dir="ltr">Rodzaj</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td class="CookieDeclarationTableCell">__cf_bm [x2] </td>
                      <td class="CookieDeclarationTableCell">action.com<br>radar.cloudflare.com</td>
                      <td class="CookieDeclarationTableCell">This cookie is used to distinguish between humans and bots.
                        This is beneficial for the website, in order to make valid reports on the use of their website.
                      </td>
                      <td class="CookieDeclarationTableCell">1 dzień</td>
                      <td class="CookieDeclarationTableCell">Plik cookie HTTP</td>
                    </tr>
                    <tr>
                      <td class="CookieDeclarationTableCell">_cfuvid</td>
                      <td class="CookieDeclarationTableCell">action.com</td>
                      <td class="CookieDeclarationTableCell">This cookie is a part of the services provided by Cloudflare
                        - Including load-balancing, deliverance of website content and serving DNS connection for website
                        operators. </td>
                      <td class="CookieDeclarationTableCell">Sesyjne</td>
                      <td class="CookieDeclarationTableCell">Plik cookie HTTP</td>
                    </tr>
                    <tr>
                      <td class="CookieDeclarationTableCell">_ga_#</td>
                      <td class="CookieDeclarationTableCell">action.com</td>
                      <td class="CookieDeclarationTableCell">Used by Google Analytics to collect data on the number of
                        times a user has visited the website as well as dates for the first and most recent visit. </td>
                      <td class="CookieDeclarationTableCell">2 lat</td>
                      <td class="CookieDeclarationTableCell">Plik cookie HTTP</td>
                    </tr>
                    <tr>
                      <td class="CookieDeclarationTableCell">_wp_storage_test</td>
                      <td class="CookieDeclarationTableCell">static.scarabresearch.com</td>
                      <td class="CookieDeclarationTableCell">Determines whether the user has accepted the cookie consent
                        box. </td>
                      <td class="CookieDeclarationTableCell">Stałe</td>
                      <td class="CookieDeclarationTableCell">Lokalny magazyn HTML</td>
                    </tr>
                    <tr>
                      <td class="CookieDeclarationTableCell">accessToken</td>
                      <td class="CookieDeclarationTableCell">www.action.com</td>
                      <td class="CookieDeclarationTableCell">Used for My Action functionality. Token is used to identify
                        the authenticated user in the Action system.</td>
                      <td class="CookieDeclarationTableCell">3 miesięcy</td>
                      <td class="CookieDeclarationTableCell">Plik cookie HTTP</td>
                    </tr>
                    <tr>
                      <td class="CookieDeclarationTableCell">appBannerPageViews</td>
                      <td class="CookieDeclarationTableCell">www.action.com</td>
                      <td class="CookieDeclarationTableCell">Służy do określenia, kiedy wyświetlić baner pobierania
                        aplikacji.</td>
                      <td class="CookieDeclarationTableCell">Sesyjne</td>
                      <td class="CookieDeclarationTableCell">Lokalny magazyn HTML</td>
                    </tr>
                    <tr>
                      <td class="CookieDeclarationTableCell">CookieConsent [x17] </td>
                      <td class="CookieDeclarationTableCell">
                        at.publications.action.com<br>be.publications.action.com<br>bewa.publications.action.com<br>cz.publications.action.com<br>de.publications.action.com<br>de-ch.publications.action.com<br>es.publications.action.com<br>fr.publications.action.com<br>fr-ch.publications.action.com<br>it.publications.action.com<br>lu.publications.action.com<br>nl.publications.action.com<br>pl.publications.action.com<br>pt.publications.action.com<br>sk.publications.action.com<br>sst.action.com<br>www.action.com
                      </td>
                      <td class="CookieDeclarationTableCell">Stores the user's cookie consent state for the current domain
                    </td>
                    <td class="CookieDeclarationTableCell">1 rok</td>
                    <td class="CookieDeclarationTableCell">Plik cookie HTTP</td>
                  </tr>
                  <tr>
                    <td class="CookieDeclarationTableCell">currentUser</td>
                    <td class="CookieDeclarationTableCell">www.action.com</td>
                    <td class="CookieDeclarationTableCell">Przechowuje dane zalogowanego użytkownika, aby utrzymać
                      zalogowanie i spersonalizować korzystanie z serwisu.</td>
                    <td class="CookieDeclarationTableCell">Stałe</td>
                    <td class="CookieDeclarationTableCell">Lokalny magazyn HTML</td>
                  </tr>
                  <tr>
                    <td class="CookieDeclarationTableCell">flags-stable-id [x2] </td>
                    <td class="CookieDeclarationTableCell">https://www.action.com<br>www.action.com</td>
                    <td class="CookieDeclarationTableCell">Used to uniquely identify the visitor to ensure consistent
                      delivery of site features and experiments.</td>
                    <td class="CookieDeclarationTableCell">30 dni</td>
                    <td class="CookieDeclarationTableCell">Plik cookie HTTP</td>
                  </tr>
                  <tr>
                    <td class="CookieDeclarationTableCell">is_eu</td>
                    <td class="CookieDeclarationTableCell">s.pinimg.com</td>
                    <td class="CookieDeclarationTableCell">Determines whether the user is located within the EU and
                      therefore is subject to EU's data privacy regulations. </td>
                      <td class="CookieDeclarationTableCell">Sesyjne</td>
                      <td class="CookieDeclarationTableCell">Lokalny magazyn HTML</td>
                    </tr>
                    <tr>
                      <td class="CookieDeclarationTableCell">newsletterNavStack</td>
                      <td class="CookieDeclarationTableCell">www.action.com</td>
                      <td class="CookieDeclarationTableCell">Ten plik cookie jest używany do wewnętrznego działania okna
                        modalnego newslettera, umożliwiając skuteczną nawigację i doświadczenie użytkownika.</td>
                      <td class="CookieDeclarationTableCell">Sesyjne</td>
                      <td class="CookieDeclarationTableCell">Lokalny magazyn HTML</td>
                    </tr>
                    <tr>
                      <td class="CookieDeclarationTableCell">recentlyViewedItems</td>
                      <td class="CookieDeclarationTableCell">www.action.com</td>
                      <td class="CookieDeclarationTableCell">Służy do zapamiętania ostatnio oglądanych produktów.</td>
                      <td class="CookieDeclarationTableCell">Stałe</td>
                      <td class="CookieDeclarationTableCell">Lokalny magazyn HTML</td>
                    </tr>
                    <tr>
                      <td class="CookieDeclarationTableCell">refreshToken</td>
                      <td class="CookieDeclarationTableCell">www.action.com</td>
                      <td class="CookieDeclarationTableCell">Used for My Action functionality. Token is used to request a
                        new accessToken when it's expired.</td>
                    <td class="CookieDeclarationTableCell">3 miesięcy</td>
                    <td class="CookieDeclarationTableCell">Plik cookie HTTP</td>
                  </tr>
                  <tr>
                    <td class="CookieDeclarationTableCell">tokensId</td>
                    <td class="CookieDeclarationTableCell">www.action.com</td>
                    <td class="CookieDeclarationTableCell">Used for My Action functionality. Used to determine if the
                      accessToken has changed.</td>
                    <td class="CookieDeclarationTableCell">3 miesięcy</td>
                    <td class="CookieDeclarationTableCell">Plik cookie HTTP</td>
                  </tr>
                  <tr>
                    <td class="CookieDeclarationTableCell">userFavorites</td>
                    <td class="CookieDeclarationTableCell">www.action.com</td>
                    <td class="CookieDeclarationTableCell">Przechowuje ulubione produkty, aby można je było wyświetlać i
                      aktualizować na stronie.</td>
                    <td class="CookieDeclarationTableCell">Stałe</td>
                    <td class="CookieDeclarationTableCell">Lokalny magazyn HTML</td>
                  </tr>
                  <tr>
                    <td class="CookieDeclarationTableCell">wps-user-session</td>
                    <td class="CookieDeclarationTableCell">static.scarabresearch.com</td>
                    <td class="CookieDeclarationTableCell">W oczekiwaniu</td>
                    <td class="CookieDeclarationTableCell">Stałe</td>
                    <td class="CookieDeclarationTableCell">Lokalny magazyn HTML</td>
                  </tr>
                  <tr>
                    <td class="CookieDeclarationTableCell">xp</td>
                    <td class="CookieDeclarationTableCell">recommender.scarabresearch.com</td>
                    <td class="CookieDeclarationTableCell">Control cookie used in connection to the website’s Content
                      Delivery Network (CDN).</td>
                    <td class="CookieDeclarationTableCell">1 rok</td>
                    <td class="CookieDeclarationTableCell">Plik cookie HTTP</td>
                  </tr>
                </tbody>
              </table>
            </div>
            <div class="CookieDeclarationType" lang="pl" dir="ltr">
              <p class="CookieDeclarationTypeHeader">Preferencje (3) </p>
              <p class="CookieDeclarationTypeDescription">Preferowane pliki cookies zapewniają, że strona internetowa
                może zapamiętać informacje, które wpływają na funkcjonowanie i projekt witryny internetowej, takie jak
                preferowany język czy region, w którym Państwo mieszkają.</p>
              <table class="CookieDeclarationTable">
                <colgroup>
                  <col style="width: 20%">
                  <col style="width: 20%">
                  <col style="width: 35%">
                  <col style="width: 15%">
                  <col style="width: 10%">
                </colgroup>
                <thead>
                  <tr>
                    <th scope="col" class="CookieDeclarationTableHeader" dir="ltr">Nazwa</th>
                    <th scope="col" class="CookieDeclarationTableHeader" dir="ltr">Dostawca</th>
                    <th scope="col" class="CookieDeclarationTableHeader" dir="ltr">Cel</th>
                    <th scope="col" class="CookieDeclarationTableHeader" dir="ltr">Maksymalny okres przechowywania</th>
                    <th scope="col" class="CookieDeclarationTableHeader" dir="ltr">Rodzaj</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td class="CookieDeclarationTableCell">_ALGOLIA</td>
                    <td class="CookieDeclarationTableCell">www.action.com</td>
                    <td class="CookieDeclarationTableCell">Necessary in order to optimize the website's search-bar
                        function. The cookie ensures accurate and fast search results.</td>
                      <td class="CookieDeclarationTableCell">180 dni</td>
                      <td class="CookieDeclarationTableCell">Plik cookie HTTP</td>
                    </tr>
                    <tr>
                      <td class="CookieDeclarationTableCell">epslanguage</td>
                      <td class="CookieDeclarationTableCell">www.action.com</td>
                      <td class="CookieDeclarationTableCell">Ten plik cookie zapisuje preferencje językowe użytkownika,
                        aby wyświetlić witrynę w wybranym języku podczas przyszłych wizyt.</td>
                      <td class="CookieDeclarationTableCell">1 rok</td>
                      <td class="CookieDeclarationTableCell">Plik cookie HTTP</td>
                    </tr>
                    <tr>
                      <td class="CookieDeclarationTableCell">MSopened</td>
                      <td class="CookieDeclarationTableCell">action.com</td>
                      <td class="CookieDeclarationTableCell">To cookie rejestruje, czy odwiedzający stronę widzą formularz
                        ankiety.</td>
                      <td class="CookieDeclarationTableCell">Sesyjne</td>
                      <td class="CookieDeclarationTableCell">Plik cookie HTTP</td>
                    </tr>
                  </tbody>
                </table>
              </div>
              <div class="CookieDeclarationType" lang="pl" dir="ltr">
                <p class="CookieDeclarationTypeHeader">Analityczne pliki cookies (21) </p>
                <p class="CookieDeclarationTypeDescription">Analityczne pliki cookies pomagają Action zrozumieć sposób
                  korzystania ze strony internetowej i poznać doświadczenie wszystkich użytkowników. W ten sposób Action
                  może się rozwijać i sprawiać, że strona internetowa będzie jeszcze lepsza.</p>
                <table class="CookieDeclarationTable">
                  <colgroup>
                    <col style="width: 20%">
                    <col style="width: 20%">
                    <col style="width: 35%">
                    <col style="width: 15%">
                    <col style="width: 10%">
                  </colgroup>
                  <thead>
                    <tr>
                      <th scope="col" class="CookieDeclarationTableHeader" dir="ltr">Nazwa</th>
                      <th scope="col" class="CookieDeclarationTableHeader" dir="ltr">Dostawca</th>
                      <th scope="col" class="CookieDeclarationTableHeader" dir="ltr">Cel</th>
                      <th scope="col" class="CookieDeclarationTableHeader" dir="ltr">Maksymalny okres przechowywania</th>
                      <th scope="col" class="CookieDeclarationTableHeader" dir="ltr">Rodzaj</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td class="CookieDeclarationTableCell">_conv_action_serverside</td>
                      <td class="CookieDeclarationTableCell">www.action.com</td>
                      <td class="CookieDeclarationTableCell">To ciasteczko przechowuje udział użytkownika w testach A/B, w
                        tym przypisane eksperymenty i warianty, przez sześć miesięcy. Pomaga optymalizować i
                        personalizować doświadczenie użytkownika na podstawie wyników testów.</td>
                      <td class="CookieDeclarationTableCell">Sesyjne</td>
                      <td class="CookieDeclarationTableCell">Plik cookie HTTP</td>
                    </tr>
                    <tr>
                      <td class="CookieDeclarationTableCell">_ga</td>
                      <td class="CookieDeclarationTableCell">action.com</td>
                      <td class="CookieDeclarationTableCell">Registers a unique ID that is used to generate statistical
                        data on how the visitor uses the website.</td>
                      <td class="CookieDeclarationTableCell">2 lat</td>
                      <td class="CookieDeclarationTableCell">Plik cookie HTTP</td>
                    </tr>
                    <tr>
                      <td class="CookieDeclarationTableCell">_tt_enable_cookie</td>
                      <td class="CookieDeclarationTableCell">action.com</td>
                      <td class="CookieDeclarationTableCell">Used by the social networking service, TikTok, for tracking
                        the use of embedded services.</td>
                      <td class="CookieDeclarationTableCell">1 rok</td>
                      <td class="CookieDeclarationTableCell">Plik cookie HTTP</td>
                    </tr>
                    <tr>
                      <td class="CookieDeclarationTableCell">action_stores_stock_test_pdp_visited</td>
                      <td class="CookieDeclarationTableCell">www.action.com</td>
                      <td class="CookieDeclarationTableCell">Ten plik cookie zapamiętuje, czy użytkownik odwiedził stronę
                        A/B.</td>
                      <td class="CookieDeclarationTableCell">Sesyjne</td>
                      <td class="CookieDeclarationTableCell">Lokalny magazyn HTML</td>
                    </tr>
                    <tr>
                      <td class="CookieDeclarationTableCell">action_tos</td>
                      <td class="CookieDeclarationTableCell">www.action.com</td>
                      <td class="CookieDeclarationTableCell">Śledzi czas spędzony przez użytkowników na stronie w celu
                        mierzenia zaangażowania i wysyłania danych analitycznych.</td>
                      <td class="CookieDeclarationTableCell">Sesyjne</td>
                      <td class="CookieDeclarationTableCell">Plik cookie HTTP</td>
                    </tr>
                    <tr>
                      <td class="CookieDeclarationTableCell">FPAU</td>
                      <td class="CookieDeclarationTableCell">action.com</td>
                      <td class="CookieDeclarationTableCell">Assigns a specific ID to the visitor. This allows the website
                        to determine the number of specific user-visits for analysis and statistics.</td>
                      <td class="CookieDeclarationTableCell">3 miesięcy</td>
                      <td class="CookieDeclarationTableCell">Plik cookie HTTP</td>
                    </tr>
                    <tr>
                      <td class="CookieDeclarationTableCell">FPID</td>
                      <td class="CookieDeclarationTableCell">action.com</td>
                      <td class="CookieDeclarationTableCell">Registers statistical data on users' behaviour on the
                      website. Used for internal analytics by the website operator. </td>
                    <td class="CookieDeclarationTableCell">400 dni</td>
                    <td class="CookieDeclarationTableCell">Plik cookie HTTP</td>
                  </tr>
                  <tr>
                    <td class="CookieDeclarationTableCell">FPLC</td>
                    <td class="CookieDeclarationTableCell">action.com</td>
                    <td class="CookieDeclarationTableCell">Registers a unique ID that is used to generate statistical
                      data on how the visitor uses the website.</td>
                    <td class="CookieDeclarationTableCell">1 dzień</td>
                    <td class="CookieDeclarationTableCell">Plik cookie HTTP</td>
                  </tr>
                  <tr>
                    <td class="CookieDeclarationTableCell">gtmBrowserId</td>
                    <td class="CookieDeclarationTableCell">www.googletagmanager.com</td>
                    <td class="CookieDeclarationTableCell">This cookie is used to determine if the visitor has visited
                      the website before, or if it is a new visitor on the website.</td>
                    <td class="CookieDeclarationTableCell">Stałe</td>
                    <td class="CookieDeclarationTableCell">Lokalny magazyn HTML</td>
                  </tr>
                  <tr>
                    <td class="CookieDeclarationTableCell">gtmUserId</td>
                    <td class="CookieDeclarationTableCell">www.action.com</td>
                    <td class="CookieDeclarationTableCell">Służy do przypisania unikalnego identyfikatora użytkownikowi
                      w celu śledzenia w Google Tag Manager.</td>
                    <td class="CookieDeclarationTableCell">Stałe</td>
                    <td class="CookieDeclarationTableCell">Lokalny magazyn HTML</td>
                  </tr>
                  <tr>
                    <td class="CookieDeclarationTableCell">maze:widgets</td>
                    <td class="CookieDeclarationTableCell">snippet.maze.co</td>
                    <td class="CookieDeclarationTableCell">Ten plik cookie umożliwia interaktywne widżety i zbiera
                      opinie w celu ulepszenia funkcji.</td>
                    <td class="CookieDeclarationTableCell">Sesyjne</td>
                    <td class="CookieDeclarationTableCell">Lokalny magazyn HTML</td>
                  </tr>
                  <tr>
                    <td class="CookieDeclarationTableCell">maze-us</td>
                    <td class="CookieDeclarationTableCell">www.action.com</td>
                    <td class="CookieDeclarationTableCell">Ten plik cookie identyfikuje użytkowników do celów opinii i
                      analizy.</td>
                    <td class="CookieDeclarationTableCell">Sesyjne</td>
                    <td class="CookieDeclarationTableCell">Lokalny magazyn HTML</td>
                  </tr>
                  <tr>
                    <td class="CookieDeclarationTableCell">mopDeploy</td>
                    <td class="CookieDeclarationTableCell">deploy.mopinion.com</td>
                    <td class="CookieDeclarationTableCell">This cookie supports the deployment and funcitionality of
                      feedback forms on the website. </td>
                    <td class="CookieDeclarationTableCell">Sesyjne</td>
                    <td class="CookieDeclarationTableCell">Lokalny magazyn HTML</td>
                  </tr>
                  <tr>
                    <td class="CookieDeclarationTableCell">MSopened.#</td>
                    <td class="CookieDeclarationTableCell">action.com</td>
                    <td class="CookieDeclarationTableCell">W oczekiwaniu</td>
                    <td class="CookieDeclarationTableCell">Sesyjne</td>
                    <td class="CookieDeclarationTableCell">Plik cookie HTTP</td>
                  </tr>
                  <tr>
                    <td class="CookieDeclarationTableCell">pageCount</td>
                    <td class="CookieDeclarationTableCell">action.com</td>
                    <td class="CookieDeclarationTableCell">Used to count the number of pages viewed by the user.</td>
                    <td class="CookieDeclarationTableCell">Sesyjne</td>
                    <td class="CookieDeclarationTableCell">Plik cookie HTTP</td>
                  </tr>
                  <tr>
                    <td class="CookieDeclarationTableCell">s</td>
                    <td class="CookieDeclarationTableCell">recommender.scarabresearch.com</td>
                    <td class="CookieDeclarationTableCell">Sets a unique ID for the session. This allows the website to
                      obtain data on visitor behaviour for statistical purposes.</td>
                    <td class="CookieDeclarationTableCell">Sesyjne</td>
                    <td class="CookieDeclarationTableCell">Plik cookie HTTP</td>
                  </tr>
                  <tr>
                    <td class="CookieDeclarationTableCell">SQsession</td>
                    <td class="CookieDeclarationTableCell">action.com</td>
                    <td class="CookieDeclarationTableCell">Używane do śledzenia sesji użytkownika dotyczącej
                      rejestrowania metryk formularza.</td>
                    <td class="CookieDeclarationTableCell">1 dzień</td>
                    <td class="CookieDeclarationTableCell">Plik cookie HTTP</td>
                  </tr>
                  <tr>
                    <td class="CookieDeclarationTableCell">ttcsid</td>
                    <td class="CookieDeclarationTableCell">action.com</td>
                    <td class="CookieDeclarationTableCell">Służy do śledzenia bieżącej sesji użytkownika w celach
                      analitycznych.</td>
                    <td class="CookieDeclarationTableCell">1 rok</td>
                    <td class="CookieDeclarationTableCell">Plik cookie HTTP</td>
                  </tr>
                  <tr>
                    <td class="CookieDeclarationTableCell">ttcsid_CJF1B6JC77UDFRIUCJ20</td>
                    <td class="CookieDeclarationTableCell">action.com</td>
                    <td class="CookieDeclarationTableCell">Służy do śledzenia bieżącej sesji użytkownika w celach
                      analitycznych.</td>
                    <td class="CookieDeclarationTableCell">1 rok</td>
                    <td class="CookieDeclarationTableCell">Plik cookie HTTP</td>
                  </tr>
                  <tr>
                    <td class="CookieDeclarationTableCell">u_scsid</td>
                    <td class="CookieDeclarationTableCell">sc-static.net</td>
                    <td class="CookieDeclarationTableCell">Registers data on visitors' website-behaviour. This is used
                        for internal analysis and website optimization. </td>
                      <td class="CookieDeclarationTableCell">Sesyjne</td>
                      <td class="CookieDeclarationTableCell">Lokalny magazyn HTML</td>
                    </tr>
                    <tr>
                      <td class="CookieDeclarationTableCell">X-AB</td>
                      <td class="CookieDeclarationTableCell">sc-static.net</td>
                      <td class="CookieDeclarationTableCell">This cookie is used by the website’s operator in context with
                        multi-variate testing. This is a tool used to combine or change content on the website. This
                        allows the website to find the best variation/edition of the site. </td>
                      <td class="CookieDeclarationTableCell">1 dzień</td>
                      <td class="CookieDeclarationTableCell">Plik cookie HTTP</td>
                    </tr>
                  </tbody>
                </table>
              </div>
              <div class="CookieDeclarationType" lang="pl" dir="ltr">
                <p class="CookieDeclarationTypeHeader">Marketingowe pliki cookies (68) </p>
                <p class="CookieDeclarationTypeDescription">Marketingowe pliki cookies pomagają Action dopasowywać oferty
                  do Twoich preferencji. Zbierając informacje na temat korzystania przez Ciebie ze stron internetowych i
                  aplikacji Action może lepiej dostosować produkty, newslettery, reklamy, przekazy w mediach
                  społecznościowych i inną komunikację do Twoich zainteresowań i preferencji.</p>
                <table class="CookieDeclarationTable">
                  <colgroup>
                    <col style="width: 20%">
                    <col style="width: 20%">
                    <col style="width: 35%">
                    <col style="width: 15%">
                    <col style="width: 10%">
                  </colgroup>
                  <thead>
                    <tr>
                      <th scope="col" class="CookieDeclarationTableHeader" dir="ltr">Nazwa</th>
                      <th scope="col" class="CookieDeclarationTableHeader" dir="ltr">Dostawca</th>
                      <th scope="col" class="CookieDeclarationTableHeader" dir="ltr">Cel</th>
                      <th scope="col" class="CookieDeclarationTableHeader" dir="ltr">Maksymalny okres przechowywania</th>
                      <th scope="col" class="CookieDeclarationTableHeader" dir="ltr">Rodzaj</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td class="CookieDeclarationTableCell">__Secure-ROLLOUT_TOKEN</td>
                      <td class="CookieDeclarationTableCell">youtube.com</td>
                      <td class="CookieDeclarationTableCell">W oczekiwaniu</td>
                      <td class="CookieDeclarationTableCell">180 dni</td>
                      <td class="CookieDeclarationTableCell">Plik cookie HTTP</td>
                    </tr>
                    <tr>
                      <td class="CookieDeclarationTableCell">__Secure-YEC</td>
                      <td class="CookieDeclarationTableCell">youtube.com</td>
                      <td class="CookieDeclarationTableCell">Stores the user's video player preferences using embedded
                      YouTube video</td>
                    <td class="CookieDeclarationTableCell">Sesyjne</td>
                    <td class="CookieDeclarationTableCell">Plik cookie HTTP</td>
                  </tr>
                  <tr>
                    <td class="CookieDeclarationTableCell">__Secure-YNID</td>
                    <td class="CookieDeclarationTableCell">youtube.com</td>
                    <td class="CookieDeclarationTableCell">W oczekiwaniu</td>
                    <td class="CookieDeclarationTableCell">180 dni</td>
                    <td class="CookieDeclarationTableCell">Plik cookie HTTP</td>
                  </tr>
                  <tr>
                    <td class="CookieDeclarationTableCell">_fbp</td>
                    <td class="CookieDeclarationTableCell">action.com</td>
                    <td class="CookieDeclarationTableCell">Used by Facebook to deliver a series of advertisement
                      products such as real time bidding from third party advertisers.</td>
                    <td class="CookieDeclarationTableCell">3 miesięcy</td>
                    <td class="CookieDeclarationTableCell">Plik cookie HTTP</td>
                  </tr>
                  <tr>
                    <td class="CookieDeclarationTableCell">_flowbox</td>
                    <td class="CookieDeclarationTableCell">action.com</td>
                    <td class="CookieDeclarationTableCell">Necessary for the implementation of Instagram picture-gallery
                      onto the website. </td>
                    <td class="CookieDeclarationTableCell">2 lat</td>
                    <td class="CookieDeclarationTableCell">Plik cookie HTTP</td>
                  </tr>
                  <tr>
                    <td class="CookieDeclarationTableCell">_gcl_au</td>
                    <td class="CookieDeclarationTableCell">action.com</td>
                    <td class="CookieDeclarationTableCell">Used by Google AdSense for experimenting with advertisement
                      efficiency across websites using their services. </td>
                    <td class="CookieDeclarationTableCell">3 miesięcy</td>
                    <td class="CookieDeclarationTableCell">Plik cookie HTTP</td>
                  </tr>
                  <tr>
                    <td class="CookieDeclarationTableCell">_gcl_ls</td>
                    <td class="CookieDeclarationTableCell">www.googletagmanager.com</td>
                    <td class="CookieDeclarationTableCell">Tracks the conversion rate between the user and the
                      advertisement banners on the website - This serves to optimise the relevance of the advertisements
                      on the website. </td>
                    <td class="CookieDeclarationTableCell">Stałe</td>
                    <td class="CookieDeclarationTableCell">Lokalny magazyn HTML</td>
                  </tr>
                  <tr>
                    <td class="CookieDeclarationTableCell">_pin_unauth</td>
                    <td class="CookieDeclarationTableCell">action.com</td>
                    <td class="CookieDeclarationTableCell">Used by Pinterest to track the usage of services.</td>
                    <td class="CookieDeclarationTableCell">1 rok</td>
                    <td class="CookieDeclarationTableCell">Plik cookie HTTP</td>
                  </tr>
                  <tr>
                    <td class="CookieDeclarationTableCell">_pinterest_ct_ua</td>
                    <td class="CookieDeclarationTableCell">pinterest.com</td>
                    <td class="CookieDeclarationTableCell">Used by Pinterest to track the usage of services.</td>
                    <td class="CookieDeclarationTableCell">1 rok</td>
                    <td class="CookieDeclarationTableCell">Plik cookie HTTP</td>
                  </tr>
                  <tr>
                    <td class="CookieDeclarationTableCell">_sc_cspv</td>
                    <td class="CookieDeclarationTableCell">action.com</td>
                    <td class="CookieDeclarationTableCell">Detects which version of the website or application is
                      currently shown to the visitor. </td>
                    <td class="CookieDeclarationTableCell">13 miesięcy</td>
                    <td class="CookieDeclarationTableCell">Plik cookie HTTP</td>
                  </tr>
                  <tr>
                    <td class="CookieDeclarationTableCell">_ScCbts</td>
                    <td class="CookieDeclarationTableCell">action.com</td>
                    <td class="CookieDeclarationTableCell">To ciasteczko jest powiązane ze Snapchatem i jest używane do
                      celów reklamowych.</td>
                    <td class="CookieDeclarationTableCell">7 dni</td>
                    <td class="CookieDeclarationTableCell">Plik cookie HTTP</td>
                  </tr>
                  <tr>
                    <td class="CookieDeclarationTableCell">_schn1</td>
                    <td class="CookieDeclarationTableCell">action.com</td>
                    <td class="CookieDeclarationTableCell">Sets a unique ID for the visitor, that allows third party
                      advertisers to target the visitor with relevant advertisement. This pairing service is provided by
                      third party advertisement hubs, which facilitates real-time bidding for advertisers.</td>
                    <td class="CookieDeclarationTableCell">1 dzień</td>
                    <td class="CookieDeclarationTableCell">Plik cookie HTTP</td>
                  </tr>
                  <tr>
                    <td class="CookieDeclarationTableCell">_scid</td>
                    <td class="CookieDeclarationTableCell">action.com</td>
                    <td class="CookieDeclarationTableCell">Sets a unique ID for the visitor, that allows third party
                      advertisers to target the visitor with relevant advertisement. This pairing service is provided by
                      third party advertisement hubs, which facilitates real-time bidding for advertisers.</td>
                    <td class="CookieDeclarationTableCell">13 miesięcy</td>
                    <td class="CookieDeclarationTableCell">Plik cookie HTTP</td>
                  </tr>
                  <tr>
                    <td class="CookieDeclarationTableCell">_scid_r</td>
                    <td class="CookieDeclarationTableCell">action.com</td>
                    <td class="CookieDeclarationTableCell">Sets a unique ID for the visitor, that allows third party
                      advertisers to target the visitor with relevant advertisement. This pairing service is provided by
                      third party advertisement hubs, which facilitates real-time bidding for advertisers.</td>
                    <td class="CookieDeclarationTableCell">13 miesięcy</td>
                    <td class="CookieDeclarationTableCell">Plik cookie HTTP</td>
                  </tr>
                  <tr>
                    <td class="CookieDeclarationTableCell">_screload</td>
                    <td class="CookieDeclarationTableCell">action.com</td>
                    <td class="CookieDeclarationTableCell">Used by Snapchat to implement advertisement content on the
                      website - The cookie detects the efficiency of the ads and collects visitor data for further
                      visitor segmentation.</td>
                    <td class="CookieDeclarationTableCell">Sesyjne</td>
                    <td class="CookieDeclarationTableCell">Plik cookie HTTP</td>
                  </tr>
                  <tr>
                    <td class="CookieDeclarationTableCell">_ttp [x2] </td>
                    <td class="CookieDeclarationTableCell">action.com<br>tiktok.com</td>
                    <td class="CookieDeclarationTableCell">Used by the social networking service, TikTok, for tracking
                      the use of embedded services.</td>
                    <td class="CookieDeclarationTableCell">1 rok</td>
                    <td class="CookieDeclarationTableCell">Plik cookie HTTP</td>
                  </tr>
                  <tr>
                    <td class="CookieDeclarationTableCell">_uetsid</td>
                    <td class="CookieDeclarationTableCell">action.com</td>
                    <td class="CookieDeclarationTableCell">Collects data on visitor behaviour from multiple websites, in
                      order to present more relevant advertisement - This also allows the website to limit the number of
                      times that they are shown the same advertisement. </td>
                    <td class="CookieDeclarationTableCell">1 dzień</td>
                    <td class="CookieDeclarationTableCell">Plik cookie HTTP</td>
                  </tr>
                  <tr>
                    <td class="CookieDeclarationTableCell">_uetsid</td>
                    <td class="CookieDeclarationTableCell">bing.com</td>
                    <td class="CookieDeclarationTableCell">Used to track visitors on multiple websites, in order to
                      present relevant advertisement based on the visitor's preferences. </td>
                      <td class="CookieDeclarationTableCell">Stałe</td>
                      <td class="CookieDeclarationTableCell">Lokalny magazyn HTML</td>
                    </tr>
                    <tr>
                      <td class="CookieDeclarationTableCell">_uetsid_exp</td>
                      <td class="CookieDeclarationTableCell">bing.com</td>
                      <td class="CookieDeclarationTableCell">Contains the expiry-date for the cookie with corresponding
                        name. </td>
                      <td class="CookieDeclarationTableCell">Stałe</td>
                      <td class="CookieDeclarationTableCell">Lokalny magazyn HTML</td>
                    </tr>
                    <tr>
                      <td class="CookieDeclarationTableCell">_uetvid</td>
                      <td class="CookieDeclarationTableCell">action.com</td>
                      <td class="CookieDeclarationTableCell">Used to track visitors on multiple websites, in order to
                        present relevant advertisement based on the visitor's preferences. </td>
                    <td class="CookieDeclarationTableCell">1 rok</td>
                    <td class="CookieDeclarationTableCell">Plik cookie HTTP</td>
                  </tr>
                  <tr>
                    <td class="CookieDeclarationTableCell">_uetvid</td>
                    <td class="CookieDeclarationTableCell">bing.com</td>
                    <td class="CookieDeclarationTableCell">Used to track visitors on multiple websites, in order to
                      present relevant advertisement based on the visitor's preferences. </td>
                      <td class="CookieDeclarationTableCell">Stałe</td>
                      <td class="CookieDeclarationTableCell">Lokalny magazyn HTML</td>
                    </tr>
                    <tr>
                      <td class="CookieDeclarationTableCell">_uetvid_exp</td>
                      <td class="CookieDeclarationTableCell">bing.com</td>
                      <td class="CookieDeclarationTableCell">Contains the expiry-date for the cookie with corresponding
                        name. </td>
                      <td class="CookieDeclarationTableCell">Stałe</td>
                      <td class="CookieDeclarationTableCell">Lokalny magazyn HTML</td>
                    </tr>
                    <tr>
                      <td class="CookieDeclarationTableCell">activity#</td>
                      <td class="CookieDeclarationTableCell">doubleclick.net</td>
                      <td class="CookieDeclarationTableCell">W oczekiwaniu</td>
                      <td class="CookieDeclarationTableCell">Sesyjne</td>
                      <td class="CookieDeclarationTableCell">Śledzenie pikseli</td>
                    </tr>
                    <tr>
                      <td class="CookieDeclarationTableCell">ar_debug</td>
                      <td class="CookieDeclarationTableCell">pinterest.com</td>
                      <td class="CookieDeclarationTableCell">Checks whether a technical debugger-cookie is present. </td>
                      <td class="CookieDeclarationTableCell">1 rok</td>
                      <td class="CookieDeclarationTableCell">Plik cookie HTTP</td>
                    </tr>
                    <tr>
                      <td class="CookieDeclarationTableCell">cdv</td>
                      <td class="CookieDeclarationTableCell">recommender.scarabresearch.com</td>
                      <td class="CookieDeclarationTableCell">Collects data on user behaviour and interaction in order to
                        optimize the website and make advertisement on the website more relevant. </td>
                      <td class="CookieDeclarationTableCell">1 rok</td>
                      <td class="CookieDeclarationTableCell">Plik cookie HTTP</td>
                    </tr>
                    <tr>
                      <td class="CookieDeclarationTableCell">gmpconversion#</td>
                      <td class="CookieDeclarationTableCell">google.com</td>
                      <td class="CookieDeclarationTableCell">W oczekiwaniu</td>
                      <td class="CookieDeclarationTableCell">Sesyjne</td>
                      <td class="CookieDeclarationTableCell">Śledzenie pikseli</td>
                    </tr>
                    <tr>
                      <td class="CookieDeclarationTableCell">IDE</td>
                      <td class="CookieDeclarationTableCell">doubleclick.net</td>
                      <td class="CookieDeclarationTableCell">Used by Google DoubleClick to register and report the website
                        user's actions after viewing or clicking one of the advertiser's ads with the purpose of measuring
                        the efficacy of an ad and to present targeted ads to the user.</td>
                      <td class="CookieDeclarationTableCell">400 dni</td>
                      <td class="CookieDeclarationTableCell">Plik cookie HTTP</td>
                    </tr>
                    <tr>
                      <td class="CookieDeclarationTableCell">LAST_RESULT_ENTRY_KEY</td>
                      <td class="CookieDeclarationTableCell">youtube.com</td>
                      <td class="CookieDeclarationTableCell">Used to track user’s interaction with embedded content.</td>
                      <td class="CookieDeclarationTableCell">Sesyjne</td>
                      <td class="CookieDeclarationTableCell">Plik cookie HTTP</td>
                    </tr>
                    <tr>
                      <td class="CookieDeclarationTableCell">lastExternalReferrer</td>
                      <td class="CookieDeclarationTableCell">connect.facebook.net</td>
                      <td class="CookieDeclarationTableCell">Detects how the user reached the website by registering their
                        last URL-address.</td>
                      <td class="CookieDeclarationTableCell">Stałe</td>
                      <td class="CookieDeclarationTableCell">Lokalny magazyn HTML</td>
                    </tr>
                    <tr>
                      <td class="CookieDeclarationTableCell">lastExternalReferrerTime</td>
                      <td class="CookieDeclarationTableCell">connect.facebook.net</td>
                      <td class="CookieDeclarationTableCell">Detects how the user reached the website by registering their
                        last URL-address.</td>
                      <td class="CookieDeclarationTableCell">Stałe</td>
                      <td class="CookieDeclarationTableCell">Lokalny magazyn HTML</td>
                    </tr>
                    <tr>
                      <td class="CookieDeclarationTableCell">LogsDatabaseV2:V#||LogsRequestsStore</td>
                      <td class="CookieDeclarationTableCell">youtube.com</td>
                      <td class="CookieDeclarationTableCell">Used to track user’s interaction with embedded content.</td>
                      <td class="CookieDeclarationTableCell">Stałe</td>
                      <td class="CookieDeclarationTableCell">IndexedDB</td>
                    </tr>
                    <tr>
                      <td class="CookieDeclarationTableCell">MR</td>
                      <td class="CookieDeclarationTableCell">bing.com</td>
                      <td class="CookieDeclarationTableCell">W oczekiwaniu</td>
                      <td class="CookieDeclarationTableCell">7 dni</td>
                      <td class="CookieDeclarationTableCell">Plik cookie HTTP</td>
                    </tr>
                    <tr>
                      <td class="CookieDeclarationTableCell">MUID</td>
                      <td class="CookieDeclarationTableCell">bing.com</td>
                      <td class="CookieDeclarationTableCell">Used widely by Microsoft as a unique user ID. The cookie
                        enables user tracking by synchronising the ID across many Microsoft domains.</td>
                      <td class="CookieDeclarationTableCell">1 rok</td>
                      <td class="CookieDeclarationTableCell">Plik cookie HTTP</td>
                    </tr>
                    <tr>
                      <td class="CookieDeclarationTableCell">nextId</td>
                      <td class="CookieDeclarationTableCell">youtube.com</td>
                      <td class="CookieDeclarationTableCell">Used to track user’s interaction with embedded content.</td>
                      <td class="CookieDeclarationTableCell">Sesyjne</td>
                      <td class="CookieDeclarationTableCell">Plik cookie HTTP</td>
                    </tr>
                    <tr>
                      <td class="CookieDeclarationTableCell">p</td>
                      <td class="CookieDeclarationTableCell">tr.snapchat.com</td>
                      <td class="CookieDeclarationTableCell">Used to track visitors on multiple websites, in order to
                        present relevant advertisement based on the visitor's preferences. </td>
                    <td class="CookieDeclarationTableCell">Sesyjne</td>
                    <td class="CookieDeclarationTableCell">Śledzenie pikseli</td>
                  </tr>
                  <tr>
                    <td class="CookieDeclarationTableCell">pagead/1p-conversion/#/</td>
                    <td class="CookieDeclarationTableCell">google.com</td>
                    <td class="CookieDeclarationTableCell">W oczekiwaniu</td>
                    <td class="CookieDeclarationTableCell">Sesyjne</td>
                    <td class="CookieDeclarationTableCell">Śledzenie pikseli</td>
                  </tr>
                  <tr>
                    <td class="CookieDeclarationTableCell">pagead/1p-user-list/#</td>
                    <td class="CookieDeclarationTableCell">google.com</td>
                    <td class="CookieDeclarationTableCell">Tracks if the user has shown interest in specific products or
                      events across multiple websites and detects how the user navigates between sites. This is used for
                      measurement of advertisement efforts and facilitates payment of referral-fees between websites.
                    </td>
                    <td class="CookieDeclarationTableCell">Sesyjne</td>
                    <td class="CookieDeclarationTableCell">Śledzenie pikseli</td>
                  </tr>
                  <tr>
                    <td class="CookieDeclarationTableCell">remote_sid</td>
                    <td class="CookieDeclarationTableCell">youtube.com</td>
                    <td class="CookieDeclarationTableCell">Necessary for the implementation and functionality of YouTube
                      video-content on the website. </td>
                    <td class="CookieDeclarationTableCell">Sesyjne</td>
                    <td class="CookieDeclarationTableCell">Plik cookie HTTP</td>
                  </tr>
                  <tr>
                    <td class="CookieDeclarationTableCell">requests</td>
                    <td class="CookieDeclarationTableCell">youtube.com</td>
                    <td class="CookieDeclarationTableCell">Used to track user’s interaction with embedded content.</td>
                    <td class="CookieDeclarationTableCell">Sesyjne</td>
                    <td class="CookieDeclarationTableCell">Plik cookie HTTP</td>
                  </tr>
                  <tr>
                    <td class="CookieDeclarationTableCell">sc_at</td>
                    <td class="CookieDeclarationTableCell">snapchat.com</td>
                    <td class="CookieDeclarationTableCell">Used by Snapchat to implement advertisement content on the
                      website - The cookie detects the efficiency of the ads and collects visitor data for further
                      visitor segmentation.</td>
                    <td class="CookieDeclarationTableCell">1 rok</td>
                    <td class="CookieDeclarationTableCell">Plik cookie HTTP</td>
                  </tr>
                  <tr>
                    <td class="CookieDeclarationTableCell">scarab.profile</td>
                    <td class="CookieDeclarationTableCell">action.com</td>
                    <td class="CookieDeclarationTableCell">Determines which products the user has viewed, allowing the
                      website to promote related products. </td>
                    <td class="CookieDeclarationTableCell">Sesyjne</td>
                    <td class="CookieDeclarationTableCell">Plik cookie HTTP</td>
                  </tr>
                  <tr>
                    <td class="CookieDeclarationTableCell">scarab.visitor</td>
                    <td class="CookieDeclarationTableCell">action.com</td>
                    <td class="CookieDeclarationTableCell">Determines which products the user has viewed, allowing the
                      website to promote related products. </td>
                    <td class="CookieDeclarationTableCell">Sesyjne</td>
                    <td class="CookieDeclarationTableCell">Plik cookie HTTP</td>
                  </tr>
                  <tr>
                    <td class="CookieDeclarationTableCell">scarab.visitor</td>
                    <td class="CookieDeclarationTableCell">cdn.scarabresearch.com</td>
                    <td class="CookieDeclarationTableCell">Sets a unique ID for the visitor, that allows third party
                      advertisers to target the visitor with relevant advertisement. This pairing service is provided by
                      third party advertisement hubs, which facilitates real-time bidding for advertisers.</td>
                    <td class="CookieDeclarationTableCell">Stałe</td>
                    <td class="CookieDeclarationTableCell">Lokalny magazyn HTML</td>
                  </tr>
                  <tr>
                    <td class="CookieDeclarationTableCell">ServiceWorkerLogsDatabase#SWHealthLog</td>
                    <td class="CookieDeclarationTableCell">youtube.com</td>
                    <td class="CookieDeclarationTableCell">Necessary for the implementation and functionality of YouTube
                      video-content on the website. </td>
                    <td class="CookieDeclarationTableCell">Stałe</td>
                    <td class="CookieDeclarationTableCell">IndexedDB</td>
                  </tr>
                  <tr>
                    <td class="CookieDeclarationTableCell">test_cookie</td>
                    <td class="CookieDeclarationTableCell">doubleclick.net</td>
                    <td class="CookieDeclarationTableCell">Used to check if the user's browser supports cookies.</td>
                      <td class="CookieDeclarationTableCell">1 dzień</td>
                      <td class="CookieDeclarationTableCell">Plik cookie HTTP</td>
                    </tr>
                    <tr>
                      <td class="CookieDeclarationTableCell">TESTCOOKIESENABLED</td>
                      <td class="CookieDeclarationTableCell">youtube.com</td>
                      <td class="CookieDeclarationTableCell">Used to track user’s interaction with embedded content.</td>
                      <td class="CookieDeclarationTableCell">1 dzień</td>
                      <td class="CookieDeclarationTableCell">Plik cookie HTTP</td>
                    </tr>
                    <tr>
                      <td class="CookieDeclarationTableCell">topicsLastReferenceTime</td>
                      <td class="CookieDeclarationTableCell">connect.facebook.net</td>
                      <td class="CookieDeclarationTableCell">Używane przez Meta Platforms, Inc. do zbierania danych o
                        odwiedzającym na różnych stronach internetowych. Dane te są wykorzystywane do bardziej trafnego
                        dopasowania reklam.</td>
                      <td class="CookieDeclarationTableCell">Stałe</td>
                      <td class="CookieDeclarationTableCell">Lokalny magazyn HTML</td>
                    </tr>
                    <tr>
                      <td class="CookieDeclarationTableCell">tt_appInfo</td>
                      <td class="CookieDeclarationTableCell">analytics.tiktok.com</td>
                      <td class="CookieDeclarationTableCell">Used by the social networking service, TikTok, for tracking
                        the use of embedded services.</td>
                      <td class="CookieDeclarationTableCell">Sesyjne</td>
                      <td class="CookieDeclarationTableCell">Lokalny magazyn HTML</td>
                    </tr>
                    <tr>
                      <td class="CookieDeclarationTableCell">tt_pixel_session_index</td>
                      <td class="CookieDeclarationTableCell">analytics.tiktok.com</td>
                      <td class="CookieDeclarationTableCell">Used by the social networking service, TikTok, for tracking
                        the use of embedded services.</td>
                      <td class="CookieDeclarationTableCell">Sesyjne</td>
                      <td class="CookieDeclarationTableCell">Lokalny magazyn HTML</td>
                    </tr>
                    <tr>
                      <td class="CookieDeclarationTableCell">tt_sessionId</td>
                      <td class="CookieDeclarationTableCell">analytics.tiktok.com</td>
                      <td class="CookieDeclarationTableCell">Used by the social networking service, TikTok, for tracking
                        the use of embedded services.</td>
                      <td class="CookieDeclarationTableCell">Sesyjne</td>
                      <td class="CookieDeclarationTableCell">Lokalny magazyn HTML</td>
                    </tr>
                    <tr>
                      <td class="CookieDeclarationTableCell">u_sclid</td>
                      <td class="CookieDeclarationTableCell">sc-static.net</td>
                      <td class="CookieDeclarationTableCell">Sets a unique ID for the visitor, that allows third party
                        advertisers to target the visitor with relevant advertisement. This pairing service is provided by
                        third party advertisement hubs, which facilitates real-time bidding for advertisers.</td>
                      <td class="CookieDeclarationTableCell">Stałe</td>
                      <td class="CookieDeclarationTableCell">Lokalny magazyn HTML</td>
                    </tr>
                    <tr>
                      <td class="CookieDeclarationTableCell">u_sclid_r</td>
                      <td class="CookieDeclarationTableCell">sc-static.net</td>
                      <td class="CookieDeclarationTableCell">Sets a unique ID for the visitor, that allows third party
                        advertisers to target the visitor with relevant advertisement. This pairing service is provided by
                        third party advertisement hubs, which facilitates real-time bidding for advertisers.</td>
                      <td class="CookieDeclarationTableCell">Stałe</td>
                      <td class="CookieDeclarationTableCell">Lokalny magazyn HTML</td>
                    </tr>
                    <tr>
                      <td class="CookieDeclarationTableCell">u_scsid_r</td>
                      <td class="CookieDeclarationTableCell">sc-static.net</td>
                      <td class="CookieDeclarationTableCell">Sets a unique ID for the visitor, that allows third party
                        advertisers to target the visitor with relevant advertisement. This pairing service is provided by
                        third party advertisement hubs, which facilitates real-time bidding for advertisers.</td>
                      <td class="CookieDeclarationTableCell">Sesyjne</td>
                      <td class="CookieDeclarationTableCell">Lokalny magazyn HTML</td>
                    </tr>
                    <tr>
                      <td class="CookieDeclarationTableCell">v3/</td>
                      <td class="CookieDeclarationTableCell">pinterest.com</td>
                      <td class="CookieDeclarationTableCell">Used by Pinterest to track the usage of services.</td>
                      <td class="CookieDeclarationTableCell">Sesyjne</td>
                      <td class="CookieDeclarationTableCell">Śledzenie pikseli</td>
                    </tr>
                    <tr>
                      <td class="CookieDeclarationTableCell">VISITOR_INFO1_LIVE</td>
                      <td class="CookieDeclarationTableCell">youtube.com</td>
                      <td class="CookieDeclarationTableCell">Tries to estimate the users' bandwidth on pages with
                      integrated YouTube videos.</td>
                    <td class="CookieDeclarationTableCell">180 dni</td>
                    <td class="CookieDeclarationTableCell">Plik cookie HTTP</td>
                  </tr>
                  <tr>
                    <td class="CookieDeclarationTableCell">wps-1</td>
                    <td class="CookieDeclarationTableCell">static.scarabresearch.com</td>
                    <td class="CookieDeclarationTableCell">Used to track visitors on multiple websites, in order to
                      present relevant advertisement based on the visitor's preferences. </td>
                      <td class="CookieDeclarationTableCell">Stałe</td>
                      <td class="CookieDeclarationTableCell">Lokalny magazyn HTML</td>
                    </tr>
                    <tr>
                      <td class="CookieDeclarationTableCell">wpsStore</td>
                      <td class="CookieDeclarationTableCell">static.scarabresearch.com</td>
                      <td class="CookieDeclarationTableCell">Used to track visitors on multiple websites, in order to
                        present relevant advertisement based on the visitor's preferences. </td>
                    <td class="CookieDeclarationTableCell">Sesyjne</td>
                    <td class="CookieDeclarationTableCell">Lokalny magazyn HTML</td>
                  </tr>
                  <tr>
                    <td class="CookieDeclarationTableCell">YSC</td>
                    <td class="CookieDeclarationTableCell">youtube.com</td>
                    <td class="CookieDeclarationTableCell">Registers a unique ID to keep statistics of what videos from
                      YouTube the user has seen.</td>
                    <td class="CookieDeclarationTableCell">Sesyjne</td>
                    <td class="CookieDeclarationTableCell">Plik cookie HTTP</td>
                  </tr>
                  <tr>
                    <td class="CookieDeclarationTableCell">ytidb::LAST_RESULT_ENTRY_KEY</td>
                    <td class="CookieDeclarationTableCell">youtube.com</td>
                    <td class="CookieDeclarationTableCell">Stores the user's video player preferences using embedded
                        YouTube video</td>
                      <td class="CookieDeclarationTableCell">Stałe</td>
                      <td class="CookieDeclarationTableCell">Lokalny magazyn HTML</td>
                    </tr>
                    <tr>
                      <td class="CookieDeclarationTableCell">YtIdbMeta#databases</td>
                      <td class="CookieDeclarationTableCell">youtube.com</td>
                      <td class="CookieDeclarationTableCell">Used to track user’s interaction with embedded content.</td>
                      <td class="CookieDeclarationTableCell">Stałe</td>
                      <td class="CookieDeclarationTableCell">IndexedDB</td>
                    </tr>
                    <tr>
                      <td class="CookieDeclarationTableCell">yt-remote-cast-available</td>
                      <td class="CookieDeclarationTableCell">youtube.com</td>
                      <td class="CookieDeclarationTableCell">Stores the user's video player preferences using embedded
                      YouTube video</td>
                    <td class="CookieDeclarationTableCell">Sesyjne</td>
                    <td class="CookieDeclarationTableCell">Lokalny magazyn HTML</td>
                  </tr>
                  <tr>
                    <td class="CookieDeclarationTableCell">yt-remote-cast-installed</td>
                    <td class="CookieDeclarationTableCell">youtube.com</td>
                    <td class="CookieDeclarationTableCell">Stores the user's video player preferences using embedded
                        YouTube video</td>
                      <td class="CookieDeclarationTableCell">Sesyjne</td>
                      <td class="CookieDeclarationTableCell">Lokalny magazyn HTML</td>
                    </tr>
                    <tr>
                      <td class="CookieDeclarationTableCell">yt-remote-connected-devices</td>
                      <td class="CookieDeclarationTableCell">youtube.com</td>
                      <td class="CookieDeclarationTableCell">Stores the user's video player preferences using embedded
                      YouTube video</td>
                    <td class="CookieDeclarationTableCell">Stałe</td>
                    <td class="CookieDeclarationTableCell">Lokalny magazyn HTML</td>
                  </tr>
                  <tr>
                    <td class="CookieDeclarationTableCell">yt-remote-device-id</td>
                    <td class="CookieDeclarationTableCell">youtube.com</td>
                    <td class="CookieDeclarationTableCell">Stores the user's video player preferences using embedded
                        YouTube video</td>
                      <td class="CookieDeclarationTableCell">Stałe</td>
                      <td class="CookieDeclarationTableCell">Lokalny magazyn HTML</td>
                    </tr>
                    <tr>
                      <td class="CookieDeclarationTableCell">yt-remote-fast-check-period</td>
                      <td class="CookieDeclarationTableCell">youtube.com</td>
                      <td class="CookieDeclarationTableCell">Stores the user's video player preferences using embedded
                      YouTube video</td>
                    <td class="CookieDeclarationTableCell">Sesyjne</td>
                    <td class="CookieDeclarationTableCell">Lokalny magazyn HTML</td>
                  </tr>
                  <tr>
                    <td class="CookieDeclarationTableCell">yt-remote-session-app</td>
                    <td class="CookieDeclarationTableCell">youtube.com</td>
                    <td class="CookieDeclarationTableCell">Stores the user's video player preferences using embedded
                        YouTube video</td>
                      <td class="CookieDeclarationTableCell">Sesyjne</td>
                      <td class="CookieDeclarationTableCell">Lokalny magazyn HTML</td>
                    </tr>
                    <tr>
                      <td class="CookieDeclarationTableCell">yt-remote-session-name</td>
                      <td class="CookieDeclarationTableCell">youtube.com</td>
                      <td class="CookieDeclarationTableCell">Stores the user's video player preferences using embedded
                        YouTube video</td>
                      <td class="CookieDeclarationTableCell">Sesyjne</td>
                      <td class="CookieDeclarationTableCell">Lokalny magazyn HTML</td>
                    </tr>
                  </tbody>
                </table>
              </div>
              <div class="CookieDeclarationType" lang="pl" dir="ltr">
                <p class="CookieDeclarationTypeHeader">Nieklasyfikowane (1) </p>
                <p class="CookieDeclarationTypeDescription">Niesklasyfikowane pliki cookies to pliki, które nadal
                  klasyfikujemy wraz z dostawcami poszczególnych plików cookies.</p>
                <table class="CookieDeclarationTable">
                  <colgroup>
                    <col style="width: 20%">
                    <col style="width: 20%">
                    <col style="width: 35%">
                    <col style="width: 15%">
                    <col style="width: 10%">
                  </colgroup>
                  <thead>
                    <tr>
                      <th scope="col" class="CookieDeclarationTableHeader" dir="ltr">Nazwa</th>
                      <th scope="col" class="CookieDeclarationTableHeader" dir="ltr">Dostawca</th>
                      <th scope="col" class="CookieDeclarationTableHeader" dir="ltr">Cel</th>
                      <th scope="col" class="CookieDeclarationTableHeader" dir="ltr">Maksymalny okres przechowywania</th>
                      <th scope="col" class="CookieDeclarationTableHeader" dir="ltr">Rodzaj</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td class="CookieDeclarationTableCell">wps-browser-session-1</td>
                      <td class="CookieDeclarationTableCell">static.scarabresearch.com</td>
                      <td class="CookieDeclarationTableCell">W oczekiwaniu</td>
                      <td class="CookieDeclarationTableCell">Sesyjne</td>
                      <td class="CookieDeclarationTableCell">Lokalny magazyn HTML</td>
                    </tr>
                  </tbody>
                </table>
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