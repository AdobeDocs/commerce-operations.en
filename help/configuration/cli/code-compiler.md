---
title: Code compiler
description: Learn how to run the Adobe Commerce code compiler from the command line. Discover compilation processes and optimization techniques.
exl-id: 08dbf808-ea79-4956-a0bc-f464bb80eee7
---
# Code compiler

{{file-system-owner}}

Code compilation includes the following (in no particular order):

- Application code generation (factories, proxies)
- Area configuration aggregation (optimized dependency injection configurations per area)
- Interceptor generation (optimized code generation of interceptors)
- Interception cache generation
- Repositories code generation (generated code for APIs)
- Service data attributes generation (generated extension classes for data objects)

You can find code compilation classes in the [\Magento\Setup\Module\Di\App\Task\Operation](https://github.com/magento/magento2/blob/2.4.8/setup/src/Magento/Setup/Module/Di/App/Task/Operation) namespace.

To run the single-tenant compiler:

```bash
bin/magento setup:di:compile
```

```
Generated code and dependency injection configuration successfully.
```

To compile code before installing the Commerce application:

In some cases, you might want to compile code before you install the Commerce application.

1. Enable the modules.

   ```bash
   bin/magento module:enable --all [-c|--clear-static-content]
   ```

   Use the `[-c|--clear-static-content]` option to clear static content. This is necessary if you previously enabled or disabled modules and you must clear the static content previously generated for them.

   See [Enable modules](../../installation/tutorials/manage-modules.md).

1. Compile the code.

   ```bash
   bin/magento setup:di:compile
   ```

   ```
   Generated code and dependency injection configuration successfully.
   ```

To compile code without a database, see [Deploy static view files without installing Magento](../cli/static-view-file-deployment.md).

