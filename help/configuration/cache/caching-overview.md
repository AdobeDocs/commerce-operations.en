---
title: Caching Overview and Configuration Options
description: Learn about caching in Adobe Commerce, including backend storage, frontend configuration, and full-page caching with Varnish, Redis, Valkey, and L2 cache.
feature: Configuration, Cache
exl-id: 6effa069-c043-411a-b161-01210be17391
autotag-review: '2026-06-22T20:28:12.484Z'
TQID: 'https://experienceleague.adobe.com/oDoZ1o2IWXsDTo84XQygWZYVmfVHWbk-CuqaU47laU4'
product_v2:
  - id: b974b164-8a4e-43b8-a9e2-8e67ec131677
    internal-label: Commerce on Prem
  - id: cdf0c6dd-1717-4e20-9530-a24eee57088b
    internal-label: Commerce on Cloud
feature_v2:
  - id: dac87252-6066-4d6e-a9d2-f6d84c323de7
    internal-label: Configuration
role_v2:
  - id: c66ffd68-0f65-42bb-aa23-b4020f12e0bd
    internal-label: Admin
  - id: ff6a42d2-313e-452e-93a6-792e4fad9ff8
    internal-label: Developer
level_v2:
  - id: b5a62a22-46f7-4f0d-b151-3fc640bef588
    internal-label: Intermediate
topic_v2:
  - id: b5ce8718-c3af-4fdb-a1a9-fca32f83a87c
    internal-label: Implementation
---
# Caching overview and configuration options

Adobe Commerce relies on a multi-layered caching architecture to reduce database load, minimize redundant processing, and accelerate page delivery. At the application level, Commerce maintains over a dozen [cache types](../cli/manage-cache.md#clean-and-flush-cache-types)—such as configuration, layout, block HTML, and collections—each of which you can route to a dedicated storage backend like [Redis](config-redis.md) or [Valkey](config-valkey.md). For full-page caching in on-premises deployments, Adobe strongly recommends [Varnish](config-varnish.md), an HTTP accelerator that serves cached pages directly from memory. Additional layers such as [L2 caching](level-two-cache.md) and [static content signing](static-content-signing.md) further improve performance for high-traffic, multi-node deployments.

This guide explains how each caching layer works and shows you how to configure frontends, backends, and advanced options to match your deployment requirements.

## Caching frontends

A cache frontend is an interface between Commerce and the cache storage backend. You can define multiple frontends, each with different backend settings, and then assign specific [cache types](../cli/manage-cache.md#clean-and-flush-cache-types) to each frontend.  For configuration details, see [Configure cache frontends](cache-types.md).

## Caching backends

A cache backend is the underlying storage mechanism for cached data. Commerce provides a default file-system backend, but you can configure other backends such as Redis or Valkey for improved performance and scalability. For details on the available options, see [Cache backend options](cache-options.md).

## Full-page caching with Varnish

[Varnish Cache](config-varnish.md) is an HTTP accelerator that caches full pages in memory. For on-premises production environments, Adobe strongly recommends Varnish because it is significantly faster than the built-in full-page cache. Commerce on Cloud environments use [Fastly](https://experienceleague.adobe.com/en/docs/commerce-cloud-service/user-guide/cdn/fastly) for full-page caching instead of Varnish.

>[!NOTE]
>
>Varnish operates as a reverse proxy in front of your web server and does not require changes to the Commerce cache backend configuration.

## L2 (two-level) caching

[L2 cache](level-two-cache.md) stores cache data locally on each web node while using a remote cache (Redis or Valkey) as the source of truth. This reduces network traffic between your web nodes and the remote cache, which improves performance for high-traffic sites.

## Static content caching

[Static content signing](static-content-signing.md) invalidates the browser cache for static resources (CSS, JavaScript, images) by embedding a deployment version in file URLs.

## Caching terminology

[!DNL Commerce] uses the following caching terminology:

- **Frontend** -- An interface or gateway to cache storage, implemented by [Magento\Framework\Cache\Frontend](https://github.com/magento/magento2/tree/2.4/lib/internal/Magento/Framework/Cache/Frontend).
- **Cache types** -- One of the built-in types provided with [!DNL Commerce] (such as `config`, `layout`, `block_html`, `full_page`) or a [custom type](https://developer.adobe.com/commerce/php/development/cache/partial/cache-type/).
- **Backend** -- Specifies the details of [cache storage](https://framework.zend.com/manual/1.12/en/zend.cache.backends.html), implemented by [Magento\Framework\Cache\Backend](https://github.com/magento/magento2/tree/2.4/lib/internal/Magento/Framework/Cache/Backend).
- **Two-level backend** -- Stores cache records in two backends: a local (fast) cache and a remote (shared) cache. See [L2 cache configuration](level-two-cache.md).

## Configuration options

For frontend-to-type mapping and cache configuration syntax:

**On-premises**—Cache configuration is stored in two files:

- `<magento_root>/app/etc/di.xml` -- The global dependency injection configuration. Modify this file to change the provided `default` cache frontend.
- `<magento_root>/app/etc/env.php` -- Environment-specific configuration. Modify this file to configure custom cache frontends. This file overrides the equivalent configuration in `di.xml`.

For details, see:

- [Configure cache frontends](cache-types.md)—Associate a cache frontend with specific cache types
- [Cache backend options](cache-options.md)—Backend option reference

**Adobe Commerce on Cloud**—Configure caching with `CACHE_CONFIGURATION` in `.magento.env.yaml`. See [Best practices for Redis and Valkey service configuration](../../implementation-playbook/best-practices/planning/redis-valkey-service-configuration.md).
