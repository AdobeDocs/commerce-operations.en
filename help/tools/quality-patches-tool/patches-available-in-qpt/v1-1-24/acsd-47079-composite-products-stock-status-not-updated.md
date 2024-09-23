---
title: "ACSD-47079: composite products' stock status not updated when sub-product stock status changes"
description: Apply the ACSD-47079 patch to fix the Adobe Commerce issue where composite products (bundle, grouped, and configurable) stock status is not updated when sub-product stock status changes via REST API POST /rest/V1/inventory/source-items.
exl-id: 603e4548-fb04-43b4-a033-4f2c7f665fae
feature: Orders, Products
role: Admin
---
# ACSD-47079: composite products' stock status not updated when sub-product stock status changes

The ACSD-47079 patch fixes the issue where the stock status of composite products (bundle, grouped, and configurable) is not updated when the sub-product stock status is changed via REST API POST `/rest/V1/inventory/source-items`. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.24 is installed. The patch ID is ACSD-47079. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.6.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.4

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.4-p2

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The stock status of composite products (bundle, grouped, and configurable) is not updated when the sub-product stock status is changed via REST API POST `/rest/V1/inventory/source-items`.

<u>Steps to reproduce</u>:

1. Create a configurable, bundled, and grouped product with one simple child product for each.
1. Set each simple child product status to **[!UICONTROL Out of Stock]** using the `source-items` API call.
1. Now check the parent product's stock status.

<u>Expected results</u>:

The parent product's status is [!UICONTROL Out of Stock].

<u>Actual results</u>:

The parent product's status is [!UICONTROL In Stock].

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
