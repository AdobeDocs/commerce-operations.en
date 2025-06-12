---
title: "ACSD-59930: Improves performance of the company's flows"
description: Apply the ACSD-59930 patch to resolve the Adobe Commerce issue where a *Timeout* error is displayed in the admin panel when creating, saving, or deleting a company with an admin that has *1000+* addresses in the address book.
feature: Customers, B2B
role: Admin, Developer
exl-id: eaa6c78d-13e3-439d-90f7-70c1c96c3197
---
# ACSD-59930: Improves performance of the company's flows

The ACSD-59930 patch fixes the issue where a *Timeout* error is displayed in the admin panel when creating, saving, or deleting a company with an admin that has *1000+* addresses in the address book. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.53 is installed. The patch ID is ACSD-59930. Please note that this issue is scheduled to be fixed in Adobe Commerce B2B-1.5.0.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

Adobe Commerce (all deployment methods) 2.4.6-p4

**Compatible with Adobe Commerce versions:**

Adobe Commerce (all deployment methods) 2.4.6 - 2.4.7-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Improves performance of the company's create, save, and delete flows.

<u>Prerequisites:</u>:

Install and enable Adobe Commerce B2B modules.

<u>Steps to reproduce</u>:

1. Create a customer with *1000+* addresses in the *[!UICONTROL Address Book]*.
1. Create a company and use the customer above as an admin.
1. Save the company.

<u>Expected results</u>:

The company is successfully created without showing timeout errors.

<u>Actual results</u>:

A timeout error is displayed.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!UICONTROL Quality Patches Tool] guide.


For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
