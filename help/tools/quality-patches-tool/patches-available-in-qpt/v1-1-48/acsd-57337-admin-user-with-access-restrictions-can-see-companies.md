---
title: 'ACSD-57337: Admin user with access restrictions could view all companies in the *Companies* grid'
description: Apply the ACSD-57337 patch to fix the Adobe Commerce issue where an admin user with access restrictions to specific websites could view companies from all websites in the *Companies* grid.
feature: Companies, B2B, Configuration
role: Admin, Developer
exl-id: e49289a1-fe86-42b7-8d93-71f35b5e318d
---
# ACSD-57337: Admin user with access restrictions could view all companies in the *Companies* grid

The ACSD-57337 patch fixes the issue where an admin user with access restrictions to specific websites could view companies from all websites in the *Companies* grid. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.48 is installed. The patch ID is ACSD-57337. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.5.0.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.5

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.5-p6

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

An admin user with access restrictions to specific websites could view companies from all websites in the *Companies* grid.

<u>Steps to reproduce</u>:

1. Create an additional website, store and storeview.
1. Create a few companies assigned to different websites.
1. Create an admin user role, and set the role scope to the created website.
1. Create an admin, and assign it to the created role.
1. Log in with a new admin.
1. Open **[!UICONTROL Customers]** > **[!UICONTROL Companies]** and observe the list of companies.

<u>Expected results</u>:

The companies that have been assigned to the additional website are visible in the *Companies* grid.

<u>Actual results</u>:

All companies are visible in the *Companies* grid.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
