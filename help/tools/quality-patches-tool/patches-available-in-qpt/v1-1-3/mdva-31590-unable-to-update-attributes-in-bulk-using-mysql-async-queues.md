---
title: 'MDVA-31590: Unable to update attributes in bulk using MySQL async queues'
description: The MDVA-31590 patch solves the issue where the users are unable to update attributes in bulk using MySQL async queues. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) 1.1.3 is installed. The patch ID is MDVA-31590. Please note that the issue was fixed in Adobe Commerce 2.4.2.
exl-id: 57db28dd-a739-4a77-927d-6339af4fa4a6
feature: Attributes, Services
role: Admin
---
# MDVA-31590: Unable to update attributes in bulk using MySQL async queues

The MDVA-31590 patch solves the issue where the users are unable to update attributes in bulk using MySQL async queues. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) 1.1.3 is installed. The patch ID is MDVA-31590. Please note that the issue was fixed in Adobe Commerce 2.4.2.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.0

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.0-2.4.1-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches). Use the patch ID as a search keyword to locate the patch.

## Issue

Users are not able to update attributes in bulk using MySQL async.

<u>Steps to reproduce</u>:

1. On the product grid in the backend, perform a mass action to update attribute values for a few products.
    * Check products and select **Update Attributes** from the Actions dropdown.
1. Set values for the required attributes and assign products to websites and save.
1. Once the page reloads, it will display a message like the following:
    *Task "Update attributes for N selected products": 1 item(s) have been scheduled for an update.*
1. Wait for few seconds and reload the backend page.

<u>Expected results</u>:

1. The page displays a successful update message like: *1 item(s) have been successfully updated.*
1. Attribute values for related products are updated.
1. In DB, new records are created in both `magento_bulk` table and `magento_operation` table (operations related to the bulk).
1. New record(s) are created in the `queue_message` table (related to the queues `product_action_attribute.update` and/or `product_action_attribute.website.update`).
1. `queue_message_status` table have records with status "4".
1. There are NO errors in `system.log`.

<u>Actual results</u>:

1. The page still displays a message like the following:
    *Task "Update attributes for N selected products": 1 item(s) have been scheduled for an update.*
1. Attribute values for the products are updated.
1. A new record is created in `message_bulk` table, but there is no related record(s) in `magento_operation` table.
1. New records are created in `queue_message` and `queue_message_status` tables.
1. `queue_message_status` table has record with error status (status value "6").
1. `system.log` contains error similar to the following:

    ```sql
    *main.CRITICAL: Message has been rejected: SQLSTATE[23000]: Integrity constraint violation: 1048 Column 'operation_key' cannot be null, query was: INSERT INTO {{magento_operation}} ({{id}}, {{bulk_uuid}}, {{topic_name}}, {{serialized_data}}, {{result_serialized_data}}, {{status}}, {{error_code}}, {{result_message}}, {{operation_key}}) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?) [] []*
    ```

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!DNL Quality Patches Tool] guide.

For info about other patches available in QPT, refer to the [Patches available in QPT](https://support.magento.com/hc/en-us/sections/360010506631-Patches-available-in-MQP-tool-) section.
