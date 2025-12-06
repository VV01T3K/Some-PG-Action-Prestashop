{if !$stepper_data['is_gift']}
<div aria-hidden="true" data-testid="quantity-stepper" class="neutral-700 flex h-8 items-center rounded-3xl border-0 bg-neutral-50 w-30" data-product-id="{$stepper_data['product_id']}" data-attribute-id="{$stepper_data['product_attribute_id']}">
    <button data-testid="quantity-stepper-decrement" class="h-8 w-10" data-delete-url="{$stepper_data['delete_url']}" aria-label="Decrease quantity">
        <svg aria-hidden="true" data-testid="RemoveMinus" class="mx-auto" xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="none" viewBox="0 0 24 24">
            <path fill="#505862" d="M18 13H6a1 1 0 1 1 0-2h12a1 1 0 1 1 0 2"></path>
        </svg>
    </button>
    <div class="text-body-small-medium w-10 text-center font-bold js-cart-line-product-quantity" data-up-url="{$stepper_data['up_url']}" data-down-url="{$stepper_data['down_url']}">{$stepper_data['quantity']}</div>
    <div class="flex w-10 items-center">
        <button class="h-8 w-full" data-testid="quantity-stepper-increment" aria-label="Increase quantity">
            <svg aria-hidden="true" data-testid="AddPlus" class="mx-auto" xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="none" viewBox="0 0 24 24">
                <path fill="#505862" d="M12 19a1 1 0 0 1-1-1v-5H6a1 1 0 1 1 0-2h5V6a1 1 0 1 1 2 0v5h5a1 1 0 1 1 0 2h-5v5a1 1 0 0 1-1 1"></path>
            </svg>
        </button>
    </div>
</div>
{/if}
