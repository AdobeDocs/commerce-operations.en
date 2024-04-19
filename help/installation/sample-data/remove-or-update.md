---
title: Remove or update sample data modules
description: Follow these steps to manage Adobe Commerce sample data modules.
exl-id: d23f999f-18bf-449b-be23-bdf392dda539
---
# Remove or update sample data modules

This topic discusses how to:

*  [Remove sample data modules](#remove-sample-data-modules) from an Adobe Commerce installation `composer.json`. This option does *not* remove sample data from the database.

*  [Prepare to update sample data](#prepare-to-update-sample-data) (for example, before updating the Magento application).

## Remove sample data modules

Enter the following command:

```bash
bin/magento sampledata:remove
```

The complete list of sample data modules follows:

*  `magento/module-bundle-sample-data`
*  `magento/module-catalog-rule-sample-data`
*  `magento/module-catalog-sample-data`
*  `magento/module-cms-sample-data`
*  `magento/module-configurable-sample-data`
*  `magento/module-customer-sample-data`
*  `magento/module-downloadable-sample-data`
*  `magento/module-grouped-product-sample-data`
*  `magento/module-msrp-sample-data`
*  `magento/module-offline-shipping-sample-data`
*  `magento/module-product-links-sample-data`
*  `magento/module-review-sample-data`
*  `magento/module-sales-rule-sample-data`
*  `magento/module-sales-sample-data`
*  `magento/module-sample-data`
*  `magento/module-swatches-sample-data`
*  `magento/module-tax-sample-data`
*  `magento/module-theme-sample-data`
*  `magento/module-widget-sample-data`
*  `magento/module-wishlist-sample-data`
*  `magento/sample-data-media`

## Prepare to update sample data

This command enables you to update sample data before you update Adobe Commerce.

To prepare sample data for updating, enter the following command:

```bash
bin/magento sampledata:reset
```

After that, [update the application](../tutorials/uninstall.md#update-the-application).
