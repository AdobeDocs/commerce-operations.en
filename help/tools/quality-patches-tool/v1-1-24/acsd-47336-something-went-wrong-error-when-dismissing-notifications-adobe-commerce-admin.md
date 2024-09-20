---
title: 'ACSD-47336: [!UICONTROL Something went wrong] error when dismissing notifications in Adobe Commerce Admin'
description: Apply the ACSD-47336 patch to fix the Adobe Commerce issue where the user sees [!UICONTROL Something went wrong] error when dismissing notifications in the [!DNL Commerce] Admin.
exl-id: 7561f055-ce04-4a49-8c58-271c24420a60
feature: Admin Workspace
role: Admin
---
# ACSD-47336: _[!UICONTROL Something went wrong]_ error when dismissing notifications in Adobe Commerce Admin

The ACSD-47336 patch fixes the issue where the user sees the _[!UICONTROL Something went wrong]_ error when dismissing notifications in the [!DNL Commerce] Admin. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.24 is installed. The patch ID is ACSD-47336. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.6.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods): 2.4.5

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods): 2.4.0 - 2.4.5-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The user sees _[!UICONTROL Something went wrong]_ error when dismissing notifications in the [!DNL Commerce] Admin.

<u>Steps to reproduce</u>:

1. Perform a bulk operation (e.g., bulk update of product attributes from the product grid).
1. Complete the operation (e.g., run `bin/magento queue:consumer:start product_action_attribute.update`).
1. Refresh the [!DNL Commerce] Admin page, expand the admin notification section, and click on the **[!UICONTROL Dismiss All Completed Tasks]** link.

<u>Expected results</u>:

The _[!UICONTROL Something went wrong]_ error  should not display when clearing the completed tasks.

<u>Actual results</u>:

The _[!UICONTROL Something went wrong]_ error is displayed.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
