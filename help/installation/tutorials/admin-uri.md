---
title: Display or change the Admin URI
description: Follow these steps to view and modify the URI of your Adobe Commerce Admin application.
feature: Install, Configuration
exl-id: 768f9ab4-7123-4460-9df8-a6c98ae55d95
product_v2:
  - id: eadea719-cf89-469b-a6fd-a236a7138047
    internal-label: Commerce
feature_v2:
  - id: 6388cf7b-8a81-5248-a1e4-7bb57bbe250f
    internal-label: Install
  - id: dac87252-6066-4d6e-a9d2-f6d84c323de7
    internal-label: Configuration
role_v2:
  - id: c66ffd68-0f65-42bb-aa23-b4020f12e0bd
    internal-label: Admin
  - id: ff6a42d2-313e-452e-93a6-792e4fad9ff8
    internal-label: Developer
level_v2:
  - id: d378ca77-2da1-4f39-ad92-1917fe974a38
    internal-label: Experienced
---
# Display or change the Admin URI

Before you run this command, you must [Create or update the deployment configuration](deployment.md).

## Display the Admin URI

This section discusses how to use the command line to display the Admin Uniform Resource Identifier ([URI](https://www.w3.org/Protocols/rfc2616/rfc2616-sec3.html#sec3.2)).

Command options:

```shell
bin/magento info:adminuri
```

A sample result follows:

```text
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
