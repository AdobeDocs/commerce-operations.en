---
title: 'MDVA-42969: Related product rule only works when customer segment is set to all'
description: The MDVA-42969 patch fixes the issue where the related product rule only works when the customer segment is set to all. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) 1.1.13 is installed. The patch ID is MDVA-42969. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.5.
feature: Customer Service, Marketing Tools, Products
role: Admin
exl-id: 121da040-4541-468a-aeaf-cf98094e1918
---
# MDVA-42969: Related product rule only works when customer segment is set to all

The MDVA-42969 patch fixes the issue where the related product rule only works when the customer segment is set to all. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) 1.1.13 is installed. The patch ID is MDVA-42969. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.5.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.2-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.1 - 2.4.2-p2

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches). Use the patch ID as a search keyword to locate the patch.

## Issue

Related product rule only works when the customer segment is set to all.

<u>Steps to reproduce</u>:

1. Go to **Stores** > **Configuration** > **Catalog** > **Rule-Based Product Relations** and set **Show Related Products** = **Rule-Based Only**.
1. Go to **Customers** > **Segments** and create a new segment: **Apply To** = **Visitors and Registered Customers**.
1. Go to **Marketing** > **Related Product Rules** and create a new rule.

    ```code block
    Apply To = Related Products
    Customer Segments = All
    Products to Match = SKU = <select a SKU>
    Products to Display = SKU +is one of+ Constant Value (specify 1-3 products)
    ```

1. Open the matching product on the storefront and verify that the Products to Display are shown.
1. Modify the rule created in step three and set **Customer Segments** = **Specific** > **Segment** from step two.
1. Open the matching product on the storefront.

<u>Expected results</u>:

Rule-Based Related Products are displayed on the storefront for visitors on the product because the customer segment is created with the following configuration:

**Apply To** = **Visitors and Registered Customers**

<u>Actual results</u>:

No Related Products are displayed.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!DNL Quality Patches Tool] guide.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
