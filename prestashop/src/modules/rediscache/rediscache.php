<?php
/**
 * Copyright ETS Software Technology Co., Ltd
 *
 * NOTICE OF LICENSE
 *
 * This file is not open source! Each license that you purchased is only available for 1 website only.
 * If you want to use this file on more websites (or projects), you need to purchase additional licenses.
 * You are not allowed to redistribute, resell, lease, license, sub-license or offer our resources to any third party.
 *
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade PrestaShop to newer
 * versions in the future.
 *
 * @author ETS Software Technology Co., Ltd
 * @copyright  ETS Software Technology Co., Ltd
 * @license    Valid for 1 website (or project) for each purchase of license
 */

// if (!defined('_PS_VERSION_')) { exit; }

class Rediscache extends Module
{
    public function __construct()
    {
        $this->name = 'rediscache';
        $this->tab = 'front_office_features';
        $this->version = '1.0.6';
        $this->author = 'PrestaHero';
        $this->need_instance = 1;
        $this->bootstrap = true;

        parent::__construct();

        $this->displayName = $this->l('Redis Cache Pro');
        $this->description = $this->l('Optimize your PrestaShop store with our Redis Cache module! Boost website speed and performance effortlessly. Elevate user experience and stay ahead of the competition.');
$this->refs = 'https://prestahero.com/';
        $this->ps_versions_compliancy = array('min' => '1.7.0.0', 'max' => _PS_VERSION_);

        if ((int)Tools::getValue('flush_redis_cache') > 0) {
            die(json_encode([
                'ok' => Cache::getInstance()->flush()
            ]));
        }
        if ((int)Tools::getValue('test_redis_cache') > 0) {
            die(json_encode([
                'ok' => CacheRedis::ping(Tools::getValue('ip'), Tools::getValue('port'), Tools::getValue('password'), Tools::getValue('database'))
            ]));
        }
    }

    public function install()
    {
        return parent::install() &&
            $this->registerHook('actionPerformancePagecachingSave') &&
            $this->registerHook('displayBackOfficeHeader') &&
            $this->exportClassRedisCache();
    }

    public function enable($force_all = false)
    {
        return parent::enable($force_all) && $this->exportClassRedisCache(true);
    }

    public function exportClassRedisCache($enable = false)
    {
        $redis_class_file_path = _PS_CLASS_DIR_ . 'cache/CacheRedis.php';
        $body_classes = "\r\n\nrequire_once _PS_MODULE_DIR_ . 'rediscache/classes/RCRedisCache.php';\r\n\n";
        $body_classes .= "class CacheRedis extends RCRedisCache\r\n{\r\n}";
        $var_export_content = sprintf('<?php %s', $body_classes);
        @file_put_contents($redis_class_file_path, $var_export_content);
        if ($enable)
            Tools::generateIndex();

        return true;
    }

    private function clearClassRedisCache($disable = false)
    {
        Cache::getInstance()->flush();
        $parametersFilepath = _PS_ROOT_DIR_ . '/app/config/parameters.php';
        $parameters = require $parametersFilepath;
        $parameters['parameters']['ps_caching'] = 'CacheMemcached';
        $parameters['parameters']['ps_cache_enable'] = false;
        if (!$disable) {
            unset($parameters['parameters']['redis_cache_ip']);
            unset($parameters['parameters']['redis_cache_port']);
            unset($parameters['parameters']['redis_cache_password']);
            unset($parameters['parameters']['redis_cache_database']);
            unset($parameters['parameters']['redis_cache_life_time']);
        }
        $var_export_content = sprintf('<?php return %s;', var_export($parameters, true));
        @file_put_contents($parametersFilepath, $var_export_content);

        if (@file_exists(($redis_class_file_path = _PS_CLASS_DIR_ . 'cache/CacheRedis.php')))
            unlink($redis_class_file_path);

        Tools::generateIndex();

        return true;
    }

    public function uninstall()
    {
        return parent::uninstall() && $this->clearClassRedisCache();
    }

    public function disable($force_all = false)
    {
        return parent::disable($force_all) && $this->clearClassRedisCache(true);
    }

    public function getContent()
    {
        Tools::redirectAdmin($this->context->link->getAdminLink('AdminPerformance', true, ['route' => 'admin_performance']));
    }

    public function hookActionPerformancePagecachingSave($params)
    {
        $caching = Tools::getValue('caching');
        if (isset($caching['caching_system']) && $caching['caching_system'] == 'CacheRedis') {
            $_errors = [];
            $ip = Tools::getValue('redis_cache_ip');
            if (trim($ip) == '') {
                $_errors[] = $this->l('IP Address or Domain is required');
            } elseif (!(filter_var($ip, FILTER_VALIDATE_IP) || filter_var($ip, FILTER_VALIDATE_DOMAIN))) {
                $_errors[] = $this->l('IP Address or Domain is invalid');
            }
            $port = Tools::getValue('redis_cache_port');
            if (trim($port) == '') {
                $_errors[] = $this->l('Port is required');
            } elseif (!Validate::isUnsignedInt($port) || (int)$port <= 0) {
                $_errors[] = $this->l('Port is invalid');
            }
            $password = Tools::getValue('redis_cache_password');
            $database = Tools::getValue('redis_cache_database');
            if (trim($database) != '' && (!Validate::isUnsignedInt($database) || (int)$database < 0 || (int)$database > 15)) {
                $_errors[] = $this->l('Database is invalid. Please enter a number within the range of 0 to 15');
            }
            $life_time = Tools::getValue('redis_cache_life_time');
            if (trim($life_time) !== '' && (!Validate::isUnsignedInt($life_time) || (int)$life_time <= 0)) {
                $_errors[] = $this->l('Lifetime is invalid');
            }
            if (count($_errors)) {
                $params['errors'] = $_errors;
            } else {
                $parametersFilepath = _PS_ROOT_DIR_ . '/app/config/parameters.php';
                $parameters = require $parametersFilepath;
                $parameters['parameters']['ps_caching'] = 'CacheRedis';
                $parameters['parameters']['ps_cache_enable'] = isset($caching['use_cache']) && (int)$caching['use_cache'] > 0;
                $parameters['parameters']['redis_cache_ip'] = $ip;
                $parameters['parameters']['redis_cache_port'] = $port;
                $parameters['parameters']['redis_cache_password'] = $password;
                $parameters['parameters']['redis_cache_database'] = $database;
                $parameters['parameters']['redis_cache_life_time'] = (int)$life_time > 0 ? $life_time : null;
                $var_export_content = sprintf('<?php return %s;', var_export($parameters, true));
                @file_put_contents($parametersFilepath, $var_export_content);

                if (!class_exists('CacheRedis'))
                    $this->exportClassRedisCache();

                Tools::generateIndex();
            }
        }
    }

    public function hookDisplayBackOfficeHeader()
    {
        if (Tools::getValue('controller') == 'AdminPerformance') {

            Media::addJsDef([
                'REDIS_CACHE_REQUEST_URL' => $this->context->link->getAdminLink('AdminModules', true, [], ['configure' => $this->name]),
                '_PS_CACHING_SYSTEM_' => _PS_CACHING_SYSTEM_
            ]);

            Media::addJsDefL('REDIS_CACHE_TRANSLATE_1', $this->l('Cached has been cleared'));
            Media::addJsDefL('REDIS_CACHE_TRANSLATE_2', $this->l('Redis is working!'));
            Media::addJsDefL('REDIS_CACHE_TRANSLATE_3', $this->l('Redis is NOT working! Check your configuration'));

            $this->context->controller->addJS($this->_path . 'views/js/back.js');
            $this->context->controller->addCSS($this->_path . 'views/css/back.css');
            $redis_loaded = extension_loaded('redis') ? 1 : 0;
            $parametersFilepath = _PS_ROOT_DIR_ . '/app/config/parameters.php';
            $parameters = require $parametersFilepath;
            $this->context->smarty->assign([
                'redis_loaded' => $redis_loaded,
                'PS_CACHING_SYSTEM' => _PS_CACHING_SYSTEM_,
                'PS_CACHE_ENABLED' => _PS_CACHE_ENABLED_,
                'REDIS_CACHE_IP' => isset($parameters['parameters']['redis_cache_ip']) && $parameters['parameters']['redis_cache_ip'] ? $parameters['parameters']['redis_cache_ip'] : '',
                'REDIS_CACHE_PORT' => isset($parameters['parameters']['redis_cache_port']) && $parameters['parameters']['redis_cache_port'] ? $parameters['parameters']['redis_cache_port'] : '',
                'REDIS_CACHE_PASSWORD' => isset($parameters['parameters']['redis_cache_password']) && $parameters['parameters']['redis_cache_password'] ? $parameters['parameters']['redis_cache_password'] : '',
                'REDIS_CACHE_DATABASE' => isset($parameters['parameters']['redis_cache_database']) && $parameters['parameters']['redis_cache_database'] ? $parameters['parameters']['redis_cache_database'] : 0,
                'REDIS_CACHE_LIFE_TIME' => isset($parameters['parameters']['redis_cache_life_time']) && $parameters['parameters']['redis_cache_life_time'] ? $parameters['parameters']['redis_cache_life_time'] : '',
            ]);
            return $this->display(__FILE__, 'caching-redis.tpl');
        }
    }
}
