---
title: 'ACSD-55414: Bad performance when MariaDB tries to cast the entitys_ids'
description: Apply the ACSD-55414 patch to fix the Adobe Commerce issue when the MariaDB tries to convert `entitys_ids` from string to integer, it hampers the performance of reindexing.
feature: Attributes
role: Admin, Developer
exl-id: 76309cef-559e-4a55-a27b-7d807ef9f74e
type: Troubleshooting
---
# ACSD-55414: Bad performance when MariaDB tries to cast the `entitys_ids`

The ACSD-55414 patch fixes the issue where the performance of reindexing is hampered when the MariaDB tries to convert `entitys_ids` from string to integer. This patch is available when the [!DNL Quality Patches Tool (QPT)] 1.1.41 is installed. The patch ID is ACSD-55414. Please note that the issue is fixed in Adobe Commerce 2.4.6.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods)  2.4.5-p4

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.0 - 2.4.5-p5

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The performance of reindexing is hampered when the MariaDB tries to cast the `entitys_ids` from string to integer.

<u>Steps to reproduce</u>:

1. Update `setup/performance-toolkit/profiles/ce/small.xml` by setting up *50000* simple products.
1. Generate this profile by executing command: `bin/magento setup:perf:generate-fixtures setup/performance-toolkit/profiles/ce/small.xml`.
1. Run reindex: `bin/magento indexer:reindex catalog_product_attribute`.

<u>Expected results</u>:

The reindex takes reasonable time to complete.

<u>Actual results</u>:

The reindex takes too much time to complete. 

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!UICONTROL Quality Patches Tool] guide.


For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
