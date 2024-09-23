---
title: 'ACSD-50815: Decimal quantity for simple product cannot be used for new bundled product option'
description: Apply the ACSD-50815 patch to fix the Adobe Commerce issue where the decimal quantity for a simple product cannot be used for a new bundled product option.
feature: Products
role: Admin
exl-id: f4aa417c-b0eb-4a68-bf1e-fd86770cc72d
---
# ACSD-50815: Decimal quantity for simple product cannot be used for new bundled product option

The ACSD-50815 patch fixes the issue where the decimal quantity for a simple product cannot be used for a new bundled product option. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.35 is installed. The patch ID is ACSD-50815. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.5-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.5 - 2.4.5-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The decimal quantity for a simple product cannot be used for a new bundled product option.

<u>Steps to reproduce</u>:

1. Log in as an admin.
1. Create a new simple product.
    * In the **[!UICONTROL Advanced Inventory]** window, set [!UICONTROL Qty Uses Decimal] = [!UICONTROL Yes].
    * Save the simple product.
1. Create a new bundled product.
1. Add any option.
1. Add the simple product into this option.
1. Set a decimal quantity for the simple product in the bundled product option. For example, 1.5.

<u>Expected results</u>:

It is possible to set decimal quantity. No errors are displayed.

<u>Actual results</u>:

The error, *Please enter a valid number in this field* is displayed.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
