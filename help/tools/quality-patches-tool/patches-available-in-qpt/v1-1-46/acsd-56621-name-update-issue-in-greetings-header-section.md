---
title: 'ACSD-56621: Updated names not displayed in greetings header for company admin user'
description: Apply the ACSD-56621 patch to fix the Adobe Commerce issue where the updated first name and last name of the company admin user are not reflected in the greetings header section.
feature: Companies, B2B, User Account
role: Admin, Developer
exl-id: 4ad9c878-b617-4e6a-939c-be15faf7124b
---
# ACSD-56621: Updated names not displayed in greetings header for company admin user

The ACSD-56621 patch fixes the issue where the updated first name and last name of the company admin user are not reflected in the greetings header section. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.46 is installed. The patch ID is ACSD-56621. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.5

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.2 - 2.4.6-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The updated names are not displayed in greetings header for company admin users.

<u>Steps to reproduce</u>:

1. Navigate to the **[!UICONTROL Admin]** panel.
1. Go to **[!UICONTROL Stores]** and select **[!UICONTROL Configuration]**.
1. Under the **[!UICONTROL General]** section, select **[!UICONTROL B2B]** to enable B2B company functionality.
1. Go to the **[!UICONTROL Storefront]** and register a new company.
1. Log in as the company admin user.
1. Go to **[!UICONTROL My Account]** > **[!UICONTROL Company Users]** and modify the first and last name fields as required.

<u>Expected results</u>:

The first and last name of the user in the greetings header section is changed immediately.

<u>Actual results</u>:

The first and last name of the user is only changed when the user logs out and logs in again.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
