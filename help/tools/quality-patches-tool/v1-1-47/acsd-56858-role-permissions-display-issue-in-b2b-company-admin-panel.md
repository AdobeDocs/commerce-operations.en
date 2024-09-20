---
title: 'ACSD-56858: Role permissions discrepancy in B2B company admin'
description: Apply the ACSD-56858 patch to fix the Adobe Commerce issue where role permissions are incorrectly displayed for a restricted company admin in the B2B environment.
feature: Companies, B2B, Roles/Permissions
role: Admin, Developer
exl-id: d446f815-78bf-42ec-bc2b-a5934b15b416
---
# ACSD-56858: Role permissions discrepancy in B2B company admin

The ACSD-56858 patch fixes the issue where role permissions are incorrectly displayed for a restricted company admin in the B2B environment. This patch is available when the [!DNL Quality Patches Tool (QPT)] 1.1.47 is installed. The patch ID is ACSD-56858. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.6-p3

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.2 - 2.4.6-p4

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The role permissions for a restricted company admin in the B2B environment are inaccurately displayed.

<u>Steps to reproduce</u>:

1. Begin by setting up a company, adding a company admin and company users.
1. Log in as the company admin at the storefront and create various roles for different users.
1. Assign these roles as needed, such as limiting access for some tasks while allowing full access for others.
1. Assign these roles with full access to a user other than the company admin.
1. Log in to a non-company admin user, for e.g. a company_manager.
1. Navigate to **[!UICONTROL Roles and permission]** and edit the role.
1. Notice that the permissions displayed do not match the permissions set in the company's database for that role ID.

<u>Expected results</u>:

The roles and permission appear correctly for the non-company admin user.

<u>Actual results</u>:

The roles do not appear correctly for the non-company admin user as per the database records in the permission table.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
