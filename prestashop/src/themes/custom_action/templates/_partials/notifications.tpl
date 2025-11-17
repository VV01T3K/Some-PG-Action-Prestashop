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

{if isset($notifications)}
  <aside id="notifications">
    <div>
      {if $notifications.error}
        {block name='notifications_error'}
          <div class="mb-4">
            <div class="text-neutral-0 flex gap-2 p-2 text-sm bg-error-500" data-testid="error-alert">
              <div class="flex items-center">
                <svg aria-hidden="true" data-testid="CircleWarningSolid" xmlns="http://www.w3.org/2000/svg" width="20"
                  height="20" fill="none" viewBox="0 0 24 24">
                  <path fill="#ffffff" fill-rule="evenodd"
                    d="M12 22C6.486 22 2 17.514 2 12S6.486 2 12 2s10 4.486 10 10-4.486 10-10 10m-1.05-6.45c0 .552.548 1 1.1 1a1 1 0 0 0 1-1v-.1c0-.552-.548-1-1.1-1s-1 .548-1 1.1m.05-3.1a1 1 0 0 0 2 0v-4a1 1 0 0 0-2 0z"
                    clip-rule="evenodd"></path>
                </svg>
              </div>
              <div class="flex w-full flex-col items-start">
                {foreach $notifications.error as $notif}
                  {$notif nofilter}<br>
                {/foreach}
              </div>
            </div>
          </div>
        {/block}
      {/if}

      {if $notifications.warning}
        {block name='notifications_warning'}
<article class="alert alert-warning mt-2 text-neutral-700 italic" role="alert" data-alert="warning">
            <ul>
              {foreach $notifications.warning as $notif}
                <li>{$notif nofilter}</li>
              {/foreach}
            </ul>
          </article>
        {/block}
      {/if}

      {if $notifications.success}
        {block name='notifications_success'}
          <article class="alert alert-success" role="alert" data-alert="success">
            <ul>
              {foreach $notifications.success as $notif}
                <li>{$notif nofilter}</li>
              {/foreach}
            </ul>
          </article>
        {/block}
      {/if}

      {if $notifications.info}
        {block name='notifications_info'}
          <article class="alert alert-info" role="alert" data-alert="info">
            <ul>
              {foreach $notifications.info as $notif}
                <li>{$notif nofilter}</li>
              {/foreach}
            </ul>
          </article>
        {/block}
      {/if}
    </div>
  </aside>
{/if}