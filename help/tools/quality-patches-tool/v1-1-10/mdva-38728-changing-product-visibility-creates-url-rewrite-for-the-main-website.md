---
title: 'MDVA-38728: Changing product visibility creates URL rewrite for the main website'
description: The MDVA-38728 patch solves the issue where changing the product visibility of the second website creates a URL rewrite for the main website. This patch is available when the [Quality Patches Tool (QPT)](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.10 is installed. The patch ID is MDVA-38728. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.5.
exl-id: ad1d5f82-294d-485d-acd3-28c3cd0fbf56
feature: Products
role: Admin
---
# MDVA-38728: Changing product visibility creates URL rewrite for the main website

The MDVA-38728 patch solves the issue where changing the product visibility of the second website creates a URL rewrite for the main website. This patch is available when the [Quality Patches Tool (QPT)](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.10 is installed. The patch ID is MDVA-38728. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.5.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.3.3-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.3.2 - 2.4.3-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://devdocs.magento.com/quality-patches/tool.html#patch-grid). Use the patch ID as a search keyword to locate the patch.

## Issue

Changing the product visibility of the second website creates a URL rewrite for the main website.

<u>Steps to reproduce</u>:

1. Create an additional Website, Store, and Storeview.
1. Create a simple product.
1. Set the visibility to **Not Visible Individually**.
1. Assign product to the second website only.
1. Fill in all other required fields.
1. Save the product.
1. Start MySQL queues:

    ```mysql
    bin/magento queue:consumers:start product_action_attribute.update &
    bin/magento queue:consumers:start product_action_attribute.website.update &
    ```

1. Go to Product List.
1. Select the created product and update visibility attribute by using the mass update to Catalog and Search.
1. Check the URL rewrite.

<u>Expected results</u>:

The rewrite is created for the second website where the product is assigned to.

<u>Actual results</u>:

The rewrite is created for the main website.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [Software Update Guide > Apply Patches](https://devdocs.magento.com/guides/v2.4/comp-mgr/patching/mqp.html) in our developer documentation.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://devdocs.magento.com/cloud/project/project-patch.html) in our developer documentation.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [Patches available in QPT](https://devdocs.magento.com/quality-patches/tool.html#patch-grid) in our developer documentation.
