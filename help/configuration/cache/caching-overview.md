---
title: Configure caching
description: Learn about caching and how to configure cache mechanisms for the Adobe Commerce and Magento Open Source application.
---
# Configure caching

[!DNL Commerce] enables you to configure alternatives to the default file system caching. This guide discusses some of those alternatives; namely,

- Set up the following [cache](https://glossary.magento.com/cache) mechanisms in the [!DNL Commerce] configuration:

  - [Database](https://devdocs.magento.com/guides/2.4/extension-dev-guide/cache/partial-caching/database-caching.html)
  - [Redis](cache/config-redis.html)
  - File system (default): No configuration is necessary to use default file system caching.

- Set up the [Varnish](cache/config-varnish.html) without modifying the [!DNL Commerce]configuration.

## Caching terminology

[!DNL Commerce] uses the following caching terminology:

- **Frontend**—Similar to an interface or gateway to cache storage, implemented by [Magento\Framework\Cache\Frontend]({{ site.mage2bloburl }}/{{ page.guide_version }}/lib/internal/Magento/Framework/Cache/Frontend).
- **Cache types**—Can be one of the types provided with [!DNL Commerce] or you can [create your own](https://devdocs.magento.com/guides/2.4/extension-dev-guide/cache/partial-caching/create-cache-type.html).
- **Backend**—Specifies details about [cache storage](http://framework.zend.com/manual/1.12/en/zend.cache.backends.html), implemented by [Magento\Framework\Cache\Backend]({{ site.mage2bloburl }}/{{ page.guide_version }}/lib/internal/Magento/Framework/Cache/Backend)
- **Two-level backend**—Stores cache records in two backends: a faster one and a slower one.

  >[!INFO]
  >
  >   Two-level backend cache configuration is beyond the scope of this guide.

## Configuration options

- Modifying the provided `default` cache frontend—

   You modify only the `<magento_root>/app/etc/di.xml` file, the Commerce application's global [dependency injection](https://glossary.magento.com/dependency-injection) configuration.

- Configuring your own custom cache frontend—

  You modify only the `<magento_root>/app/etc/env.php` file because it overrides the equivalent configuration in the `di.xml` file.

>[!TIP]
>
>Varnish does not require changes to the [!DNL Commerce] configuration. See [Configure and use Varnish](cache/config-varnish.html).
