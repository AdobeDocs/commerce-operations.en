---
title: Migrate from RabbitMQ to ActiveMQ
description: Learn about replacing the message queue broker used for on-premises installations of Adobe Commerce.
feature: Upgrade, Message Queue
exl-id: migrate-rabbitmq-activemq
---
# Migrating to ActiveMQ

ActiveMQ (Apache ActiveMQ Artemis) is a high-performance, multi-protocol message broker that provides an alternative to RabbitMQ for handling message queues in Adobe Commerce.

As of 2.4.9, 2.4.8-p3, 2.4.7-p8, and 2.4.6-p13, Adobe Commerce supports ActiveMQ as a message queue broker. This provides additional flexibility for on-premises installations to choose between RabbitMQ and ActiveMQ based on their infrastructure requirements and expertise.

## Before you begin

Before starting the migration, ensure the following:

1. Review your current RabbitMQ configuration in `app/etc/env.php`.
1. Take a complete backup of your database and codebase.
1. Ensure your installation meets the system requirements for ActiveMQ.
1. Plan for a maintenance window to complete the migration.

## Migration path

The steps to migrate to ActiveMQ are straightforward but require ensuring all pending messages are processed before switching brokers. These steps assume that Adobe Commerce is the only application using the message queue broker.

### Step 1: Place the site in Maintenance Mode

Place the site in [Maintenance Mode](../../installation/tutorials/maintenance-mode.md):

```bash
bin/magento maintenance:enable
```

Verify maintenance mode is enabled:

```bash
bin/magento maintenance:status
```

### Step 2: Check RabbitMQ message counts

Before proceeding, verify that all messages in RabbitMQ have been processed. Use one of the following methods:

#### Method A: Using RabbitMQ Management Dashboard

1. Access the RabbitMQ Management UI at `http://<host>:15672`
1. Default credentials: `guest/guest`
1. Navigate to the **Queues** tab
1. Verify all queues show **0 messages**

#### Method B: Using rabbitmqctl command line

Check all queues and their message counts:

```bash
rabbitmqctl list_queues name messages consumers
```

Check detailed queue information:

```bash
rabbitmqctl list_queues name messages messages_ready messages_unacknowledged consumers
```

### Step 3: Process pending messages

If messages are pending in any queues, process them before proceeding.

#### List available consumers

```bash
bin/magento queue:consumers:list
```

#### Process all consumers via cron

```bash
bin/magento cron:run --group=consumers
```

Wait for completion and verify message counts again using the commands from Step 2.

#### Process specific consumers manually

If you prefer to process specific queues, run the appropriate consumer using the following command:

```bash
bin/magento queue:consumers:start <consumer_name> --max-messages=<number>
```

For example, to process async operations:

```bash
bin/magento queue:consumers:start async.operations.all --max-messages=1000
```

>[!NOTE]
>
>The `--max-messages` parameter limits the number of messages to process before the consumer stops. Adjust this value based on your queue size.

#### Monitor message processing

Continuously check message counts until all queues are empty:

```bash
# Check every few seconds until 0 messages remain
watch -n 5 "rabbitmqctl list_queues name messages | grep -v '^Listing' | grep -v '0$'"
```

### Step 4: Verify all messages are processed

Before proceeding to the next step, ensure **all queues show 0 messages**. Run the verification commands from Step 2 again.

>[!WARNING]
>
>Do not proceed to the next step if any messages remain unprocessed. Data loss may occur if you switch brokers while messages are still pending.

### Step 5: Stop consumers and cron jobs

Stop all running message queue consumers:

```bash
# If using supervisor
supervisorctl stop all

# Or manually kill consumer processes
pkill -f "queue:consumers:start"
```

Disable cron jobs:

```bash
bin/magento cron:remove
```

Verify cron jobs are removed:

```bash
crontab -l
```

### Step 6: Backup current configuration

Create a backup of your current configuration:

```bash
cp app/etc/env.php app/etc/env.php.backup.rabbitmq
```

### Step 7: Optionally uninstall RabbitMQ

You can uninstall RabbitMQ if it is not required anymore.

### Step 8: Install and configure ActiveMQ in adobe commerce

[Install and configure ActiveMQ](../../installation/prerequisites/activemq.md) and perform related tasks, such as configuring the STOMP protocol and verifying the connection.

### Step 9: Reinstall cron jobs

Once testing is successful, reinstall cron jobs:

```bash
bin/magento cron:install
```

Verify cron jobs are scheduled:

```bash
crontab -l
```

### Step 10: Disable Maintenance Mode

After verifying everything is working correctly, disable maintenance mode:

```bash
bin/magento maintenance:disable
```

Verify maintenance mode is disabled:

```bash
bin/magento maintenance:status
```

### Step 11: Monitor the system

Monitor your system for 24-48 hours after migration to ensure all queue operations are functioning correctly:

- Check ActiveMQ Web Console regularly for message throughput
- Monitor application logs for queue-related errors
- Verify async operations (config saves, exports, etc.) are working
- Check cron logs to ensure consumers are running

```bash
# Monitor system logs for queue activity
tail -f var/log/system.log | grep -i queue

# Monitor cron logs
tail -f var/log/cron.log

# Check running consumer processes
ps aux | grep "queue:consumers:start"
```

## Rollback

If issues occur during or after migration, you can rollback to RabbitMQ:

1. Enable maintenance mode:

   ```bash
   bin/magento maintenance:enable
   ```

1. Stop all consumers and disable cron:

   ```bash
   pkill -f "queue:consumers:start"
   bin/magento cron:remove
   ```

1. Restore the previous configuration:

   ```bash
   cp app/etc/env.php.backup.rabbitmq app/etc/env.php
   ```

1. Start RabbitMQ (if stopped):

   ```bash
   sudo systemctl start rabbitmq-server
   ```

1. Clear cache:

   ```bash
   bin/magento cache:flush
   ```

1. Reinstall cron:

   ```bash
   bin/magento cron:install
   ```

1. Disable maintenance mode:

   ```bash
   bin/magento maintenance:disable
   ```

No further configuration value changes are necessary after completing the migration.

