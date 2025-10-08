---
title: Configuration files for deployment
description: Learn how configuration files work for Adobe Commerce application deployment. Discover shared and system-specific configuration management best practices.
feature: Configuration, Deploy
exl-id: 772a6814-6b18-4f8f-b31e-72faf790ff37
---
# Configuration files for deployment

Adobe Commerce provides configuration files that enable you to easily customize a component and create configuration types to extend default functionality. The process of deployment configuration consists of the shared and system-specific configuration for your installation. Commerce's deployment configuration is divided between [`app/etc/config.php`](../reference/config-reference-configphp.md) and [`app/etc/env.php`](../reference/config-reference-envphp.md).

- `app/etc/config.php` is the _shared_ configuration file.
  This file contains the list of installed modules, themes, and language packages; and shared configuration settings.

  Check in this file to source control and use it in your development, staging, and production systems.

- `app/etc/env.php` contains settings that are specific to the installation environment.

Together, `config.php` and `env.php` are referred to as the Commerce _deployment configuration_ because the files are created during installation and are required to start the Commerce application.

>[!INFO]
>
>The [!DNL Commerce 2] deployment configuration replaces `local.xml` in [!DNL Magento 1.x].

Unlike other [module configuration files](../reference/module-files.md), Commerce deployment configuration is loaded into memory when during initialization, is not merged with any other files, and cannot be extended. (`config.php` and `env.php` are merged with each other, however.)

## Details about the deployment configuration

`config.php` and `env.php` are PHP files that return a [multi-dimensional associative array](https://www.w3schools.com:443/php/php_arrays.asp), which is basically a hierarchical arrangement of configuration parameters and values.

On the top level of this array are _configuration segments_. A segment has arbitrary content (a scalar value or a nested array) distinguished by an arbitrary key—where both the key and value pair are defined by the Commerce framework.

[Magento\Framework\App\DeploymentConfig](https://github.com/magento/magento2/blob/2.4/lib/internal/Magento/Framework/App/DeploymentConfig.php) merely provides access to these sections but does not allow you to extend them.

On the next hierarchy level, items in each segment are ordered according to the module sequence definition, which is obtained by merging all modules' configuration files, except for disabled modules.

The following sections discuss the structure and contents of the deployment configuration:

- Manage installed modules
- System-specific configuration

## Manage installed modules

The `config.php` file contains a list of installed modules. Adobe Commerce provides both command-line and web-based utilities to manage modules (install, uninstall, enable, disable, or upgrade).

Examples:

- Uninstall components: [`bin/magento setup:uninstall`](../../installation/tutorials/uninstall-modules.md)
- Check status of components: [`bin/magento module:status`](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/cli-reference/commerce-on-premises#modulestatus)
- Enable or disable components: [`bin/magento module:disable`](../../installation/tutorials/manage-modules.md), [`bin/magento module:enable`](../../installation/tutorials/manage-modules.md).

> _config.php_

```php
return array (
  'modules' =>
  array (
    'Magento_Core' => 1,
    'Magento_Store' => 1,
    'Magento_Theme' => 1,
    'Magento_Authorization' => 1,
    'Magento_Directory' => 1,
    'Magento_Backend' => 1,
    'Magento_Backup' => 1,
    'Magento_Eav' => 1,
    'Magento_Customer' => 1,
...
  ),
);
```

The value `1` or `0` indicates whether a module is enabled or disabled.

Disabled modules are not recognized by the Commerce application; in other words, they do not participate in merging configuration, in dependency injection, events, plug-ins, and so on. Disabled modules do not modify the storefront or Admin and do not affect routing.

The only practical difference of a disabled module and an absent module in the code base is that a disabled module is found by the autoloader, and its classes and constants are available for reuse in other code.
