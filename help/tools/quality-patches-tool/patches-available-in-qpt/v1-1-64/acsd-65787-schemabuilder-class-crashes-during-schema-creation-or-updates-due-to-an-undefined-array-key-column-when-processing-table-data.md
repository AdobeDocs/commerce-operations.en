---
title: 'ACSD-65787: SchemaBuilder class crashes during schema creation or updates due to an undefined array key "column" when processing table data'
description: Apply the ACSD-65787 patch to fix the Adobe Commerce issue where schemaBuilder class crashes during schema creation or updates due to an undefined array key "column" when processing table data.
feature: Backend Development, Deploy
role: Admin, Developer
---

# ACSD-65787: SchemaBuilder class crashes during schema creation or updates due to an undefined array key "column" when processing table data

The ACSD-65787 patch fixes the issue where schemaBuilder class crashes during schema creation or updates due to an undefined array key "column" when processing table data. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.64 is installed. The patch ID is ACSD-65787. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.4.9.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.7-p5

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.7-p5 - 2.4.7-p5

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

SchemaBuilder class crashes during schema creation or updates due to an undefined array key "column" when processing table data.

<u>Steps to reproduce</u>:

1. Execute

```
bin/magento setup:upgrade
```

<u>Expected results</u>:

No errors.

<u>Actual results</u>:

```
Error "Warning: Undefined array key "column" in SchemaBuilder.php on line 90
```

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.