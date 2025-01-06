---
title: 'ACSD-46674: custom options of image type displayed as HTML in customer emails'
description: Apply the ACSD-46674 patch to fix the Adobe Commerce issue where custom options of image type displayed as HTML in customer emails.
feature: Communications, Personalization
role: Developer
exl-id: 123ca7b5-02da-4573-897f-ff8adb184389
---
# ACSD-46674: custom options of image type displayed as HTML in customer emails

The ACSD-46674 patch fixes the issue where the custom options of an image type are displayed as HTML in customer emails. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) 1.1.21 is installed. The patch ID is ACSD-46674. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.6.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.2-p2

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.0 - 2.4.5-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Custom options of an image type are displayed as HTML in customer emails.

<u>Steps to reproduce</u>:

1. Create a product with a custom option.
    * Option type: *File*
    * Compatible file extensions: *png, jpg, gif*
    * Required: *Yes*
1. Place an order for this product with an image uploaded as a custom option.
1. Create an invoice for the order created in step two.
1. Create a credit memo.
1. Check all confirmation emails.

<u>Expected results</u>:

The confirmation emails display the uploaded image.

<u>Actual results</u>:

The confirmation emails contain plain HTML code instead of the product custom option image.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tools] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!UICONTROL Quality Patches Tool] guide.


For info about other patches available in [!DNL QPT], refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
