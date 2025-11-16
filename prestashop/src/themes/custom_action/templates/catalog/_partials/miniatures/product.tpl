{block name='product_miniature_item'}

  <div class="w-(--itemWidth)">
<div data-id-product="{$product.id_product|escape:'html':'UTF-8'}" data-id-product-attribute="{$product.id_product_attribute|escape:'html':'UTF-8'}" class="border-neutral-150 border bg-neutral-0 relative h-full w-full" data-testid="product-card" data-content-king="product-card">

        
        {* Main product link wrapping everything *}
        <a class="group relative flex h-full w-full flex-col p-3 xs:p-4" href="{$product.url}" data-testid="product-card-link">
          
          {* Product Image Section *}
          {block name='product_thumbnail'}
            <span class="xs:max-h-[180px] relative aspect-square w-full md:max-h-[230px]">
              {if $product.cover}
                <img data-testid="product-card-image"
                  alt="{if !empty($product.cover.legend)}{$product.cover.legend}{else}{$product.name}{/if}"
                  loading="lazy"
                  decoding="async"
                  class="object-contain object-center py-2 transition-transform duration-250 group-hover:scale-105 md:py-4 h-full w-full"
                  src="{$product.cover.bySize.home_default.url}"
                  data-full-size-image-url="{$product.cover.large.url}"
                  width="{$product.cover.bySize.home_default.width}"
                  height="{$product.cover.bySize.home_default.height}"
                  style="position: absolute; height: 100%; width: 100%; inset: 0px; color: transparent;" />
              {else}
                <img data-testid="product-card-image"
                  alt="{$product.name}"
                  loading="lazy"
                  decoding="async"
                  class="object-contain object-center py-2 transition-transform duration-250 group-hover:scale-105 md:py-4 h-full w-full"
                  src="{$urls.no_picture_image.bySize.home_default.url}"
                  width="{$urls.no_picture_image.bySize.home_default.width}"
                  height="{$urls.no_picture_image.bySize.home_default.height}"
                  style="position: absolute; height: 100%; width: 100%; inset: 0px; color: transparent;" />
              {/if}
              
              {* Product Flags/Badges at bottom of image *}
              <span class="absolute bottom-0 flex flex-col gap-2"></span>
            </span>
          {/block}

          {* Product Title and Description *}
          {block name='product_name'}
            <span class="mt-2 mb-3 flex grow flex-col gap-1 leading-tight sm:mb-4">
              <span class="xs:text-[16px] xs:leading-5 text-sm leading-[18px] font-medium text-dark-blue-500 line-clamp-2 break-words" data-testid="product-card-title">
                {$product.name|truncate:50:'...'}
              </span>
              {if isset($product.description_short) && $product.description_short}
                <span class="max-h-fit text-sm leading-[18px] font-normal line-clamp-2 grow break-words text-neutral-700" data-testid="product-card-description">
                  {$product.description_short|strip_tags:'UTF-8'|truncate:80:'...'}
                </span>
              {elseif isset($product.main_variants) && $product.main_variants}
                <span class="max-h-fit text-sm leading-[18px] font-normal line-clamp-2 grow break-words text-neutral-700" data-testid="product-card-description">
                  {l s='Different variants' d='Shop.Theme.Catalog'}
                </span>
              {else}
                <span class="max-h-fit text-sm leading-[18px] font-normal line-clamp-2 grow break-words text-neutral-700" data-testid="product-card-description">
                  &nbsp;
                </span>
              {/if}
            </span>
          {/block}

          {* Product Price Section *}
          {block name='product_price_and_shipping'}
            {if $product.show_price}
              <span aria-label="{$product.price}" class="flex flex-col">
                {* Unit Price Description - Show above price *}
                {if isset($product.unit_price_full) && $product.unit_price_full}
                  <span data-testid="product-card-price-description" class="mb-1 block w-max text-xs leading-[12px] text-neutral-700">
                    {$product.unit_price_full}
                  </span>
                {/if}

                {* Main Price Display - Orange for promoted items *}
                <span class="flex items-start {if $product.has_discount}text-orange-500{else}text-dark-blue-500{/if}">
                  <span class="price font-bold text-[40px] leading-[28px] md:text-[48px] md:leading-[33px]" aria-label="{l s='Price' d='Shop.Theme.Catalog'}">
                    {$product.price}
                  </span>
                </span>
              </span>
              {* Discount Information - Show below price *}
              {if $product.has_discount}
                <span style="height:.5rem;"></span>
                <span class="flex leading-none text-neutral-700 mt-2 flex-row items-baseline self-baseline flex-wrap gap-2" data-testid="product-card-price-discount">
                  <span class="flex items-center" data-testid="product-card-price-original-amount">
                    <span class="text-center text-[12px] font-normal line-through">
                      {$product.regular_price}
                    </span>
                    <span class="pl-0.5 text-xs">*</span>
                  </span>
                  <span class="rounded border border-neutral-700 px-1.5 py-0.5 text-xs leading-[12px] font-medium" data-testid="product-card-price-discount-percentage">
                    {$product.discount_percentage}
                  </span>
                </span>
                {* Discount Footnote *}
                <span class="mt-2 flex text-xs font-normal text-neutral-700" data-testid="product-card-price-discount-footnote">
                  <span class="italic">* {l s='Lowest price from 30 days before discount' d='Shop.Theme.Catalog'}</span>
                </span>
              {/if}
            {/if}
          {/block}

          {* Promotion Badge - Top Left *}
          <span class="absolute top-0 left-0 flex flex-col gap-0.5">
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
            {* Product flags - hide discount flags as we show them custom *}
            <div class="product-flags-container" style="display: none;">
              {include file='catalog/_partials/product-flags.tpl'}
            </div>
          </span>
        </a>

        {* Favorite/Wishlist Button *}
        {* {block name='product_favorite'}
          <button type="button" data-testid="favorite-button" class="absolute top-0 right-0 p-2" aria-label="{l s='Add to favorites' d='Shop.Theme.Actions'}">
            <svg aria-hidden="true" data-testid="Heart01" xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
              <path fill="#8593a3" d="M12 21a1 1 0 0 1-.486-.126C11.126 20.658 2 15.514 2 9c0-3.665 2.218-5.425 4.293-5.849 2.171-.44 4.328.402 5.707 2.113 1.38-1.712 3.537-2.552 5.707-2.113C19.782 3.575 22 5.335 22 9.001c0 6.513-9.126 11.657-9.515 11.873A1 1 0 0 1 12 21M7.4 5.041q-.368 0-.707.07C5.007 5.456 4 6.91 4 9.001c0 4.584 6.197 8.728 8 9.836 1.804-1.108 8-5.252 8-9.837 0-2.09-1.007-3.544-2.693-3.889-1.482-.3-3.479.346-4.387 2.475a1 1 0 0 1-1.84 0C10.31 5.78 8.755 5.04 7.4 5.04"></path>
            </svg>
          </button>
        {/block} *}

    </div>
  </div>
{/block}