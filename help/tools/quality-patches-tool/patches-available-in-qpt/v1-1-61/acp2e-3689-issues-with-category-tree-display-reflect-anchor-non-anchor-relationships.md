---
title: 'ACP2E-3689: Multiple issues with category tree display on deeper levels and reflecting anchor/non-anchor relationships'
description: Apply the ACP2E-3689 patch to fix the Adobe Commerce issue with category tree display on more than depth four nesting and reflecting anchor/non-anchor relationships.
feature: Categories, Page Content 
role: Admin, Developer
---

# ACP2E-3689: Multiple issues with category tree display on deeper levels and reflecting anchor/non-anchor relationships

>[!NOTE]
>
>This patch replaces the [ACSD-62689](/help/tools/quality-patches-tool/patches-available-in-qpt/v1-1-57/acsd-62689-customer-add-categories-issue-related-product-rules-and-widgets.md) for versions 2.4.7 and above.

The ACP2E-3689 patch fixes multiple issues with category tree display on more than depth four nesting and reflecting anchor/non-anchor relationships. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.61 is installed. The patch ID is ACP2E-3689. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.7-p3

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.7 - 2.4.7-p4

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The category tree on deeper levels (4+) is not displaying correctly and is reflecting anchor/non-anchor relationships.

<u>Steps to reproduce</u>:

1. Set up a category tree with nested categories of more than 4 levels.
1. Expand the category tree in Admin that appear in different places:
    1. Set up a [!UICONTROL Related Products Rule] and set a condition based on categories.
    1. Create a widget and in [!UICONTROL Layout Updates] select [!UICONTROL Anchor categories].

<u>Expected results</u>:

All levels of the category tree are properly displayed.

<u>Actual results</u>:

Only first few levels (<4) of the category tree are available.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
