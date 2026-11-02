---
title: Configure message consumers
description: Follow these steps to configure the behavior of Adobe Commerce message queue consumers.
exl-id: df292301-f4bd-49df-a241-7467c35bf1d8
last-update: 2026-04-28
product_v2:
  - id: eadea719-cf89-469b-a6fd-a236a7138047
    internal-label: Commerce
role_v2:
  - id: c66ffd68-0f65-42bb-aa23-b4020f12e0bd
    internal-label: Admin
  - id: ff6a42d2-313e-452e-93a6-792e4fad9ff8
    internal-label: Developer
level_v2:
  - id: d378ca77-2da1-4f39-ad92-1917fe974a38
    internal-label: Experienced
---
# Configure message consumers

Before you run this command, you must do the following *or* you must [install the application](../advanced.md):

*  [Create or update the deployment configuration](deployment.md)
*  [Create the database schema](database.md)

## Configure the consumers behavior

Configuring consumer behavior is done by sending key/value pairs within the setup function:

```shell
bin/magento setup:config:set [--<parameter_name>=<value>, ...]
```

### Parameter descriptions

{{$include /help/_includes/cli-consumers.md}}

<!-- Last updated from includes: 2022-09-12 09:38:25 -->
