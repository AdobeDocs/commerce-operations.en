---
title: "ACSD-59366: Delete teams with deactivated users not visible in the team list"
description: Apply the ACSD-59366 patch to fix the Adobe Commerce issue where an error occurs when you attempt deleting a team that contains deactivated users who are not visible in the team list.
feature: GraphQL, Companies
role: Admin, Developer
---
# ACSD-59366: Delete teams with deactivated users not visible in the team list

The ACSD-59366 patch fixes the issue where an error occurs when you attempt deleting a team that contains deactivated users who are not visible in the team list. When you delete a team with child users or teams, regardless of their inactive status, via [!DNL GraphQL], the system now provides an informative error message that matches the UI. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) 1.1.52 is installed. The patch ID is ACSD-59366. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

Adobe Commerce (all deployment methods) 2.4.6

**Compatible with Adobe Commerce versions:**

Adobe Commerce (all deployment methods) 2.4.6 - 2.4.7-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

an error occurs when you attempt deleting a team that contains deactivated users who are not visible in the team list.

<u>Prerequisites</u>:

Adobe Commerce B2B modules are installed and companies are enabled.

<u>Steps to reproduce</u>:

1. Create and log in with a company user.
1. Under company structure, create a new team.
1. Under the new team, create a new user.
1. Edit the new user and deactivate. 
1. Select the team and delete.

<u>Expected results</u>:

This team includes one or more inactive users. When you delete the team, the inactive users will be unassigned. You can view the list of inactive users in the [!UICONTROL Company Users] section.

<u>Actual results</u>:

An error occurs when you attempt deleting a team with a deativated user.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!UICONTROL Quality Patches Tool] guide.


For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
