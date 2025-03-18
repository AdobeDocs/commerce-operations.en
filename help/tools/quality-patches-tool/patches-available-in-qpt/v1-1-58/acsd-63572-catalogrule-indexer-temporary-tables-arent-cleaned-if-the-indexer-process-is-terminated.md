---
title: "ACSD-63572: `catalogrule` indexer temporary tables aren't cleaned if the indexer process is terminated"
description: Apply the ACSD-63572 patch to fix the Adobe Commerce issue where the indexer tables aren't cleaned up when the process was terminated due to a system upgrade or halt in [!UICONTROL CLI].
feature: System
Role: Admin, Developers
exl-id: 1cab7058-ca20-4d43-bfca-9b0e3ad35f42
---
# ACSD-63572: `catalogrule` indexer temporary tables are not cleaned if the indexer process is terminated

The ACSD-63572 patch fixes the issue where the indexer temporary tables aren't cleaned up when the process was terminated due to a system/upgrade or halt in [!UICONTROL CLI]. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.58 is installed. The patch ID is ACSD-63572. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.6-p8

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.5 - 2.4.7-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Indexer temporary tables aren't cleaned up when the process was terminated due to a system upgrade or halt in [!UICONTROL CLI].

<u>Steps to reproduce</u>:

1. Open [!UICONTROL CLI].
1. Run command: `bin/magento indexer:reindex catalogrule_rule`.
1. Cancel the process before it is finished using: `^C`.
1. Reset indexers using: `bin/magento indexer:reset catalogrule_rule catalogrule_product`.
1. Repeat the previous steps several times.
1. Check for the following temporary tables that have been created in the database:
    
    ```
    catalogrule_product__temp*
    catalogrule_product_price__temp*
    ```

<u>Expected results</u>:

The old temporary tables are deleted when they aren't needed.

<u>Actual results</u>:

The old temporary tables aren't removed.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
