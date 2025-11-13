---
title: 'ACSD-46404: Admin user cannot log in after upgrading to 2.4.4'
description: The ACSD-46404 patch solves the issue where an admin user cannot log in after upgrading to 2.4.4. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.19 is installed. The patch ID is ACSD-46404. Please note that the issue was fixed in Adobe Commerce 2.4.5.
feature: Admin Workspace
role: Admin
exl-id: f475ca56-5e06-4d4d-be42-f760c95968cf
type: Troubleshooting
---
# ACSD-46404: Admin user cannot log in after upgrading to 2.4.4

The ACSD-46404 patch solves the issue where an admin user cannot log in after upgrading to 2.4.4. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.19 is installed. The patch ID is ACSD-46404. Please note that the issue was fixed in Adobe Commerce 2.4.5.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.4

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.4-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches). Use the patch ID as a search keyword to locate the patch.

## Issue

The admin user cannot log in after upgrading to 2.4.4.

<u>Steps to reproduce</u>:

1. Log in to the Admin Panel
1. Navigate to Store > **Settings** > **Configuration** > **Advanced** > **System** > **Security**.
1. Set the Max Session Size in the Admin to **0** and save it.

<u>Expected results</u>:

The admin user is able to log in successfully.

<u>Actual results</u>:

The admin user gets logged out and is unable to log in.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!DNL Quality Patches Tool] guide.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
