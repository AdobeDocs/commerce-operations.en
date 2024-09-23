---
title: "ACSD-55427: An admin cannot unassign product from **[!UICONTROL Product in Shared Catalogs]** on the product's page"
description: Apply the ACSD-55427 patch to fix the Adobe Commerce issue where a product cannot be unassigned from **[!UICONTROL Product in Shared Catalogs]**.
feature: Products, B2B
role: Admin, Developer
exl-id: 1e08def1-07f6-42e0-b600-9f0bfdd6477a
---
# ACSD-55427: An admin cannot unassign product from **[!UICONTROL Product in Shared Catalogs]** on the product's page

The ACSD-55427 patch fixes the issue where you cannot unassign a product from **[!UICONTROL Product in Shared Catalogs]** on the product's page in the catalog in the Commerce Admin. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.44 is installed. The patch ID is ACSD-55427. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.5

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.5 - 2.4.6-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

You cannot unassign a product from **[!UICONTROL Product in Shared Catalogs]** on the product's page in the catalog in the Commerce Admin.

<u>Steps to reproduce</u>:

Prerequisites: Adobe Commerce installed with both B2B and **[!UICONTROL Shared Catalogs]** enabled.
1. Create a product.
1. Navigate to the shared catalog dashboard, and open the default shared catalog.
1. Assigning the product to the default catalog, and set a price lower than the product price.
1. Save the shared catalog.
1. Run the [!UICONTROL CRON] to update the consumers/indexers.
1. Open the product, and remove the product from under **[!UICONTROL Product in Shared Catalogs]** section.

<u>Expected results</u>:

 The product should be removed from under **[!UICONTROL Product in Shared Catalogs]** section.

<u>Actual results</u>:

The product is still displayed in the **[!UICONTROL Product in Shared Catalogs]** section.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
