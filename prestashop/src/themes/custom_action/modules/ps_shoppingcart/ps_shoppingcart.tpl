<div id="_desktop_cart">
  <div class="blockcart cart-preview relative flex {if $cart.products_count > 0}active{else}inactive{/if}"
    data-refresh-url="{$refresh_url}">
    <div class="header">
      <a rel="nofollow" class="btn-base group btn-light w-fit"
        aria-label="{l s='Shopping cart link containing %nbProducts% product(s)' sprintf=['%nbProducts%' => $cart.products_count] d='Shop.Theme.Checkout'}"
        href="{$cart_url}"
        data-testid='shopping-cart'>
        <span class="btn-content-icon">
          <svg aria-hidden="true" data-testid="ShoppingCart" xmlns="http://www.w3.org/2000/svg" width="16" height="16"
            fill="none" viewBox="0 0 24 24">
            <path fill="#505862"
              d="M12 21a1 1 0 0 1-.486-.126C11.126 20.658 2 15.514 2 9c0-3.665 2.218-5.425 4.293-5.849 2.171-.44 4.328.402 5.707 2.113 1.38-1.712 3.537-2.552 5.707-2.113C19.782 3.575 22 5.335 22 9.001c0 6.513-9.126 11.657-9.515 11.873A1 1 0 0 1 12 21M7.4 5.041q-.368 0-.707.07C5.007 5.456 4 6.91 4 9.001c0 4.584 6.197 8.728 8 9.836 1.804-1.108 8-5.252 8-9.837 0-2.09-1.007-3.544-2.693-3.889-1.482-.3-3.479.346-4.387 2.475a1 1 0 0 1-1.84 0C10.31 5.78 8.755 5.04 7.4 5.04">
            </path>
          </svg>
        </span>
        {if $cart.products_count > 0}
          <div class="pointer-events-none absolute top-0 right-0">
            <div class="bg-orange inline-flex rounded-full py-0.5 px-[5px]" data-testid="cart-button-badge">
              <span class="cart-products-count text-caption text-neutral-0"
                data-testid="cart-button-badge-text">{$cart.products_count}</span>
            </div>
          </div>
        {/if}
      </a>
    </div>
  </div>
</div>