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
{extends file='page.tpl'}

{* {block name='page_title'}
  {l s='Our stores' d='Shop.Theme.Global'}
{/block} *}

{block name='page_content_container'}
  <section class="bg-neutral-0 pt-6 md:pt-8 pb-6 md:pb-8" aria-label="{l s='Our stores' d='Shop.Theme.Global'}">
    <div class="relative flex w-full flex-col px-4 lg:px-8">
      <div class="mx-auto w-full max-w-7xl">
        <div class="flex flex-col gap-4" data-content-king="rich-text">
          <div class="flex max-w-[800px] flex-col gap-3">
            <h1 class="heading-2xl text-dark-blue-500">{l s='Our stores' d='Shop.Theme.Global'}</h1>
            <p class="text-body-normal text-neutral-900">
              Znajdź najbliższy sklep Action i odkryj wszystkie potrzebne informacje.
          </div>
        </div>
      </div>
    </div>
  </section>

  {foreach $stores as $store}
    <section class="{if $store@iteration is odd}bg-neutral-50{else}bg-neutral-0{/if} pt-6 md:pt-8 pb-6 md:pb-8"
      aria-label="{$store.name}">
      <div class="relative flex w-full flex-col px-4 lg:px-8">
        <div class="mx-auto w-full max-w-7xl">
          <div class="flex flex-col gap-4" data-content-king="rich-text">
            <div class="flex max-w-[800px] flex-col gap-3">
              <h2 class="heading-xl text-dark-blue-500">{$store.name}</h2>

              <div class="grid grid-cols-1 lg:grid-cols-3 gap-6">
                <!-- Store Image -->
                <div class="flex flex-col gap-3">
                  <img src="{$store.image.bySize.stores_default.url}" class="w-full h-48 object-cover rounded-lg shadow-sm"
                    {if !empty($store.image.legend)} alt="{$store.image.legend}" title="{$store.image.legend}" 
                    {else}
                    alt="{$store.name}" {/if}>
                </div>

                <!-- Store Information -->
                <div class="flex flex-col gap-3 lg:col-span-2">
                  <div class="flex flex-col gap-2">
                    <h3 class="heading-lg text-dark-blue-500">Adres</h3>
                    <address class="text-body-normal text-neutral-900 not-italic">
                      {$store.address.formatted nofilter}
                    </address>
                  </div>

                  <div class="flex flex-col gap-2">
                    <h3 class="heading-lg text-dark-blue-500">{l s='Opening hours' d='Shop.Theme.Global'}</h3>
                    <div class="grid grid-cols-1 sm:grid-cols-2 gap-2">
                      {foreach $store.business_hours as $day}
                        <div class="flex justify-between items-center py-1 px-3 bg-white rounded border">
                          <span class="text-body-small text-neutral-700 font-medium">{$day.day|truncate:4:'.'}</span>
                          <div class="flex flex-col text-right">
                            {foreach $day.hours as $h}
                              <span class="text-body-small text-neutral-900">{$h}</span>
                            {/foreach}
                          </div>
                        </div>
                      {/foreach}
                    </div>
                  </div>

                  {if $store.note || $store.phone || $store.fax || $store.email}
                    <div class="flex flex-col gap-2">
                      <h3 class="heading-lg text-dark-blue-500">{l s='About and Contact' d='Shop.Theme.Global'}</h3>
                      <div class="bg-white p-4 rounded-lg border shadow-sm">
                        {if $store.note}
                          <div class="mb-4">
                            <p class="text-body-normal text-neutral-900 leading-relaxed">{$store.note}</p>
                          </div>
                        {/if}

                        <div class="grid grid-cols-1 sm:grid-cols-3 gap-3">
                          {if $store.phone}
                            <div class="flex items-center gap-3 p-3 bg-neutral-50 rounded-lg">
                              <svg class="w-5 h-5 text-dark-blue-500 flex-shrink-0" fill="none" stroke="currentColor"
                                viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                  d="M3 5a2 2 0 012-2h3.28a1 1 0 01.948.684l1.498 4.493a1 1 0 01-.502 1.21l-2.257 1.13a11.042 11.042 0 005.516 5.516l1.13-2.257a1 1 0 011.21-.502l4.493 1.498a1 1 0 01.684.949V19a2 2 0 01-2 2h-1C9.716 21 3 14.284 3 6V5z">
                                </path>
                              </svg>
                              <span class="text-body-small text-neutral-900">{$store.phone}</span>
                            </div>
                          {/if}
                          {if $store.fax}
                            <div class="flex items-center gap-3 p-3 bg-neutral-50 rounded-lg">
                              <svg class="w-5 h-5 text-dark-blue-500 flex-shrink-0" fill="none" stroke="currentColor"
                                viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                  d="M17 17h2a2 2 0 002-2v-4a2 2 0 00-2-2H5a2 2 0 00-2 2v4a2 2 0 002 2h2m2 4h6a2 2 0 002-2v-4a2 2 0 00-2-2H9a2 2 0 00-2 2v4a2 2 0 002 2zm8-12V5a2 2 0 00-2-2H9a2 2 0 00-2 2v4h10z">
                                </path>
                              </svg>
                              <span class="text-body-small text-neutral-900">{$store.fax}</span>
                            </div>
                          {/if}
                          {if $store.email}
                            <div class="flex items-center gap-3 p-3 bg-neutral-50 rounded-lg">
                              <svg class="w-5 h-5 text-dark-blue-500 flex-shrink-0" fill="none" stroke="currentColor"
                                viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                  d="M3 8l7.89 4.26a2 2 0 002.22 0L21 8M5 19h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z">
                                </path>
                              </svg>
                              <span class="text-body-small text-neutral-900">{$store.email}</span>
                            </div>
                          {/if}
                        </div>
                      </div>
                    </div>
                  {/if}
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
  {/foreach}
{/block}