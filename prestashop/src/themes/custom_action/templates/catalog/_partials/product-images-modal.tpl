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
{* Action.com style image gallery modal *}
<div id="modal-root" data-testid="modal-root" class="hidden" style="display: none; z-index: 9999;">
  <div class="fixed top-0 left-0 flex w-full items-end justify-center md:items-center h-full transition-opacity duration-200 ease-in-out opacity-0"
       aria-labelledby="image-gallery-modal-title"
       data-testid="image-gallery-modal"
       id="image-gallery-modal"
       style="z-index: 9999;">

    {* Modal content *}
    <div class="bg-neutral-0 relative z-20 flex max-h-full w-full flex-col overflow-y-auto pb-6 md:w-[600px] pt-[72px] md:pt-[88px] md:w-[800px] transition-transform duration-200 ease-in-out translate-y-full md:translate-y-0 md:scale-95"
         aria-modal="true"
         id="modal-content"
         style="background-color: white;">

      {* Header *}
      <div class="absolute top-0 left-0 flex w-full items-center px-4 py-4 md:px-8 md:py-6 justify-end">
        <h2 tabindex="-1"
            id="image-gallery-modal-title"
            class="heading-xl focus-visible:outline-none pr-8"
            data-testid="image-gallery-modal-title">
        </h2>
      </div>

      {* Images grid *}
      <div tabindex="-1" class="overflow-y-auto px-4 md:px-8 max-h-[80dvh] max-w-[800px] overflow-y-auto">
        <ul class="grid grid-cols-2 place-items-center gap-4" aria-label="Images Modal">
          {foreach from=$product.images item=image name=modalImageLoop}
            <li class="col-span-2 flex h-full w-full justify-center gap-4 bg-neutral-50 object-cover p-6" style="background-color: #f5f5f5;">
              <img
                alt="{if !empty($image.legend)}{$image.legend}{else}{$product.name} {$smarty.foreach.modalImageLoop.iteration}{/if}"
                loading="lazy"
                width="750"
                height="750"
                decoding="async"
                data-nimg="1"
                class="h-full max-h-[750px] w-full max-w-[750px]"
                srcset="{$image.bySize.large_default.url} 1x, {$image.bySize.large_default.url} 2x"
                src="{$image.bySize.large_default.url}"
                style="color: transparent;">
            </li>
          {/foreach}
        </ul>
      </div>

      {* Close button *}
      <div class="absolute top-0 right-0 pt-2 pr-4 md:pt-5 md:pr-6">
        <button type="button"
                data-testid="image-gallery-modal-close-button"
                class="flex items-center justify-center"
                id="modal-close-button"
                aria-label="Zamknij"
                style="width: 40px; height: 40px;">
          <svg aria-hidden="true"
               data-testid="CloseMd"
               xmlns="http://www.w3.org/2000/svg"
               width="32"
               height="32"
               fill="none"
               viewBox="0 0 24 24">
            <path fill="#001489"
                  d="M18 19a1 1 0 0 1-.707-.293L12 13.414l-5.293 5.293a1 1 0 1 1-1.414-1.414L10.586 12 5.293 6.707a1 1 0 1 1 1.414-1.414L12 10.586l5.293-5.293a1 1 0 1 1 1.414 1.414L13.414 12l5.293 5.293A1 1 0 0 1 18 19"></path>
          </svg>
        </button>
      </div>
    </div>

    {* Background scrim *}
    <div class="absolute z-10 h-full w-full bg-neutral-900/40"
         data-testid="image-gallery-modal-scrim"
         id="modal-scrim"
         style="background-color: rgba(0, 0, 0, 0.4);">
    </div>
  </div>
</div>
