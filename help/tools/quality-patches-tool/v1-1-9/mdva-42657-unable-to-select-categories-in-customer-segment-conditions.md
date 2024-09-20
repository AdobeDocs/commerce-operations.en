---
title: 'MDVA-42657: Unable to select categories in the customer segment conditions'
description: The MDVA-42657 patch solves the issue where the admin user is unable to select categories in the customer segment conditions. This patch is available when the [Quality Patches Tool (QPT)](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.9 is installed. The patch ID is MDVA-42657. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.5.
exl-id: 9c810dcd-b39b-4456-a362-5452ada4dc53
feature: Categories, Console, Customer Service
role: Admin
---
# MDVA-42657: Unable to select categories in the customer segment conditions

The MDVA-42657 patch solves the issue where the admin user is unable to select categories in the customer segment conditions. This patch is available when the [Quality Patches Tool (QPT)](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.9 is installed. The patch ID is MDVA-42657. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.5.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.2

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.1 - 2.4.3-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://devdocs.magento.com/quality-patches/tool.html#patch-grid). Use the patch ID as a search keyword to locate the patch.

## Issue

Admin user is unable to select categories in the customer segment conditions.

<u>Steps to reproduce</u>:

1. Go to **Customers** > **Segments**.
1. Create a new segment.
1. Go to the newly created segment and click **Conditions** in the left side navigation.
1. Click the green plus sign.
1. Select Product History under Products.
1. Change "viewed" to "ordered".
1. Change "ALL" to "ANY".
1. Click the nested green plus sign and select Category.
1. Click the **...** sign and then click the chooser icon (to the left of the checkmark).
1. Open the browser dev console.
1. Check the checkboxes for any/multiple categories and note the javascript error thrown in the console.
1. Click the **Save** button.
1. Navigate back to the condition and check if the selected categories are saved.

<u>Expected results</u>:

The selected categories are saved and selected when viewing/editing the segment conditions.

<u>Actual results</u>:

The selected categories are missing and did not save properly. You get the following error in console:

```
category-checkbox-tree.js:249 Uncaught TypeError: Cannot set properties of undefined (setting 'value')
    at Ext.tree.TreePanel.Enhanced.<anonymous> (category-checkbox-tree.js:249)
    at Ext.util.Event.fire (ext-tree.js:29)
```

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [Software Update Guide > Apply Patches](https://devdocs.magento.com/guides/v2.4/comp-mgr/patching/mqp.html) in our developer documentation.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://devdocs.magento.com/cloud/project/project-patch.html) in our developer documentation.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [Patches available in QPT](https://devdocs.magento.com/quality-patches/tool.html#patch-grid) in our developer documentation.
