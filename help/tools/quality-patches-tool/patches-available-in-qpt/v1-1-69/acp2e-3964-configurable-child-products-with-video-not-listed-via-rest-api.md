---
title: 'ACP2E-3964: Configurable child products with video not listed via REST API'
description: Apply the ACP2E-3964 patch to fix the Adobe Commerce issue where child products of configurable products with a video in the [!UICONTROL Media Gallery] aren't listed via the REST API.
feature: Products, Media, REST, Catalog Management
role: Admin, Developer
type: Troubleshooting
exl-id: 61c5b97c-79aa-4ee7-96b3-70924d2c85a0
---
# ACP2E-3964: Configurable child products with video not listed via REST API

The ACP2E-3964 patch fixes the issue where child products of configurable products with a video in the **[!UICONTROL Media Gallery]** aren't listed via the REST API. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.69 is installed. The patch ID is ACP2E-3964. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.4.9.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.7-p3

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.7 - 2.4.7-p6

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Child products of configurable products with a video in the **[!UICONTROL Media Gallery]** can't be listed via REST API, resulting in an error response.

<u>Steps to reproduce</u>:

1. Create a new configurable product and add a single child product.
1. Edit the child product and add a video under **[!UICONTROL Images and Videos]** (for example, [https://vimeo.com/1084537](https://vimeo.com/1084537)).
1. Save the child product.
1. Send a GET request to the REST API endpoint: `rest/v1/configurable-products/%sku%/children` using an admin bearer token.

<u>Expected results</u>:

The REST API should return the child product data without errors, including the video information in the **[!UICONTROL Media Gallery]**.

<u>Actual results</u>:

The REST API returns an error:

```
Error: Call to a member function getVideoProvider() on null in vendor/magento/module-product-video/Model/Product/Attribute/Media/ExternalVideoEntryConverter.php:87
```

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
