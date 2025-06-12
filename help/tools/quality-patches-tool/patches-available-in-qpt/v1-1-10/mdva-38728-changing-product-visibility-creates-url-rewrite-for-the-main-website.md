---
title: 'MDVA-38728: Changing product visibility creates URL rewrite for the main website'
description: The MDVA-38728 patch solves the issue where changing the product visibility of the second website creates a URL rewrite for the main website. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.10 is installed. The patch ID is MDVA-38728. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.5.
feature: Products
role: Admin
exl-id: c9dfa386-6327-43b6-a977-a29178c64b89
---
# MDVA-38728: Changing product visibility creates URL rewrite for the main website

The MDVA-38728 patch solves the issue where changing the product visibility of the second website creates a URL rewrite for the main website. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.10 is installed. The patch ID is MDVA-38728. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.5.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.3.3-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.3.2 - 2.4.3-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches). Use the patch ID as a search keyword to locate the patch.

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

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!DNL Quality Patches Tool] guide.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
