---
title: Check the database status
description:
---

# Check the database status

## First steps {#instgde-cli-before}

{% include install/first-steps-cli.md %}
In addition to the command arguments discussed here, see [Common arguments]({{ page.baseurl }}/install-gde/install/cli/install-cli-subcommands.html#instgde-cli-subcommands-common).

## Prerequisites {#instgde-cli-subcommands-db-prereq}

Before you run this command, you must [Create or update the deployment configuration]({{ page.baseurl }}/install-gde/install/cli/install-cli-subcommands-deployment.html).

## Command usage

To check the status of the Magento database, enter

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
 1 | Some modules use code versions newer or older than the database | Run [`magento setup:upgrade`]({{ page.baseurl }}/install-gde/install/cli/install-cli-subcommands-db-upgr.html) to update the database schema and run `composer update` from the Magento root directory to update component dependencies |
 2 | setup:upgrade is required | [`magento setup:upgrade`]({{ page.baseurl }}/install-gde/install/cli/install-cli-subcommands-db-upgr.html) to update the [database schema](https://glossary.magento.com/database-schema) |
