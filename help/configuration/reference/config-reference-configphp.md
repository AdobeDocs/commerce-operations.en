---
title: config.php reference
description: Learn about config.php file values and sections for Adobe Commerce configuration. Discover modules, scopes, system settings, and deployment best practices.
exl-id: 9b355d6d-ea66-480b-ad96-0ea9e7e61844
---
# config.php reference

The `config.php` file contains the following sections:

| Name      | Description        |
| --------- | -------------------|
| `i18n`    | All inline translation data. Reading from this section is not supported. |
| `modules` | The list of enabled and disabled modules. |
| `scopes`  | The list of stores, store groups, and websites with related information. |
| `system`  | The system configurations required for static content deployment. |
| `themes`  | The configuration of installed themes. |

## modules

Contains an array of modules and their states. If module is enabled, value is 1. Otherwise, the value is 0.

```conf
'modules' => [
    'Magento_Store' => 1,
    'Magento_Theme' => 0,
    'Magento_Backend' => 0,
    'Magento_Eav' => 1
]
```

Learn more about [Modules](https://experienceleague.adobe.com/docs/commerce-learn/tutorials/backend-development/create-module.html).

## scopes

Contains an array of scope configuration values. It has the following subnodes:

| Name       | Description                        |
| ---------- | -----------------------------------|
| `websites` | Website configuration              |
| `groups`   | Stores configuration               |
| `stores`   | Store views configuration          |

```conf
'scopes' => [
  'websites' => [
    'admin' => [
      'website_id' => '0',
      'code' => 'admin',
      'name' => 'Admin',
      'sort_order' => '0',
      'default_group_id' => '0',
      'is_default' => '0'
    ]
  ],
  'groups' => [
    0 => [
      'group_id' => '0',
      'website_id' => '0',
      'code' => 'default',
      'name' => 'Default',
      'root_category_id' => '0',
      'default_store_id' => '0'
    ]
  ],
  'stores' => [
    'admin' => [
      'store_id' => '0',
      'code' => 'admin',
      'website_id' => '0',
      'group_id' => '0',
      'name' => 'Admin',
      'sort_order' => '0',
      'is_active' => '1'
    ]
  ]
]
```

Learn more about [Commerce Scopes](https://experienceleague.adobe.com/docs/commerce-admin/start/setup/websites-stores-views.html#scope-settings).

## system

Contains an array of system field configuration values.

```conf
'system'=> [
    'default' =>[
        'checkout' => [
            'cart' => [
                'delete_quote_after' => 31
            ]
        ]
    ]
]
```

Learn more about [System-specific Configurations](config-reference-sens.md).

## themes

Contains an array of values for theme configuration.

```conf
'themes' => [
  'frontend/Magento/luma' => [
    'parent_id' => 'Magento/blank',
    'theme_path' => 'Magento/luma',
    'theme_title' => 'Magento Luma',
    'is_featured' => '0',
    'area' => 'frontend',
    'type' => '0',
    'code' => 'Magento/luma'
  ]
]
```

Learn more about [Themes](https://developer.adobe.com/commerce/frontend-core/guide/themes/create-storefront/).

