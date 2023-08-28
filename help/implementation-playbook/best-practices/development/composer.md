---
title: Composer development best practices
description: Learn about developing Composer modules in-place in the `vendor/` directory.
feature: Best Practices
role: Developer
---

# Composer development best practices

This topic describes the recommended approach for developing Composer modules in-place (as Git repositories in the `vendor/` directory) and adding those modules to your main Git project.

>[!NOTE]
>
>These best practices apply primarily to [global reference architecture (GRA)](../../architecture/global-reference/examples.md) projects.


## Prepare a development branch

1. Create or check out the development branch in your main Git repository.
1. Require development versions for each module that you maintain.

   In this example, every branch in your main Git repository represents a Composer package version. The recommended naming convention for Composer versions in this scenario is `dev-` followed by the branch name. For example:
   
      - `dev-develop`
      - `dev-qa`

   ```bash
   composer require client/module-example:dev-develop
   ```

1. If another Composer package requires a specific version of a module (for example, `client/module-example 1.0.12`), install it with an alias:

   ```bash
   composer require 'client/module-example:dev-develop as 1.0.12'
   ```

   For the `qa` branch, replace `dev-develop` with `dev-qa`.

## Convert packages to Git repositories

By default, packages do not contain a `.git/` directory. Composer can check out packages from Git instead of using the pre-built Composer packages. The advantage to this approach is that you can easily modify the packages during development.

1. Remove the module from the `vendor/` directory.

   ```bash
   rm -rf vendor/client/module-example
   ```

1. Reinstall the module using the [specified Git source](#prepare-a-development-branch).

   ```bash
   composer install --prefer-source
   ```

1. Verify that the Composer package is now a Git repository:

   ```bash
   cd vendor/client/module-example
   git remote -v
   ```

1. To batch-convert multiple modules into Git repositories (for example "client" modules):

   ```bash
   rm -rf vendor/client
   composer install --prefer-source
   ```

## Start development

1. Create or check out a feature/working branch. The following example shows a branch with the same name as a Jira ticket.

   ```bash
   cd vendor/client/module-example
   git checkout master
   git checkout -b JIRA-1200
   ```

1. After changing branches in a module, see the changes by flushing the Adobe Commerce cache and static content.

   ```bash
   bin/magento cache:flush
   bin/magento module:enable --all --clear-static-content
   ```

## Update the main project with your development

Update your main Git repository by modifying the `composer.lock` file. If your module is new, enable it.

```bash
# to update your packages and all dependencies of the package
composer update --with-all-dependencies client/module-example
# to update just your package
composer update client/module-example
 
bin/magento module:enable Client_ModuleExample
git add composer.lock app/etc/config.php
git commit
```
