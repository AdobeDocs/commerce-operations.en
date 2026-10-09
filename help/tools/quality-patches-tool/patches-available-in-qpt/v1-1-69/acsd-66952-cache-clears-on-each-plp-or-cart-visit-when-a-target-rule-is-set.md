---
title: 'ACSD-66952: Cache clears on each PLP or cart visit when a target rule is set'
description: Apply the ACSD-66952 patch to fix the Adobe Commerce issue where cache was cleared on each PLP or cart visit, causing unnecessary performance overhead, when a target rule was set.
feature: Shopping Cart, Cache, Price Rules
role: Admin, Developer
type: Troubleshooting
exl-id: abff5761-bcf1-4cfc-b5d9-6a7e1ca907e7
product_v2:
  - id: eadea719-cf89-469b-a6fd-a236a7138047
    internal-label: Commerce
feature_v2:
  - id: df8eaa0e-dd74-553a-8ad5-28129f8e8d3d
    internal-label: Shopping Cart
  - id: a507b1ed-4937-53da-97ae-57d36bd5b9e0
    internal-label: Price Rules
  - id: e7dae43f-215c-4cdf-90d3-c5a461a6e669
    internal-label: Admin tools and workspace
subfeature_v2:
  - id: b673188e-f9fa-492a-b470-c8f949bf7827
    internal-label: Cache
role_v2:
  - id: c66ffd68-0f65-42bb-aa23-b4020f12e0bd
    internal-label: Admin
  - id: ff6a42d2-313e-452e-93a6-792e4fad9ff8
    internal-label: Developer
level_v2:
  - id: d378ca77-2da1-4f39-ad92-1917fe974a38
    internal-label: Experienced
---
# ACSD-66952: Cache clears on each PLP or cart visit when a target rule is set

The ACSD-66952 patch fixes the issue where the cache is cleared on each PLP or cart visit, causing performance overhead when a target rule is set. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.69 is installed. The patch ID is ACSD-66952. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.4.9.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.7-p6

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.8-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Issue where the cache is cleared on each PLP or cart visit, causing performance overhead when a target rule is set.

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
1. Add a product to the cart and navigate to the cart page.

<u>Expected results</u>:

The application shouldn't invalidate the cache while browsing the site.

<u>Actual results</u>:

Cache tags get invalidated.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/en/docs/commerce-on-cloud/user-guide/develop/upgrade/apply-patches) in the Commerce on Cloud Infrastructure guide

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide
