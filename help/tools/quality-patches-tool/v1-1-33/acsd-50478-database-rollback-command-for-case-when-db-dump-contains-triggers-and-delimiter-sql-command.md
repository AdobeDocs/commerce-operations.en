---
title: 'ACSD-50478: JS issue for rollback action in backups grid and database rollback command'
description: Apply the ACSD-50478 patch to fix the JS issue for the rollback action in the backups grid and the database rollback command for a case when the DB dump contains triggers and a *delimiter* SQL command.
exl-id: 8b516705-29be-462e-b3ec-3a339b6e8006
---
# ACSD-50478: JS issue for rollback action in backups grid and database rollback command

The ACSD-50478 patch fixes the JS issue for the rollback action in the backups grid and the database rollback command for a case when the DB dump contains triggers and a *delimiter* SQL command. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.33 is installed. The patch ID is ACSD-50478. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.3-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.0 - 2.4.4-p4

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

JS issue for the rollback action in the Backups grid and the database rollback command for a case when the DB dump contains triggers and a *delimiter* SQL command. 

<u>Steps to reproduce</u>:

1. Set indexers to [!UICONTROL Update on Schedule] mode so that triggers are created in the database.
1. Enable the backup functionality from the command line:

   `bin/magento config:set system/backup/functionality_enabled 1`

1. Go to **System** > **Tools** > **Backups** and generate a DB backup.
1. Open the browser console; you will see the following error: 

   ```
   Uncaught SyntaxError: Unexpected token '&' (at (index):606:32)

   function eventListener8jtGaqtgG2 () {

           return backup.rollback(&#039;db&#039;, &#039;1678391644&#039;);
   ``` 

1. Try to import the DB from the command line:

   `bin/magento setup:rollback --db-file="<filename>"`

1. The following error appears:

   ```
   Syntax error or access violation: 1064 You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'delimiter' at line 1, query was: delimiter ;;
   ```
   
<u>Expected results</u>:

The database restoration is successful from both the Admin and the command line.

<u>Actual results</u>:

You observed the errors mentioned in step 4 and step 6.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
