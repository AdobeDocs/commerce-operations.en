---
title: Cache options
description: Learn about low-level cache options and storage configuration in Adobe Commerce. Discover frontend, backend, and storage setup for Redis and databases.
feature: Configuration, Cache
exl-id: e0330108-5c55-4a33-9f93-63fbb71af761
---
# Low-level cache options

The Commerce application uses a low-level cache frontend and backend to provide access to the cache storage.

## Low-level frontend cache

Commerce extends [Zend_Cache_Core](https://framework.zend.com/manual/1.12/en/zend.cache.frontends.html) by implementing [Magento\Framework\Cache\Core](https://github.com/magento/magento2/blob/2.4/lib/internal/Magento/Framework/Cache/Core.php) frontend cache.

## Low-level backend cache

In general, the Commerce application works with any backend cache that [Zend_Cache Backends](https://framework.zend.com/manual/1.12/en/zend.cache.backends.html) supports. However, this guide covers only the following low-level backend caches:

- [Redis](config-redis.md)
- [Database](https://developer.adobe.com/commerce/php/development/cache/partial/database-caching/)
- File system (default): No configuration is necessary to use file system caching.

[Varnish](config-varnish.md) does not require setting up a low-level cache backend.
