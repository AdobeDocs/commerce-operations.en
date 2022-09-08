---
title: Check the database status
description:
---

# Check the database status

## First steps

{{%include /help/_includes/cli-first-steps.md}}

## Prerequisites

Before you run this command, you must [Create or update the deployment configuration](deployment.md).

## Command usage

To check the status of the database.

```bash
bin/magento setup:db:status
```

This command has no arguments or options.

Sample output follows:

```terminal
All modules are up to date.
```

The command returns one of the following exit codes:

Exit code  | Description | Suggested action
|--------------|--------------|--------------|
 0 | Normal | None |
 1 | Some modules use code versions newer or older than the database | Run [`magento setup:upgrade`](database-upgrade.md) to update the database schema and run `composer update` from the application root directory to update component dependencies |
 2 | setup:upgrade is required | [`magento setup:upgrade`](database-upgrade.md) to update the [database schema](https://glossary.magento.com/database-schema) |
