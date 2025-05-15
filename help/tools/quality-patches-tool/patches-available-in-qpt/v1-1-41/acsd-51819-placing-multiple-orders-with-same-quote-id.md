---
title: 'ACSD-51819: Placing multiple orders with a single quote ID'
description: Apply the ACSD-51819 patch to fix the Adobe Commerce issue where multiple orders can be placed through the same quote ID.
feature: Orders, Checkout
role: Admin, Developer
exl-id: dbca8790-d947-4104-bba9-b29abcfc0344
---
# ACSD-51819: Placing multiple orders with a single quote ID

The ACSD-51819 patch fixes the issue where multiple orders can be placed through the same quote ID. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) 1.1.41 is installed. The patch ID is ACSD-51819. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.4-p2, 2.4.5-p5, 2.4.6, 2.4.6-p4, 2.4.7-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.4-p11, 2.4.5-p3 - 2.4.5-p10, 2.4.6 - 2.4.6-p8, 2.4.7 - 2.4.7-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Multiple orders can be placed with the same quote ID.

<u>Steps to reproduce</u>:

1. Log in as a user.
1. Add items to the cart and proceed to checkout.
1. Choose any payment method but do not click on the **[!UICONTROL Place Order]** button.
1. Log in to the same account in another browser.
1. Proceed to checkout with the same items without clicking on the **[!UICONTROL Place Order]** button.
1. Click on the **[!UICONTROL Place Order]** button in both the systems at the same time.
1. Validate the orders placed in both browsers.

<u>Expected results</u>:

Only the first order placed from one browser is successfully processed.

<u>Actual results</u>:

Orders have been placed in both the browsers.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!UICONTROL Quality Patches Tool] guide.


For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
