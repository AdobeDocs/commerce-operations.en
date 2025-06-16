---
title: 'MDVA-43726: Catalog price rule fails to apply after partial reindex'
description: The MDVA-43726 patch fixes the issue where the catalog price rule based on store-level attribute match fails to apply after partial reindex. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.12 is installed. The patch ID is MDVA-43726. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.5.
feature: Catalog Management, Categories, Orders, Price Rules
role: Admin
exl-id: db536749-eb89-4bb5-9c69-f448f74497b8
---
# MDVA-43726: Catalog price rule fails to apply after partial reindex

The MDVA-43726 patch fixes the issue where the catalog price rule based on store-level attribute match fails to apply after partial reindex. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.12 is installed. The patch ID is MDVA-43726. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.5.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.2-p2

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.3.3 - 2.4.2-p2

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches). Use the patch ID as a search keyword to locate the patch.

## Issue

The catalog price rule based on store-level attribute match fails to apply after partial reindex.

<u>Steps to reproduce</u>:

1. Set indexer mode to run on schedule.
1. Create two configurable product attributes. For example: Color (Visual Swatch) and Size (Text Swatch).
1. Create a configurable product using both attributes created in Step 2.
1. After creating the products, create a **Yes/No** type attribute and make it visible in the rule conditions.
1. Add this attribute to the default attribute set.
1. Create a catalog price rule to apply when this attribute is set to **Yes**.
1. Open one of the simple products related to the configurable product.
1. Change the scope to store view and update the attribute value to **Yes**.
1. Run the `CRON` and check the price on the frontend.
1. Run a full reindex. Again, check the price on the frontend.
1. Update the configurable product category.
1. Run the `CRON` and check the price again on the frontend.

<u>Expected results</u>:

The catalog rule applies correctly without a full reindex using incremental indexers.

<u>Actual results</u>:

The catalog rule doesn't apply without running a full reindex.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!DNL Quality Patches Tool] guide.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
