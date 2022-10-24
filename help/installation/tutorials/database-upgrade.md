---
title: Upgrade the database schema and data
description: Follow these steps to upgrade your Adobe Commerce or Magento Open Source database schema.
---

# Upgrade the database schema and data

Before you use this command, you must [install the application](../advanced.md).

## Upgrade the database schema and data

Anytime you perform an action that causes the [database schema](https://glossary.magento.com/database-schema) or data to change, you must update them by running the command discussed in this section. A partial list of reasons follows:

*  You upgraded the application using the command line
*  You installed or updated a component using the command line
*  You enabled or disabled a component using the command line

>[!NOTE]
>
>A *component* can be a module, theme, or language pack; it doesn't matter whether the component comes from the Commerce Marketplace or not.

1. Start the upgrade:

   ```bash
   bin/magento setup:upgrade [--keep-generated]
   ```

   Where `--keep-generated` is an optional argument that does not update [static view files](../../configuration/cli/static-view-file-deployment.md). This optional argument is for use *only* in limited circumstances by experienced system integrators. It should be used *only* in [production mode](../../configuration/bootstrap/application-modes.md#production-mode). It should *not* be used in [developer mode](../../configuration/bootstrap/application-modes.md#developer-mode).

1. Clean the cache:

   ```bash
   bin/magento cache:clean
   ```
