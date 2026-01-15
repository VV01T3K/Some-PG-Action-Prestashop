<?php
/**
 * Custom Viewed Products Module
 * Uses localStorage to track viewed products and fetches product data via AJAX
 */

if (!defined('_PS_VERSION_')) {
    exit;
}

use PrestaShop\PrestaShop\Adapter\Image\ImageRetriever;
use PrestaShop\PrestaShop\Adapter\Product\PriceFormatter;
use PrestaShop\PrestaShop\Adapter\Product\ProductColorsRetriever;
use PrestaShop\PrestaShop\Core\Module\WidgetInterface;

class Ps_ViewedProducts_Custom extends Module implements WidgetInterface
{
    private $templateFile;

    public function __construct()
    {
        $this->name = 'ps_viewedproducts_custom';
        $this->author = 'Custom';
        $this->version = '1.0.0';
        $this->tab = 'front_office_features';
        $this->need_instance = 0;

        $this->ps_versions_compliancy = [
            'min' => '1.7.0.0',
            'max' => _PS_VERSION_,
        ];

        $this->bootstrap = true;
        parent::__construct();

        $this->displayName = $this->trans('Custom Viewed Products', [], 'Modules.Viewedproductscustom.Admin');
        $this->description = $this->trans('Display recently viewed products using localStorage tracking.', [], 'Modules.Viewedproductscustom.Admin');

        $this->templateFile = 'module:ps_viewedproducts_custom/views/templates/hook/ps_viewedproducts_custom.tpl';
    }

    public function install()
    {
        return parent::install()
            && $this->registerHook('displayAjaxViewedProducts');
    }

    public function uninstall()
    {
        return parent::uninstall();
    }

    /**
     * AJAX endpoint to fetch products by IDs
     */
    public function hookDisplayAjaxViewedProducts($params)
    {
        $productIds = Tools::getValue('product_ids');

        if (empty($productIds)) {
            return json_encode(['products' => [], 'html' => '']);
        }

        // Parse product IDs
        if (is_string($productIds)) {
            $productIds = explode(',', $productIds);
        }

        $productIds = array_map('intval', $productIds);
        $productIds = array_filter($productIds, function($id) { return $id > 0; });

        if (empty($productIds)) {
            return json_encode(['products' => [], 'html' => '']);
        }

        $products = $this->getProductsByIds($productIds);

        if (empty($products)) {
            return json_encode(['products' => [], 'html' => '']);
        }

        $this->smarty->assign([
            'products' => $products,
        ]);

        $html = $this->fetch($this->templateFile);

        return json_encode([
            'products' => $products,
            'html' => $html,
        ]);
    }

    public function renderWidget($hookName = null, array $configuration = [])
    {
        $productIds = isset($configuration['product_ids']) ? $configuration['product_ids'] : [];

        if (empty($productIds)) {
            return '';
        }

        $products = $this->getProductsByIds($productIds);

        if (empty($products)) {
            return '';
        }

        $this->smarty->assign([
            'products' => $products,
        ]);

        return $this->fetch($this->templateFile);
    }

    public function getWidgetVariables($hookName = null, array $configuration = [])
    {
        $productIds = isset($configuration['product_ids']) ? $configuration['product_ids'] : [];

        if (empty($productIds)) {
            return false;
        }

        $products = $this->getProductsByIds($productIds);

        if (empty($products)) {
            return false;
        }

        return [
            'products' => $products,
        ];
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
                new ImageRetriever($this->context->link),
                $this->context->link,
                new PriceFormatter(),
                new ProductColorsRetriever(),
                $this->context->getTranslator()
            );
        } else {
            $presenter = new \PrestaShop\PrestaShop\Core\Product\ProductListingPresenter(
                new ImageRetriever($this->context->link),
                $this->context->link,
                new PriceFormatter(),
                new ProductColorsRetriever(),
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
