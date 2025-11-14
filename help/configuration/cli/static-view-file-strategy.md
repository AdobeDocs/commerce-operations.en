---
title: Deployment strategies for static view files
description: Learn about deployment strategies for static view files in Adobe Commerce applications. Discover optimal deployment methods for different use cases.
feature: Configuration, Deploy, Extensions
exl-id: 12ebbd36-f813-494f-9515-54ce697ca2e4
---
# Deployment strategies for static view files

When deploying static view files, you can choose one of the three available strategies. Each of them provides optimal deployment results for different use cases:

- [Standard](#standard-strategy): the regular deployment process.
- [Quick](#quick-strategy) (_default_): minimizes the time required for deployment when files for more than one locale are deployed.
- [Compact](#compact-strategy): minimizes the space taken by the published view files.

The following sections describe the implementation details and features of each strategy.

## Standard strategy

When the Standard strategy is used, all static view files for all packages are deployed, that is, processed by [`\Magento\Framework\App\View\Asset\Publisher`](https://github.com/magento/magento2/blob/2.4/lib/internal/Magento/Framework/App/View/Asset/Publisher.php).

For more information, see [Deploy static view files](../cli/static-view-file-deployment.md).

## Quick strategy

The quick strategy performs the following actions:

1. For each theme, one arbitrary locale is chosen and all files for this locale are deployed, like in the standard strategy.
1. For all other locales of the theme:

   1. Files that override the deployed locale are defined and deployed.
   1. All other files are considered similar for all locales, and are copied from the deployed locale.

>[!INFO]
>
>By _similar_, we mean files that are independent of the locale, theme, or area. These files might include CSS, images, and fonts.

This approach minimizes the deployment time required for multiple locales although a lot of files are duplicated.

## Compact strategy

The compact strategy avoids file duplication by storing similar files in `base` subdirectories.

For the most optimized result, three scopes for possible similarity are allocated: area, theme, and locale. The `base` subdirectories are created for all combinations of these scopes.

The files are deployed to these subdirectories according to the following patterns.

| Pattern | Description |
| ------- | ----------- |
| `<area>/<theme>/<locale>`      | Files specific for a particular area, theme, and locale |
| `<area>/<theme>/default`       | Files similar for all locales of a particular theme of a particular area. |
| `<area>/Magento/base/<locale>` | Files specific for a particular area and locale, but similar for all themes. |
| `<area>/Magento/base/default`  | Files specific for a particular area, but similar for all themes and locales. |
| `base/Magento/base/<locale>`   | Files similar for all areas and themes, but specific to a particular locale. |
| `base/Magento/base/default`    | Similar for all areas, themes, and locales. |

### Mapping deployed files

The approach to deployment used in the compact strategy means that files are inherited from base themes and locales. These inheritance relations are stored in the map files for each combination of area, theme, and locale. There are separate map files for PHP and JS:

- `map.php`
- `requirejs-map.js`

The `map.php` file is used by [`Magento\Framework\View\Asset\Repository`](https://github.com/magento/magento2/blob/2.4/lib/internal/Magento/Framework/View/Asset/Repository.php) to build correct URLs.

The `requirejs-map.js` is used by the `baseUrlResolver` plugin for RequireJS.

Example of `map.php`:

```php?start_inline=1
return [
    'Magento_Checkout::cvv.png' => [
        'area' => 'frontend',
        'theme' => 'Magento/luma',
        'locale' => 'en_US',
    ],
    '...' => [
        'area' => '...',
        'theme' => '...',
        'locale' => '...'
    ]
];
```

Example of `requirejs-map.js`:

```js
require.config({
    "config": {
       "baseUrlInterceptor": {
            "jquery.js": "../../../../base/Magento/base/en_US/"
        }
    }
});
```

## Tips for extension developers

To build URLs to static view files, use [`\Magento\Framework\View\Asset\Repository::createAsset()`](https://github.com/magento/magento2/blob/2.4/lib/internal/Magento/Framework/View/Asset/Repository.php#L211-L244).

Do not use URL concatenations to avoid problems with static files being not found and not displayed during page rendering.
