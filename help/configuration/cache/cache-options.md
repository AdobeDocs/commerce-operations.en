---
title: Cache Backend Options and Storage Reference
description: "Learn about cache backend options in Adobe Commerce, including file system, Redis, Valkey, and database storage. Discover Zend-based (RemoteSynchronizedCache) and Symfony Cache options."
feature: Configuration, Cache
exl-id: e0330108-5c55-4a33-9f93-63fbb71af761
badgePaas: label="On Premises" type="Informative" url="https://experienceleague.adobe.com/en/docs/commerce/user-guides/product-solutions" tooltip="Applies to Adobe Commerce on-premises projects only."
autotag-review: '2026-06-22T18:37:32.504Z'
TQID: 'https://experienceleague.adobe.com/m7eUBNrt8UF43iJq9Tpl0Y1WcmR-dlt7Z4PoHvXVNnA'
product_v2:
  - id: b974b164-8a4e-43b8-a9e2-8e67ec131677
    internal-label: Commerce on Prem
  - id: eadea719-cf89-469b-a6fd-a236a7138047
    internal-label: Commerce
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
# Cache backend options and storage reference

>[!NOTE]
>
>This page documents on-premises `app/etc/env.php` configuration.
>
>For [!DNL Adobe Commerce on Cloud] projects, the `ece-tools` package generates the resulting `app/etc/env.php` configuration during deployment based on the deploy variable configuration in `.magento.env.yaml`. You do not edit the `env.php` file.  See [Best Practices for Valkey and Redis Service Configuration](https://experienceleague.adobe.com/en/docs/commerce-operations/implementation-playbook/best-practices/planning/redis-valkey-service-configuration) and [Deploy variables](https://experienceleague.adobe.com/en/docs/commerce-on-cloud/user-guide/configure/env/stage/variables-deploy).

The Commerce application uses a low-level cache frontend and backend to provide access to cache storage. Commerce supports several caching backends and strategies, each suited to different use cases. This page describes the available backends and how they differ.

>[!NOTE]
>
>[Varnish](config-varnish-install.md) handles full-page caching at the HTTP level for on-premises deployments. The [Fastly service](https://experienceleague.adobe.com/en/docs/commerce-on-cloud/user-guide/cdn/fastly) handles it for Cloud deployments. Neither solution uses the low-level cache backend.

## Backend cache options

The following table summarizes the available backend caches:

| Backend | Description | Configuration guide |
| ------- | ----------- | ------------------- |
| File system | Default. Stores cache data in files under `var/cache/`. No configuration required. | N/A |
| Redis | In-memory data store for high-performance caching. | [Use Redis for default cache](redis-pg-cache.md) |
| Valkey | Open-source, Redis-compatible alternative. | [Use Valkey for default cache](valkey-pg-cache.md) |
| Database | Custom cache engine backed by a database | [Create custom cache engines](https://developer.adobe.com/commerce/php/development/cache/partial/database-caching){target="_blank"} (Adobe Developer documentation) |

>[!IMPORTANT]
>
>Redis cache is not supported for Adobe Commerce 2.4.9, or patch releases later than 2.4.5-p16, 2.4.6-p14, 2.4.7-p9, and 2.4.8-p4. If you are upgrading to one of these versions, configure Valkey and update the cache configuration to use it. For [!DNL Adobe Commerce on-premises], see [set up Valkey](config-valkey.md).

## Cache backend and L2 implementations {#implementation-approaches}

Commerce supports direct cache backends and L2 caching. A direct backend selects cache storage. L2 caching adds a local cache layer in front of remote storage.

### Direct cache backends

The following table summarizes cache backend configuration values for `<Commerce-install-dir>/app/etc/env.php`. It does not enable L2 caching.

| Commerce version | Backend | Configuration value |
| ---------------- | ------- | -------------------- |
| 2.4.8 and earlier, where supported | file | Default. No configuration required |
| 2.4.8 and earlier, where supported | Redis | `Magento\Framework\Cache\Backend\Redis` |
| 2.4.8 and earlier, where supported | Valkey | `Magento\Framework\Cache\Backend\Valkey` |
| 2.4.9 and later, plus supported backports | file | `file` |
| 2.4.9 and later, plus supported backports | Valkey | `valkey` |

For exact patch-level support, see the [System Requirements](../../installation/system-requirements.md).

>[!TAB Zend-based cache (2.4.8 and earlier)]

#### Backend examples

For on-premises deployments, the following examples configure direct cache backends in `<Commerce-install-dir>/app/etc/env.php`. They do not enable L2 caching. Do not use these examples for [!DNL Adobe Commerce on Cloud] deployments, which use the `ece-tools` package to generate the resulting `app/etc/env.php` configuration during deployment.

>[!BEGINTABS]

>[!TAB Redis]

Use the full Redis class name only on releases where Redis is supported:

```php?start_inline=1
'cache' => [
    'frontend' => [
        'default' => [
            'backend' => 'Magento\\Framework\\Cache\\Backend\\Redis',
            'backend_options' => [
                'server' => '127.0.0.1',
                'database' => '0',
                'port' => '6379',
            ],
        ],
    ],
],
```

>[!TAB Valkey]

```php?start_inline=1
'cache' => [
    'frontend' => [
        'default' => [
            'backend' => 'valkey',
            'backend_options' => [
                'server' => '127.0.0.1',
                'database' => '0',
                'port' => '6379',
            ],
        ],
    ],
],
```

>[!ENDTABS]

## L2 caching

L2 (two-level) caching adds a local cache layer on each web node in front of shared remote cache storage, reducing network traffic between Commerce and the remote cache. For implementation options, version support, and configuration steps, see [L2 cache configuration](level-two-cache.md).

For Cloud projects, configure L2 caching through the deployment variables described in [Deploy variables](https://experienceleague.adobe.com/en/docs/commerce-on-cloud/user-guide/configure/env/stage/variables-deploy){target="_blank"}.

- [Use Redis for default cache](redis-pg-cache.md)
- [Use Valkey for default cache](valkey-pg-cache.md)
- [L2 cache configuration](level-two-cache.md)
