---
title: Install the [!DNL Data Migration Tool]
description: Learn how to install the [!DNL Data Migration Tool] to transfer data between Magento 1 and Magento 2.
---

# Install the [!DNL Data Migration Tool]

>[!INFO]
>
>Versions of Magento and [!DNL Data Migration Tool] must match.


Make sure you are using *the same released version* of both Magento 2 and the [!DNL Data Migration Tool]. For example, for Magento version 2.2.0, you must also use the [!DNL Data Migration Tool] version 2.2.0.

## Check your version

USe on of the following methods to verify your version of Magento:

- [Composer](#composer-metapackage)
- [GitHub repository](#github-repository)

### Composer metapackage

If you downloaded the Magento software using a [Composer](https://glossary.magento.com/composer) metapackage, enter the following command:

```bash
php <magento_root>/bin/magento --version
```

### GitHub repository

If you cloned the Magento 2 GitHub repository, enter the following commands:

```bash
cd <your Magento 2 clone directory>
```

```bash
git branch
```

If you're currently in the `develop` branch, you must change to a <a href="https://devdocs.magento.com/guides/v2.4/install-gde/install/cli/dev_downgrade.html">released branch</a> before you continue.

If you haven't installed the Magento software yet, [install it now](https://devdocs.magento.com/guides/v2.4/install-gde/bk-install-guide.html).
If you're cloning the GitHub repository, make sure you check out a release tag as discussed in [(Contributor) Clone the Magento repository](https://devdocs.magento.com/guides/v2.4/install-gde/prereq/dev_install.html).

## Find released versions of [!DNL Data Migration Tool]

Go to the [Releases](https://github.com/magento/data-migration-tool/releases) page of the [!DNL Data Migration Tool] GitHub repository to find available released versions.

## Install the [!DNL Data Migration Tool]

You may install the [!DNL Data Migration Tool] from:

- [`repo.magento.com`](#install-from-repomagentocom)
- [GitHub](#install-from-github)

Before installing, make sure you have:

-  Completed all tasks mentioned in the [Preconditions](prerequisites.md) section
-  [Verified the version](install.md#check-your-version) of the Magento 2 software

### Install from `repo.magento.com`

To install the [!DNL Data Migration Tool], you must update `composer.json` in the Magento root installation directory to provide the location of the [!DNL Data Migration Tool] package.

1. Log in to your Magento server as, or switch to, <a href="https://devdocs.magento.com/guides/v2.4/install-gde/prereq/file-sys-perms-over.html">the file system owner</a>.
1. Change to Magento 2 root directory.
1. Enter the following commands:

   ```bash
   composer config repositories.magento composer https://repo.magento.com
   ```

   ```bash
   composer require magento/data-migration-tool:<version>
   ```

   Where `<version>` must match the version of the Magento 2 codebase.

   For example, for version 2.2.0, enter:

   ```bash
   composer config repositories.magento composer https://repo.magento.com
   ```

   ```bash
   composer require magento/data-migration-tool:2.2.0
   ```

1. When prompted, enter your <a href="https://devdocs.magento.com/guides/v2.4/install-gde/prereq/connect-auth.html">authentication keys</a>. Your public key is your username; your private key is your password.

### Install from GitHub

If you've cloned Magento 2 from the GitHub repository, follow the steps below to install the [!DNL Data Migration Tool].

1. Log in to your Magento server as, or switch to, <a href="https://devdocs.magento.com/guides/v2.4/install-gde/prereq/file-sys-perms-over.html">the file system owner</a>.
1. Change to Magento 2 root directory.
1. Enter the following commands:

   ```bash
   composer config repositories.data-migration-tool git https://github.com/magento/data-migration-tool
   ```

   ```bash
   composer require magento/data-migration-tool:<version>
   ```

   where `<version>` must match the version of the Magento 2 codebase.

   For example, for version 2.2.0, enter:

   ```bash
   composer config repositories.data-migration-tool git https://github.com/magento/data-migration-tool
   ```

   ```bash
   composer require magento/data-migration-tool:2.2.0
   ```

### Check version of installed [!DNL Data Migration Tool]

1. Change to your [!DNL Data Migration Tool] directory: `<vendor>/magento/data-migration-tool`.

1. Open [`composer.json`](https://github.com/magento/data-migration-tool/blob/2.4/composer.json) in a text editor.

1. The `version` entry in that file is the version of the [!DNL Data Migration Tool].
