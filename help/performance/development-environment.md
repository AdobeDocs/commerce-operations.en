---
title: Development Environment Recommendations
description: Learn about development environment recommendations in Adobe Commerce. Discover implementation guidance and optimization strategies.
exl-id: f57396c0-86be-4933-8066-eb51c42fb9e4
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
# Development environment recommendations

This page provides recommendations for Commerce development environments.

## Clean the caches instead of disabling

Many developers tend to disable all caches on their developer instances. We recommend only cleaning caches, without disabling all caches. [!DNL Commerce] runs more efficiently when you [clean the caches](../configuration/cli/manage-cache.md#clean-and-flush-cache-types) instead of disabling them completely. Most types of caches are rarely invalidated during development.

If you [disable the caches](../configuration/cli/manage-cache.md#enable-or-disable-cache-types), we recommend only disabling Page and Block caches in development instances. Remember to enable all caches during testing.

## Commands to avoid in the development mode

In the development mode, do not run commands for compilation, code generation and static content deployment. These commands were built for use in production mode only.

**Do not run** production commands in development mode:

* `setup:di:compile` generates auto-generated classes and optimized configuration caches.

  ```shell
  bin/magento setup:di:compile
  ```

  In development mode, Magento performs the generation on-demand; you do not need to run it. If you modified a signature of a class and need to re-generate its auto-generated `factories/proxies/interceptors`, remove those classes or the _generated_ folder.

* `setup:static-content:deploy` deploys static content for a store.

   ```shell
   bin/magento setup:static-content:deploy
   ```

   In development mode, Magento performs it on-demand; you do not need to run it.

## Normal page load time on a virtual machine

If you develop on a VM and it takes longer than 2 seconds to load a Magento page, review your environment settings.
