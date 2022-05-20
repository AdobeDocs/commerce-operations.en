---
title: Cache options
description: Configure access to low-level cache storage.
---
# Low-level cache options

The Commerce application uses a low-level [cache](https://glossary.magento.com/cache) [frontend](https://glossary.magento.com/frontend) and [backend](https://glossary.magento.com/backend) to provide access to the cache storage.

## Low-level frontend cache

Commerce extends [Zend_Cache_Core](https://framework.zend.com/manual/1.12/en/zend.cache.frontends.html) by implementing [Magento\Framework\Cache\Core](https://github.com/magento/magento2/blob/2.4/lib/internal/Magento/Framework/Cache/Core.php) frontend cache.

## Low-level backend cache

In general, the Magento application works with any backend cache that [Zend_Cache Backends](https://framework.zend.com/manual/1.12/en/zend.cache.backends.html) supports. However, this guide covers only the following low-level backend caches:

- [Redis](cache/redis/config-redis.html)
- [Database](https://devdocs.magento.com/guides/v2.4/extension-dev-guide/cache/partial-caching/database-caching.html)
- File system (default): No configuration is necessary to use file system caching.

[Varnish](cache/varnish/config-varnish.html) does not require setting up a low-level [cache backend](https://glossary.magento.com/cache-backend).
