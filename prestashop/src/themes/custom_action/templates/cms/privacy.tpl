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

{block name='page_content_container'}
  <div style="margin:20px;">
    <h1>{$page_title}</h1>

    <h2>Ochrona danych osobowych</h2>
    <p>Action zobowiązuje się do ochrony Twojej prywatności i danych osobowych zgodnie z przepisami RODO.</p>

    <h2>Jakie dane zbieramy?</h2>
    <p>Zbieramy następujące dane osobowe:</p>
    <ul>
      <li>Imię i nazwisko</li>
      <li>Adres email</li>
      <li>Adres dostawy</li>
      <li>Numer telefonu</li>
    </ul>

    <h2>Jak wykorzystujemy dane?</h2>
    <p>Twoje dane wykorzystujemy wyłącznie w celu:</p>
    <ul>
      <li>Realizacji zamówień</li>
      <li>Kontaktu w sprawach związanych z zakupami</li>
      <li>Wysyłki newslettera (jeśli wyraziłeś zgodę)</li>
    </ul>

    <h2>Twoje prawa</h2>
    <p>Masz prawo do:</p>
    <ul>
      <li>Dostępu do swoich danych</li>
      <li>Poprawiania danych</li>
      <li>Usunięcia danych</li>
      <li>Ograniczenia przetwarzania</li>
      <li>Przenoszenia danych</li>
      <li>Sprzeciwu wobec przetwarzania</li>
    </ul>
  </div>
{/block}
