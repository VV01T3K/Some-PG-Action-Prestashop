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

require _PS_MODULE_DIR_ . 'rediscache/vendor/autoload.php';

use Predis\Client;

class RCRedisCache extends Cache
{
    /** @var Client */
    protected $redis;

    protected $ip;
    protected $port;
    protected $password;
    protected $database = 0;
    protected $life_time;

    protected $blacklist = [
        'cart',
        'cart_cart_rule',
        'cart_product',
        'connections',
        'connections_source',
        'connections_page',
        'customer',
        'customer_group',
        'customized_data',
        'guest',
        'pagenotfound',
        'page_viewed',
        'employee',
        'log',
        'ets_superspeed_cache_page',
        'ets_tc_session',
        'ets_superspeed_hook_time',
        'ets_tc_action',
        'ets_abancart_campaign',
        'ets_abancart_reminder',
        'abancart_display_tracking',
    ];

    private $connected;

    public function __construct()
    {
        $this->connect();
    }

    public function connect()
    {
        if (class_exists('\Predis\Client') && extension_loaded('redis')) {
            $parametersFilepath = _PS_ROOT_DIR_ . '/app/config/parameters.php';
            $parameters = require $parametersFilepath;
            $this->ip = isset($parameters['parameters']['redis_cache_ip']) && $parameters['parameters']['redis_cache_ip'] ? $parameters['parameters']['redis_cache_ip'] : '127.0.0.1';
            $this->port = isset($parameters['parameters']['redis_cache_port']) && $parameters['parameters']['redis_cache_port'] ? $parameters['parameters']['redis_cache_port'] : '6379';
            $this->password = isset($parameters['parameters']['redis_cache_password']) && $parameters['parameters']['redis_cache_password'] ? $parameters['parameters']['redis_cache_password'] : '';
            $this->database = isset($parameters['parameters']['redis_cache_database']) && $parameters['parameters']['redis_cache_database'] ? $parameters['parameters']['redis_cache_database'] : 0;
            $this->life_time = isset($parameters['parameters']['redis_cache_life_time']) && (int)$parameters['parameters']['redis_cache_life_time'] > 0 ? $parameters['parameters']['redis_cache_life_time'] * 24 * 60 * 60 : null;
            $configs = [
                'scheme' => 'tcp',
                'host' => $this->ip,
                'port' => $this->port,
                'database' => $this->database,
            ];
            if ($this->password)
                $configs['password'] = $this->password;
            $this->redis = new Client($configs);
            try {
                foreach ($this->redis->keys('*') as $key) {
                    $this->keys[$key] = true;
                }
                $this->setConnected(true);
            } catch (Predis\Connection\ConnectionException $connectionException) {
                file_put_contents(_PS_ROOT_DIR_ . '/var/logs/rediscache.log', '[' . date('Y-m-d H:i:s') . ']' . $connectionException->getMessage() . PHP_EOL, FILE_APPEND);
                $this->setConnected(false);
            }
            if (!is_array($this->keys)) {
                $this->keys = [];
            }
        }
    }

    public function setConnected($connected)
    {
        $this->connected = $connected;
    }

    public function isConnected()
    {
        return $this->connected && $this->redis->isConnected();
    }

    protected function _set($key, $value, $ttl = 0)
    {
        if (!$this->isConnected()) {
            return false;
        }

        $result = $this->redis->set($key, @json_encode($value));
        if ((int)$this->life_time > 0)
            $this->redis->expire($key, $this->life_time);
        if ($result === false) {
            $this->setAdjustTableCacheSize(true);
        }

        return $result;
    }

    protected function _get($key)
    {
        if (!$this->isConnected()) {
            return false;
        }
        $result = $this->redis->get($key);
        return $result !== null ? @json_decode($result, true) : false;
    }

    protected function _exists($key)
    {
        if (!$this->isConnected()) {
            return false;
        }
        return $this->redis->exists($key) !== false;
    }

    protected function _delete($key)
    {
        if (!$this->isConnected()) {
            return false;
        }
        if ($key == '*') {
            $this->flush();
        } elseif (strpos($key, '*') === false) {
            $this->redis->del($key);
        } else {
            $pattern = str_replace('\\*', '.*', preg_quote($key));
            $keys = $this->redis->keys($pattern);
            foreach ($keys as $key => $data) {
                $this->redis->del($key);
            }
        }

        return true;
    }

    /**
     * {@inheritdoc}
     */
    protected function _deleteMulti(array $keyArray)
    {
        if (!$this->isConnected()) {
            return false;
        }

        return $this->redis->del($keyArray);
    }

    protected function _writeKeys()
    {
        if (!$this->isConnected()) {
            return false;
        }
        return true;
    }

    public function flush()
    {
        if (!$this->isConnected()) {
            return false;
        }
        $this->redis->flushdb();
        $this->redis->flushall();
        return true;
    }

    public static function ping($ip, $port, $password = null, $database = 0)
    {
        if (!$ip || !$port || !Validate::isUnsignedInt($port) || !Validate::isUnsignedInt($database) || $database < 0 || $database > 15) {
            return false;
        }
        try {
            $parameters = [
                'host' => $ip,
                'port' => $port,
                'database' => $database
            ];
            if ($password != null)
                $parameters['password'] = $password;
            $test_redis = new Client($parameters);
            return $test_redis->ping('pong');
        } catch (Exception $exception) {
            return $exception->getMessage();
        }
    }
}