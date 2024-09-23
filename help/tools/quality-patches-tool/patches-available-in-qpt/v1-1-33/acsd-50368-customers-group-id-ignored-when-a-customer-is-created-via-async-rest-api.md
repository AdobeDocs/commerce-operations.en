---
title: 'ACSD-50368: Customers group_id is ignored when a customer is created via Async REST API or Async Bulk REST API'
description: Apply the ACSD-50368 patch to fix the Adobe Commerce issue where the customers group_id is ignored when a customer is created via Async REST API or Async Bulk REST API.
feature: REST
role: Admin
exl-id: bad76183-659a-4ba8-a4a8-18ad69e15aac
---
# ACSD-50368: Customers group_id is ignored when a customer is created via Async REST API or Async Bulk REST API

The ACSD-50368 patch fixes the issue where customers group_id is ignored when a customer is created via Async REST API or Async Bulk REST API. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.33 is installed. The patch ID is ACSD-50368. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7. 

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.4

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.3 - 2.4.4-p4

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](<https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html>). Use the patch ID as a search keyword to locate the patch.

## Issue

Customers group_id is ignored when a customer is created via Async REST API or Async Bulk REST API.

<u>Prerequisites</u>:

Configure RabbitMQ for processing queues:

```
bin/magento setup:config:set --amqp-host=services --amqp-port=5672 --amqp-user=guest --amqp-password=guest 
bin/magento setup:upgrade --keep-generated
```

<u>Steps to reproduce</u>

1. Use an Async Rest API request to create a customer:

    ```
    curl --location 'https://site.test/rest/default/async/V1/customers' \
    --header 'Authorization: Bearer eyJraWQiOiIxIiwiYWxnIjoiSFMyNTYifQ.eyJ1aWQiOjEsInV0eXBpZCI6MiwiaWF0IjoxNjc5NDMzNzcxLCJleHAiOjE2Nzk0MzczNzF9.xau6KyILrkdCY_8K8aMlH4TmqcCXdH4Zcst_CLhdxYY' \
    --header 'Content-Type: application/json' \
    --header 'Cookie: PHPSESSID=844fltmqq1g15qe4ju3l00tiai' \
    --data-raw '{
        "customer": {
            "email": "foo@bar.test",
            "firstname": "Test",
            "lastname": "User",
            "group_id": 2
        }
    }
    ```

1. A similar response is returned:

    ```
    {
        "bulk_uuid": "b101ddcb-b7fd-4208-a2a6-2e84c9e61bcd",
        "request_items": [
            {
                "id": 0,
                "data_hash":   "6e718a93b02a30a98cb994d1c4e8cf1eeedcb962f384e4a463c"   ,
                "status": "accepted"
            }
        ],
        "errors": false
    }
    ```

1. Check the status of this asynchronous request:

    ```
    curl --location 'https://site.test/rest/default/V1/bulk/b101ddcb-b7fd-4208-a2a6-2e84c9e61bcd/detailed-status' \
    --header 'Authorization: Bearer eyJraWQiOiIxIiwiYWxnIjoiSFMyNTYifQ.eyJ1aWQiOjEsInV0eXBpZCI6MiwiaWF0IjoxNjc5NDMzNzcxLCJleHAiOjE2Nzk0MzczNzF9.xau6KyILrkdCY_8K8aMlH4TmqcCXdH4Zcst_CLhdxYY' \
    --header 'Cookie: PHPSESSID=844fltmqq1g15qe4ju3l00tiai
    ```

<u>Expected results</u>:

The group_id is correctly set to 2 for the new customer.

<u>Actual results</u>:

The group_id is set to default 1 for the new customer.

```
{
    "operations_list": [
        {
            "id": 0,
            "bulk_uuid": "b101ddcb-b7fd-4208-a2a6-2e84c9e61bcd",
            "topic_name": "async.magento.customer.api.accountmanagementinterface.createaccount.post",
            "serialized_data": null,
            "result_serialized_data": "{\"id\":4,\"group_id\":1,\"created_at\":\"2023-03-21 22:01:09\",\"updated_at\":\"2023-03-21 22:01:09\",\"created_in\":\"Default Store View\",\"email\":\"foo@bar.test\",\"firstname\":\"Test\",\"lastname\":\"User\",\"store_id\":1,\"website_id\":1,\"addresses\":[],\"disable_auto_group_change\":0,\"extension_attributes\":{\"is_subscribed\":false}}",
            "status": 1,
            "result_message": "Service execution success Magento\\Customer\\Model\\AccountManagement\\Interceptor::createAccount",
            "error_code": null
        }
    ],
        "user_type": 2,
        "bulk_id": "b101ddcb-b7fd-4208-a2a6-2e84c9e61bcd",
        "description": "Topic async.magento.customer.api.accountmanagementinterface.createaccount.post",
        "start_time": "2023-03-21 22:01:09",
        "user_id": 1,
        "operation_count": 1
}
```

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
