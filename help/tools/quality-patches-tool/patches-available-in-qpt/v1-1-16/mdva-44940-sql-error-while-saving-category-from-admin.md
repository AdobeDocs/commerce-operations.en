---
title: 'MDVA-44940: SQL error while saving category from admin'
description: The MDVA-44940 patch fixes the issue where an SQL error occurs while saving a category from the admin. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) 1.1.16 is installed. The patch ID is MDVA-44940. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.6.
feature: Admin Workspace, Categories, Sales Channels
role: Admin
exl-id: de4384f1-a75d-4726-810f-6560a7c57b82
---
# MDVA-44940: SQL error while saving category from admin

The MDVA-44940 patch fixes the issue where an SQL error occurs while saving a category from the admin. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) 1.1.16 is installed. The patch ID is MDVA-44940. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.6.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.3-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.3 - 2.4.4

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches). Use the patch ID as a search keyword to locate the patch.

## Issue

An SQL error occurs when saving a category from the admin.

<u>Steps to reproduce</u>:

1. Install sample data.
1. Create a second website with a store group assigned to the default category.

    * Create a store view assigned to the new store group.

1. Create stock and an additional source assigned to this stock and a sales channel assigned to the second website.
1. Create a test product assigned to the second website.
1. Go to **Admin** > **Catalog** > **Categories**, select **Scope** = **Second Website** and go to **Products in Category** > **Automatic Sorting** > Move out-of-stock products to the bottom and click **Save**.

<u>Expected results</u>:

The category is saved.

<u>Actual results</u>:

The following error occurs: *Something went wrong while saving the category*.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!DNL Quality Patches Tool] guide.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
