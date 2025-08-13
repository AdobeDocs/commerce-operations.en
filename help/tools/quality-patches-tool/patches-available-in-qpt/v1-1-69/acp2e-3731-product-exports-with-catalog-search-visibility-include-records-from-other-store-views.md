---
title: 'ACP2E-3731: Product exports with "Catalog, Search" visibility include records from other store views'
description: Apply the ACP2E-3731 patch to fix the Adobe Commerce resolves an issue where product exports with visibility filter set to "Catalog, Search" included incorrect rows in multi-store setups due to store-scoped attribute variations.
feature: Data Import/Export
role: Admin, Developer
---

# ACP2E-3731: Product exports with "Catalog, Search" visibility include records from other store views

The ACP2E-3731 patch fixes the issue where product exports with "Catalog, Search" visibility incorrectly include records from other store views in multi-store environments. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.69 is installed. The patch ID is ACP2E-3731. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.4.9.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.6-p9

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.8-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Issue where product exports with "Catalog, Search" visibility incorrectly include records from other store views in multi-store environments.

<u>Steps to reproduce</u>:

1. Create additional Website, Store, and Store View.
1. Create an attribute and assign it to the default attribute set.
1. Create a product and assign it to both the Main Website and the secondary website.
1. Set a text value for the newly created attribute with Scope: All Store Views.
1. Change the scope to the secondary store view and update the attribute value to a different value.
1. Change the scope to Default Store View and Secondary Store View, then set visibility to "Not Visible Individually".
1. Navigate to System > Export, select Products from the dropdown.
1. Set a filter on Visibility = Catalog, Search and click Continue.
1. Run the following command to process the export:

```
php bin/magento queue:consumers:start exportProcessor
```

1. Check the exported file

<u>Expected results</u>:

Only the filtered records should be exported

<u>Actual results</u>:

Exported file contains row for secondary store view which doesn't correspond to the filter set during export

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.