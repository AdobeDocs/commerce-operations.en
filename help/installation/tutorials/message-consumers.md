---
title: Configure message consumers
description:
---

# Configure message consumers

Before you run this command, you must do all of the following *or* you must [install the application](../advanced.md):

*  [Create or update the deployment configuration](deployment.md)
*  [Create the database schema](database.md)

## Configure the consumers behavior

Configuring consumer behavior is done by sending key/value pairs within the setup function:

```bash
bin/magento setup:config:set [--<parameter_name>=<value>, ...]
```

### Parameter descriptions

{{$include /help/_includes/cli-consumers.md}}
