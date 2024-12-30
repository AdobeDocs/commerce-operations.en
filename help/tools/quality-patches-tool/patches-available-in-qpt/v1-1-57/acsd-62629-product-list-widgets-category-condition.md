---
title: 'ACSD-62629: Product list in widgets shows incorrect categories'
description: Apply the ACSD-62629 patch to fix the Adobe Commerce issue where a product list used in Widgets does not respect category condition.
feature: Page Content
role: Admin, Developer
---

# ACSD-62629: Product list in widgets shows incorrect categories 

The ACSD-62629 patch fixes the issue where the product list used in Widgets does not respect category condition. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.57 is installed. The patch ID is ACSD-62629. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.7-p2

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.7 - 2.4.7-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Fixes the issue where a product list used in Widgets does not respect the category condition.

<u>Steps to reproduce</u>:

1. Create a [!UICONTROL simple product] named TEST and add it to Category 1.
1. Create a staging update without an end date for the TEST product. Wait until the update becomes active.
1. Create a [!UICONTROL configurable product] named TEST 2 with two child products and add it to Category 2.
1. Create another [!UICONTROL simple product] named TEST 5 and add it to Category 1.
1. Run a full reindex.
1. Navigate to **[!UICONTROL Content]** > **[!UICONTROL Pages]** and edit the home page.
1. Add a [!UICONTROL Products] widget with [!UICONTROL Appearance] set to [!UICONTROL Product Carousel] and [!UICONTROL Category] set to Category 2. Save the page.
1. Go to the frontend and open the home page.

<u>Expected results</u>:

Only the TEST 2 (configurable) product should be present on the page.

<u>Actual results</u>:

Both the TEST 5 (simple) and TEST 2 (configurable) products are present on the page.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.


## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
