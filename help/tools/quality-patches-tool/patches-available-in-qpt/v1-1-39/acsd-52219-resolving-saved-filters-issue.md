---
title: 'ACSD-52219: Resolving admin grids filter issue in bookmark view switching'
description: Apply the ACSD-52219 patch to fix the Adobe Commerce issue where the admin grids' saved filters don't work as expected when frequently switching between bookmark views.
feature: Admin Workspace
role: Admin
exl-id: e8333ee7-28a8-4457-aeff-6828f8ca9412
---
# ACSD-52219: Resolving admin grids filter issue in bookmark view switching

The ACSD-52219 patch fixes the issue where the admin grids' saved filters don't work as expected when frequently switching between bookmark views. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.39 is installed. The patch ID is ACSD-52219. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.6

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.5 - 2.4.6-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

When frequently switching between bookmark views, the saved filters in admin grids do not function as intended. 

<u>Steps to reproduce</u>:

1. Access the [!DNL Sales Order] grid in the Admin.
1. Create two to three filters.
1. Verify the filter settings by switching views to ensure they are saved accurately.
1. Go to Filter1 or Filter2.
1. Refresh the page to update the displayed data.
1. Switch to a different view and notice that the filters remain unchanged.
1. Notice that the default view is now displaying filtered results, even though no specific filter was set for it.

<u>Expected results</u>:

The filters do not get interchanged and retain their original state.

<u>Actual results</u>:

When modifying a view, the filters get mixed up, and the correct view is not saved.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
