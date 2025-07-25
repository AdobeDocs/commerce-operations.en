---
title: 'MDVA-41164: Cannot save or edit Company with custom customer attributes'
description: The MDVA-41164 patch solves the issue where the admin user is not able to save or edit a company with custom customer attributes of files or images of any type. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.5 is installed. The patch ID is MDVA-41164. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.4.
feature: Admin Workspace, Attributes, B2B, Companies
role: Developer
exl-id: 9d1792e0-ba7b-444b-b1b1-771fd0e328eb
type: Troubleshooting
---
# MDVA-41164: Cannot save or edit Company with custom customer attributes

The MDVA-41164 patch solves the issue where the admin user is not able to save or edit a company with custom customer attributes of files or images of any type. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.5 is installed. The patch ID is MDVA-41164. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.4.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.2

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.2 - 2.4.3

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches). Use the patch ID as a search keyword to locate the patch.

## Issue

Admin user is not able to save or edit a company with custom customer attributes of files or images of any type.

<u>Prerequisites</u>:

B2B module is installed.

<u>Steps to reproduce</u>:

1. Enable Company in **Stores** > **Config** > **B2B Features**.
1. Create a customer attribute in **Stores** > **Attributes** > **Customers** > **Add New Attribute**:
    * Input type: File (attachment)
    * Show on Storefront: Yes
    * Sort order: Any
    * Forms to Use In: Select all
1. Create a new company in **Customers** > **Companies** > **Add New Company** and upload a file for the new attribute created above.

<u>Expected results</u>:

User is able to complete the creation of the company and the attachment is uploaded without any error.

<u>Actual results</u>:

* You get an error message: *Something went wrong while saving file.*
* Exception log contains a record like the following:

    ```php
    report.CRITICAL: Notice: Undefined index: customer in
    ../app/code/Magento/Customer/Controller/Adminhtml/File/Customer/Upload.php on line 69
    ```

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!DNL Quality Patches Tool] guide.

For info about other patches available in QPT, refer to the [Patches available in QPT](https://support.magento.com/hc/en-us/sections/360010506631-Patches-available-in-MQP-tool-) section.
