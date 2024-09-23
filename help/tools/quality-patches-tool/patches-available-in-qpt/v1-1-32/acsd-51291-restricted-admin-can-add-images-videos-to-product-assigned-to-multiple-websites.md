---
title: 'ACSD-51291: Restricted admin can add images/videos to product assigned to multiple websites'
description: Apply the ACSD-51291 patch to fix the Adobe Commerce issue where restricted admin with access to one website can add images/videos to a product assigned to multiple websites.
feature: Admin Workspace, Products, Page Content
role: Admin
exl-id: d3cf5009-6b80-4841-95c3-75bb15c9c0a4
---
# ACSD-51291: Restricted admin can add images/videos to product assigned to multiple websites

The ACSD-51291 patch fixes the issue where a restricted admin with access to one website can add images/videos to a product assigned to multiple websites. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.32 is installed. The patch ID is ACSD-51291. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.5-p2

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.4-p3, 2.4.5 - 2.4.5-p2

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

A restricted admin with access to one website can add images/videos to a product assigned to multiple websites.

<u>Steps to reproduce</u>

1. Log in as an admin.
1. Create a second website, store, and store view.
1. Create a second admin role with resources only for the second website, store, and store view.
1. Create a second admin, and assign it to the new restricted admin role.
1. Create a new product, and assign it to both the default and the new websites.
1. Log out from the main admin profile.
1. Log in as the new restricted admin.
1. Edit the created product, which has been assigned to both websites.
1. Open the **[!UICONTROL Images and Videos]** tab.

<u>Expected results</u>:

* The following message is displayed:

    *Restricted admin is allowed to perform actions with images or videos, only when the admin has rights to all websites which the product is assigned to.* 

* The **[!UICONTROL Add Video]** button is not active.

<u>Actual results</u>:

The restricted admin can add images and videos even when the product is assigned to a website that it does not have access to.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
