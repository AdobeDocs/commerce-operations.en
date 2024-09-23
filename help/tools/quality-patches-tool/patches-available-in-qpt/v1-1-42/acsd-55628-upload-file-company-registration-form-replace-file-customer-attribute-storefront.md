---
title: 'ACSD-55628: Uploading file on company registration form; replacing file for customer attribute on storefront'
description: Apply the ACSD-55628 patch to fix the Adobe Commerce issue with uploading a file on the company registration form and replacing a file for a customer attribute on the storefront.
feature: Storefront, Attributes, B2B, Customers
role: Admin, Developer
exl-id: ca85b459-f72b-4663-85af-1f793935fe7e
---
# ACSD-55628: Uploading file on company registration form; replacing file for customer attribute on storefront

>[!NOTE]
>
>This patch replaces [ACSD-51240](/help/support-tools/patches-available-in-qpt-tool/v1-1-33/acsd-51240-uploaded-file-missing-while-registering-via-company-registration-form.md).

The ACSD-55628 patch fixes the issue with uploading a file on the company registration form and replacing a file for a customer attribute on the storefront. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.42 is installed. The patch ID is ACSD-55628. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.5-p4

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4-p2 < 2.4.5 and 2.4.5-p1 < 2.4.6

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Unable to replace a file for a customer attribute on the storefront.

<u>Steps to reproduce</u>:

1. Create a new customer attribute with the following values:

    * *[!UICONTROL Input Type]*: *[!UICONTROL File (Attachment)]*
    * *[!UICONTROL Show on Storefront]*: *Yes*
    * *[!UICONTROL Forms to Use In]*: *all available options*

1. Log in as a customer on the storefront and open **[!UICONTROL My Account]** > **[!UICONTROL Account Information]**.
1. Upload a new image and save.
1. Refresh the page. Delete the old image and upload a new one. Save the changes.

<u>Expected results</u>:

The new image is saved.

<u>Actual results</u>:

The old image is still displayed.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
