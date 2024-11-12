---
title: Configure the lock provider
description: Follow these steps to prevent the duplicate cron jobs and cron groups from running on your Adobe Commerce deployment.
exl-id: c54e05b7-38fd-4731-bc77-a873b44d0ae8
---
# Configure the lock provider

Before you run this command, you must do the following *or* you must [install the application](../advanced.md):

*  [Create or update the deployment configuration](deployment.md)
*  [Create the database schema](database.md)

## Secure installation

{{$include /help/_includes/secure-install.md}}

## Configure the lock

Configure a lock provider to prevent the launch of duplicate cron jobs and cron groups. (Requires Adobe Commerce 2.2.x, 2.2.5 and later, and 2.3.3 and later.)

Adobe Commerce uses the database to save locks by default. If you have multiple nodes on your servers, we recommend using Zookeeper as the lock provider.

If you are running Adobe Commerce on cloud infrastructure, you do not need to configure lock provider settings. The application configures the file lock provider for Pro projects during the provisioning process. See [Cloud variables](https://experienceleague.adobe.com/en/docs/commerce-cloud-service/user-guide/configure/env/stage/variables-cloud).

### Command usage

```bash
bin/magento setup:config:set [--<parameter_name>=<value>, ...]
```

### Parameter descriptions

|Name|Value|Required?|
|--- |--- |--- |
|`--lock-provider`|Lock provider name: `db`, `zookeeper`, or `file`.<br><br>The default lock provider: `db`|No|
|`--lock-db-prefix`|The specific db prefix to avoid lock conflicts when using the `db` lock provider.<br><br>The default value: `NULL`|No|
|`--lock-zookeeper-host`|Host and port to connect to the Zookeeper cluster when you use the `zookeeper` lock provider.<br><br>For example: `127.0.0.1:2181`|Yes, if you set `--lock-provider=zookeeper`|
|`--lock-zookeeper-path`|The path where Zookeeper saves locks.<br><br>The default path is: `/magento/locks`|No|
|`--lock-file-path`|The path where file locks are saved.|Yes, if you set `--lock-provider=file`|
