---
title: Cache clearing with multiple Varnish instances
description: Learn how cache clearing works with multiple Varnish instances in Adobe Commerce. Discover configuration and management best practices.
feature: Configuration, Cache
exl-id: 289a4e54-9e73-454c-bfb9-e78e405af56c
---
# Cache clearing multiple Varnish instances

Adobe Commerce supports multiple Varnish instances out of the box.

This topic shows the basics of configuring multiple Varnish instances with Commerce.

## Configuration to purge multiple Varnish instances

Commerce purges Varnish hosts after you configure Varnish hosts using the [`magento setup:config:set`](../../installation/tutorials/deployment.md) command.

You should use the `--http-cache-hosts` parameter to specify a comma-separated list of Varnish hosts and listen ports. (Do not separate hosts with a space character.)

The parameter format must be `<hostname or ip>:<listen port>`, where you can omit `<listen port>` if it is port 80.

For example,

```bash
bin/magento setup:config:set --http-cache-hosts=192.0.2.100,192.0.2.155:8080
```

You can then purge all Varnish hosts when you refresh the Commerce cache (also referred to as _cleaning_ the cache) in the Admin or using the command line.

To refresh the cache using the Admin, click **SYSTEM** > Tools > **Cache Management**, then click **Flush Magento Cache** at the top of the page. (You can also refresh individual cache types.)

To refresh the cache of multiple Varnish instances from cli use the [`magento cache:clean <type>`](../cli/manage-cache.md#clean-and-flush-cache-types) command as the [file system owner](../../installation/prerequisites/file-system/overview.md).
