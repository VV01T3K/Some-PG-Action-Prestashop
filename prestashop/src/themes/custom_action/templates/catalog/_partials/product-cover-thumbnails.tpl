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
<div class="images-container js-images-container" style="display: flex; flex-direction: column;">
  {block name='product_cover'}
    <div class="product-cover relative">
      {if $product.default_image}
        <img
          class="js-qv-product-cover img-fluid"
          src="{$product.default_image.bySize.large_default.url}"
          {if !empty($product.default_image.legend)}
            alt="{$product.default_image.legend}"
            title="{$product.default_image.legend}"
          {else}
            alt="{$product.name}"
          {/if}
          loading="lazy"
          width="{$product.default_image.bySize.large_default.width}"
          height="{$product.default_image.bySize.large_default.height}"
        >
      {else}
        <img
          class="img-fluid"
          src="{$urls.no_picture_image.bySize.medium_default.url}"
          loading="lazy"
          width="{$urls.no_picture_image.bySize.medium_default.width}"
          height="{$urls.no_picture_image.bySize.medium_default.height}"
        >
      {/if}
      
      {* Promotion Badge - Top Left *}
      <span class="absolute top-0 left-0 flex flex-col gap-0.5">
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
    </div>
  {/block}

  {block name='product_images'}
    <div class="js-qv-mask mask" style="width: 100%; margin-top: 16px;">
      <ul class="product-images js-qv-product-images" style="display: flex; justify-content: center; gap: 10px; flex-wrap: wrap; list-style: none; padding: 0; margin: 0;">
        {foreach from=$product.images item=image}
          <li class="thumb-container js-thumb-container" style="display: inline-block;">
            <img
              class="thumb js-thumb {if $image.id_image == $product.default_image.id_image} selected js-thumb-selected {/if}"
              data-image-medium-src="{$image.bySize.medium_default.url}"
              data-image-large-src="{$image.bySize.large_default.url}"
              src="{$image.bySize.small_default.url}"
              {if !empty($image.legend)}
                alt="{$image.legend}"
                title="{$image.legend}"
              {else}
                alt="{$product.name}"
              {/if}
              loading="lazy"
              width="{$product.default_image.bySize.small_default.width}"
              height="{$product.default_image.bySize.small_default.height}"
              style="width: 70px; height: 70px; object-fit: contain; border: 2px solid transparent; border-radius: 4px; cursor: pointer; background: #fff;"
            >
          </li>
        {/foreach}
      </ul>
    </div>
  {/block}
{hook h='displayAfterProductThumbs' product=$product}
</div>
