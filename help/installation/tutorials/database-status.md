---
title: Check the database status
description: Follow these steps to check your Adobe Commerce database status.
exl-id: 33d9b30a-4504-4955-b11a-0a642f23209b
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
# Check the database status

Before you run this command, you must [Create or update the deployment configuration](deployment.md).

## Command usage

To check the status of the database.

```shell
bin/magento setup:db:status
```

This command has no arguments or options.

Sample output follows:

```text
All modules are up to date.
```

The command returns one of the following exit codes:

| Exit code  | Description | Suggested action |
|--------------|--------------|---------------|
| 0 | Normal | None |
| 1 | Some modules use code versions newer or older than the database | Run [`magento setup:upgrade`](database-upgrade.md) to update the database schema and run `composer update` from the application root directory to update component dependencies |
| 2 | `magento setup:upgrade` is required | [`magento setup:upgrade`](database-upgrade.md) to update the database schema |
