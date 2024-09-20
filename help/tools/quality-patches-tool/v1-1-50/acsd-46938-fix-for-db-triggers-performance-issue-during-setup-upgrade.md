---
title: 'ACSD-46938: Performance issues with DB triggers during `setup:upgrade`'
description: Apply the ACSD-46938 patch to fix the Adobe Commerce issue where the `setup:upgrade` command changes the indexer mode from schedule to save, causing significant performance slowdowns.
feature: Upgrade
role: Admin, Developer
exl-id: 967727ed-f490-4233-a2b0-fcb2fa3f964b
---
# ACSD-46938: Performance issues with DB triggers during `setup:upgrade`

The ACSD-46938 patch fixes the issue where the `setup:upgrade` command changes the indexer mode from schedule to save, causing significant performance slowdowns. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.50 is installed. The patch ID is ACSD-46938. Please note that the issue was fixed in Adobe Commerce 2.4.6.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.4

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.5-p9

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Performance degradation during DB trigger recreation in `setup:upgrade`.

<u>Steps to reproduce</u>:

1. Create a large catalog with many products and categories.
1. Log in to the [!UICONTROL Admin].
1. Set all indexers to [!UICONTROL Update By Schedule] mode.
1. Open any product.
1. Update it. For example, assign a new category to it.
1. Click [!UICONTROL Save].
1. Run `bin/magento setup:upgrade` and `bin/magento cron:run` commands in parallel.

<u>Expected results</u>:

The execution time of the `bin/magento setup:upgrade` command significantly increases when the `bin/magento cron:run` command is executed simultaneously.

<u>Actual results</u>:

The execution time of the command does not increase.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
