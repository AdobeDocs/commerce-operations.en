---
title: Import data from configuration files
description: Learn how to import Adobe Commerce configuration settings from configuration files. Discover pipeline deployment and database import processes.
exl-id: 7d9f156c-e8d3-4888-b359-5d9aa8c4ea05
---
# Import configuration settings

{{file-system-owner}}

When you set up a production system using the Commerce 2.2 [pipeline deployment model](../deployment/technical-details.md), you must _import_ configuration settings from `config.php` and `env.php` into the database.
These settings include configuration paths and values, websites, stores, store views, and themes.

After importing websites, stores, store views, and themes, you can create product attributes and apply them to websites, stores, and store views, on the production system.

>[!INFO]
>
>The `bin/magento app:config:import` command does not process configuration stored in environment variables.

## Import command

On your production system, run the following command to import data from the configuration files (`config.php` and `env.php`) to the database:

```bash
bin/magento app:config:import [-n, --no-interaction]
```

Use the optional `[-n, --no-interaction]` flag to import data without any interaction.

If you enter `bin/magento app:config:import` without the optional flag, you are required to confirm the changes.

For example, if configuration file contains one new website and one new store, the following message is displayed:

```
These Websites will be created: New Website
These Groups will be created: New Store
Do you want to continue [yes/no]?
```

To continue the import, enter `yes`.

If deployment configuration files contain some data to import, a message similar to the following is displayed:

```
Start import:
Some information about importing
```

If deployment configuration files do not contain any data to import, a message similar to the following is displayed:

```
Start import:
Nothing to import
```

## What we import

The following sections discuss in detail what data we import.

### System configuration

Commerce directly uses values in the `system` array in the `config.php` or `env.php` files instead of importing them into the database because they require some pre- and post-processing actions.

For example, the value of the configuration path `web/secure/base_url` must be validated with backend models.

#### Backend models

Backend models are the mechanism for processing changes in system configuration.
You define backend modules in `<module_name>/adminhtml/system.xml`.

All backend models must extend the [`Magento\Framework\App\Config\Value`](https://github.com/magento/magento2/blob/2.4/lib/internal/Magento/Framework/App/Config/Value.php) class.

When we import backend models, we do not save the configuration values.

### Websites, stores, and store groups configuration

We import the following types of configurations.
(These configurations are under the `scopes` array in `config.php`.)

- `websites`: websites related configuration
- `groups`: stores related configuration
- `stores`: store views related configuration

The preceding configurations can be imported in the following modes:

- `create`: `config.php` contains new entities (`websites`, `groups`, `stores`) that are absent in the production environment
- `update`: `config.php` contains entities (`websites`, `groups`, `stores`) that are different from the production environment
- `delete`: `config.php` does _not_ contain entities (`websites`, `groups`, `stores`) that are present on production environment

>[!INFO]
>
>We do not import the root category associated with stores. You must associate a root category with a store using the Commerce Admin.

### Theme configuration

Theme configuration includes all themes registered in your Commerce system; the data comes directly from the `theme` database table. (Theme configuration is in the `themes` array in `config.php`.)

#### Structure of theme data

The key of array is full theme path: `area` + `theme path`

For example, `frontend/Magento/luma`.
`frontend` is area and `Magento/luma` is theme path.

The value of array is data about theme: code, title, path, parent id

Full example:

```php?start_inline=1
'frontend/Magento/luma' =>
   array (
      'parent_id' => 'Magento/blank',
      'theme_path' => 'Magento/luma',
      'theme_title' => 'Magento Luma',
      'is_featured' => '0',
      'area' => 'frontend',
      'type' => '0',
      'code' => 'Magento/luma',
),
```

>[!INFO]
>
>- _Theme registration_. If a theme data is defined in `config.php` but the theme's source code is not present in the file system, the theme is ignored (that is, not registered).
>- _Theme removal_. If a theme is not present in `config.php` but the source code is present on the file system, the theme is not removed.
