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
{if $pagination.should_be_displayed}
    <div class="w-full pt-6 sm:pt-8 pb-6">
        <div data-testid="grid-pagination-items">
            <div class="hidden justify-end gap-2 text-sm sm:flex" data-testid="grid-pagination-items-desktop">
                {foreach from=$pagination.pages item="page"}
                    {if $page.type === 'previous'}
                        <a class="flex items-center border px-4 py-2 font-normal text-dark-blue-500 border-neutral-150 hover:border-dark-blue-300 hover:bg-petrol-50"
                            href="{$page.url}#product-grid" aria-label="Poprzednia" data-testid="GridPaginationLink">Poprzednia</a>
                    {elseif $page.type === 'page'}
                        <a class="flex items-center border px-4 py-2 {if $page.current}font-medium text-dark-blue-500 hover:border-dark-blue-300 hover:bg-petrol-50 border-dark-blue-300 bg-petrol-50{else}font-normal text-dark-blue-500 border-neutral-150 hover:border-dark-blue-300 hover:bg-petrol-50{/if}"
                            href="{$page.url}#product-grid" aria-label="{$page.page}"
                            data-testid="GridPaginationLink">{$page.page}</a>
                    {elseif $page.type === 'spacer'}
                        <span class="border border-neutral-300 px-4 py-2">...</span>
                    {elseif $page.type === 'next'}
                        <a class="flex items-center border px-4 py-2 font-normal text-dark-blue-500 border-neutral-150 hover:border-dark-blue-300 hover:bg-petrol-50"
                            href="{$page.url}#product-grid" aria-label="Następna" data-testid="GridPaginationLink">Następna</a>
                    {/if}
                {/foreach}
            </div>
            <div class="flex justify-center gap-2 text-sm sm:hidden" data-testid="grid-pagination-items-mobile">
                <span
                    class="flex items-center border px-4 py-2 font-normal border-neutral-150 bg-neutral-50 text-neutral-300">
                    <svg aria-hidden="true" data-testid="ChevronLeftDuo" xmlns="http://www.w3.org/2000/svg" width="24"
                        height="24" fill="none" viewBox="0 0 24 24">
                        <path fill="#b6bec8"
                            d="M17 17a1 1 0 0 1-.707-.293l-4-4a1 1 0 0 1 0-1.414l4-4a1 1 0 1 1 1.414 1.414L14.414 12l3.293 3.293A1 1 0 0 1 17 17m-6 0a1 1 0 0 1-.707-.293l-4-4a1 1 0 0 1 0-1.414l4-4a1 1 0 1 1 1.414 1.414L8.414 12l3.293 3.293A1 1 0 0 1 11 17">
                        </path>
                    </svg>
                </span>
                <span
                    class="flex items-center border px-4 py-2 font-normal border-neutral-150 bg-neutral-50 text-neutral-300">
                    <svg aria-hidden="true" data-testid="ChevronLeft" xmlns="http://www.w3.org/2000/svg" width="16"
                        height="16" fill="none" viewBox="0 0 24 24">
                        <path fill="#b6bec8"
                            d="M15 20a1 1 0 0 1-.707-.293l-7-7a1 1 0 0 1 0-1.414l7-7a1 1 0 1 1 1.414 1.414L9.414 12l6.293 6.293A1 1 0 0 1 15 20">
                        </path>
                    </svg>
                </span>
                {foreach from=$pagination.pages item="page"}
                    {if $page.current}
                        <a class="flex items-center border px-4 py-2 font-medium text-dark-blue-500 hover:border-dark-blue-300 hover:bg-petrol-50 border-dark-blue-300 bg-petrol-50"
                            href="#product-grid" aria-label="{$page.page}" data-testid="GridPaginationLink">{$page.page}</a>
                    {/if}
                {/foreach}
                {foreach from=$pagination.pages item="page"}
                    {if $page.type === 'next'}
                        <a class="flex items-center border px-4 py-2 font-normal text-dark-blue-500 border-neutral-150 hover:border-dark-blue-300 hover:bg-petrol-50"
                            href="{$page.url}#product-grid" aria-label="Następna" data-testid="GridPaginationLink">
                            <svg aria-hidden="true" data-testid="ChevronRight" xmlns="http://www.w3.org/2000/svg" width="16"
                                height="16" fill="none" viewBox="0 0 24 24">
                                <path fill="#001489"
                                    d="M9 20a1 1 0 0 1-.707-1.707L14.586 12 8.293 5.707a1 1 0 1 1 1.414-1.414l7 7a1 1 0 0 1 0 1.414l-7 7A1 1 0 0 1 9 20">
                                </path>
                            </svg>
                        </a>
                    {/if}
                {/foreach}
                {assign var="last_page" value=""}
                {foreach from=$pagination.pages item="page"}
                    {if $page.type === 'page'}
                        {assign var="last_page" value=$page}
                    {/if}
                {/foreach}
                <a class="flex items-center border px-4 py-2 font-normal text-dark-blue-500 border-neutral-150 hover:border-dark-blue-300 hover:bg-petrol-50"
                    href="{$last_page.url}#product-grid" aria-label="ostatnia" data-testid="GridPaginationLink">
                    <svg aria-hidden="true" data-testid="ChevronRightDuo" xmlns="http://www.w3.org/2000/svg" width="24"
                        height="24" fill="none" viewBox="0 0 24 24">
                        <path fill="#001489"
                            d="M13 17a1 1 0 0 1-.707-1.707L15.586 12l-3.293-3.293a1 1 0 1 1 1.414-1.414l4 4a1 1 0 0 1 0 1.414l-4 4A1 1 0 0 1 13 17m-6 0a1 1 0 0 1-.707-1.707L9.586 12 6.293 8.707a1 1 0 1 1 1.414-1.414l4 4a1 1 0 0 1 0 1.414l-4 4A1 1 0 0 1 7 17">
                        </path>
                    </svg>
                </a>
            </div>
        </div>
    </div>
{/if}