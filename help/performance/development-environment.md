---
title: Development Environment Recommendations
description: Learn about development environment recommendations in Adobe Commerce. Discover implementation guidance and optimization strategies.
exl-id: f57396c0-86be-4933-8066-eb51c42fb9e4
---
# Development environment recommendations

This page provides recommendations for Commerce development environments.

## Clean the caches instead of disabling

Many developers tend to disable all caches on their developer instances. We recommend only cleaning caches, without disabling all caches. [!DNL Commerce] runs more efficiently when you [clean the caches](../configuration/cli/manage-cache.md#clean-and-flush-cache-types) instead of disabling them completely. Most types of caches are rarely invalidated during development.

If you [disable the caches](../configuration/cli/manage-cache.md#enable-or-disable-cache-types), we recommend only disabling Page and Block caches in development instances. Remember to enable all caches during testing.

## Commands to avoid in the development mode

In the development mode, do not run commands for compilation, code generation and static content deployment. These commands were built for use in production mode only.

**Do not run** production commands in development mode:

* `setup:di:compile` generates auto-generated classes and optimized configuration caches.

  ```bash
  bin/magento setup:di:compile
  ```

  In development mode, Magento performs the generation on-demand; you do not need to run it. If you modified a signature of a class and need to re-generate its auto-generated `factories/proxies/interceptors`, remove those classes or the _generated_ folder.

* `setup:static-content:deploy` deploys static content for a store.

   ```bash
   bin/magento setup:static-content:deploy
   ```

   In development mode, Magento performs it on-demand; you do not need to run it.

## Normal page load time on a virtual machine

If you develop on a VM and it takes longer than 2 seconds to load a Magento page, review your environment settings.
