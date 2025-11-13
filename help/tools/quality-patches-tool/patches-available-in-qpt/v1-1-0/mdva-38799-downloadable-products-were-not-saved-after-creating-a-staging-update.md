---
title: 'MDVA-38799: Downloadable products not saved after creating a staging update'
description: The MDVA-38799 patch solves the issue where downloadable products are not saved after creating a staging update. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.0 is installed. The patch ID is MDVA-38799. Please note that the issue was fixed in Adobe Commerce version 2.4.3.
feature: Products, Staging
role: Admin
exl-id: 0ae665a8-cda2-4340-91e7-5b9b969a6607
type: Troubleshooting
---
# MDVA-38799: Downloadable products not saved after creating a staging update

The MDVA-38799 patch solves the issue where downloadable products are not saved after creating a staging update. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.0 is installed. The patch ID is MDVA-38799. Please note that the issue was fixed in Adobe Commerce version 2.4.3.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce on cloud infrastructure 2.4.1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.3.0-2.4.2-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches). Use the patch ID as a search keyword to locate the patch.

## Issue

Downloadable products are not saved after creating a staging update. Users get the error message: *The downloadable sample is not related to the product. Verify the link and try again*.

<u>Steps to reproduce</u>:

1. Navigate to **Catalog** > **Products**.
1. Click the dropdown next to Add Product and select Downloadable Product.
    * Fill out the name, SKU, price, and quantity of the product.
1. Scroll down to the Downloadable Information page.
1. Under Samples, click **Add Link**.
    * Fill out the Title, Upload File (the type of file does not matter).
1. Click **Save**. You will get the following message: *You saved the product*.
1. Click **Schedule New Update** at the top of the page.
    * Fill out the Update Name and a legal Start Date and End Date.
1. Click **Save** on the staging update.
1. Click **Save** on the product.

<u>Expected results</u>:

The product is saved without any error.

<u>Actual results</u>:

You get the error message: *The downloadable sample is not related to the product. Verify the link and try again*.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!DNL Quality Patches Tool] guide.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
