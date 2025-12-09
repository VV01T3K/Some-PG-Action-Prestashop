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
{* 
{block name='page_title'}
  {l s='Forgot your password?' d='Shop.Theme.Customeraccount'}
{/block} *}

{block name='page_content'}
  <main id="layout-page-content" class="relative flex flex-1 flex-col">
    <div class="px-4 md:hidden" data-testid="mobile-search"></div>
    <div class="relative flex w-full flex-col px-4 lg:px-8">
      <div class="mx-auto w-full max-w-7xl">
        <div class="mt-6 pb-8 md:max-w-sm">
<h1 class="heading-2xl">{l s='Zresetuj hasło' d='Shop.Theme.Customeraccount'}</h1>
          <p class="my-6">
{l s='Nie pamiętasz hasła? Bez obaw! Wprowadź swój adres e-mail poniżej. W ciągu kilku minut otrzymasz link do zresetowania hasła.' d='Shop.Theme.Customeraccount'}</p>
          
          {if $errors|count}
            <div class="mb-4">
              <div class="text-neutral-0 flex gap-2 p-2 text-sm bg-error-500" data-testid="error-alert">
                <div class="flex items-center">
                  <svg aria-hidden="true" data-testid="CircleWarningSolid" xmlns="http://www.w3.org/2000/svg"
                    width="20" height="20" fill="none" viewBox="0 0 24 24">
                    <path fill="#ffffff" fill-rule="evenodd"
                      d="M12 22C6.486 22 2 17.514 2 12S6.486 2 12 2s10 4.486 10 10-4.486 10-10 10m-1.05-6.45c0 .552.548 1 1.1 1a1 1 0 0 0 1-1v-.1c0-.552-.548-1-1.1-1s-1 .548-1 1.1m.05-3.1a1 1 0 0 0 2 0v-4a1 1 0 0 0-2 0z"
                      clip-rule="evenodd"></path>
                  </svg>
                </div>
                <div class="flex w-full flex-col items-start">
                  {foreach $errors as $error}
                    {$error}<br>
                  {/foreach}
                </div>
              </div>
            </div>
          {/if}

          <form action="{$urls.pages.password}" method="post" novalidate="" data-testid="forgot-password-form" class="flex flex-col gap-6">
            <div data-testid="email-input">
              <label class="text-base mb-2 block text-neutral-700" for="email" data-testid="input-label">
                <span class="text-neutral-900">{l s='Email address' d='Shop.Forms.Labels'}<span class="text-error" aria-label="To pole jest obowiązkowe"> *</span></span>
              </label>
              <div class="relative">
                <input id="email"
                  class="bg-neutral-0 box-border w-full p-2.5 text-neutral-900 outline-none rounded-lg border-2 placeholder:text-neutral disabled:text-neutral disabled:cursor-not-allowed disabled:bg-neutral-50 focus:border-dark-blue border-neutral-300"
                  data-testid="input" required="" type="email" autocomplete="username" placeholder="{l s='Email address' d='Shop.Forms.Labels'}" name="email"
                  value="{if isset($smarty.post.email)}{$smarty.post.email|stripslashes}{/if}">
              </div>
            </div>
            
            <button type="submit" name="submit"
              class="relative box-border flex max-w-full items-center justify-center gap-1 rounded-full text-base font-medium py-2.5 px-5 bg-dark-blue-500 text-neutral-0 hover:bg-dark-blue-300 active:bg-dark-blue-700 focus:bg-dark-blue-300 focus:outline focus:outline-2 focus:outline-dark-blue-500 focus:outline-offset-2 disabled:bg-neutral-150 disabled:text-neutral-700 disabled:outline disabled:outline-1 disabled:outline-neutral w-full"
              data-testid="submit-button">
              <span class="truncate px-1">{l s='
Wyślij e-mail' d='Shop.Theme.Actions'}</span>
            </button>
          </form>
          
          <div class="relative mt-8 mb-6 min-h-5" aria-hidden="true">
            <div class="absolute inset-0 flex items-center">
              <div class="w-full border-t-2 border-neutral-300"></div>
            </div>
          </div>
          
          <section>
            <a class="text-dark-blue-500 underline" href="{$urls.pages.my_account}" data-testid="back-to-login-link">
              {l s='Back to login' d='Shop.Theme.Actions'}
            </a>
          </section>
        </div>
      </div>
    </div>
  </main>
{/block}

{block name='page_footer'}
{/block}
