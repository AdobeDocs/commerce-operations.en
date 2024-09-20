---
title: 'ACSD-50367: Customer address export does not work with multi-select attribute'
description: Apply the ACSD-50367 patch to fix the Adobe Commerce issue where the customer address export does not work when a multi-select **`Customer Address`** attribute without values is created.
exl-id: 688831d4-b49e-48fa-b4db-1328cda09a2b
feature: Admin Workspace, Attributes, Data Import/Export, Shipping/Delivery
role: Admin
---
# ACSD-50367: Customer address export does not work

The ACSD-50367 patch fixes the issue where the customer address export does not work when a multi-select **`Customer Address`** attribute without values is created. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.30 is installed. The patch ID is ACSD-50367. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.5-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.3.7 - 2.4.6

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Customer address export doesn't work when a multi-select **`Customer Address`** attribute without values is created.

<u>Prerequisites</u>:

Create a customer with an address.

<u>Steps to reproduce</u>:

1. Create a multi-select **`Customer Address`** attribute in **[!UICONTROL Admin]** > **[!UICONTROL Stores]** > **[!UICONTROL Customer Addresses]**.
1. Go to **[!UICONTROL Admin]** > **[!UICONTROL System]** > **[!UICONTROL Export]**, and select **`Customer Address`** entity type.
1. Export the customer addresses. You'll see that nothing is exported.
1. Delete the multi-select **`Customer Address`** attribute, and export the customer addresses again. This time the addresses' CSV file is generated.

<u>Expected results</u>:

The customer addresses can be exported as a CSV file when a multi-select **`Customer Address`** attribute is created.

<u>Actual results</u>:

The customer addresses can't be exported as a CSV file when a multi-select **`Customer Address`** attribute is created.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
