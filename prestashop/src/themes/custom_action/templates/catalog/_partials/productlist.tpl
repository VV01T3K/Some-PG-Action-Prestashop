{capture assign="productClasses"}{if !empty($productClass)}{$productClass}{else}w-full{/if}{/capture}
{* w-(--itemWidth) *}

{foreach from=$products item="product" key="position"}
    {include file="catalog/_partials/miniatures/product.tpl" product=$product position=$position productClasses="w-(--itemWidth)"}
{/foreach}


