---
title: 'ACSD-56515: Admin with website-level permissions cannot edit [!UICONTROL Dynamic Block]'
description: Apply the ACSD-56515 patch to fix the Adobe Commerce issue where the admin with website-level permissions cannot add or edit the [!UICONTROL Dynamic Block].
feature: Roles/Permissions, Admin Workspace
role: Admin, Developer
exl-id: dd3e61a4-aba4-4f86-b4fe-88ca4276ace5
type: Troubleshooting
---
# ACSD-56515: Admin with website-level permissions cannot edit [!UICONTROL Dynamic Block]

The ACSD-56515 patch fixes the issue where the admin with website-level permissions cannot add or edit the [!UICONTROL Dynamic Block]. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.45 is installed. The patch ID is ACSD-56515. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.5-p4

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.2 - 2.4.6-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The admin with website-level permissions cannot add or edit the [!UICONTROL Dynamic Block].

<u>Steps to reproduce</u>:

1. Create a secondary website with store and storeview.
1. Go to **[!UICONTROL System]** > **[!UICONTROL Permissions]** > **[!UICONTROL User Roles]** and create a user role restricted to the secondary website scope with all resources available.
1. Create an admin user with the role created above.
1. Log in with the restricted admin user and create a [!UICONTROL Dynamic Block]. 

<u>Expected results</u>:

The admin user with restrictions to the website can create a [!UICONTROL Dynamic Block].

<u>Actual results</u>:

You get the following error: *More permissions are needed to view this item*.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!UICONTROL Quality Patches Tool] guide.


For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
