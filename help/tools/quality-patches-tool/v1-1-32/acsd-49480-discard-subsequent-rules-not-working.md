---
title: 'ACSD-49480: Discard subsequent rules not working'
description: Apply the ACSD-49480 patch to fix the Adobe Commerce issue where the [!UICONTROL Cart Price Rule - Discard Subsequent Rules] is not working as intended.
exl-id: 8d306a9e-ed1a-4295-8130-81700cbf31a6
feature: Price Rules
role: Admin
---
# ACSD-49480: [!UICONTROL Cart Price Rule - Discard Subsequent Rules] is not working as intended

The ACSD-49480 patch fixes the issue where the [!UICONTROL Cart Price Rule - Discard Subsequent Rules] is not working as intended. This patch is available when the [!DNL Quality Patches Tool (QPT)] 1.1.32 is installed. The patch ID is ACSD-49480. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.4

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.5

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

[!UICONTROL Cart Price Rule - Discard Subsequent Rules] is not working as intended.

<u>Steps to reproduce</u>:

1. Create a **[!UICONTROL Cart Price Rule]** with a coupon code (name it as *TEST*) that gives a $10 discount to the *Product ID 1* in the **[!UICONTROL Actions]** tab with [!UICONTROL Discard Subsequent Rules] set to *[!UICONTROL Yes]* and [!UICONTROL Priority] set to *1*.
1. Create another **[!UICONTROL Cart Price Rule]** without a coupon code that gives a $5 discount to *Product ID 2* in the **[!UICONTROL Actions]** tab with [!UICONTROL Priority] set to *2*. Here, we assume, this is a global sale for *Product ID 2*.
1. Go to the frontend site and add *Product ID 1* and *Product ID 2* into the cart.
1. Apply the *TEST* coupon code.

<u>Expected results</u>

* *Discount 1* is applied to *Product ID 1*.
* *Discount 2* is applied to *Product ID 2*.

<u>Actual results</u>

* Only *Discount 1* is applied to *Product ID 1*.
* *Discount 2* is not applied to *Product ID 2*.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
