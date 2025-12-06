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
<style>
  /* Inline 404 styles (scoped to this template) */
  .page-not-found {
    display: flex;
    align-items: center;
    justify-content: center;
    padding: 4rem 1rem;
    background: linear-gradient(180deg, #ffffff 0%, #fbfdff 100%);
    color: #111827;
  }

  .page-not-found .page-content {
    max-width: 880px;
    text-align: center;
    padding: 2rem;
    border-radius: 12px;
  }

  .page-not-found h4 {
    font-size: 2rem;
    margin: 0 0 0.75rem 0;
    color: #0b1220;
    font-weight: 800;
    letter-spacing: -0.02em;
  }

  .page-not-found p {
    color: #475569;
    font-size: 1.05rem;
    margin: 0 0 1.25rem 0;
  }

  .page-not-found .btn-back-home {
    display: inline-block;
    background: #0f1724;
    color: #ffffff;
    padding: 0.625rem 1rem;
    border-radius: 8px;
    text-decoration: none;
    font-weight: 600;
    box-shadow: 0 6px 20px rgba(2,6,23,0.08);
    transition: transform .12s ease, box-shadow .12s ease, opacity .12s ease;
  }

  .page-not-found .btn-back-home:hover {
    transform: translateY(-2px);
    box-shadow: 0 10px 30px rgba(2,6,23,0.12);
    opacity: 0.98;
  }

  @media (max-width: 640px) {
    .page-not-found {
      padding: 2rem 0.75rem;
    }

    .page-not-found h4 {
      font-size: 1.5rem;
    }
  }
</style>

<section id="content" class="page-content page-not-found">
  {block name='page_content'}
    {block name="error_content"}
      {if isset($errorContent)}
        {$errorContent nofilter}
      {else}
        <h4>{l s='This page could not be found' d='Shop.Theme.Global'}</h4>
        <p>{l s='Try to search our catalog, you may find what you are looking for!' d='Shop.Theme.Global'}</p>
      {/if}
    {/block}

    {* {block name='search'}
      {hook h='displaySearch'}
    {/block}

    {block name='hook_not_found'}
      {hook h='displayNotFound'}
    {/block} *}
  {/block}
</section>
