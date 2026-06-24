---
title: Cache Clearing with Multiple Varnish Instances
description: Learn how cache clearing works with multiple Varnish instances in Adobe Commerce. Discover configuration and management best practices.
feature: Configuration, Cache
exl-id: 289a4e54-9e73-454c-bfb9-e78e405af56c
badgePaas: label="On Premises" type="Informative" url="https://experienceleague.adobe.com/en/docs/commerce/user-guides/product-solutions" tooltip="Applies to Adobe Commerce on-premises projects only."
autotag-review: '2026-06-22T22:16:50.500Z'
TQID: 'https://experienceleague.adobe.com/GeX8wkpM1rLLWM7jMhP2r-SJ8uV-x7fLXC8WEazZQDo'
product_v2:
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
# Cache clearing with multiple Varnish instances

Adobe Commerce supports multiple Varnish instances out of the box.

This topic shows the basics of configuring multiple Varnish instances with Commerce.

{{varnish-config-cloud}}

## Configuration to purge multiple Varnish instances

Commerce purges Varnish hosts after you configure Varnish hosts using the [`magento setup:config:set`](../../installation/tutorials/deployment.md) command.

You should use the `--http-cache-hosts` parameter to specify a comma-separated list of Varnish hosts and listen ports. (Do not separate hosts with a space character.)

The parameter format must be `<hostname or ip>:<listen port>`, where you can omit `<listen port>` if it is port 80.

For example,

```shell
bin/magento setup:config:set --http-cache-hosts=192.0.2.100,192.0.2.155:8080
```

You can then purge all Varnish hosts when you refresh the Commerce cache (also referred to as _cleaning_ the cache) in the Admin or using the command line.

To refresh the cache using the Admin, click **SYSTEM** > Tools > **Cache Management**, then click **Flush Magento Cache** at the top of the page. (You can also refresh individual cache types.)

To refresh the cache of multiple Varnish instances from cli use the [`magento cache:clean <type>`](../cli/manage-cache.md#clean-and-flush-cache-types) command as the [file system owner](../../installation/prerequisites/file-system/overview.md).
