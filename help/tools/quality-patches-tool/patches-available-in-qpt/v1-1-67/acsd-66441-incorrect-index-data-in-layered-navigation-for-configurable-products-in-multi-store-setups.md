---
title: 'ACSD-66441: Layered Navigation displays incorrect attribute options in multi-store setup'
description: Apply the ACSD-66441 patch to fix the Adobe Commerce issue where layered Navigation display attributes from other stores appear incorrectly in a multi-store setup.
feature: Catalog, Search
role: Admin, Developer
type: Troubleshooting
---

# ACSD-66441: Layered Navigation displays incorrect attribute options in multi-store setup

The ACSD-66441 patch fixes the issue where Layered Navigation displays attributes from other stores incorrectly in a multi-store setup. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.67 is installed. The patch ID is ACSD-66441. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.4.9.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.7-p5

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.5 - 2.4.7-p6

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Layered Navigation on the frontend includes attribute values from other stores, even when those products are not available in the current store view. 

<u>Steps to reproduce</u>:

1. Create a secondary website, store, and store view.
2. Create a configurable product using a custom attribute (for example, Size).
3.Assign the configurable product to the Main website and a category.
4. Reindex all data.
5. Navigate to the assigned category on the frontend. All size options appear correctly in Layered Navigation.
6. Unassign two simple products from the Main website and assign them to the Secondary website, or remove them from the Main website.
7. Reindex all data.
8. Revisit the frontend category page and check the Layered Navigation.

<u>Expected results</u>:

Layered Navigation displays only attribute options from products assigned to the current store or website.

<u>Actual results</u>:

Layered Navigation displays attribute options (sizes) from products assigned to other stores or websites.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
