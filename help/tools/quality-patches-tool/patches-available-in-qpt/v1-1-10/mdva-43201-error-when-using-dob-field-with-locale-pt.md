---
title: 'MDVA-43201: Error when using DOB field with locale PT'
description: The MDVA-43201 patch solves the issue where an error occurs when using the DOB customer attribute in the customer registration form for the Portuguese locale. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) 1.1.10 is installed. The patch ID is MDVA-43201. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.4.
feature: B2B, Cache
role: Admin
exl-id: be087420-1ee3-40cc-8ff7-62c5641609cc
---
# MDVA-43201: Error when using DOB field with locale PT

The MDVA-43201 patch solves the issue where an error occurs when using the DOB customer attribute in the customer registration form for the Portuguese locale. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) 1.1.10 is installed. The patch ID is MDVA-43201. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.4.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.2-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.2 - 2.4.3-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches). Use the patch ID as a search keyword to locate the patch.

## Issue

When DOB customer attribute is added to the customer registration form for Portuguese locale, the form gives the error *Argument 1 passed to iterator_to_array() must implement interface travesable, null given*.

<u>Prerequisites</u>:

B2B modules are installed.

<u>Steps to reproduce</u>:

1. Go to Admin > **Stores** > **Configuration** > **General** > **Locale Options**, set Locale to **Portuguese (Portugal)** and click **Save**.
1. Reindex and clear cache.
1. Go to **Stores** > **Attribute** > **Customer**.
1. Open DOB customer attribute and set **Show on Storefront** to **Yes**.
1. Select all from **Form to Use In**.
1. Save the attribute.
1. Go to the Create New Account page in the frontend.

<u>Expected results</u>:

The customer registration form for the Portuguese store gives no error on adding the DOB attribute.

<u>Actual results</u>:

The customer registration form for the Portuguese store gives an error on adding the DOB attribute.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!DNL Quality Patches Tool] guide.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
