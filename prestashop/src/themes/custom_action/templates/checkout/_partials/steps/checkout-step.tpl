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
  :root {
    --color-primary: #001489;
    --color-primary-dark: #000b4a;
    --color-gray-200: #e5e7eb;
    --color-gray-300: #d1d5db;
    --color-success: #07bc0c;
    --text-sm: 0.875rem;
    --font-weight-semibold: 600;
    --transition-duration: 0.15s;
    --transition-timing: cubic-bezier(0.4, 0, 0.2, 1);
  }

  body#checkout section.checkout-step {
    padding: 1.5rem;
    background-color: #ffffff;
    border: 1px solid var(--color-gray-200);
    border-radius: 0.5rem;
    margin-bottom: 1.5rem;
    box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1);
  }

  body#checkout section.checkout-step .step-title {
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding-bottom: 1rem;
    margin-bottom: 0;
    font-size: 1.25rem;
    font-weight: var(--font-weight-semibold);
    color: var(--color-primary);
    text-transform: none;
    cursor: pointer;
    border-bottom: none;
  }

  body#checkout section.checkout-step .step-title .done {
    display: none !important;
    visibility: hidden;
  }

  body#checkout section.checkout-step.-reachable.-complete .step-title .done {
    display: none !important;
    visibility: hidden;
  }

  body#checkout section.checkout-step .step-title .step-number {
    display: inline-flex;
    align-items: center;
    justify-content: center;
    width: 32px;
    height: 32px;
    margin-right: 0.75rem;
    font-size: 0.875rem;
    font-weight: 700;
    color: #ffffff;
    background-color: var(--color-gray-300);
    border: none;
    border-radius: 50%;
    transition: background-color var(--transition-duration) var(--transition-timing);
  }

  body#checkout section.checkout-step.-reachable.-current .step-number {
    background-color: var(--color-primary);
  }

  body#checkout section.checkout-step.-reachable.-complete .step-number {
    background-color: var(--color-success);
    content: "✓";
  }

  body#checkout section.checkout-step .step-edit {
    font-weight: 500;
    text-transform: lowercase;
    color: var(--color-primary);
    cursor: pointer;
  }

  body#checkout section.checkout-step .step-edit .edit {
    font-size: 1rem;
  }

  body#checkout section.checkout-step .content {
    padding: 0;
    display: none;
  }

  body#checkout section.checkout-step.-current .content {
    display: block;
  }

  body#checkout section.checkout-step.-unreachable .step-title {
    cursor: not-allowed;
    opacity: 0.5;
  }

  body#checkout section.checkout-step.-current .step-title {
    cursor: default;
  }

  /* Content styling */
  body#checkout section.checkout-step .content {
    color: #505862;
    font-size: 0.95rem;
    line-height: 1.6;
  }

  body#checkout section.checkout-step .content p {
    margin: 0.75rem 0;
  }

  body#checkout section.checkout-step .content a {
    color: var(--color-primary);
    text-decoration: none;
    font-weight: 500;
    transition: color var(--transition-duration) var(--transition-timing);
  }

  body#checkout section.checkout-step .content a:hover {
    color: var(--color-primary-dark);
    text-decoration: underline;
  }

  body#checkout section.checkout-step .content small {
    color: #9ca3af;
    font-size: 0.875rem;
  }

  body#checkout section.checkout-step .content .clearfix {
    margin-top: 1.5rem;
    padding-top: 1.5rem;
    border-top: 1px solid var(--color-gray-200);
    display: flex;
    justify-content: flex-end;
    overflow: auto;
  }

  body#checkout section.checkout-step .content .clearfix form {
    display: flex;
    justify-content: flex-end;
    width: 100%;
  }

  /* Delivery options styling */
  body#checkout section.checkout-step .content .delivery-options-list {
    width: 100%;
  }

  body#checkout section.checkout-step .content .delivery-options-list form {
    display: flex;
    flex-direction: column;
  }

  body#checkout section.checkout-step .content .delivery-options-list .form-fields {
    flex: 1;
  }

  body#checkout section.checkout-step .content .delivery-options {
    display: flex;
    flex-direction: column;
    gap: 1rem;
    margin-bottom: 1.5rem;
  }

  body#checkout section.checkout-step .content .delivery-option {
    padding: 1rem;
    border: 2px solid var(--color-gray-200);
    border-radius: 0.5rem;
    background-color: #ffffff;
    cursor: pointer;
    transition: all var(--transition-duration) var(--transition-timing);
    margin: 0;
  }

  body#checkout section.checkout-step .content .delivery-option:hover {
    border-color: var(--color-primary);
    box-shadow: 0 2px 8px rgba(0, 20, 137, 0.1);
  }

  body#checkout section.checkout-step .content .delivery-option input[type="radio"]:checked {
    accent-color: var(--color-primary);
  }

  body#checkout section.checkout-step .content .delivery-option input[type="radio"]:checked ~ span {
    border-color: var(--color-primary);
  }

  body#checkout section.checkout-step .content .delivery-option-2 {
    display: flex;
    flex-direction: column;
    gap: 0.75rem;
  }

  body#checkout section.checkout-step .content .carrier-delay,
  body#checkout section.checkout-step .content .carrier-price {
    color: #505862;
    font-size: 0.95rem;
  }

  body#checkout section.checkout-step .content .order-options {
    margin-bottom: 1.5rem;
  }

  body#checkout section.checkout-step .content #delivery_message {
    width: 100%;
    padding: 0.75rem;
    border: 1px solid var(--color-gray-200);
    border-radius: 0.5rem;
    font-family: inherit;
    font-size: 0.95rem;
    margin-top: 0.5rem;
  }

  body#checkout section.checkout-step .content #delivery_message:focus {
    outline: none;
    border-color: var(--color-primary);
    box-shadow: 0 0 0 3px rgba(0, 20, 137, 0.1);
  }

  body#checkout section.checkout-step .content .clearfix {
    margin-top: 1.5rem;
    padding-top: 1.5rem;
    border-top: 1px solid var(--color-gray-200);
    overflow: visible;
  }

  body#checkout section.checkout-step .content .clearfix form {
    display: flex;
    flex-direction: column;
    width: 100%;
  }

  body#checkout section.checkout-step .content .clearfix form button {
    align-self: flex-end;
    width: auto;
  }

  /* Checkout authentication tabs */
  body#checkout .checkout-auth {
    margin-top: 1rem;
    padding: 1.5rem;
    border: 1px solid var(--color-gray-200);
    border-radius: 0.75rem;
    background: #f8fafc;
    box-shadow: 0 10px 25px rgba(0, 20, 137, 0.08);
  }

  body#checkout .checkout-auth__nav {
    display: flex;
    gap: 0.75rem;
    padding: 0.25rem;
    border-radius: 9999px;
    border: 1px solid var(--color-gray-200);
    background: #ffffff;
    list-style: none;
    margin-bottom: 1.75rem;
  }

  body#checkout .checkout-auth__item {
    flex: 1;
  }

  body#checkout .checkout-auth__link {
    display: flex;
    align-items: center;
    justify-content: center;
    width: 100%;
    padding: 0.75rem 1rem;
    border-radius: 9999px;
    font-weight: 600;
    font-size: 1rem;
    color: #4b5563;
    text-transform: none;
    transition: all var(--transition-duration) var(--transition-timing);
    background: transparent;
    border: none;
  }

  body#checkout .checkout-auth__link:hover {
    color: var(--color-primary);
  }

  body#checkout .checkout-auth__link.active {
    background: var(--color-primary);
    color: #ffffff !important;
    box-shadow: 0 10px 25px rgba(0, 20, 137, 0.2);
  }

  body#checkout .checkout-auth__link.active:hover,
  body#checkout .checkout-auth__link.active:focus,
  body#checkout .checkout-auth__link.active:focus-visible {
    color: #ffffff !important;
  }

  body#checkout .checkout-auth__content {
    background: #ffffff;
    border-radius: 0.75rem;
    padding: 1rem;
    border: 1px solid var(--color-gray-200);
  }

  body#checkout .checkout-auth__pane {
    display: none;
    animation: fadeIn var(--transition-duration) var(--transition-timing);
  }

  body#checkout .checkout-auth__pane.active {
    display: block;
  }

  body#checkout .checkout-auth [data-checkout-auth-pane][aria-hidden="true"] {
    pointer-events: none;
  }

  body#checkout .checkout-auth [data-checkout-auth-pane][aria-hidden="false"] {
    pointer-events: auto;
  }

  @keyframes fadeIn {
    from {
      opacity: 0;
      transform: translateY(4px);
    }
    to {
      opacity: 1;
      transform: translateY(0);
    }
  }

  @media (max-width: 640px) {
    body#checkout .checkout-auth__nav {
      flex-direction: column;
      border-radius: 1rem;
      padding: 0.5rem;
    }

    body#checkout .checkout-auth__link {
      font-size: 0.95rem;
    }
  }

  body#checkout section.checkout-step .content .form-fields {
    flex: 1;
  }

  body#checkout section.checkout-step .content .clearfix {
    padding-bottom: 1.5rem;
  }

  body#checkout section.checkout-step .content .btn {
    display: inline-flex;
    align-items: center;
    justify-content: center;
    padding: 0.75rem 1.5rem;
    font-size: 1rem;
    font-weight: 500;
    text-align: center;
    border: none;
    border-radius: 0.5rem;
    cursor: pointer;
    transition: all var(--transition-duration) var(--transition-timing);
    white-space: nowrap;
  }

  body#checkout section.checkout-step .content .btn-primary {
    background-color: var(--color-primary);
    color: #ffffff;
  }

  body#checkout section.checkout-step .content .btn-primary:hover {
    background-color: var(--color-primary-dark);
  }

  body#checkout section.checkout-step .content .continue {
    display: inline-flex;
    align-items: center;
    justify-content: center;
    background-color: var(--color-primary) !important;
    color: #ffffff !important;
    padding: 0.75rem 1.5rem;
    font-size: 1rem;
    font-weight: 500;
    border: none;
    border-radius: 0.5rem;
    cursor: pointer;
    transition: all var(--transition-duration) var(--transition-timing);
    white-space: nowrap;
  }

  body#checkout section.checkout-step .content .continue:hover {
    background-color: var(--color-primary-dark) !important;
  }

  body#checkout section.checkout-step .content .float-xs-right {
    float: none;
  }

  /* Address styling */
  body#checkout section.checkout-step .content a[data-link-action="add-address"],
  body#checkout section.checkout-step .content a[href*="newAddress"] {
    display: inline-flex;
    align-items: center;
    gap: 0.5rem;
    color: var(--color-primary);
    text-decoration: none;
    font-weight: 500;
    padding: 0.75rem 1rem;
    border: 1px solid var(--color-primary);
    border-radius: 0.5rem;
    background-color: transparent;
    cursor: pointer;
    transition: all var(--transition-duration) var(--transition-timing);
    margin-top: 1rem;
  }

  body#checkout section.checkout-step .content a[data-link-action="add-address"]:hover,
  body#checkout section.checkout-step .content a[href*="newAddress"]:hover {
    background-color: var(--color-primary);
    color: #ffffff;
  }

  body#checkout section.checkout-step .content a[data-link-action="add-address"] i,
  body#checkout section.checkout-step .content a[href*="newAddress"] i {
    font-size: 1.25rem;
  }

  /* Address footer actions */
  body#checkout section.checkout-step .content .address-footer {
    display: flex;
    gap: 1.5rem;
    margin: 0;
    padding: 0;
  }

  body#checkout section.checkout-step .content .address-footer a {
    display: inline-flex;
    align-items: center;
    justify-content: center;
    gap: 0.5rem;
    color: #ffffff;
    text-decoration: none;
    font-weight: 500;
    font-size: 0.95rem;
    padding: 0.6rem 1rem;
    border: none;
    border-radius: 0.375rem;
    cursor: pointer;
    transition: all var(--transition-duration) var(--transition-timing);
    background-color: var(--color-primary);
  }

  body#checkout section.checkout-step .content .address-footer a:hover {
    background-color: var(--color-primary-dark);
  }

  body#checkout section.checkout-step .content .address-footer a i {
    font-size: 1.125rem;
    display: inline-flex;
    align-items: center;
    justify-content: center;
  }

  body#checkout section.checkout-step .content .edit-address {
    background-color: var(--color-primary);
    color: #ffffff;
  }

  body#checkout section.checkout-step .content .edit-address:hover {
    background-color: var(--color-primary-dark);
    color: #ffffff;
  }

  body#checkout section.checkout-step .content .delete-address {
    background-color: #9ca3af;
    color: #ffffff;
  }

  body#checkout section.checkout-step .content .delete-address:hover {
    background-color: #e74c3c;
    color: #ffffff;
  }

  /* Hide the edit icon inside step-title */
  body#checkout section.checkout-step .step-title .step-edit i {
    display: none;
  }

  body#checkout section.checkout-step .step-title .step-edit {
    margin-left: auto;
    font-size: 0.875rem;
  }

  /* Address Section Styling */
  body#checkout section.checkout-step .content h2 {
    font-size: 1.125rem;
    font-weight: var(--font-weight-semibold);
    color: var(--color-primary);
    margin-bottom: 1.5rem;
    margin-top: 2rem;
  }

  body#checkout section.checkout-step .content h2:first-of-type {
    margin-top: 0;
  }

  body#checkout section.checkout-step .content .address-selector {
    display: grid;
    grid-template-columns: 1fr;
    gap: 1rem;
    margin-bottom: 2rem;
  }

  body#checkout section.checkout-step .content .address-item {
    padding: 1.25rem;
    border: 2px solid var(--color-gray-200);
    border-radius: 0.5rem;
    background-color: #ffffff;
    cursor: pointer;
    transition: all var(--transition-duration) var(--transition-timing);
  }

  body#checkout section.checkout-step .content .address-item:hover {
    border-color: var(--color-primary);
    box-shadow: 0 2px 8px rgba(0, 20, 137, 0.1);
  }

  body#checkout section.checkout-step .content .address-item.selected {
    border-color: var(--color-primary);
    background-color: #f8f9ff;
  }

  body#checkout section.checkout-step .content .address-item header {
    margin-bottom: 0;
  }

  body#checkout section.checkout-step .content .radio-block {
    display: flex;
    flex-direction: column;
    gap: 0.75rem;
    cursor: pointer;
    margin: 0;
    padding: 0;
  }

  body#checkout section.checkout-step .content .custom-radio {
    display: flex;
    align-items: flex-start;
    gap: 0.75rem;
    cursor: pointer;
  }

  body#checkout section.checkout-step .content .custom-radio input[type="radio"] {
    width: 20px;
    height: 20px;
    margin: 0;
    margin-top: 2px;
    cursor: pointer;
    accent-color: var(--color-primary);
  }

  body#checkout section.checkout-step .content .custom-radio span:not(input) {
    display: none;
  }

  body#checkout section.checkout-step .content .address-alias {
    font-weight: 600;
    color: #1a202c;
    font-size: 1rem;
    margin: 0;
  }

  body#checkout section.checkout-step .content .address {
    font-size: 0.95rem;
    color: #505862;
    line-height: 1.6;
    margin-top: 0.5rem;
  }

  body#checkout section.checkout-step .content .address-item hr {
    margin: 1rem 0;
    border: none;
    border-top: 1px solid var(--color-gray-200);
  }

  body#checkout section.checkout-step .content .address-footer {
    display: flex;
    gap: 1.5rem;
    margin: 0;
    padding: 0;
  }

  body#checkout section.checkout-step .content .address-footer a {
    display: inline-flex;
    align-items: center;
    justify-content: center;
    gap: 0.5rem;
    color: #ffffff;
    text-decoration: none;
    font-weight: 500;
    font-size: 0.95rem;
    padding: 0.6rem 1rem;
    border: none;
    border-radius: 0.375rem;
    cursor: pointer;
    transition: all var(--transition-duration) var(--transition-timing);
    background-color: var(--color-primary);
  }

  body#checkout section.checkout-step .content .address-footer a:hover {
    background-color: var(--color-primary-dark);
  }

  body#checkout section.checkout-step .content .address-footer a i {
    display: none;
  }

  body#checkout section.checkout-step .content .edit-address {
    background-color: var(--color-primary);
    color: #ffffff;
  }

  body#checkout section.checkout-step .content .edit-address:hover {
    background-color: var(--color-primary-dark);
    color: #ffffff;
  }

  body#checkout section.checkout-step .content .delete-address {
    background-color: #9ca3af;
    color: #ffffff;
  }

  body#checkout section.checkout-step .content .delete-address:hover {
    background-color: #e74c3c;
    color: #ffffff;
  }

  body#checkout section.checkout-step .content .add-address {
    margin: 1.5rem 0;
    padding: 0;
  }

  body#checkout section.checkout-step .content .add-address a {
    display: inline-flex;
    align-items: center;
    gap: 0.5rem;
    color: var(--color-primary);
    text-decoration: none;
    font-weight: 500;
    padding: 0.75rem 1rem;
    border: 1px solid var(--color-primary);
    border-radius: 0.5rem;
    background-color: transparent;
    cursor: pointer;
    transition: all var(--transition-duration) var(--transition-timing);
  }

  body#checkout section.checkout-step .content .add-address a:hover {
    background-color: var(--color-primary);
    color: #ffffff;
  }

  body#checkout section.checkout-step .content .add-address a i {
    display: none;
  }

  /* Alert styling */
  body#checkout section.checkout-step .content .alert {
    padding: 1rem;
    margin-bottom: 1.5rem;
    border-radius: 0.5rem;
    border-left: 4px solid;
  }

  body#checkout section.checkout-step .content .alert-danger {
    background-color: #fee;
    border-color: #e74c3c;
    color: #c0392b;
  }

  /* Payment section styling */
  body#checkout section.checkout-step .content .payment-options {
    margin-bottom: 1.5rem;
  }

  body#checkout section.checkout-step .content .payment-option {
    padding: 1rem;
    border: 2px solid var(--color-gray-200);
    border-radius: 0.5rem;
    background-color: #ffffff;
    cursor: pointer;
    transition: all var(--transition-duration) var(--transition-timing);
    margin-bottom: 1rem;
    display: flex;
    align-items: flex-start;
    gap: 1rem;
  }

  body#checkout section.checkout-step .content .payment-option:hover {
    border-color: var(--color-primary);
    box-shadow: 0 2px 8px rgba(0, 20, 137, 0.1);
  }

  body#checkout section.checkout-step .content .payment-option input[type="radio"]:checked {
    accent-color: var(--color-primary);
  }

  body#checkout section.checkout-step .content .payment-option label {
    cursor: pointer;
    margin: 0;
    flex: 1;
  }

  body#checkout section.checkout-step .content .additional-information {
    padding: 1rem;
    background-color: #f9f9f9;
    border-left: 4px solid var(--color-primary);
    border-radius: 0.5rem;
    margin-bottom: 1.5rem;
  }

  body#checkout section.checkout-step .content .js-conditions-to-approve {
    margin-bottom: 1.5rem;
    padding: 1rem;
    background-color: #f9f9f9;
    border-radius: 0.5rem;
  }

  body#checkout section.checkout-step .content .js-conditions-to-approve ul {
    list-style: none;
    padding: 0;
    margin: 0;
  }

  body#checkout section.checkout-step .content .js-conditions-to-approve li {
    display: flex;
    gap: 0.75rem;
    margin-bottom: 0.75rem;
  }

  body#checkout section.checkout-step .content .condition-label {
    flex: 1;
  }

  body#checkout section.checkout-step .content .condition-label label {
    cursor: pointer;
    margin: 0;
    font-size: 0.95rem;
    line-height: 1.5;
  }

  body#checkout section.checkout-step .content .js-payment-confirmation {
    display: flex;
    justify-content: flex-end;
    padding-top: 1.5rem;
    border-top: 1px solid var(--color-gray-200);
  }

  body#checkout section.checkout-step .content .js-payment-confirmation .btn {
    width: auto;
    padding: 0.75rem 2rem;
  }

  body#checkout section.checkout-step .content .js-payment-confirmation .btn.disabled {
    opacity: 0.5;
    cursor: not-allowed;
  }

  /* Order summary styling */
  body#checkout .card {
    background-color: #f9f9f9;
    padding: 1.5rem;
    border-radius: 0.5rem;
    border: 1px solid var(--color-gray-300);
    box-shadow: 0 1px 3px rgba(0, 0, 0, 0.05);
  }

  body#checkout .card-block {
    padding: 0;
  }

  body#checkout .card-block + .card-block {
    padding-top: 1.5rem;
    border-top: 1px solid var(--color-gray-200);
  }

  body#checkout .js-checkout-summary {
    margin-top: 1.5rem;
  }

  body#checkout .cart-summary-products {
    margin-bottom: 1.5rem;
  }

  body#checkout .cart-summary-products a {
    color: var(--color-primary);
    text-decoration: none;
    display: none;
    align-items: center;
    gap: 0.5rem;
    font-weight: 500;
  }

  body#checkout .cart-summary-products a:hover {
    text-decoration: underline;
  }

  body#checkout .cart-summary-products i {
    font-size: 1.25rem;
    display: none;
  }

  body#checkout .cart-summary-product-list {
    margin-top: 1rem;
  }

  body#checkout .collapse {
    display: block !important;
    visibility: visible !important;
    max-height: none !important;
    height: auto !important;
    overflow: visible !important;
    opacity: 1 !important;
    transition: none !important;
  }

  body#checkout .collapse.in {
    display: block !important;
    visibility: visible !important;
    max-height: none !important;
    height: auto !important;
    overflow: visible !important;
    opacity: 1 !important;
  }

  body#checkout #cart-summary-product-list {
    display: block !important;
    visibility: visible !important;
    max-height: none !important;
    height: auto !important;
    overflow: visible !important;
  }

  body#checkout .media-list {
    list-style: none;
    padding: 0;
    margin: 0;
  }

  body#checkout .media {
    display: flex;
    gap: 1rem;
    padding: 1rem 0;
    border-bottom: 1px solid var(--color-gray-200);
    margin: 0;
  }

  body#checkout .media:last-child {
    border-bottom: none;
  }

  body#checkout .media-left {
    flex-shrink: 0;
    display: block !important;
    visibility: visible !important;
  }

  body#checkout .media-left a {
    display: block !important;
    visibility: visible !important;
  }

  body#checkout .media-object {
    width: 80px;
    height: 80px;
    object-fit: cover;
    border-radius: 0.375rem;
    display: block !important;
    visibility: visible !important;
  }

  body#checkout .media-body {
    flex: 1;
    display: flex;
    flex-direction: column;
    gap: 0.5rem;
  }

  body#checkout .product-name a {
    color: #1a202c;
    text-decoration: none;
    font-weight: 500;
  }

  body#checkout .product-name a:hover {
    color: var(--color-primary);
  }

  body#checkout .product-quantity {
    font-weight: 500;
    color: #505862;
    font-size: 0.9rem;
    display: flex;
    align-items: center;
    gap: 0.5rem;
    margin-top: 0.25rem;
  }

  body#checkout .product-quantity .quantity-label {
    font-weight: 600;
    color: #1a202c;
  }

  body#checkout .product-quantity .quantity-value {
    font-weight: 600;
    color: var(--color-primary);
  }

  body#checkout .product-price {
    font-weight: 600;
    color: var(--color-primary);
    font-size: 1rem;
    float: none !important;
    display: inline;
    text-align: left;
  }

  body#checkout .product-price::after {
    content: " /szt.";
    font-size: 0.85rem;
    font-weight: 500;
  }

  body#checkout .media-body {
    flex: 1;
    display: flex;
    flex-direction: column;
    gap: 0.5rem;
  }

  body#checkout .product-info-wrapper {
    display: flex;
    justify-content: space-between;
    align-items: flex-start;
    gap: 1rem;
  }

  body#checkout .cart-summary-subtotals-container {
    margin-bottom: 1.5rem;
  }

  body#checkout .cart-summary-line {
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 0.75rem 0;
    font-size: 0.95rem;
  }

  body#checkout .cart-summary-line.cart-total {
    padding: 1rem 0;
    border-top: 2px solid var(--color-primary);
    font-size: 1.125rem;
    font-weight: 600;
    color: #1a202c;
  }

  body#checkout .cart-summary-line .label {
    color: #505862;
  }

  body#checkout .cart-summary-line .value {
    color: #1a202c;
    font-weight: 500;
  }

  body#checkout .cart-total .value {
    color: var(--color-primary);
    font-weight: 600;
  }
</style>

{block name='step'}
  <section  id    = "{$identifier}"
            class = "{[
                        'checkout-step'   => true,
                        '-current'        => $step_is_current,
                        '-reachable'      => $step_is_reachable,
                        '-complete'       => $step_is_complete,
                        'js-current-step' => $step_is_current
                    ]|classnames}"
  >
    <h1 class="step-title js-step-title h3">
      <i class="material-icons rtl-no-flip done">&#xE876;</i>
      <span class="step-number">{$position}</span>
      {$title}
      <span class="step-edit text-muted"><i class="material-icons edit">mode_edit</i> {l s='Edit' d='Shop.Theme.Actions'}</span>
    </h1>

    <div class="content">
      {block name='step_content'}DUMMY STEP CONTENT{/block}
    </div>
  </section>
{/block}
