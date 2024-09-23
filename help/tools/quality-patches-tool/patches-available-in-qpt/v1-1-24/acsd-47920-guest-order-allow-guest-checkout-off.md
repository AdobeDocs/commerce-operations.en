---
title: 'ACSD-47920: a guest user can place orders via REST API even when [!UICONTROL Allow Guest Checkout] is off'
description: Apply the ACSD-47920 patch to fix the Adobe Commerce issue where orders can be placed via REST API as a guest user even when the [!UICONTROL Allow Guest Checkout] is turned off.
exl-id: 8726eac4-ab19-4232-8e15-270d09bdc0a5
feature: REST, Checkout, Orders
role: Admin
---
# ACSD-47920: a guest user can place orders via REST API even when **[!UICONTROL Allow Guest Checkout]** is off

The ACSD-47920 patch fixes the issue where orders can be placed via REST API as a guest user even when the **[!UICONTROL Allow Guest Checkout]** is turned off. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.24 is installed. The patch ID is ACSD-47920. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.6.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.3-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.0 - 2.4.5-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Orders can be placed via Rest API as a guest user even when the **[!UICONTROL Allow Guest Checkout]** is turned off.

<u>Steps to reproduce</u>:

1. Go to Adobe Commerce Admin > **[!UICONTROL Stores]** > **[!UICONTROL Settings]** > **[!UICONTROL Configuration]** > **[!UICONTROL Sales]** > **[!UICONTROL Sales]** > **[!UICONTROL Checkout]** > **[!UICONTROL Checkout Options]** > and set the **[!UICONTROL Allow Guest Checkout]** to _No_.
1. Use REST API to add a product to a cart and place an order.

<u>Expected results</u>:

Guest checkout API returns an error *[!UICONTROL Sorry, guest checkout is not available]* if **[!UICONTROL Allow Guest Checkout]** is set to _No_.

<u>Actual results</u>:

Guest checkout API allows an order to be placed even if **[!UICONTROL Allow Guest Checkout]** is set to _No_.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
