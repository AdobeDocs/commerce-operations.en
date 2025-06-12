---
title: 'ACSD-61366: The `bin/magento setup:static-content:deploy --jobs 4` command encounters multiple job failures with an error'
description: Apply the ACSD-61366 patch to fix the Adobe Commerce issue where the `bin/magento setup:static-content:deploy --jobs 4` command encounters multiple job failures with the *Port must be configured within the host parameter* error, despite specifying the port for the DB connection.
feature: SCD
role: Admin, Developer
exl-id: d71a4833-a236-429b-a4e5-7d7d51c2caeb
---
# ACSD-61366: The `bin/magento setup:static-content:deploy --jobs 4` command encounters multiple job failures with an error

The ACSD-61366 patch fixes the issue where the `bin/magento setup:static-content:deploy --jobs 4` command encounters multiple job failures with the *Port must be configured within the host parameter* error, despite specifying the port for the DB connection. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.52 is installed. The patch ID is ACSD-61366. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

Adobe Commerce (all deployment methods) 2.4.7-p1

**Compatible with Adobe Commerce versions:**

Adobe Commerce (all deployment methods) 2.4.7 - 2.4.7-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The `bin/magento setup:static-content:deploy --jobs 4` command encounters multiple job failures with the *Port must be configured within the host parameter* error, despite specifying the port for the DB connection.

<u>Steps to reproduce</u>:

1. Specify a port in the database connection in `app/etc/env.php`.
1. Run `bin/magento setup:static-content:deploy --jobs 4` command.

<u>Expected results</u>:

The static content deployment finishes successfully.

<u>Actual results</u>:

The command fails with the *Port must be configured within host parameter* error.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!UICONTROL Quality Patches Tool] guide.


For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
