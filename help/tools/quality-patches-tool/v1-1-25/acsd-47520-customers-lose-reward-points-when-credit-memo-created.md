---
title: 'ACSD-47520: customers lose reward points when a credit memo is created'
description: Apply the ACSD-47520 patch to fix the Adobe Commerce issue where customers lose reward points when a credit memo is created.
exl-id: 748b4e05-981d-49f6-a4f5-b121d57085f4
feature: Admin Workspace, Cache, Orders, Rewards, Returns
role: Admin
---
# ACSD-47520: customers lose reward points when a credit memo is created

The ACSD-47520 patch fixes the issue where customers lose reward points when a credit memo is created. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.25 is installed. The patch ID is ACSD-47520. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.6.

## Affected products and versions

**The patch is created for Adobe Commerce version:**
* Adobe Commerce (all deployment methods) 2.4.5

**Compatible with Adobe Commerce versions:**
* Adobe Commerce (all deployment methods) 2.4.0 - 2.4.5-p4

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Customers lose reward points when a credit memo is created.

<u>Steps to reproduce</u>:

1. Go the Adobe Commerce Admin > **[!UICONTROL Store]** > **[!UICONTROL Settings]** > **[!UICONTROL Configuration]** > **[!UICONTROL Customers]** > **[!UICONTROL Reward Points]**.
1. Change the setting:
   * **[!UICONTROL Enable Reward Points Functionality]** = _Yes_
   * **[!UICONTROL Enable Reward Points Functionality on Storefront]** = _Yes_
   * **[!UICONTROL Customers May See Reward Points History]** = _Yes_
   * **[!UICONTROL Refund Reward Points Automatically]** = _No_
   * **[!UICONTROL Deduct Reward Points from Refund Amount Automatically]** = _Yes_
1. Go to the Admin > **[!UICONTROL Store]** > **[!UICONTROL Other Settings]** > **[!UICONTROL Reward Exchange Rates]** and click on **[!UICONTROL Add New Rate]**.
1. Add new rate (1:1) and flush the cache.
1. Create a customer and add 10 reward points to this account.
1. Go to the Admin > **[!UICONTROL Sales]** > **[!UICONTROL Orders]** > **[!UICONTROL Create New Order]** > Select the customer created in the previous step.
1. Select any product whose price is greater than the reward points.
1. Place an order via any payment method and the reward points.
1. Create an invoice for the order.
1. Create a credit memo, but do not refund the reward points.

<u>Expected results</u>:

* The Admin can refund the reward points.

* The order status will be closed.

<u>Actual results</u>:

* There is no way to refund the reward points.

* The order status is **[!UICONTROL Completed]**.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
