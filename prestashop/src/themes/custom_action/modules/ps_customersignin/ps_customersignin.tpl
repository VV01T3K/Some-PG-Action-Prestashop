<div class="relative max-w-[244px]">
  {if $logged}
    <a class="text-dark-blue-500 flex items-center gap-1 rounded-md p-2 font-medium outline-offset-2 hover:bg-neutral-50"
      href="{$urls.pages.my_account}" rel="nofollow" aria-label="{l s='Sign out' d='Shop.Theme.Actions'}" data-testid='header-login-button'>
      <svg aria-hidden="true" data-testid="User01" class="shrink-0" xmlns="http://www.w3.org/2000/svg" width="24"
        height="24" fill="none" viewBox="0 0 24 24">
        <path fill="#001489"
          d="M19 22a1 1 0 0 1-1-1c0-3.309-2.691-6-6-6s-6 2.691-6 6a1 1 0 1 1-2 0c0-4.411 3.589-8 8-8s8 3.589 8 8a1 1 0 0 1-1 1m-7-10c-2.757 0-5-2.243-5-5s2.243-5 5-5 5 2.243 5 5-2.243 5-5 5m0-8c-1.654 0-3 1.346-3 3s1.346 3 3 3 3-1.346 3-3-1.346-3-3-3">
        </path>
      </svg>
      <div class="hidden min-w-0 md:block" data-testid="header-login-button-text">
        <div class="Skeleton_default__fyGN4">
          <div class="truncate">{$customerName}</div>
        </div>
      </div>
    </a>
  {else}
    <a class="text-dark-blue-500 flex items-center gap-1 rounded-md p-2 font-medium outline-offset-2 hover:bg-neutral-50"
      href="{$urls.pages.my_account}" rel="nofollow"
      aria-label="{l s='Log in to your customer account' d='Shop.Theme.Customeraccount'}"
      data-testid='header-login-button'>
      <svg aria-hidden="true" data-testid="User01" class="shrink-0" xmlns="http://www.w3.org/2000/svg" width="24"
        height="24" fill="none" viewBox="0 0 24 24">
        <path fill="#001489"
          d="M19 22a1 1 0 0 1-1-1c0-3.309-2.691-6-6-6s-6 2.691-6 6a1 1 0 1 1-2 0c0-4.411 3.589-8 8-8s8 3.589 8 8a1 1 0 0 1-1 1m-7-10c-2.757 0-5-2.243-5-5s2.243-5 5-5 5 2.243 5 5-2.243 5-5 5m0-8c-1.654 0-3 1.346-3 3s1.346 3 3 3 3-1.346 3-3-1.346-3-3-3">
        </path>
      </svg>
      <div class="hidden min-w-0 md:block" data-testid="header-login-button-text">
        <div class="Skeleton_default__fyGN4">
          <div class="truncate">{l s='Sign in' d='Shop.Theme.Actions'}</div>
        </div>
      </div>
    </a>
  {/if}
  <div
    class="bg-orange pointer-events-none absolute top-1.5 right-0.5 flex h-4 w-4 items-center justify-center rounded-full py-0.5 md:hidden"
    data-testid="header-login-button-check"><svg aria-hidden="true" data-testid="Check"
      xmlns="http://www.w3.org/2000/svg" width="14" height="14" fill="none" viewBox="0 0 24 24">
      <path fill="#ffffff"
        d="M10.24 17.243a1 1 0 0 1-.707-.293l-4.24-4.243a1 1 0 0 1 1.415-1.414l3.533 3.536 7.782-7.78a1 1 0 1 1 1.414 1.415l-8.49 8.486a1 1 0 0 1-.707.293">
      </path>
    </svg>
  </div>
</div>