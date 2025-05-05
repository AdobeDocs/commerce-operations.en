---
title: 'MDVA-25631: Unable to save and refresh customer segments'
description: The MDVA-25631 patch solves the issue where users are not able to save and refresh customer segments that contain a large number of customers. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) 1.1.4 is installed. The patch ID is MDVA-25631. Please note that the issue was fixed in Adobe Commerce 2.4.2.
feature: Customer Service
role: Admin
exl-id: 3cf40538-822a-4d3e-b8fa-20f9ef9228ae
---
# MDVA-25631: Unable to save and refresh customer segments

The MDVA-25631 patch solves the issue where users are not able to save and refresh customer segments that contain a large number of customers. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) 1.1.4 is installed. The patch ID is MDVA-25631. Please note that the issue was fixed in Adobe Commerce 2.4.2.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.3.3

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.3.3 - 2.3.5-p2

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches). Use the patch ID as a search keyword to locate the patch.

## Issue

Users are not able to save and refresh customer segments that contain a large number of customers.

<u>Prerequisites</u>:

Generate a large number of customers (more than 3 million).

<u>Steps to reproduce</u>:

1. Create a customer segment and try to save it.

<u>Expected results</u>:

The customer segment is saved without any error.

<u>Actual results</u>:

You get *500* error because the allowed memory size is being exhausted.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!DNL Quality Patches Tool] guide.

For info about other patches available in QPT, refer to the [Patches available in QPT](https://support.magento.com/hc/en-us/sections/360010506631-Patches-available-in-MQP-tool-) section.
