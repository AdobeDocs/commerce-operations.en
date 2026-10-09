---
title: Create the database schema
description: Follow these steps to create a database for your Adobe Commerce project.
exl-id: 860c9918-44c4-4ef1-88a5-12614566307c
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
# Create the database schema

Before you run this command, you must [Create or update the deployment configuration](deployment.md).

## Configure the database and add data

Command usage:

```shell
bin/magento setup:db-schema:upgrade
```

To see the status of the database, enter

```shell
bin/magento setup:db:status
```
