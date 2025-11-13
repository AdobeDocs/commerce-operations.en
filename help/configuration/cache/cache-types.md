---
title: Cache types
description: Learn how to associate cache frontends with cache types in Adobe Commerce. Discover cache configuration and management techniques.
feature: Configuration, Cache
exl-id: 67d4ba06-b48b-4e1a-a7a8-9830490dfe3d
---
# Cache types

The following steps walk through associating cache frontend with a cache type.

## Step 1: Define a cache frontend

The Commerce application has a `default` cache frontend that you can use for any [cache type](../cli/manage-cache.md#clean-and-flush-cache-types). This section discusses how to optionally define a cache frontend with a different name, which is preferable if you expect to customize your frontend.

>[!INFO]
>
>To use the `default` cache type, you do not need to modify `env.php` at all; you modify Commerce's global `di.xml`. See [Low-level cache options](cache-options.md).

You must specify a custom cache frontend either `app/etc/env.php` or Commerce's global `app/etc/di.xml`.

The following example shows how to define it in the `env.php` file, which overrides the `di.xml` file:

```php?start_inline=1
'cache' => [
    'frontend' => [
        '<unique frontend id>' => [
             <cache options>
        ],
    ],
    'type' => [
         <cache type 1> => [
             'frontend' => '<unique frontend id>'
        ],
    ],
    'type' => [
         <cache type 2> => [
             'frontend' => '<unique frontend id>'
        ],
    ],
],
```

Where `<unique frontend id>` is a unique name to identify your frontend and `<cache options>` are options discussed in the topics specific to each type of caching (database, Redis, and so on).

## Step 2: Configure the cache

You can specify frontend and backend cache configuration options in `env.php` or `di.xml`. This task is optional.

`env.php` example:

```php?start_inline=1
'frontend' => <frontend_type>,
'frontend_options' => [
    <frontend_option> => <frontend_option_value>,
    ...
],
'backend' => <backend_type>,
'backend_options' => [
    <backend_option> => <backend_option_value>,
    ...
],
```

where

- `<frontend_type>` is the low-level frontend cache type. Specify the name of a class that is compatible with `Zend\Cache\Core`.
  If you omit `<frontend_type>`, [Magento\Framework\Cache\Core](https://github.com/magento/magento2/blob/2.4/lib/internal/Magento/Framework/Cache/Core.php) is used.

- `<frontend_option>`, `<frontend_option_value>` are the name and value of options the Commerce framework passes as an associative array to the frontend cache upon its creation.
- `<backend_type>` is the low-level backend cache type. Specify the name of a class that is compatible with `Zend_Cache_Backend` and that implements `Zend_Cache_Backend_Interface`.
- `<backend_option>` and `<backend_option_value>` are the name and value of options the Commerce framework passes as an associative array to backend cache upon its creation.

See the [Laminas documentation](https://docs.laminas.dev/) for the latest Zend information.
