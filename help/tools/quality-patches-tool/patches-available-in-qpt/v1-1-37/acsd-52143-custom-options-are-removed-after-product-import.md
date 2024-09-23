---
title: 'ACSD-52143: Custom options are removed after product import'
description: Apply the ACSD-52143 patch to fix the Adobe Commerce issue where the customization options are removed after the product import.
feature: Data Import/Export
role: Admin, Developer
---
# ACSD-52143: Custom options are removed after product import

The ACSD-52143 patch fixes the issue where the custom options are removed after the product import. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) 1.1.37 is installed. The patch ID is ACSD-52143. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.6

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.6 - 2.4.6-p2

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The custom options are removed after the product import.

<u>Steps to reproduce</u>:

1. Go to **[!UICONTROL Store]** > **[!UICONTROL All Stores]**, and set up a multi-store instance (one website with two store views).
1. Go to **[!UICONTROL Catalog]** > **[!UICONTROL Products]** and create two products with [!UICONTROL Customizable Options].
1. In each product, add a [!UICONTROL Customizable Option].
1. Switch to the second store view and modify the product name on each product.
1. Go to **[!UICONTROL System]** > **[!UICONTROL Data Transfer]** > **[!UICONTROL Export]** and export the two products you created.
1. Download the CSV file.
1. Go to **[!UICONTROL System]** > **[!UICONTROL Data Transfer]** > **[!UICONTROL Import]** and re-import the file.
1. Check both products.

<u>Expected results</u>:

The custom options are not removed after the product import.

<u>Actual results</u>:

The customs options are removed after the product import.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!UICONTROL Quality Patches Tool] guide.


For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
