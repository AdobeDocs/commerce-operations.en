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

Adobe Commerce uses multiple caching layers to reduce repeated processing, lower database load, and improve response times. These layers operate at different points in request and asset delivery:

- **Application caching** stores generated or processed data using Commerce cache types.
- **HTTP full-page caching** stores complete HTTP responses before they reach the Commerce application.
- **L2 caching** can add a local cache on each web node in front of shared remote cache storage.
- **Static content caching** allows browsers to reuse CSS, JavaScript, images, and other static resources.

This page provides a conceptual overview of these layers and links to their configuration guidance. For backend choices, implementation details, and version-specific settings, see [Cache backend options and storage reference](cache-options.md).

## Caching layers

### Application caching

Commerce application caching is organized as:

>[!BEGINSHADEBOX]

cache type → cache frontend → cache backend

>[!ENDSHADEBOX]

A **cache type** identifies the kind of data being cached, such as configuration, layout, block HTML, or full-page content. A **cache frontend** connects one or more cache types to storage. A **cache backend** provides the storage implementation.

You can assign different cache types to different frontends when separate cache settings or storage are required. For configuration details, see [Configure cache frontends and types](cache-types.md).

### Full-page HTTP caching

HTTP full-page caching stores complete responses at the HTTP or CDN layer. For production deployments:

- **Adobe Commerce on-premises**—Adobe recommends [Varnish](config-varnish.md) for full-page caching. Varnish operates as a reverse proxy in front of the web server.
- **Adobe Commerce on Cloud infrastructure** uses [Fastly](https://experienceleague.adobe.com/en/docs/commerce-on-cloud/user-guide/cdn/fastly){target="_blank"} for the edge and full-page caching layer. Cloud infrastructure does not use a separately managed Varnish service.

>[!NOTE]
>
>Changing the Commerce application cache backend does not configure Varnish or Fastly. Full-page HTTP caching is configured and managed separately from the low-level application cache.

### L2 caching

L2, or two-level, caching adds a local cache on each Commerce web node while retaining shared remote cache storage. Frequently accessed data can be served locally, reducing communication with the remote cache in multi-node deployments.

L2 configuration and supported implementations vary by Commerce version and deployment type. For details, see [L2 cache configuration](level-two-cache.md).

### Static content caching

Commerce can improve browser caching for static resources such as CSS, JavaScript, and images by adding a deployment version to their URLs. When the content changes, the URL changes, causing the browser to request the new resource instead of using an older cached copy.

## Deployment-specific configuration

The following configuration tasks vary by deployment type.

| Task | On-premises | Cloud infrastructure |
| --- | --- | --- |
| Application cache backends | [Cache backend options and storage reference](cache-options.md) | [Best practices for Valkey and Redis service configuration](../../implementation-playbook/best-practices/planning/redis-valkey-service-configuration.md) |
| HTTP full-page caching | [Configure Varnish](config-varnish.md) | [Fastly services overview](https://experienceleague.adobe.com/en/docs/commerce-on-cloud/user-guide/cdn/fastly) |

The following tasks apply to all deployment types:

- **Configure cache types and frontends** [Configure cache frontends and types](cache-types.md) to associate cache types with cache frontends.
- **Configure L2 caching**—[L2 cache configuration](level-two-cache.md).
- **Configure browser cache invalidation for static content**—[Static content signing and browser cache invalidation](static-content-signing.md).
