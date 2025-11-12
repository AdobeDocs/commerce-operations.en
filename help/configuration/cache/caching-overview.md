---
title: Configure caching
description: Learn about caching mechanisms and configuration options for Adobe Commerce applications. Discover alternatives to default file system caching.
feature: Configuration, Cache
exl-id: 6effa069-c043-411a-b161-01210be17391
---
# Configure caching

[!DNL Commerce] enables you to configure alternatives to the default file system caching. This guide discusses some of those alternatives; namely,

- Set up the following cache mechanisms in the [!DNL Commerce] configuration:

  - [Database](https://developer.adobe.com/commerce/php/development/cache/partial/database-caching/)
  - [Redis](config-redis.md)
  - File system (default): No configuration is necessary to use default file system caching.

- Set up the [Varnish](config-varnish.md) without modifying the [!DNL Commerce] configuration.

## Caching terminology

[!DNL Commerce] uses the following caching terminology:

- **Frontend**—Similar to an interface or gateway to cache storage, implemented by [Magento\Framework\Cache\Frontend](https://github.com/magento/magento2/tree/2.4/lib/internal/Magento/Framework/Cache/Frontend).
- **Cache types**—Can be one of the types provided with [!DNL Commerce] or you can [create your own](https://developer.adobe.com/commerce/php/development/cache/partial/cache-type/).
- **Backend**—Specifies details about [cache storage](https://framework.zend.com/manual/1.12/en/zend.cache.backends.html), implemented by [Magento\Framework\Cache\Backend](https://github.com/magento/magento2/tree/2.4/lib/internal/Magento/Framework/Cache/Backend)
- **Two-level backend**—Stores cache records in two backends: a faster one and a slower one.

  >[!INFO]
  >
  >Two-level backend cache configuration is beyond the scope of this guide.

## Configuration options

- Modifying the provided `default` cache frontend—

   You modify only the `<magento_root>/app/etc/di.xml` file, the Commerce application's global dependency injection configuration.

- Configuring your own custom cache frontend—

  You modify only the `<magento_root>/app/etc/env.php` file because it overrides the equivalent configuration in the `di.xml` file.

>[!TIP]
>
>Varnish does not require changes to the [!DNL Commerce] configuration. See [Configure and use Varnish](config-varnish.md).
