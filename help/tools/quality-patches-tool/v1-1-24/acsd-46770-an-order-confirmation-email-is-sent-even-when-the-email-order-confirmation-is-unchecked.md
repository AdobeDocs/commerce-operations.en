---
title: 'ACSD-46770: order confirmation email is sent even when [!UICONTROL Email Order Confirmation] is unchecked'
description: Apply the ACSD-46770 patch to fix the Adobe Commerce issue where order confirmation emails are sent even when [!UICONTROL Email Order Confirmation] is not selected.
exl-id: 9cbf3a57-1f59-4030-b432-0e6cad410a27
feature: Communications, Orders
role: Admin
---
# ACSD-46770: order confirmation email is sent even when **[!UICONTROL Email Order Confirmation]** is unchecked

The ACSD-46770 patch fixes the issue where orders can be placed via REST API as a guest user even when **[!UICONTROL Email Order Confirmation]** is unselected. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.24 is installed. The patch ID is ACSD-46770. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.6.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.4

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.0 - 2.4.5-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

An order confirmation email is sent even when **[!UICONTROL Email Order Confirmation]** is not selected.

<u>Steps to reproduce</u>:

1. Create a customer account.
1. Go to **[!UICONTROL Sales]** > **[!UICONTROL Order]** and click on  **[!UICONTROL Create New Order]**.
1. Select the customer, add the products to the order, fill in the address, and select the Shipping and Payment methods.
1. Before submitting the order, unselect the **[!UICONTROL Email Order confirmation]** check box.
1. Click on **[!UICONTROL Submit Order]** to create the order.

<u>Expected results</u>:

An order confirmation email should not be sent if the **[!UICONTROL Email Order Confirmation]** is unselected.

<u>Actual results</u>:

An order confirmation email is sent regardless of the unselected **[!UICONTROL Email Order Confirmation]** check box.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
