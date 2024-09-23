---
title: 'ACSD-54026: Incorrect error message for updateCompanyRole GraphQL request'
description: Apply the ACSD-54026 patch to fix the Adobe Commerce issue where there is an incorrect error message for an updateCompanyRole GraphQL request for a non-authorized user.
feature: Roles/Permissions
role: Admin, Developer
exl-id: c18a8815-975a-499d-a372-8635d89aa673
---
# ACSD-54026: Incorrect error message for `updateCompanyRole` GraphQL request

The ACSD-54026 patch fixes the issue where there is an incorrect error message for an `updateCompanyRole` GraphQL request for a non-authorized user. This patch is available when the [!DNL Quality Patches Tool (QPT)] 1.1.39 is installed. The patch ID is ACSD-54026. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.6

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.6 - 2.4.6-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Getting an incorrect error message for an `updateCompanyRole` GraphQL request for a non-authorized user.

<u>Steps to reproduce</u>:

1. Enable B2B company in configuration.
1. Create a company.
1. Send an `updateCompanyRole` GraphQL request without passing a bearer token or with an invalid bearer token.
1. Observe the error message in the GraphQL response.

<u>Expected results</u>:

You get the following error message: *The current customer isn't authorized.*

<u>Actual results</u>:

You get the following error message: *Customer is not a company user.*

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
