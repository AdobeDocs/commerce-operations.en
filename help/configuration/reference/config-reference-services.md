---
title: Services configuration paths reference
description: Learn about services configuration paths and values in Adobe Commerce Admin settings. Discover Web API, OAuth, and service integration configuration options.
feature: Configuration, Services
exl-id: 77818c54-21ae-4a66-81bf-468bd7d09cda
---
# Services configuration paths reference

This section lists variable names and config paths available for options in the Admin under **Stores** > Settings > **Configuration** > **Services**.

The [`magento app:config:dump` command](../cli/export-configuration.md) writes these values to the shared configuration file, `app/etc/config.php`, which should be in source control. To optionally override any configuration settings or to set sensitive settings, see [Use environment variables to override configuration settings](override-config-settings.md#environment-variables). This topic does _not_ list [sensitive and system-specific values](config-reference-sens.md).

## Commerce Web API paths

These configuration values are available in the Admin in **Stores** > Settings > **Configuration** > **Services** > **Web API**.

| Name  | Config path | Commerce only? |
|--------------|--------------|--------------|
| Default Response Charset | `webapi/soap/charset` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Allow Anonymous Guest Access | `webapi/webapisecurity/allow_insecure` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |

{style="table-layout:auto"}

## OAuth paths

These configuration values are available in the Admin in **Stores** > Settings > **Configuration** > **Services** > **OAuth**.

| Name  | Config path | Commerce only? |
|--------------|--------------|--------------|
| Customer Token Lifetime (hours) | `oauth/access_token_lifetime/customer` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Admin Token Lifetime (hours) | `oauth/access_token_lifetime/admin` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Cleanup Probability | `oauth/cleanup/cleanup_probability` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Expiration Period | `oauth/cleanup/expiration_period` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Expiration Period | `oauth/consumer/expiration_period` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| OAuth consumer credentials HTTP Post maxredirects | `oauth/consumer/post_maxredirects` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| OAuth consumer credentials HTTP Post timeout | `oauth/consumer/post_timeout` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |

{style="table-layout:auto"}
