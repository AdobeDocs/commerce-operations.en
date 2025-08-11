---
title: 'AC-14984: SSL connection issue with php-amqplib/php-amqplib ^3.2.0'
description: Apply the AC-14984 patch to fix the Adobe Commerce issue where SSL connection fails with an error when using php-amqplib/php-amqplib version ^3.2.0.
feature: System
role: Admin, Developer
type: Troubleshooting
exl-id: cf46cd16-ef09-406a-835a-e5973887248f
---
# AC-14984: SSL connection issue with php-amqplib/php-amqplib ^3.2.0

The AC-14984 patch fixes the issue where SSL connection fails with an error when using `php-amqplib/php-amqplib` version `^3.2.0`. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.67 is installed. The patch ID is AC-14984. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.4.9.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.6-p10

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.6-p10 - 2.4.6-p11

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

SSL connection fails with an error when using `php-amqplib/php-amqplib` version `^3.2.0`.

<u>Steps to reproduce</u>:

1. Configure the SSL connection in `app/env.php`:

  ```
  'queue' =>
    array (
      'amqp' =>
      array (
        'host' => 'rabbitmq.example.com',
        'port' => '11213',
        'user' => 'magento',
        'password' => 'magento',
        'virtualhost' => '/',
        'ssl' => 'true',
        'ssl_options' => [
          'verify_peer' => true,
          'verify_peer_name' => false
        ],
      ),
    ),
  ```

1. Run `bin/magento setup:upgrade` if this is the first time you're configuring the queue.
1. Run any queue consumer, for example: `bin/magento queue:consumers:start async.operations.all`

<u>Expected results</u>:

The queue consumer starts and processes messages with no errors.

<u>Actual results</u>:

An error message appears in the logs:

```
{
  "message": "Invalid frame type 21",
  "context": {},
  "level": "error",
  "level_name": "ERROR",
  "channel": "report",
  "datetime": "2025-05-14T07:00:00.000000+00:00",
  "extra": {},
  "@timestamp": "2025-05-14T07:00:00.000000X",
  "severity": "ERROR",
  "original_level": 400,
  "full_message": "Invalid frame type 21\n#0 /app/vendor/php-amqplib/php-amqplib/PhpAmqpLib/Connection/AbstractConnection.php(651): PhpAmqpLib\\Connection\\AbstractConnection->wait_frame(3.0)\n#1 /app/vendor/php-amqplib/php-amqplib/PhpAmqpLib/Channel/AbstractChannel.php(235): PhpAmqpLib\\Connection\\AbstractConnection->wait_channel(0, 3.0)\n#2 /app/vendor/php-amqplib/php-amqplib/PhpAmqpLib/Channel/AbstractChannel.php(352): PhpAmqpLib\\Channel\\AbstractChannel->next_frame(3.0)\n#3 /app/vendor/php-amqplib/php-amqplib/PhpAmqpLib/Connection/AbstractConnection.php(264): PhpAmqpLib\\Channel\\AbstractChannel->..."
}
```

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
