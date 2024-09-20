---
title: 'ACSD-51294: Price, quantity, tax, shipping, revenue sent as string to [!DNL Google Analytics] and GTM'
description: Apply the ACSD-51294 patch to fix the Adobe Commerce issue where price, quantity, tax, shipping, and revenue are sent as a string to [!DNL Google Analytics] and GTM.
feature: Orders, Shipping/Delivery, Variables
role: Admin
exl-id: 159e1e98-0def-4b20-901d-f5f58c3ead7c
---
# ACSD-51294: Price, quantity, tax, shipping, revenue sent as string to [!DNL Google Analytics] and GTM

The ACSD-51294 patch fixes the issue where price, quantity, tax, shipping, and revenue are sent as a string to [!DNL Google Analytics] and GTM. This patch is available when the [!DNL Quality Patches Tool (QPT)] 1.1.32 is installed. The patch ID is ACSD-51294. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.5-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.5 - 2.4.6-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](<https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html>). Use the patch ID as a search keyword to locate the patch.

## Issue

Price, quantity, tax, shipping, and revenue are sent as a string to [!DNL Google Analytics] and GTM.

<u>Steps to reproduce</u>:

1. Configure [!DNL Google Tag Manager] by navigating to **[!UICONTROL Stores]** > **[!UICONTROL Configuration]** > **[!UICONTROL Sales]** > **[!UICONTROL Google API]** > **[!UICONTROL Google GTag]** > **[!UICONTROL Google Analytics4]**.
2. Create a simple product.
3. Complete the checkout with that product.
4. Check the `dataLayer` JavaScript variable on the checkout success page.

<u>Expected results</u>

Price and quantity values are numeric.

<u>Actual results</u>

Price and quantity values are string.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](<https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html>) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](<https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html>) in the [!DNL Quality Patches Tool] guide.
