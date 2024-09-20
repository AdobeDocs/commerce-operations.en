---
title: 'ACSD-57315: New transaction is created in [!DNL PayPal Payflow Pro] each time the fetch button is clicked'
description: Apply the ACSD-57315 patch to fix the Adobe Commerce issue where a new transaction is created in [!DNL PayPal Payflow Pro] each time the fetch button is clicked on the view transaction screen in the [!UICONTROL Admin].
feature: Payments
role: Admin, Developer
exl-id: bcc7467d-09f9-4235-9f9f-46d3034567b8
---
# ACSD-57315: New transaction is created in [!DNL PayPal Payflow Pro] each time the fetch button is clicked

The ACSD-57315 patch fixes the issue where a new transaction is created in [!DNL PayPal Payflow Pro] each time the fetch button is clicked on the view transaction screen in the [!UICONTROL Admin]. This patch is available when the [!DNL Quality Patches Tool (QPT)] 1.1.48 is installed. The patch ID is ACSD-57315. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.5.0.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.4-p4

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.2 - 2.4.6-p4

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

A new transaction is created in [!DNL PayPal Payflow Pro] each time the fetch button is clicked on the view transaction screen in the [!UICONTROL Admin].

<u>Steps to reproduce</u>:

1. Configure [!DNL PayPal Payflow Pro].
1. Set the transaction method to *[!UICONTROL Sale]*.
1. Place an order using *Credit Card*.
1. Open the transaction from [!UICONTROL Admin].
1. Click on the **[!UICONTROL Fetch]** button.
1. Check [!DNL PayPal] account for transactions related to the placed order.

<u>Expected results</u>:

A new payment transaction is not created.

<u>Actual results</u>:

A new payment transaction is created for an order that has already been paid.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
