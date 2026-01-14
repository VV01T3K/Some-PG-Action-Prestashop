<?php
/**
 * AJAX Controller for Viewed Products Custom Module
 */

class Ps_ViewedProducts_CustomAjaxModuleFrontController extends ModuleFrontController
{
    public function initContent()
    {
        parent::initContent();

        header('Content-Type: application/json');

        $productIds = Tools::getValue('product_ids');
        $currentProductId = (int) Tools::getValue('current_product_id', 0);

        if (empty($productIds)) {
            die(json_encode(['html' => '']));
        }

        // Parse product IDs
        if (is_string($productIds)) {
            $productIds = explode(',', $productIds);
        }

        $productIds = array_map('intval', $productIds);
        $productIds = array_filter($productIds, function($id) use ($currentProductId) {
            return $id > 0 && $id !== $currentProductId;
        });

        if (empty($productIds)) {
            die(json_encode(['html' => '']));
        }

        // Limit to 8 products
        $productIds = array_slice($productIds, 0, 8);

        $products = $this->getProductsByIds($productIds);

        if (empty($products)) {
            die(json_encode(['html' => '']));
        }

        $this->context->smarty->assign([
            'products' => $products,
        ]);

        $templateFile = 'module:ps_viewedproducts_custom/views/templates/hook/ps_viewedproducts_custom.tpl';
        $html = $this->context->smarty->fetch($templateFile);

        die(json_encode(['html' => $html]));
    }

    /**
     * Get products by their IDs with full presentation
     */
    protected function getProductsByIds(array $productIds)
    {
        $assembler = new ProductAssembler($this->context);
        $presenterFactory = new ProductPresenterFactory($this->context);
        $presentationSettings = $presenterFactory->getPresentationSettings();

        if (version_compare(_PS_VERSION_, '1.7.5', '>=')) {
            $presenter = new \PrestaShop\PrestaShop\Adapter\Presenter\Product\ProductListingPresenter(
                new \PrestaShop\PrestaShop\Adapter\Image\ImageRetriever($this->context->link),
                $this->context->link,
                new \PrestaShop\PrestaShop\Adapter\Product\PriceFormatter(),
                new \PrestaShop\PrestaShop\Adapter\Product\ProductColorsRetriever(),
                $this->context->getTranslator()
            );
        } else {
            $presenter = new \PrestaShop\PrestaShop\Core\Product\ProductListingPresenter(
                new \PrestaShop\PrestaShop\Adapter\Image\ImageRetriever($this->context->link),
                $this->context->link,
                new \PrestaShop\PrestaShop\Adapter\Product\PriceFormatter(),
                new \PrestaShop\PrestaShop\Adapter\Product\ProductColorsRetriever(),
                $this->context->getTranslator()
            );
        }

        $products_for_template = [];

        // Prepare raw products array
        $rawProducts = [];
        foreach ($productIds as $productId) {
            $rawProducts[] = ['id_product' => (int) $productId];
        }

        // Assemble in bulk if available
        $assembleInBulk = method_exists($assembler, 'assembleProducts');
        if ($assembleInBulk) {
            $rawProducts = $assembler->assembleProducts($rawProducts);
        }

        foreach ($rawProducts as $rawProduct) {
            try {
                $assembled = $assembleInBulk ? $rawProduct : $assembler->assembleProduct($rawProduct);

                // Check if product is active
                if (empty($assembled) || empty($assembled['active'])) {
                    continue;
                }

                $products_for_template[] = $presenter->present(
                    $presentationSettings,
                    $assembled,
                    $this->context->language
                );
            } catch (Exception $e) {
                // Skip products that can't be assembled (deleted, etc.)
                continue;
            }
        }

        return $products_for_template;
    }
}
