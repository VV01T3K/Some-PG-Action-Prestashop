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
  <div class="flex flex-1 flex-col" data-testid="cms-content-rows">
    <div class="hidden h-8 lg:block"></div>
    <section class="bg-neutral-0 pt-6 md:pt-8 pb-6 md:pb-8 lg:pt-0" aria-label="Info dla społeczeństwa"
      data-testid="cms-content-title">
      <div class="relative flex w-full flex-col px-4 lg:px-8">
        <div class="mx-auto w-full max-w-7xl">
          <h1 class="heading-2xl text-dark-blue-500">Info dla społeczeństwa</h1>
        </div>
      </div>
    </section>
    <section class="bg-neutral-0 pb-6 md:pb-8 lg:pt-0" data-testid="cms-markdown">
      <div class="relative flex w-full flex-col px-4 lg:px-8">
        <div class="mx-auto w-full max-w-7xl">
          <div class="flex flex-col gap-4" data-content-king="rich-text">
            <div class="flex max-w-[800px] flex-col gap-3">
              <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                  class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                  href="https://asset.action.com/image/upload/v1751889405/Final/Documents/Legal%20Documents/Info_dla_spo%C5%82ecze%C5%84stwa_ZZR_Action_Bieru%C5%84.pdf"
                  target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Informacje</a>&nbsp;dotyczące
                sposobów ostrzegania i postępowania społeczeństwa w przypadku wystąpienia awarii przemysłowej w
                Zakładzie Zwiększonego Ryzyka wystąpienia poważnej awarii przemysłowej ZZR w: Bieruń</p>
              <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                  class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                  href="https://asset.action.com/image/upload/v1751889405/Final/Documents/Legal%20Documents/Info_dla_spo%C5%82ecze%C5%84stwa_ZZR_Action_OS%C5%81A.pdf"
                  target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Informacje</a>&nbsp;dotyczące
                sposobów ostrzegania i postępowania społeczeństwa w przypadku wystąpienia awarii przemysłowej w
                Zakładzie Zwiększonego Ryzyka wystąpienia poważnej awarii przemysłowej ZZR w: Osła</p>
              <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                  class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                  href="https://asset.action.com/image/upload/v1751889405/Final/Documents/Legal%20Documents/Info_dla_spo%C5%82ecze%C5%84stwa_ZZR_Action_Zakroczym.pdf"
                  target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Informacje</a>&nbsp;dotyczące
                sposobów ostrzegania i postępowania społeczeństwa w przypadku wystąpienia awarii przemysłowej w
                Zakładzie Zwiększonego Ryzyka wystąpienia poważnej awarii przemysłowej ZZR w: Zakroczym</p>
              <p class="text-body-normal text-neutral-900" data-testid="markdown-paragraph"><a
                  class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words"
                  href="https://asset.action.com/image/upload/v1755071802/Final/Documents/Legal%20Documents/Info_dla_spo%C5%82ecze%C5%84stwa_ZZR_Action_DUNIKOWO_1.pdf"
                  target="_blank" data-testid="markdown-link" rel="noreferrer noopener">Informacje</a>&nbsp;dotyczące
                sposobów ostrzegania i postępowania społeczeństwa w przypadku wystąpienia awarii przemysłowej w
                Zakładzie Zwiększonego Ryzyka wystąpienia poważnej awarii przemysłowej ZZR w: Dunikowo</p>
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
