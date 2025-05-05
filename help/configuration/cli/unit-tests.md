---
title: Run unit tests
description: Run unit tests defined in the Adobe Commerce code base.
exl-id: 23200420-d15c-4910-8ce6-abd0cc070777
---
# Run unit tests

{{file-system-owner}}

This command runs a set of tests defined in the Commerce 2 code base. You can either run all tests or tests you select. Whenever an unsupported type is specified, the program terminates and lists all available types. Following execution, a detailed report displays showing the test run and results.

## Prerequisites

Before you run this command, the following _must_ be true:

-  The `Magento_Developer` module must be enabled. You can enable it as follows:

   ```bash
   bin/magento module:enable [--force] Magento_Developer
   ```

   Use the `--force` option only if it is necessary.

-  Your system must be set up to run the desired tests.

For example, to run integration tests, you should copy `dev/tests/integration/etc/install-config-mysql.php.dist` to `dev/tests/integration/etc/install-config-mysql.php` and modify it to suit your environment.

## Running tests

Command usage:

```bash
bin/magento dev:tests:run <test>
```

To list the available test types:

```bash
bin/magento dev:tests:run --help
```

Sample return:

```
all, unit, integration, integration-all, static, static-all, integrity, legacy, default
```

For example, to run integration tests:

```bash
bin/magento dev:tests:run integration
```
