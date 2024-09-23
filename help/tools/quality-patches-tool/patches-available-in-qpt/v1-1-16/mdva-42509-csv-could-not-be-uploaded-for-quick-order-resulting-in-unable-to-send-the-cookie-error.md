---
title: "MDVA-42509: CSV could not be uploaded for quick order resulting in 'Unable to send the cookie' error"
description: The MDVA-42509 patch solves the issue where a CSV could not be uploaded for quick order resulting in *Unable to send the cookie* error. This patch is available when the [Quality Patches Tool (QPT)](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.16 is installed. The patch ID is MDVA-42509. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.5.
exl-id: 7aa0e710-9a28-4531-b9cb-c82f654487f4
feature: B2B, Orders
role: Admin
---
# MDVA-42509: CSV could not be uploaded for quick order resulting in 'Unable to send the cookie' error

The MDVA-42509 patch solves the issue where a CSV could not be uploaded for quick order resulting in *Unable to send the cookie* error. This patch is available when the [Quality Patches Tool (QPT)](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.16 is installed. The patch ID is MDVA-42509. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.5.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.3.3 - 2.4.4

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://devdocs.magento.com/quality-patches/tool.html#patch-grid). Use the patch ID as a search keyword to locate the patch.

## Issue

Creating a quick order with a large number of products using a CSV displays a cookie error: *Unable to send the cookie*

<u>Steps to reproduce</u>:

1. Enable Quick Order by navigating to **Stores** > **Settings** > **Configurations** > **General** > **B2B Features**.
1. Create a customer account and go to **Quick Order** at the top link.
1. Try to create a quick order using a CSV that has over 100 SKUs.

<u>Expected results</u>:

You are able to create a quick order with a large number of SKUs.

<u>Actual results</u>:

An error message displays related to cookie size.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [Software Update Guide > Apply Patches](https://devdocs.magento.com/guides/v2.4/comp-mgr/patching/mqp.html) in our developer documentation.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://devdocs.magento.com/cloud/project/project-patch.html) in our developer documentation.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [Patches available in QPT](https://devdocs.magento.com/quality-patches/tool.html#patch-grid) in our developer documentation.
