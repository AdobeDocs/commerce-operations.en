---
title: 'ACSD-48234: catalog search result incorrect category item count when [!UICONTROL Display Out of Stock Products] enabled'
description: Apply the ACSD-48234 patch to fix the Adobe Commerce issue where the catalog search result shows an incorrect category item count when the [!UICONTROL Display Out of Stock Products] option is enabled.
exl-id: 8e70fe73-d550-4e11-b25e-84955e136d12
feature: Admin Workspace, Categories, Catalog Management, Orders, Products, Search
role: Admin
---
# ACSD-48234: catalog search result shows incorrect category item count **[!UICONTROL Display Out of Stock Products]** enabled

The ACSD-48234 patch solves the issue where the catalog search result shows an incorrect category item count when the **[!UICONTROL Display Out of Stock Products]** option is enabled. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.25 is installed. The patch ID is ACSD-48234. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.6.


## Affected products and versions

**The patch is created for Adobe Commerce version:**
* Adobe Commerce (all deployment methods) 2.4.5-p1

**Compatible with Adobe Commerce versions:**
* Adobe Commerce (all deployment methods) 2.4.5 - 2.4.5-p4

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The catalog search result shows an incorrect category item count when the **[!UICONTROL Display Out of Stock Products]** option is enabled.

<u>Steps to reproduce</u>:

1. Go to **[!UICONTROL Stores]** > **[!UICONTROL Attributes]** > **[!UICONTROL Product]** and open **[!UICONTROL color]** attribute.
1. Add two options, for example orange and green. Save the attribute.
1. Go to **[!UICONTROL Stores]** > **[!UICONTROL Attributes]** > **[!UICONTROL Attribute Set]** and add the **[!UICONTROL color]** attribute to the **[!UICONTROL Default]** attribute set.
1. Go to **[!UICONTROL Stores]** > **[!UICONTROL Settings]** > **[!UICONTROL Configuration]** > **[!UICONTROL CATALOG]** > **[!UICONTROL Inventory]** > **[!UICONTROL Stock Options]** and set **[!UICONTROL Display Out of Stock Products]** to _Yes_.
1. Create category "cat1".
1. Create two products:
    1. Name: prod1, Color: orange, Categories: cat1.
    1. Name: prod2, Color: green, Categories: cat1.
1. Open cat1 category on the storefront.
1. Select the orange color at the layered navigation.

<u>Expected results</u>:

Only prod1 product is shown.

<u>Actual results</u>:

Both prod1 and prod2 products are shown.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
