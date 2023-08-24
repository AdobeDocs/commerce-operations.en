---
title: Composer tips and tricks
description: Learn about common Composer development tasks and guidance for quickly resolving issues.
feature: Best Practices
---

# Composer tips and tricks

You may encounter issues when developing Adobe Commerce modules with Composer. These best practices describe some common tasks to make development easier and help you quickly resolve issues.

>[!NOTE]
>
>These best practices apply primarily to [global reference architecture (GRA)](global-reference-architecture.md) projects.

## Speed up Composer

Install [https://github.com/hirak/prestissimo](https://github.com/hirak/prestissimo) to speed up Composer with asynchronous package downloads.

```bash
composer global require hirak/prestissimo
```

If you encounter problems, uninstall `prestissimo`:

```bash
composer global remove hirak/prestissimo
```

## Resolve vague versioning issues

Composer sometimes gets deadlocked with package versions. You may see messages about versions that are incompatible even if they are not. Before debugging compatibility issues, try resetting Composer:

1. Clear the Composer cache.

   ```bash
   composer clearcache
   ```

1. Remove the `composer.lock` file for all packages.

   ```bash
   rm -rf vendor/* composer.lock
   ```

1. Reinstall the Composer packages.

   ```bash
   composer install
   ```

>[!TIP]
>
>These steps update all packages to the latest available version. Revert the `composer.lock` file from Git to undo these upgrades.

## Check for possible updates in client packages

1. Find out which packages might be outdated.

   ```bash
   composer outdated
   ```

1. Filter using wildcards and/or the `--minor-only` option to skip backward-incompatible upgrades:

   ```bash
   composer outdated 'magento/*'
   composer outdated --minor-only 'magento/*'
   ```

## Find out if a module is installed

View details about all installed packages on a Git branch.

```bash
composer info
```

Run `composer install` after switching Git branches and before running `composer info`. Otherwise, Composer shows details about the previous branch that you had checked out.

>[!TIP]
>
>To filter or search, use one of the following commands.
>
>```bash
>composer info '*magento*'
>composer info | grep magento
>```

## Find out why a (specific version of a) package is installed

Sometimes, Composer installs the latest available version of a package because of a strict dependency in another package.

Find out if there is a strict dependency in another package.

```bash
composer why client/module-example
```

If the results show a list of metapackages or another package that is not explicitly required, run the command on that package:

```bash
composer why example/metapackage
```

## Find out why a package is not installed

Sometimes, Composer does not install a package because it conflicts with another package, another package replaces it, or you haven't defined it is as a dependency.

Find out why a package is not installed.

```bash
composer why-not client/module-example
```

## Host a private Composer repository

If you require a private Composer repository, use [Private Packagist](https://packagist.com/) or [JFrog Artifactory](https://jfrog.com/integration/php-composer-repository/). Do not use [Satis](https://github.com/composer/satis).

- **Private Packagist** is secure, costs around $600 USD per year with three admin users and is hosted.

- **JFrog Artifactory** starts at $1,176 USD per year. It is not as commonly used as Packagist, but it supports more languages than PHP.

- **Satis** has no built-in security, no automation, and requires additional hosting. It is only free if your time is also free.

## Versioning packages

Use [Semantic Versioning 2.0.0](https://semver.org/spec/v2.0.0.html) as described mentioned in the Adobe Commerce [versioning schema](https://developer.adobe.com/commerce/php/development/versioning/). Do not reinvent the wheel.

For Adobe Commerce module dependencies, follow the [module version dependencies](https://developer.adobe.com/commerce/php/development/versioning/dependencies/) documentation.

Do not use the version definition inside the `composer.json` file. Instead, use Git tags for versions. See [Composer Versions and constraints](https://getcomposer.org/doc/articles/versions.md#versions-and-constraints).

## Where to put modules that come in an archive file and not through Composer

Create a Git repository for modules in an archive and host them yourself. Every Adobe Commerce module has a `composer.json` file. After you host it in Git and synchronize it with Private Packagist, you can install it with Composer.

When you receive a new version of the package, upload the code to Git, tag it, and install the new version with Composer.
