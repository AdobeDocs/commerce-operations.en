---
title: Start message queue consumers
description: Learn how to start a message queue consumer.
exl-id: fd6edb24-8ebe-4b67-8a03-6cc759b60fa8
---
# Start message queue consumers

{{file-system-owner}}

You must start a [message queue consumer](../queues/consumers.md) to enable asynchronous operations such as Inventory Management mass actions and REST bulk and asynchronous endpoints. To enable B2B functionality, you must start multiple consumers. Third-party modules might also require that you start a custom consumer.

To view a list of all consumers:

```bash
bin/magento queue:consumers:list
```

To start message queue consumers:

```bash
bin/magento queue:consumers:start [--max-messages=<value>] [--batch-size=<value>] [--single-thread] [--area-code=<value>] [--multi-process=<value>] <consumer_name>
```

After consuming all available messages, the command terminates. You can run the command again manually or with a cron job. You can also run multiple instances of the `magento queue:consumers:start` command to process large message queues. For example, you can append `&` to the command to run it in the background, return to a prompt, and continue running commands:

```bash
bin/magento queue:consumers:start <consumer_name> &
```

See [`queue:consumers:start`](../../tools/reference/commerce-on-premises.md#queueconsumersstart) in the Commerce section of the _Command-line tools reference_ for details about the command options, parameters, and values.

>[!INFO]
>
>The `--multi-process` option is present in the `queue:consumers:start` command, but to run consumers with parallel processes, configure the [`multiple_processes`](../queues/manage-message-queues.md#configuration) option in `/app/etc/env.php`. Otherwise, if `queue:consumers:start` is called with the `--multi-process` option, it only works on a single thread.
