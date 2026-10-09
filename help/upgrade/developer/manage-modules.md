---
title: Manage Modules and Extensions (developer)
description: Manage Adobe Commerce modules and extensions using the command-line interface and Composer package manager.
feature: Upgrade, Extensions
exl-id: 447eb317-83e1-4900-83a5-9ac1a008e752
last-update: 2026-04-28T00:00:00.000Z
product_v2:
  - id: eadea719-cf89-469b-a6fd-a236a7138047
    internal-label: Commerce
feature_v2:
  - id: a8ae7a5a-6cdc-5922-bd0d-6feb44b04984
    internal-label: Upgrade
  - id: f08fa0de-a550-4acd-b570-f81cf1d03aaf
    internal-label: Commerce ecosystem
subfeature_v2:
  - id: dad884f1-e840-49a1-970e-2f965bdbc410
    internal-label: Extensions
role_v2:
  - id: c66ffd68-0f65-42bb-aa23-b4020f12e0bd
    internal-label: Admin
  - id: ff6a42d2-313e-452e-93a6-792e4fad9ff8
    internal-label: Developer
level_v2:
  - id: d378ca77-2da1-4f39-ad92-1917fe974a38
    internal-label: Experienced
---
# Manage modules and extensions

Contributing developers upgrade modules and extensions by specifying their versions in the Adobe Commerce `composer.json` file. If you are not a contributing developer, see [Perform an upgrade](../implementation/perform-upgrade.md).

You can either add a `require` section to the `composer.json` file or you can use the `composer require` command as follows:

{{$include /help/_includes/server-login.md}}

You have the following options:

## Get available module versions

Command usage:

```shell
composer show --all <vendor>/<name>
```

For example:

```shell
composer show --all example/module
```

## Use the `composer require` command

Command usage:

```shell
composer require <vendor>/<name>:<version>
```

For example:

```shell
composer require example/module:1.0.0
```

Wait while Composer updates dependencies and installs the module.

## Add a `require` section to the composer.json file

1. Open the `composer.json` in a text editor.

1. Add a `require` section.

   ```json
   "require": {
     "<vendor>/<name>": "<version>",
     "<vendor>/<name>": "<version>"
   }
   ```

1. Save your changes to the `composer.json` file and exit the text editor.

1. Resolve dependencies and write exact versions to the `composer.lock` file. 

   ```shell
   composer update
   ```

<!-- Last updated from includes: 2026-04-17 13:49:36 -->
