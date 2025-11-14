---
title: 'ACSD-64627: Unable to save custom customer attributes in [!UICONTROL Company Structure]'
description: Apply the ACSD-64627 patch to fix the Adobe Commerce issue where custom customer attributes can't be saved when adding or editing users within [!UICONTROL Company Structure].
feature: B2B
role: Admin, Developer
exl-id: 8e7dd72e-c21e-46cf-8e2b-9dccedfd8b04
type: Troubleshooting
---
# ACSD-64627: Unable to save custom customer attributes in [!UICONTROL Company Structure]

The ACSD-64627 patch fixes the issue where custom customer attributes can't be saved when adding or editing users within the **[!UICONTROL Company Structure]** page. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.63 is installed. The patch ID is ACSD-64627. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.9.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.7-p3, 2.4.7-p4, 2.4.8

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.6-p8, 2.4.7-p3, 2.4.7-p4, 2.4.8

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Custom customer attributes don't save when adding or editing users on the **[!UICONTROL Company Structure]** page.

<u>Steps to reproduce</u>:

1. Install an Adobe Commerce instance with B2B features enabled.
1. Create a new customer attribute named *custom_upload* with the **[!UICONTROL Input Type]** set to *[!UICONTROL File (attachment)]*.
1. Create another customer attribute named *image_attachment* with the **[!UICONTROL Input Type]** set to *[!UICONTROL Image File]*.
1. Set **[!UICONTROL Show on Storefront]** to *Yes* to make both the attributes visible on the storefront. Select all forms:
   * Customer Registration
   * Customer Account Edit
   * Admin Checkout
1. Create and activate a new company.
1. Sign in to the storefront as the company admin.
1. Navigate to **[!UICONTROL Customer Account]** > **[!UICONTROL Company Structure]** or **[!UICONTROL Customer Account]** > **[!UICONTROL Company Users]**.
1. Click **[!UICONTROL Add New User]**.
1. Click **[!UICONTROL Upload]** for the *custom_upload* attribute.
1. Click **[!UICONTROL Select file]** for the *image_attachment* attribute.

<u>Expected results</u>:

File explorer opens for both attributes. On save, values are stored and files upload successfully.

<u>Actual results</u>:

Buttons are unresponsive. No file explorer opens or data is saved.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
