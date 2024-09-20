---
title: 'ACSD-58446: Deleting a team with child users or teams via GraphQL gives an uninformative error message'
description: Apply the ACSD-58446 patch to fix the Adobe Commerce issue where deleting a team with child users or teams via GraphQL returns an uninformative error message inconsistent with the UI.
feature: GraphQL
role: Admin, Developer
---
# ACSD-58446: Deleting a team with child users or teams via GraphQL gives an uninformative error message 

The ACSD-58446 patch fixes the Adobe Commerce issue where deleting a team with child users or teams via GraphQL returns an uninformative error message inconsistent with the UI. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.49 is installed. The patch ID is ACSD-58446. Please note that the issue is scheduled to be fixed in Adobe Commerce B2B 1.5.1

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.6-p4

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.6 - 2.4.6-p7

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Deleting a team with child users or teams via GraphQL returns an uninformative error message inconsistent with the UI.

## Prerequisites:

Adobe Commerce B2B modules installed. 

<u>Steps to reproduce</u>:

1. Enable the *[!UICONTROL Company]* functionality.
1. Create a new company account.
1. Log in to the **[!UICONTROL Admin]** and make the company account active.
1. Check the email and set a password for the new company account.
1. Create a new team for the company.
1. Log in as the company user on the Storefront and add a new user for the created team.
1. Log in to the **[!UICONTROL Admin]**, disable the company user, and set *[!UICONTROL Customer Active]* = *No*
1. Make sure to delete the created team via GraphQL.

   ```
   mutation {
     deleteCompanyTeam(
       id: "MQ=="
     ) {
       success
     }
   }
   ```

<u>Expected results</u>:

An informative error message consistent with the UI is returned.

<u>Actual results</u>:

A generic internal server error message inconsistent with the UI is returned.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
