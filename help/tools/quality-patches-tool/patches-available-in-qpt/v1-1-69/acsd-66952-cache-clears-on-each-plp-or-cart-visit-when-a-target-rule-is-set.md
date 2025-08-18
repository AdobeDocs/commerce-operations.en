---
title: 'ACSD-66952: Cache clears on each PLP or cart visit when a target rule is set'
description: Apply the ACSD-66952 patch to fix the Adobe Commerce issue where cache was cleared on each PLP or Cart visit, causing unnecessary performance overhead, when a target rule was set.
feature: Shopping Cart, Cache, Price Rules
role: Admin, Developer
---

# ACSD-66952: Cache clears on each PLP or cart visit when a target rule is set

The ACSD-66952 patch fixes the issue where cache is cleared on each PLP or Cart visit, causing performance overhead when a target rule is set. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.69 is installed. The patch ID is ACSD-66952. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.4.9.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.7-p6

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.8-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Issue where the cache is cleared on each PLP or Cart visit, causing performance overhead when a target rule is set.

<u>Steps to reproduce</u>:

1. Generate a small sample data set.
1. Create target rule values as below:
    1. **[!UICONTROL Rule information]**
        * **[!UICONTROL Rule Name]** = *Related Products*
        * **[!UICONTROL Status]** = *Active*
        * **[!UICONTROL Apply to]** = *Related Products*
    1. **[!UICONTROL Products to Match]**
        * Leave at its default value.
    1. **[!UICONTROL Products to Display]**
        * If **ALL** of these conditions are *true*, set **[!UICONTROL Product Category]** = *Constant Value 111111*
1. Start monitoring the logs for cache invalidation requests.
1. Visit the product page.
1. Add a product to cart and navigate to the cart page.

<u>Expected results</u>:

The application shouldn't invalidate the cache while browsing the site.

<u>Actual results</u>:

Cache tags get invalidated.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide
