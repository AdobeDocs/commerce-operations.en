---
title: 'ACSD-51230: Gift card account is deleted'
description: Apply the ACSD-51230 patch to fix the Adobe Commerce issue where the gift card account is deleted when the partial refund of a simple product is processed from an order.
exl-id: 4322a175-3641-468a-8a0f-fcbad90c758f
feature: Customer Service, Gift, Marketing Tools
role: Admin
---
# ACSD-51230: Gift card account is deleted 

The ACSD-51230 patch fixes the issue where the gift card account is deleted when the partial refund of a simple product is processed from an order. This patch is available when the [!DNL Quality Patches Tool (QPT)] 1.1.32 is installed. The patch ID is ACSD-51230. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.3

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.3.7 - 2.4.6

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The gift card account is deleted when the partial refund of a simple product is processed from an order.

<u>Steps to reproduce</u>:

1. Create an order with a *Gift Card* and a *simple product* (e.g., *add: SKU: GI000XX000XXX, SKU: PC046CP042076*) – (any payment and shipping method works).
1. Invoice the order.
1. Go to **[!UICONTROL Marketing]** > **[!UICONTROL Gift Card accounts]**. An account is created for the gift card.
1. Now go to **[!UICONTROL Order]**, and create a **[!UICONTROL Credit Memo]**.
1. Change the quantity for the *Gift Card* to 0 and update it. This will create a partial refund for the *simple product*.
1. Click on **[!UICONTROL Refund]**.
1. Now refresh the **[!UICONTROL Marketing]** > **[!UICONTROL Gift Card accounts]**. The newly created account is deleted.

<u>Expected results</u>

The gift card account is available for use as the refund was not created for the gift card.

<u>Actual results</u>

The gift card account is deleted, and the gift card is not refunded.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
