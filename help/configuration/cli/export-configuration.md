---
title: Export configuration settings
description: Export Adobe Commerce configuration settings to configuration files, also known as config dump.
exl-id: db680f5e-547a-48f3-b017-d77b8cb07bfd
---
# Export configuration settings

In Commerce 2.2 and later [pipeline deployment model](../deployment/technical-details.md), you can maintain a consistent configuration across systems. After you configure settings in the Admin on your development system, export those settings to configuration files using the following command:

```bash
bin/magento app:config:dump {config-types}
```

_config_types_ is a space-separated list of config types to dump. Available types include `scopes`, `system`, `themes`, and `i18n`. If no config types are specified, the command dumps all system configuration information.

The following example dumps scopes and themes only:

```bash
bin/magento app:config:dump scopes themes
```

As a result of the command execution, the following configuration files are updated:

- `app/etc/config.php`

  This is the shared configuration file for all your Commerce instances.
  Include this in your source control so it can be shared between the development, build, and production systems.

  See [config.php reference](../reference/config-reference-configphp.md).

- `app/etc/env.php`

  This is the environment-specific configuration file.
  It contains sensitive and system-specific settings for individual environments.

  Do _not_ include this file in source control.

  See [env.php reference](../reference/config-reference-envphp.md).

## Sensitive or system-specific settings

To set the sensitive settings written to `env.php`, use the [`bin/magento config:sensitive:set`](set-configuration-values.md#set-values) command.

Configuration values are specified as either sensitive or system-specific by referencing [`Magento\Config\Model\Config\TypePool`](https://github.com/magento/magento2/blob/2.4/app/code/Magento/Config/Model/Config/TypePool.php) in the module's [`di.xml`](https://developer.adobe.com/commerce/php/development/configuration/sensitive-environment-settings/#how-to-specify-values-as-sensitive-or-system-specific) file.

To export additional system settings when using `config_types`, consider using the [`bin/magento config:set`](set-configuration-values.md#set-values) command.
