---
title: Configure message consumers
description: Follow these steps to configure the behavior of Adobe Commerce message queue consumers.
exl-id: df292301-f4bd-49df-a241-7467c35bf1d8
---
# Configure message consumers

Before you run this command, you must do the following *or* you must [install the application](../advanced.md):

*  [Create or update the deployment configuration](deployment.md)
*  [Create the database schema](database.md)

## Configure the consumers behavior

Configuring consumer behavior is done by sending key/value pairs within the setup function:

```bash
bin/magento setup:config:set [--<parameter_name>=<value>, ...]
```

### Parameter descriptions

{{$include /help/_includes/cli-consumers.md}}

<!-- Last updated from includes: 2022-09-12 09:38:25 -->
