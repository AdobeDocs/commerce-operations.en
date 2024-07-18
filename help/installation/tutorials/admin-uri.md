---
title: Display or change the Admin URI
description: Follow these steps to view and modify the URI of your Adobe Commerce Admin application.
feature: Install, Configuration
exl-id: 768f9ab4-7123-4460-9df8-a6c98ae55d95
---
# Display or change the Admin URI

Before you run this command, you must [Create or update the deployment configuration](deployment.md).

## Display the Admin URI

This section discusses how to use the command line to display the Admin Uniform Resource Identifier ([URI](https://www.w3.org/Protocols/rfc2616/rfc2616-sec3.html#sec3.2)).

Command options:

```bash
bin/magento info:adminuri
```

A sample result follows:

```
Admin Panel URI: /admin_1wgrah
```

You can also view the Admin URI in `<magento_root>/app/etc/env.php`. A snippet follows:

```php?start_inline=1
  'backend' =>
  array (
    'frontName' => 'admin_1wgrah',
  ),
```

## Change the Admin URL

To change the Admin URI, use the [`magento setup:config:set`](deployment.md) command.
