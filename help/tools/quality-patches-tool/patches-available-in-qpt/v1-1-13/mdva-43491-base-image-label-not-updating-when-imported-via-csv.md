---
title: 'MDVA-43491: Base image label not updating when imported via CSV'
description: The MDVA-43491 patch fixes the issue where the `base_image_label` doesn't update when imported via a CSV file for a multi-store website. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) 1.1.13 is installed. The patch ID is MDVA-43491. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.5.
exl-id: d744423a-f582-4410-8d66-861229cce1b5
feature: Data Import/Export
role: Admin
---
# MDVA-43491: Base image label not updating when imported via CSV

The MDVA-43491 patch fixes the issue where the `base_image_label` doesn't update when imported via a CSV file for a multi-store website. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) 1.1.13 is installed. The patch ID is MDVA-43491. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.5.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.2-p2

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.3.5 - 2.4.4

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches). Use the patch ID as a search keyword to locate the patch.

## Issue

The `base_image_label` doesn't update when imported using a CSV file for a multi-store website.

<u>Prerequisites</u>:

One or more existing non-default websites, stores, and store views.

<u>Steps to reproduce</u>:

1. Create a new product.

    * Upload an image.
    * Assign the product to the newly created websites.

1. Export the product as CSV.
1. Update the `base_image_label` for each store view by duplicating the default row of the CSV file.
1. Import the CSV file. It will update the labels for each store correctly, which can be verified under the **Images and Videos** tab on the product edit page.
1. Export the CSV file again and update the `base_image_label` column with different values.
1. Import the CSV file again.
1. Open the product in the Admin and check if the label has been updated for each store view.

<u>Expected results</u>:

Alt Text (image label) is updated with the store-specific value as per the CSV file.

<u>Actual results</u>:

Alt Text (image label) is not updated with the `base_image_label` value in the CSV file.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [Software Update Guide > Apply Patches](https://devdocs.magento.com/guides/v2.4/comp-mgr/patching/mqp.html) in our developer documentation.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://devdocs.magento.com/cloud/project/project-patch.html) in our developer documentation.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [Patches available in QPT](https://devdocs.magento.com/quality-patches/tool.html#patch-grid) in our developer documentation.
