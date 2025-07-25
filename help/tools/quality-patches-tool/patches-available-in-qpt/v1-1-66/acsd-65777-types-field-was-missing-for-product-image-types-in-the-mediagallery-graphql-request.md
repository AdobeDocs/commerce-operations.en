---
title: 'ACSD-65777: Missing "types" field for product image types in the `MediaGallery` GraphQL request'
description: Apply the ACSD-65777 patch to fix the Adobe Commerce issue where the "types" field was missing for product image types in the `MediaGallery` GraphQL request.
feature: GraphQL, Media
role: Admin, Developer
type: Troubleshooting
exl-id: 20866963-54a3-4859-9c2d-716945e37156
---
# ACSD-65777: Missing **[!UICONTROL types]** field for product image types in the `MediaGallery` GraphQL request

The ACSD-65777 patch fixes the issue where the **[!UICONTROL types]** field was missing for product image types in the `MediaGallery` GraphQL request. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.66 is installed. The patch ID is ACSD-65777. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.4.9.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.8

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.8

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The **[!UICONTROL types]** field is missing for product image types when fetching media data via the `MediaGallery` GraphQL request.

<u>Steps to reproduce</u>:

1. Create a product.
1. Upload an image to the product.
1. Fetch the media data using the following GraphQL.

    ```
    query{
      products(search:"",filter:{sku:{eq:"p1"}})\{
        items{
          media_gallery{
            disabled
            label
            position
            url
          }
          media_gallery_entries\{
            types
          }
        }
      }
    }
    ```

<u>Expected results</u>:

The `media_gallery` GraphQL interface should include the **[!UICONTROL types]** field.

<u>Actual results</u>:

The `media_gallery` doesn't contain the media **[!UICONTROL types]** field.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
