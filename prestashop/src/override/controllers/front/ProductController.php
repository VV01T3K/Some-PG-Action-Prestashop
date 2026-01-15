<?php

class ProductController extends ProductControllerCore
{
    protected function assignCategory()
    {
        parent::assignCategory();
        
        // Get all categories for the product
        $productCategories = $this->product->getCategories();
        $categoriesList = [];
        
        foreach ($productCategories as $catId) {
            // Skip root and home categories
            if ($catId == 1 || $catId == 2) {
                continue;
            }
            
            $category = new Category($catId, $this->context->language->id);
            if ($category->active && $category->id) {
                $categoriesList[] = [
                    'id' => $category->id,
                    'name' => $category->name,
                    'link' => $this->context->link->getCategoryLink($category),
                ];
            }
        }
        
        $this->context->smarty->assign([
            'product_categories' => $categoriesList,
        ]);
    }
}
