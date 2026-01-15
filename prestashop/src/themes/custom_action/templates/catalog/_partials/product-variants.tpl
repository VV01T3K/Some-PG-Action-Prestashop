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
{if $groups|@count > 0}
<div class="product-variants js-product-variants">
  {foreach from=$groups key=id_attribute_group item=group}
    {if !empty($group.attributes)}
    <div class="clearfix product-variants-item">
      {* Display selected value in label *}
      <span class="control-label">{$group.name}
          <span class="selected-variant-name" data-group-id="{$id_attribute_group}">
            {foreach from=$group.attributes key=id_attribute item=group_attribute}
              {if $group_attribute.selected}: {$group_attribute.name}{/if}
            {/foreach}
          </span>
      </span>
      
      {if $group.group_type == 'select'}
        <select
          class="form-control form-control-select"
          id="group_{$id_attribute_group}"
          aria-label="{$group.name}"
          data-product-attribute="{$id_attribute_group}"
          name="group[{$id_attribute_group}]">
          {foreach from=$group.attributes key=id_attribute item=group_attribute}
            <option value="{$id_attribute}" title="{$group_attribute.name}"{if $group_attribute.selected} selected="selected"{/if}>{$group_attribute.name}</option>
          {/foreach}
        </select>
        
      {elseif $group.group_type == 'color'}
        {* Action.com style color selector *}
        <div class="action-color-selector">
          <ul id="group_{$id_attribute_group}" class="color-list">
            {foreach from=$group.attributes key=id_attribute item=group_attribute}
              <li class="color-item input-container">
                <label aria-label="{$group_attribute.name}" class="color-label" title="{$group_attribute.name}">
                  <input 
                    class="input-color" 
                    type="radio" 
                    data-product-attribute="{$id_attribute_group}" 
                    name="group[{$id_attribute_group}]" 
                    value="{$id_attribute}" 
                    {if $group_attribute.selected} checked="checked"{/if}
                  >
                  <span class="color-swatch-wrapper">
                    <span
                      class="color-swatch{if $group_attribute.texture} texture{/if}"
                      {if $group_attribute.texture}
                        style="background-image: url({$group_attribute.texture})"
                      {elseif $group_attribute.html_color_code}
                        style="background-color: {$group_attribute.html_color_code}"
                      {/if}
                    >
                      <span class="checkmark-icon">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="3" stroke-linecap="round" stroke-linejoin="round">
                          <polyline points="20 6 9 17 4 12"></polyline>
                        </svg>
                      </span>
                    </span>
                    <span class="color-name">{$group_attribute.name}</span>
                  </span>
                </label>
              </li>
            {/foreach}
          </ul>
        </div>
        
      {elseif $group.group_type == 'radio'}
        <ul id="group_{$id_attribute_group}" class="radio-list">
          {foreach from=$group.attributes key=id_attribute item=group_attribute}
            <li class="input-container radio-item">
              <label class="radio-label-wrapper">
                <input class="input-radio" type="radio" data-product-attribute="{$id_attribute_group}" name="group[{$id_attribute_group}]" value="{$id_attribute}" title="{$group_attribute.name}"{if $group_attribute.selected} checked="checked"{/if}>
                <span class="radio-label">{$group_attribute.name}</span>
              </label>
            </li>
          {/foreach}
        </ul>
      {/if}
    </div>
    {/if}
  {/foreach}
</div>

<script>
  document.addEventListener('DOMContentLoaded', function() {
    var variantsContainer = document.querySelector('.js-product-variants');
    if (!variantsContainer) return;

    variantsContainer.addEventListener('change', function(e) {
      var input = e.target;
      var groupId = input.getAttribute('data-product-attribute');
      if (!groupId) return;

      var selectedText = '';

      if (input.tagName === 'SELECT') {
        selectedText = ': ' + input.options[input.selectedIndex].text;
      } else if (input.type === 'radio' && input.checked) {
        var label = input.closest('label');
        var name = input.title || label.getAttribute('aria-label') || label.querySelector('.color-name, .radio-label').textContent;
        selectedText = ': ' + name;
      }

      var labelSpan = variantsContainer.querySelector('.selected-variant-name[data-group-id="' + groupId + '"]');
      if (labelSpan && selectedText) {
        labelSpan.textContent = selectedText;
      }
    });
  });
</script>
{/if}
