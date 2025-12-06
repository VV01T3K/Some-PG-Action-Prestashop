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
<nav class="no-scrollbar -mr-4 flex items-center gap-0.5 overflow-y-auto py-0.5 action-breadcrumb" 
     data-testid="breadcrumbs" 
     aria-label="Breadcrumbs"
     data-depth="{$breadcrumb.count}">
  {block name='breadcrumb'}
    {* Back button with separator *}
    {if $breadcrumb.count > 1}
      <div class="flex items-center">
        <button onclick="window.history.back()" class="group text-body-small flex items-center action-breadcrumb-back" data-testid="breadcrumb-back-button">
          <span class="-mx-2 shrink-0">
            <svg aria-hidden="true" data-testid="BackLeft" xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
              <path fill="#001489" d="M13 16a1 1 0 0 1-.707-.293l-3-3a1 1 0 0 1 0-1.414l3-3a1 1 0 1 1 1.414 1.414L11.414 12l2.293 2.293A1 1 0 0 1 13 16"></path>
            </svg>
          </span>
          <span class="text-dark-blue-500 group-hover:shadow-bottom-border ml-1.5 font-bold">{l s='Back' d='Shop.Theme.Actions'}</span>
        </button>
        <span aria-hidden="true" class="mx-3 inline text-neutral-500">|</span>
      </div>
    {/if}

    {* Breadcrumb links - only categories, not home *}
    {foreach from=$breadcrumb.links item=path name=breadcrumb}
      {if $smarty.foreach.breadcrumb.index > 0}
        {block name='breadcrumb_item'}
          {if not $smarty.foreach.breadcrumb.last}
            <a class="group flex items-center text-body-small whitespace-nowrap action-breadcrumb-link" 
               href="{$path.url}" 
               data-testid="breadcrumb-link">
              <span data-content-king="breadcrumbs" 
                    data-testid="breadcrumb-label" 
                    class="text-dark-blue-500 group-hover:shadow-bottom-border">
                {$path.title}
              </span>
            </a>
            <div class="inline">
              <svg aria-hidden="true" data-testid="ChevronRight" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="none" viewBox="0 0 24 24">
                <path fill="#1a1a1a" d="M9 20a1 1 0 0 1-.707-1.707L14.586 12 8.293 5.707a1 1 0 1 1 1.414-1.414l7 7a1 1 0 0 1 0 1.414l-7 7A1 1 0 0 1 9 20"></path>
              </svg>
            </div>
          {else}
            <div class="group flex items-center text-body-small whitespace-nowrap" data-testid="breadcrumb-item">
              <p data-content-king="breadcrumbs" 
                 class="first-letter:uppercase text-neutral-900" 
                 data-testid="breadcrumb-label">
                {$path.title}
              </p>
            </div>
          {/if}
        {/block}
      {/if}
    {/foreach}
    <span class="p-2"></span>
  {/block}
</nav>