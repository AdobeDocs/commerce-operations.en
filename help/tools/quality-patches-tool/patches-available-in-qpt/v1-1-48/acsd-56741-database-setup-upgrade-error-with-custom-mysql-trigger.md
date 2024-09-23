---
title: 'ACSD-56741: Troubleshooting database setup errors with custom MySQL triggers'
description: Apply the ACSD-56741 patch to fix the Adobe Commerce issue where an error message *Trying to access array offset on value of type null* appears during `setup:upgrade` due to a custom MySQL trigger in the database unrelated to indexation and [!DNL MView].
feature: Install
role: Admin, Developer
exl-id: 97839140-03c5-44f0-ba75-935d62f5bf90
---
# ACSD-56741: Troubleshooting database setup errors with custom MySQL triggers

The ACSD-56741 patch fixes the issue where an error message *Trying to access array offset on value of type null* appears during `setup:upgrade` due to a custom MySQL trigger in the database unrelated to indexation and [!DNL MView]. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.48 is installed. The patch ID is ACSD-56741. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.5.0

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.6-p3

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.6 - 2.4.6-p4

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

An error message *Trying to access array offset on value of type null* appears during `setup:upgrade` due to a custom MySQL trigger in the database unrelated to indexation and [!DNL MView].

<u>Steps to reproduce</u>:

1. Run `php bin/magento indexer:set-mode schedule`.

    ```
    DELIMITER //
    CREATE TRIGGER trg_catalog_category_entity_before_delete_umis BEFORE DELETE ON catalog_category_entity FOR EACH ROW
        -> BEGIN
        -> UPDATE ewave_navigation_menu_item_info as nit INNER JOIN ewave_navigation_menu_category_type as ncmi ON nit.id = ncmi.menu_item_id AND ncmi.category_id = OLD.entity_id SET nit.status = 0;
        -> END //
    ```

1. Run `php bin/magento c:f`.
1. Run `php bin/magento setup:upgrade`.

<u>Expected results</u>:

The setup upgrade finishes without any error.

<u>Actual results</u>:

The setup upgrade exits with an error message: 

*Warning: Trying to access array offset on value of type null*.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
