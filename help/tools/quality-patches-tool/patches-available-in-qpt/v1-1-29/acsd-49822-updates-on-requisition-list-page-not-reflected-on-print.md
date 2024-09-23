---
title: 'ACSD-49822: Updates on requisition list page not reflected on print requisition list'
description: Apply the ACSD-49822 patch to fix the Adobe Commerce issue where updates on the requisition list page are not reflected on the print requisition list.
exl-id: 584e3fcd-9153-41aa-8857-cf1fa41269c9
feature: Admin Workspace, B2B
role: Admin
---
# ACSD-49822: Updates in requisition list not reflected on print requisition list

The ACSD-49822 patch fixes the issue where updates on the requisition list page are not reflected on the print requisition list. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.29 is installed. The patch ID is ACSD-49822. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

*  Adobe Commerce (all deployment methods) 2.4.3-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.3.7 - 2.4.6

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Updates on the requisition list page are not reflected on the print requisition list.

<u>Steps to reproduce</u>:

1. Enable requisition list by navigating to **[!UICONTROL Stores]** > **[!UICONTROL Configuration]** > **[B2B features]**.
1. Create a product.
1. Log in as a customer and add two products to the requisition list.
1. Go to **[!UICONTROL My Account]** > **[!UICONTROL My Requisition Lists]**.
1. View a requisition list.
1. Click **[!UICONTROL Print]** in the upper right corner.
1. Close the print window and print requisition list page.
1. Delete an item in the list or update a quantity of an item, and try to print it again. 
1. You will observe that the items are not updated on the print window.
1. Close the print window.
1. You will observe that the items are not updated on the requisition list print page.

<u>Expected results</u>:

The list to be printed is updated after any change is applied.

<u>Actual results</u>:

Updates are not reflected on the requisition list print page.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
