---
title: Configure message consumers
description:
---

# Configure message consumers

Before you run this command, you must do all of the following *or* you must [install the application]({{ page.baseurl }}/install-gde/install/cli/install-cli-install.html):

*  [Create or update the deployment configuration]({{ page.baseurl }}/install-gde/install/cli/install-cli-subcommands-deployment.html)
*  [Create the database schema]({{ page.baseurl }}/install-gde/install/cli/install-cli-subcommands-db.html)

## Configure the consumers behavior {#instgde-cli-consumersconfig}

Configuring consumer behavior is done by sending key/value pairs within the setup function:

```bash
bin/magento setup:config:set [--<parameter_name>=<value>, ...]
```

### Parameter descriptions

{% include config/consumers.md %}
