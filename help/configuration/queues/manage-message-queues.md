---
title: Manage message queues
description: Learn how you can manage message queues from the command line for Adobe Commerce.
exl-id: 619e5df1-39cb-49b6-b636-618b12682d32
---
# Manage message queues

You can manage message queues from the command line using cron jobs or an external process manager to ensure that consumers are retrieving messages. This applies to all supported message brokers including RabbitMQ (AMQP), Apache ActiveMQ Artemis (STOMP), and MySQL adapter.

## Process management

Cron jobs are the default mechanism to restart consumers. Processes started by `cron` consume the specified number of messages and then terminate. Rerunning `cron` restarts the consumer.

The following example shows the `crontab` configuration for running consumers:

> /app/code/Magento/MessageQueue/etc/crontab.xml

```xml
...
<job name="consumers_runner" instance="Magento\MessageQueue\Model\Cron\ConsumersRunner" method="run">
    <schedule>* * * * *</schedule>
</job>
...
```

>[!INFO]
>
>How often you check message queues can depend on your business logic and available system resources. In general, you may want to check for new customers and send welcome emails more frequently than a more resource-intensive process, such as updating your catalog. You should define `cron` schedules according to your business needs.
>
>It can be configured in the Admin Stores > Settings > Configuration > Advanced > System > Cron configuration options for group: consumers.
>
>See [Configure and run cron](../cli/configure-cron-jobs.md) for more information about using `cron` with Commerce.

You can also use a process manager such as [Supervisor](https://supervisord.readthedocs.io/en/latest/) to monitor the status of processes. The manager can use the command line to restart the processes as needed.

## Configuration

### Behavior by default

- Cron job `consumers_runner` is enabled
- Cron job `consumers_runner` runs all defined consumers
- Each consumer processes 10000 messages and then terminates

>[!INFO]
>
>If your Adobe Commerce store is hosted on the Cloud platform, use the [`CRON_CONSUMERS_RUNNER`](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/configure/env/stage/variables-deploy.html#cron_consumers_runner) to configure the `consumers_runner` cron job.

### Specific configuration

Edit the `/app/etc/env.php` file to configure the cron job `consumers_runner`.

```php
...
    'cron_consumers_runner' => [
        'cron_run' => false,
        'max_messages' => 20000,
        'consumers' => [
            'consumer1',
            'consumer2',
        ],
        'multiple_processes' => [
            'consumer1' => 4
        ]
    ],
...
```

- `cron_run` - A boolean value that enables or disables the `consumers_runner` cron job (default = `true`).
- `max_messages` - The maximum number of messages each consumer must process before terminating (default = `10000`). Although we do not recommend it, you can use 0 to prevent the consumer from terminating. See [`consumers_wait_for_messages`](../reference/config-reference-envphp.md#consumerswaitformessages) to configure how consumers process messages from the message queue.
- `consumers` - An array of strings specifying which consumers to run. An empty array runs *all* consumers.
- `multiple_processes` - An array of key-value pairs specifying which consumer to run in how many processes. Supported in Commerce 2.4.4 or greater.

   >[!INFO]
   >
   >It is not recommended to run multiple consumers on a MySQL-operated queue. See [Change message queue from MySQL to external brokers](https://developer.adobe.com/commerce/php/development/components/message-queues/#change-message-queue-from-mysql-to-external-brokers) for more information about switching to AMQP (RabbitMQ) or STOMP (ActiveMQ Artemis).

   >[!INFO]
   >
   >If your Adobe Commerce store is hosted on the Cloud platform, use the [`CONSUMERS_WAIT_FOR_MAX_MESSAGES`](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/configure/env/stage/variables-deploy.html#consumers_wait_for_max_messages) to configure how consumers process messages from the message queue.

    >[!NOTE]
    >
    >ActiveMQ Artemis (STOMP) was introduced in Adobe Commerce 2.4.6 and later versions.

See [Start message queue consumers](../cli/start-message-queues.md).
