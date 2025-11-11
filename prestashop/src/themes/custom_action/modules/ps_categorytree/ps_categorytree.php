<?php

use PrestaShop\PrestaShop\Core\Module\WidgetInterface;

class Ps_CategoryTree extends Ps_CategoryTreeCore implements WidgetInterface
{
    /**
     * Format category into an array compatible with existing templates.
     */
    private function formatCategory($rawCategory, $idsOfCategoriesInPath): array
    {
        $children = [];
        if (!empty($rawCategory['children'])) {
            foreach ($rawCategory['children'] as $k => $v) {
                $children[$k] = $this->formatCategory($v, $idsOfCategoriesInPath);
            }
        }

        // Check if category image exists
        $imageDir = _PS_IMG_DIR_ . 'c/';
        $idImage = file_exists($imageDir . (int)$rawCategory['id_category'] . '.jpg') ? (int)$rawCategory['id_category'] : false;

        return [
            'id' => $rawCategory['id_category'],
            'link' => $this->context->link->getCategoryLink($rawCategory['id_category'], $rawCategory['link_rewrite']),
            'name' => $rawCategory['name'],
            'desc' => $rawCategory['description'],
            'image' => $idImage ? $this->context->link->getCatImageLink($rawCategory['name'], $idImage) : '',
            'children' => $children,
            'in_path' => in_array($rawCategory['id_category'], $idsOfCategoriesInPath),
        ];
    }
}
