---
title: "MDVA-37725: Emails sent via non-default sites contain default site's logo URLs"
description: The MDVA-37725 patch fixes the issue where asynchronous order emails are sent via non-default websites containing logo URLs from the default website.
exl-id: c0d1b9a3-01bb-445b-b7da-f9be6952eaeb
feature: Communications, Orders
role: Admin
---
# MDVA-37725: Emails sent via non-default sites contain default site's logo URLs

>[!WARNING]
>
> The MDVA-37725 patch is deprecated.

The MDVA-37725 patch fixes the issue where asynchronous order emails are sent via non-default websites containing logo URLs from the default website. This patch is available when the [Quality Patches Tool (QPT)](https://devdocs.magento.com/guides/v2.4/comp-mgr/patching.html#mqp) 1.1.4 is installed. The patch ID is MDVA-37725. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.4.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

Adobe Commerce (all deployment methods) 2.4.2

**Compatible with Adobe Commerce versions:**

Adobe Commerce (all deployment methods) 2.3.0 &ndash;  2.4.3

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://devdocs.magento.com/quality-patches/tool.html#patch-grid). Use the patch ID as a search keyword to locate the patch.

## Issue

Asynchronous order emails are sent via non-default websites containing the default website's logo URLs.

<u>Prerequisites</u>:

1. The second website/store/store-view must have been created.
1. **Asynchronous Sending** configuration must be enabled from **Stores** > **Settings** > **Configuration** > **Sales** > **Sales Email** > **General Settings**.
1. **Add Store Code to URLs** configuration is turned on for the ease of accessing the secondary website from **Stores** > **Settings** > **Configuration** > **URL Options**.

<u>Steps to reproduce</u>:

1. Place orders from both the first and second stores.
1. Run cron to send the sales emails.
1. Check the email from the second website.

<u>Expected results</u>:

The logo URL of the email contains the second website's URL.

<u>Actual results</u>:

The logo URL of the email contains the default website's URL.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [Software Update Guide > Apply Patches](https://devdocs.magento.com/guides/v2.4/comp-mgr/patching/mqp.html) in our developer documentation.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://devdocs.magento.com/cloud/project/project-patch.html) in our developer documentation.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to the [Patches available in QPT](https://support.magento.com/hc/en-us/sections/360010506631-Patches-available-in-QPT-tool-) section.
