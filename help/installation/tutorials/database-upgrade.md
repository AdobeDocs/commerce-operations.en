---
title: Upgrade the database schema and data
description: Follow these steps to upgrade your Adobe Commerce database schema.
exl-id: bef04561-6c6b-4636-a8ab-a1ade44f5a8f
product_v2:
  - id: eadea719-cf89-469b-a6fd-a236a7138047
    internal-label: Commerce
role_v2:
  - id: c66ffd68-0f65-42bb-aa23-b4020f12e0bd
    internal-label: Admin
  - id: ff6a42d2-313e-452e-93a6-792e4fad9ff8
    internal-label: Developer
level_v2:
  - id: d378ca77-2da1-4f39-ad92-1917fe974a38
    internal-label: Experienced
---
# Upgrade the database schema and data

Before you use this command, you must [install the application](../advanced.md).

## Upgrade the database schema and data

Anytime you perform an action that causes the database schema or data to change, you must update them by running the command discussed in this section. A partial list of reasons follows:

*  You upgraded the application using the command line
*  You installed or updated a component using the command line
*  You enabled or disabled a component using the command line

>[!NOTE]
>
>A *component* can be a module, theme, or language pack; it doesn't matter whether the component comes from the Commerce Marketplace or not.

1. Start the upgrade:

   ```shell
   bin/magento setup:upgrade [--keep-generated]
   ```

   Where `--keep-generated` is an optional argument that does not update [static view files](../../configuration/cli/static-view-file-deployment.md). This optional argument is for use *only* in limited circumstances by experienced system integrators. It should be used *only* in [production mode](../../configuration/bootstrap/application-modes.md#production-mode). It should *not* be used in [developer mode](../../configuration/bootstrap/application-modes.md#developer-mode).

1. Clean the cache:

   ```shell
   bin/magento cache:clean
   ```
