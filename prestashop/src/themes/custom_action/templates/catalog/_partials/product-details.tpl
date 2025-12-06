<div class="js-product-details"
     id="product-details"
     data-product="{$product.embedded_attributes|json_encode}"
>
  {* Product Characteristics Section - Action.com style *}
  <section class="mt-8" aria-labelledby="product-characteristics-title">
    <h2 id="product-characteristics-title" class="heading-lg mb-4" data-testid="title-view-title">
      {l s='Product Characteristics' d='Shop.Theme.Catalog'}
    </h2>
    
    <div class="bg-neutral-50 p-3 pt-4" style="background-color: #f5f5f5; padding: 16px; padding-top: 20px;">
      <table class="w-full table-fixed" data-testid="productions-specifications-table" style="width: 100%; table-layout: fixed;">
        <tbody>
          {* Brand/Manufacturer *}
          {block name='product_reference'}
            {if isset($product_manufacturer->id)}
              <tr class="border-neutral-150 border-b border-dashed" style="border-bottom: 1px dashed #e0e0e0;">
                <td class="p-2 align-top font-medium break-words lg:w-1/4" style="padding: 8px; vertical-align: top; font-weight: 500; width: 25%;">
                  {l s='Brand' d='Shop.Theme.Catalog'}
                </td>
                <td class="p-2 align-top break-words" style="padding: 8px; vertical-align: top;">
                  {if isset($manufacturer_image_url)}
                    <a href="{$product_brand_url}">
                      <img src="{$manufacturer_image_url}" class="manufacturer-logo" alt="{$product_manufacturer->name}" loading="lazy" style="max-width: 120px; height: auto;">
                    </a>
                  {else}
                    <a href="{$product_brand_url}">{$product_manufacturer->name}</a>
                  {/if}
                </td>
              </tr>
            {/if}
          {/block}

          {* Product Features *}
          {block name='product_features'}
            {if $product.grouped_features}
              {foreach from=$product.grouped_features item=feature}
                <tr class="border-neutral-150 border-b border-dashed" style="border-bottom: 1px dashed #e0e0e0;">
                  <td class="p-2 align-top font-medium break-words lg:w-1/4" style="padding: 8px; vertical-align: top; font-weight: 500; width: 25%;">
                    {$feature.name}
                  </td>
                  <td class="p-2 align-top break-words" style="padding: 8px; vertical-align: top;">
                    {$feature.value|escape:'htmlall'|nl2br nofilter}
                  </td>
                </tr>
              {/foreach}
            {/if}
          {/block}

          {* Quantities *}
          {block name='product_quantities'}
            {if $product.show_quantities}
              <tr class="border-neutral-150 border-b border-dashed" style="border-bottom: 1px dashed #e0e0e0;">
                <td class="p-2 align-top font-medium break-words lg:w-1/4" style="padding: 8px; vertical-align: top; font-weight: 500; width: 25%;">
                  {l s='In stock' d='Shop.Theme.Catalog'}
                </td>
                <td class="p-2 align-top break-words" style="padding: 8px; vertical-align: top;" data-stock="{$product.quantity}" data-allow-oosp="{$product.allow_oosp}">
                  {$product.quantity} {$product.quantity_label}
                </td>
              </tr>
            {/if}
          {/block}

          {* Availability Date *}
          {block name='product_availability_date'}
            {if $product.availability_date}
              <tr class="border-neutral-150 border-b border-dashed" style="border-bottom: 1px dashed #e0e0e0;">
                <td class="p-2 align-top font-medium break-words lg:w-1/4" style="padding: 8px; vertical-align: top; font-weight: 500; width: 25%;">
                  {l s='Availability date' d='Shop.Theme.Catalog'}
                </td>
                <td class="p-2 align-top break-words" style="padding: 8px; vertical-align: top;">
                  {$product.availability_date}
                </td>
              </tr>
            {/if}
          {/block}

          {* Condition *}
          {block name='product_condition'}
            {if $product.condition}
              <tr class="border-neutral-150 border-b border-dashed" style="border-bottom: 1px dashed #e0e0e0;">
                <td class="p-2 align-top font-medium break-words lg:w-1/4" style="padding: 8px; vertical-align: top; font-weight: 500; width: 25%;">
                  {l s='Condition' d='Shop.Theme.Catalog'}
                </td>
                <td class="p-2 align-top break-words" style="padding: 8px; vertical-align: top;">
                  <link href="{$product.condition.schema_url}"/>
                  {$product.condition.label}
                </td>
              </tr>
            {/if}
          {/block}

          {* Specific References (EAN, ISBN, UPC, etc.) *}
          {block name='product_specific_references'}
            {if !empty($product.specific_references)}
              {foreach from=$product.specific_references item=reference key=key}
                <tr class="border-neutral-150 border-b border-dashed" style="border-bottom: 1px dashed #e0e0e0;">
                  <td class="p-2 align-top font-medium break-words lg:w-1/4" style="padding: 8px; vertical-align: top; font-weight: 500; width: 25%;">
                    {$key}
                  </td>
                  <td class="p-2 align-top break-words" style="padding: 8px; vertical-align: top;">
                    {$reference}
                  </td>
                </tr>
              {/foreach}
            {/if}
          {/block}

          {* Product Reference/SKU Number - Last row *}
          {if isset($product.reference_to_display) && $product.reference_to_display neq ''}
            <tr class="border-neutral-150 border-b border-dashed" style="border-bottom: 1px dashed #e0e0e0;">
              <td class="p-2 align-top font-medium break-words lg:w-1/4" style="padding: 8px; vertical-align: top; font-weight: 500; width: 25%;">
                {l s='Product number' d='Shop.Theme.Catalog'}
              </td>
              <td class="p-2 align-top break-words" style="padding: 8px; vertical-align: top;">
                {$product.reference_to_display}
              </td>
            </tr>
          {/if}
        </tbody>
      </table>
    </div>
  </section>

  {* Out of Stock Hook *}
  {block name='product_out_of_stock'}
    <div class="product-out-of-stock">
      {hook h='actionProductOutOfStock' product=$product}
    </div>
  {/block}
</div>
