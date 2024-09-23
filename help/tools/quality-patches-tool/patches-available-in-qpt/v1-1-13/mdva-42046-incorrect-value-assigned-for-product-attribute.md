---
title: 'MDVA-42046: Incorrect value assigned for product attribute'
description: The MDVA-42046 patch fixes the issue where an incorrect value is assigned for the product attribute while updating a product that has a date input field. This patch is available when the [Quality Patches Tool (QPT)](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.13 is installed. The patch ID is MDVA-42046. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.5.
exl-id: 837f5582-849c-43a3-ae02-87f71fb96061
feature: Attributes, Products
role: Admin
---
# MDVA-42046: Incorrect value assigned for product attribute

The MDVA-42046 patch fixes the issue where an incorrect value is assigned for the product attribute while updating a product that has a date input field. This patch is available when the [Quality Patches Tool (QPT)](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.13 is installed. The patch ID is MDVA-42046. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.5.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.2-p2

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.3.4 - 2.3.5-p2 and 2.4.0 - 2.4.4

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://devdocs.magento.com/quality-patches/tool.html#patch-grid). Use the patch ID as a search keyword to locate the patch.

## Issue

After saving a product with `news_from_date` and/or `news_to_date` fields, the values from those fields reset to default.

<u>Steps to reproduce</u>:

1. Create a simple product.
1. Export the product created in step one.
1. In the exported CSV file, put some values in the `news_from_date` and `news_to_date` fields. For example, 2021-05-15 and 2021-06-18.
1. Import the product using the modified CSV file.
1. Add additional columns "Set Product as New from Date" and "Set Product as New to Date" to the product grid.
1. Open the edit page for the product, and without any changes, click **Save**.
1. Go back to the product grid and check the data for the product.

<u>Expected results</u>:

Both "Set Product as New from Date" and "Set Product as New to Date" are the same as before saving.

<u>Actual results</u>:

* Values in the "Set Product as New from Date" and "Set Product as New to Date" columns are changed.

* The "Set Product as New from Date" column shows the current date, and the "Set Product as New to Date" column is empty.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [Software Update Guide > Apply Patches](https://devdocs.magento.com/guides/v2.4/comp-mgr/patching/mqp.html) in our developer documentation.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://devdocs.magento.com/cloud/project/project-patch.html) in our developer documentation.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [Patches available in QPT](https://devdocs.magento.com/quality-patches/tool.html#patch-grid) in our developer documentation.
