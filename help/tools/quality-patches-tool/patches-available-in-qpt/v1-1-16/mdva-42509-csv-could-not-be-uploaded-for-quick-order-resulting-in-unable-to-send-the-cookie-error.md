---
title: "MDVA-42509: CSV could not be uploaded for quick order resulting in 'Unable to send the cookie' error"
description: The MDVA-42509 patch solves the issue where a CSV could not be uploaded for quick order resulting in *Unable to send the cookie* error. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.16 is installed. The patch ID is MDVA-42509. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.5.
feature: B2B, Orders
role: Admin
exl-id: 6319931b-9cf1-4004-b302-737863c53ff8
---
# MDVA-42509: CSV could not be uploaded for quick order resulting in 'Unable to send the cookie' error

The MDVA-42509 patch solves the issue where a CSV could not be uploaded for quick order resulting in *Unable to send the cookie* error. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.16 is installed. The patch ID is MDVA-42509. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.5.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.3.3 - 2.4.4

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches). Use the patch ID as a search keyword to locate the patch.

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

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!DNL Quality Patches Tool] guide.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
