---
title: 'ACSD-59366: Delete teams with deactivated users not visible in the team list'
description: Apply the ACSD-59366 patch to fix the Adobe Commerce issue where an error occurs when you attempt deleting a team that contains deactivated users who are not visible in the team list.
feature: GraphQL, Companies
role: Admin, Developer
exl-id: 406d2242-38f9-4852-b311-0ee57c4a7c26
type: Troubleshooting
product_v2:
  - id: eadea719-cf89-469b-a6fd-a236a7138047
    internal-label: Commerce
feature_v2:
  - id: e9004f3c-09ae-5d24-acd2-fa0987fdb66e
    internal-label: Companies
  - id: c32adafa-ed01-4b31-997e-2413013911b0
    internal-label: Integrations
subfeature_v2:
  - id: e396cff5-f586-484c-89f0-7f1da3308f92
    internal-label: GraphQL
role_v2:
  - id: c66ffd68-0f65-42bb-aa23-b4020f12e0bd
    internal-label: Admin
  - id: ff6a42d2-313e-452e-93a6-792e4fad9ff8
    internal-label: Developer
level_v2:
  - id: d378ca77-2da1-4f39-ad92-1917fe974a38
    internal-label: Experienced
---
# ACSD-59366: Delete teams with deactivated users not visible in the team list

The ACSD-59366 patch fixes the issue where an error occurs when you attempt to delete a team that contains deactivated users who are not visible in the team list. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.52 is installed. The patch ID is ACSD-59366. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

Adobe Commerce (all deployment methods) 2.4.6

**Compatible with Adobe Commerce versions:**

Adobe Commerce (all deployment methods) 2.4.6 - 2.4.7-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

An error occurs when you delete a team that contains deactivated users who are not visible in the team list.

<u>Prerequisites</u>:

Adobe Commerce B2B modules are installed, and companies are enabled.

<u>Steps to reproduce</u>:

1. Create and log in with a company user.
1. Under company structure, create a new team.
1. Under the new team, create a new user.
1. Edit the new user and deactivate. 
1. Select the team and delete.

<u>Expected results</u>:

The team has one or more inactive users. Deleting the team will unassign these users. You can find inactive users in the [!UICONTROL Company Users] section.

<u>Actual results</u>:

An error occurs when you attempt to delete a team with a deactivated user.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/en/docs/commerce-on-cloud/user-guide/develop/upgrade/apply-patches) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
