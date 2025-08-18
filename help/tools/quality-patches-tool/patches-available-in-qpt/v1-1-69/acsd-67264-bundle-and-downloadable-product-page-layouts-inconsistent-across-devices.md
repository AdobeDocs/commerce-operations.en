---
title: 'ACSD-67264: Bundle and downloadable product page layouts inconsistent across devices'
description: Apply the ACSD-67264 patch to fix the Adobe Commerce bundle and Downloadable pages experienced layout issues due to a rearrangement of the product info media block.
feature: Page Content, Products
role: Admin, Developer
type: Troubleshooting
---

# ACSD-67264: Bundle and downloadable product page layouts inconsistent across devices

The ACSD-67264 patch fixes the issue where bundle and downloadable product page layouts are inconsistent across devices. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.69 is installed. The patch ID is ACSD-67264. Please note that this issue was fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.7-p6

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.7-p6

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Bundle and downloadable product pages experienced layout issues due to a rearrangement of the product info media block.

<u>Steps to reproduce</u>:

1. Install the sample data.
1. Open the bundle product page and check the layout on the desktop.
1. Add the bundle product page to the wishlist, navigate to the wishlist, click on the edit icon, and check the layout.
1. Repeat steps 2 and 3 for a downloadable product.

<u>Expected results</u>:

The Bundle Product PDP is rendered without any issues.

<u>Actual results</u>:

The Bundle Product PDP is rendered with random spaces.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide
