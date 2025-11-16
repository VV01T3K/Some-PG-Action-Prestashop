{capture assign="productClasses"}{if !empty($productClass)}{$productClass}{else}w-full{/if}{/capture}

<div class="products{if !empty($cssClass)} {$cssClass}{/if}">
    {foreach from=$products item="product" key="position"}
        {include file="catalog/_partials/miniatures/product.tpl" product=$product position=$position productClasses=$productClasses}
    {/foreach}
</div>

