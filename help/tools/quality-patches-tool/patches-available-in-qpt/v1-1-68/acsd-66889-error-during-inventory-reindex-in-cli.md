---
title: 'ACSD-66889: Error during inventory reindex in CLI'
description: Apply the ACSD-66889 patch to fix the Adobe Commerce issue where fixes deprecated line of code with proper structure to ensure successful completion of inventory indexer process.
feature: Inventory
role: Admin, Developer
---

# ACSD-66889: Error during inventory reindex in CLI

The ACSD-66889 patch fixes the issue where fixes deprecated line of code with proper structure to ensure successful completion of inventory indexer process. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.68 is installed. The patch ID is ACSD-66889. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.4.x.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.5-p8

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.5-p13

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Issue where fixes deprecated line of code with proper structure to ensure successful completion of inventory indexer process.

<u>Steps to reproduce</u>:

Execute the following command on the CLI:

```
php bin/magento indexer:reindex inventory
```

<u>Expected results</u>:

The inventory indexer should rebuild successfully when executed via the CLI

<u>Actual results</u>:

Inventory indexes remain in "Reindex Required" state.
Error like:

```
Deprecated Functionality: Using ${var} in strings is deprecated, use {$var} instead in /home/vendor/magento/module-elasticsearch-catalog-permissions/Model/Adapter/FieldMapper/Product/FieldProvider/FieldName/Resolver/CategoryPermission.php on line 24
```

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.