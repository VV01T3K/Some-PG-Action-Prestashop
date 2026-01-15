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
<section aria-label="Images">
  {* Desktop Grid Layout - hidden on mobile *}
  {block name='product_images_grid'}
    {assign var="totalImages" value=$product.images|count}
    {* After the first image (col-span-2), remaining images are col-span-1. Last should only span 2 if alone in row (even total count) *}
    {assign var="lastShouldSpan2" value=($totalImages % 2 == 0)}
    <ul class="hidden grid-cols-2 place-items-center gap-3 md:grid product-images-grid">
      {foreach from=$product.images item=image name=imageLoop}
        <li class="flex h-full w-full cursor-pointer justify-center bg-neutral-50 object-cover p-6 lg:p-8 {if $smarty.foreach.imageLoop.first}first:col-span-2 col-span-2{else}col-span-1{/if} {if $smarty.foreach.imageLoop.last && $lastShouldSpan2}last:col-span-2{/if}">
          <button type="button" class="js-thumb-trigger" data-image-medium-src="{$image.bySize.medium_default.url}" data-image-large-src="{$image.bySize.large_default.url}">
            <img
              alt="{if !empty($image.legend)}{$image.legend}{else}{$product.name} {$smarty.foreach.imageLoop.iteration}{/if}"
              loading="lazy"
              width="400"
              height="400"
              decoding="async"
              data-nimg="1"
              class="h-full w-full {if $smarty.foreach.imageLoop.first}max-h-[400px] max-w-[400px]{else}max-h-[200px] max-w-[200px]{/if}"
              style="color:transparent"
              src="{$image.bySize.large_default.url}"
            >
          </button>
        </li>
      {/foreach}
    </ul>
  {/block}

  {* Mobile Layout - horizontal scroll with thumbnails *}
  {block name='product_images_mobile'}
    <div class="md:hidden">
      {* Main scrollable images *}
      <div data-testid="main-image" class="flex h-[340px] w-full snap-x snap-mandatory gap-2 overflow-scroll product-main-carousel">
        {foreach from=$product.images item=image name=mobileImageLoop}
          <div id="mobile-image-{$smarty.foreach.mobileImageLoop.index}" class="bg-off-neutral-0 flex w-full snap-start justify-center p-4 sm:w-auto shrink-0">
            <img
              alt="{if !empty($image.legend)}{$image.legend}{else}{$product.name}{/if}"
              loading="lazy"
              width="360"
              height="360"
              decoding="async"
              data-nimg="1"
              class="h-full max-w-[320px] object-contain"
              style="color:transparent"
              src="{$image.bySize.large_default.url}"
            >
          </div>
        {/foreach}
      </div>

      {* Thumbnail navigation *}
      <div data-testid="thumbnail-list" class="no-scrollbar my-4 flex w-full gap-2 overflow-x-auto scroll-smooth product-thumbnails">
        {foreach from=$product.images item=image name=thumbLoop}
          <button class="bg-off-neutral-0 h-16 w-16 shrink-0 cursor-pointer items-center justify-center p-2 js-mobile-thumb {if $smarty.foreach.thumbLoop.first}border-dark-blue border-b-2{/if}" data-scroll-to="mobile-image-{$smarty.foreach.thumbLoop.index}">
            <img
              alt="Navigate to image"
              loading="lazy"
              width="40"
              height="40"
              decoding="async"
              data-nimg="1"
              class=""
              style="color:transparent"
              src="{$image.bySize.small_default.url}"
            >
          </button>
        {/foreach}
      </div>
    </div>
  {/block}

  {* Promotion Badge - Overlay on first image *}
  {block name='product_badges'}
    <span class="absolute top-0 left-0 flex flex-col gap-0.5 product-badges z-10">
      {if $product.new}
        <span class="flex overflow-hidden h-[22px] sm:h-[26px] text-neutral-0 text-[12px] leading-[14px] font-bold sm:text-sm sm:leading-[18px]" data-testid="product-tag">
          <span class="flex w-fit items-center pr-1 pl-1.5 sm:pr-1.5 sm:pl-2 bg-cyan-500">
            <span>{l s='Nowości' d='Shop.Theme.Catalog'}</span>
          </span>
          <span class="w-[8px]">
            <span class="-mr-px block h-full -translate-x-px bg-cyan-500" style="clip-path:polygon(0 0, 100% 0, 1px 100%, 0 100%)"></span>
          </span>
        </span>
      {/if}
      {if $product.has_discount}
        <span class="flex overflow-hidden h-[22px] sm:h-[26px] text-neutral-0 text-[12px] leading-[14px] font-bold sm:text-sm sm:leading-[18px]" data-testid="product-tag">
          <span class="flex w-fit items-center pr-1 pl-1.5 sm:pr-1.5 sm:pl-2 bg-orange-500">
            <span>{l s='Promocja' d='Shop.Theme.Catalog'}</span>
          </span>
          <span class="w-[8px]">
            <span class="-mr-px block h-full -translate-x-px bg-orange-500" style="clip-path:polygon(0 0, 100% 0, 1px 100%, 0 100%)"></span>
          </span>
        </span>
      {/if}
    </span>
  {/block}

{hook h='displayAfterProductThumbs' product=$product}
</section>
