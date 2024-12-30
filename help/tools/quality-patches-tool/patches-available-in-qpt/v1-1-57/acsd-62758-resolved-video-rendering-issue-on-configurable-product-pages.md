---
title: "ACSD-62758: Resolved video rendering issue on configurable product pages"
description: Apply the ACSD-62758 patch to fix the Adobe Commerce issue where product videos on configurable product detail pages do not render correctly when URLs contain pre-selected swatch options. 
feature: Catalog Management
role: Admin, Developer
---
# ACSD-62758: Resolved video rendering issue on configurable product pages

The ACSD-62758 patch fixes the issue where product videos on configurable product detail pages do not render correctly when URLs contain pre-selected swatch options. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](https://experienceleague.adobe.com/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.57 is installed. The patch ID is ACSD-62758. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**
* Adobe Commerce (all deployment methods) 2.4.6

**Compatible with Adobe Commerce versions:**
* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.7-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Product videos do not render correctly on configurable product detail pages when the URL includes pre-selected swatch options, resulting in the display of a static image instead of the video.

<u>Steps to reproduce</u>:

1. Navigate to **[!UICONTROL Store]** > **[!UICONTROL Attributes]** > **[!UICONTROL Product]**.
1. Select the **[!UICONTROL Color]** attribute and edit it.
1. Update the following settings:
    1. Set **[!UICONTROL Catalog Input Type]** for **[!UICONTROL Store Owner]** to **[!UICONTROL Visual Swatch]**
    1. Set **[!UICONTROL Update Product Preview Image]** to **[!UICONTROL Yes]**.
1. Create a few options for this attribute.
1. Create a new category and add a new configurable product to it, using the **[!UICONTROL Color]** attribute.
1. Add a single random image to the parent product.
1. Edit the configurable child products and add a video to their media gallery:
    1. Click **[!UICONTROL Add Video]** and use the test video URL: https://vimeo.com/12860646.
1. Save the product, clear the cache, and re-index the store.
1. Open the newly created product in the storefront, select one of the swatch options, and confirm that the video loads correctly with the player button displayed.
1. The video should load as expected, and the player button should appear. 
1. Now, right-click one of the swatch options, select **[!UICONTROL Inspect]**, and locate the attribute id and option id. Copy the product URL and append the following to the end of it: `www.product-url.com/producit-test#attribute_id=option_id`. This will pre-select the swatch option. Open the updated URL in a new window.

<u>Expected results</u>:

The video should load correctly, similar to when a swatch option is manually selected.

<u>Actual results</u>:

A static image is displayed instead of the video. Console errors are logged, indicating a failure in video initialization.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.


## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
