---
title: 'ACSD-58790: Fixes pinch-to-zoom functionality on the product detail page images in mobile view on [!DNL Chrome]'
description: ACSD-58790 fixes the Adobe Commerce issue where the image in mobile view on [!DNL Chrome] did not zoom in on the image as expected.
feature: Storefront
role: Admin, Developer
---

# ACSD-58790: Fixes pinch-to-zoom functionality on the product detail page images in mobile view on [!DNL Chrome]

The ACSD-58790 patch fixes the Adobe Commerce issue where the image in mobile view on [!DNL Chrome] did not zoom in on the image as expected. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.50 is installed. The patch ID is ACSD-58790. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.6-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.6-p7

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Fixes pinch-to-zoom functionality on the product detail page images in mobile view on [!DNL Chrome].

<u>Steps to reproduce</u>:

1. Create a product with an image.
1. Open the product from a [!DNL Chrome] browser.
1. Click on the image and verify that the image zooms on double click.
1. Switch to the mobile view by using the [!DNL Chrome] developer tools.
1. Click on the image.
1. Double tap.

<u>Expected results</u>:

The image gets zoomed in when double-clicked.

<u>Actual results</u>:

The image does not zoom in when double-clicked. This issue is specific to [!DNL Chrome] in mobile view, as the zoom functionality works as expected in [!DNL Firefox].

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
