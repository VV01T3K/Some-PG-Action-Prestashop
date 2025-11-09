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
<div class="container mx-auto px-4 md:px-6 lg:px-12">
  <div class="flex flex-col">
    {block name='hook_footer_before'}
      {hook h='displayFooterBefore'}
    {/block}
  </div>
</div>
<div class="footer-container bg-neutral-50 mt-8 pt-8">
  <div class="container mx-auto px-4 md:px-6 lg:px-12">
    <div class="flex flex-wrap gap-8">
      {block name='hook_footer'}
        {hook h='displayFooter'}
      {/block}
    </div>
    <div class="flex flex-wrap gap-4 mt-4">
      {block name='hook_footer_after'}
        {hook h='displayFooterAfter'}
      {/block}
    </div>
    <div class="mt-4">
      <div>
        <p class="text-center text-body-small text-neutral-500">
          {block name='copyright_link'}
            <a href="https://www.prestashop.com" target="_blank" rel="noopener noreferrer nofollow">
              {l s='%copyright% %year% - Ecommerce software by %prestashop%' sprintf=['%prestashop%' => 'PrestaShop™', '%year%' => 'Y'|date, '%copyright%' => '©'] d='Shop.Theme.Global'}
            </a>
          {/block}
        </p>
      </div>
    </div>
  </div>
</div>