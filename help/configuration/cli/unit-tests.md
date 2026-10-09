---
title: Run unit tests
description: Learn how to run unit tests defined in the Adobe Commerce codebase. Discover testing commands, execution options, and result reporting.
exl-id: 23200420-d15c-4910-8ce6-abd0cc070777
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
# Run unit tests

{{file-system-owner}}

This command runs a set of tests defined in the Commerce 2 code base. You can either run all tests or tests you select. Whenever an unsupported type is specified, the program terminates and lists all available types. Following execution, a detailed report displays showing the test run and results.

## Prerequisites

Before you run this command, the following _must_ be true:

-  The `Magento_Developer` module must be enabled. You can enable it as follows:

   ```shell
   bin/magento module:enable [--force] Magento_Developer
   ```

   Use the `--force` option only if it is necessary.

-  Your system must be set up to run the desired tests.

For example, to run integration tests, you should copy `dev/tests/integration/etc/install-config-mysql.php.dist` to `dev/tests/integration/etc/install-config-mysql.php` and modify it to suit your environment.

## Running tests

Command usage:

```shell
bin/magento dev:tests:run <test>
```

To list the available test types:

```shell
bin/magento dev:tests:run --help
```

Sample return:

```text
all, unit, integration, integration-all, static, static-all, integrity, legacy, default
```

For example, to run integration tests:

```shell
bin/magento dev:tests:run integration
```
