---
title: Install the [!DNL Upgrade Compatibility Tool]
description: Follow these steps to install the [!DNL Upgrade Compatibility Tool] for your Adobe Commerce project.
---

# Install the [!DNL Upgrade Compatibility Tool]

{{commerce-only}}

The [!DNL Upgrade Compatibility Tool] is a command-line tool that checks an Adobe Commerce customized instance against a specific version by analyzing all modules installed in it. It returns a list of errors and warnings that must be addressed before upgrading to the latest version of Adobe Commerce.

## Workflow

The following diagram shows the expected workflow when running the [!DNL Upgrade Compatibility Tool]:

![[!DNL Upgrade Compatibility Tool] Diagram](../../assets/upgrade-guide/mvp-diagram-v3.png)

## Who is the [!DNL Upgrade Compatibility Tool] for?

The following use case describes the typical process for an Adobe Commerce partner to upgrade a client's instance:

1. A partner's Software Engineer downloads the [!DNL Upgrade Compatibility Tool] package from the [Adobe Commerce repository](https://repo.magento.com/) and executes it during the beta phase of the newest Adobe Commerce release. See the [Download the [!DNL Upgrade Compatibility Tool]](../upgrade-compatibility-tool/install.md#download-the-upgrade-compatibility-tool) topic for more information.
1. The Software Engineer generates a vanilla instance for the specific version of Adobe Commerce that is currently installed. See the [Contributor guide](https://devdocs.magento.com/contributor-guide/contributing.html#vanilla-pr) for more information on using the `instance` command to generate a vanilla installation.
1. The Software Engineer sees that there are several customized areas broken in the inventory and catalog modules and they also get a complexity score of X. See the [Developer](../upgrade-compatibility-tool/developer.md) guide for more information on the complexity score.
1. With this information, the Software Engineer is able to understand the complexity of the upgrade and is able to relay this information back to the partner's Account Manager.
1. The Account Manager creates a timeline and cost for the Adobe Commerce upgrade, which allows them to get their manager's approval.
1. With their manager's approval, the Software Engineer works on the required code modifications to fix the broken modules.
1. The Software Engineer runs the [!DNL Upgrade Compatibility Tool] one more time with an Adobe Commerce pre-release to ensure that there are no new issues and that their code changes fixed the problems found during the beta phase.
1. Everything checks out and the Software Engineer pushes the code to a staging environment where regression tests confirm that all tests are green, which allows them to release the latest Adobe Commerce version to production the same day that the Adobe Commerce pre-release is released.

   ![[!DNL Upgrade Compatibility Tool] audience](../../assets/upgrade-guide/audience-uct-v3.png)

>[!NOTE]
>
>A vanilla instance is a clean installation of a specified version tag or branch for a specific release version.

## Prerequisites

See [prerequisites](../upgrade-compatibility-tool/prerequisites.md) for more information.

>[!NOTE]
>
>You can run the [!DNL Upgrade Compatibility Tool] in any operating system. There is no requirement to run the [!DNL Upgrade Compatibility Tool] where your Adobe Commerce instance is located. It is necessary for the [!DNL Upgrade Compatibility Tool] to have access to the source code of the Adobe Commerce instance. For example, you can install the tool on one server and point it at your Adobe Commerce installation on another server.

If you are running the [!DNL Upgrade Compatibility Tool] against an Adobe Commerce instance with large modules and files, the tool might require a high amount of RAM, at least 2GB RAM.

### Recommended actions

Adobe Commerce best practices recommend to avoid having two modules with the same name. If this happens, the [!DNL Upgrade Compatibility Tool] shows a segmentation fault error.

To avoid this error it is recommended to run the `bin` command with the added option `-m`:

```bash
bin/uct upgrade:check /<dir>/<instance-name> --coming-version=2.4.1 -m /vendor/<vendor-name>/<module-name>
```

>[!NOTE]
>
>The `<dir>` value is the directory where your Adobe Commerce instance is located.

The `-m` option allows the [!DNL Upgrade Compatibility Tool] to analyze each specific module independently to avoid encountering two modules with the same name in your Adobe Commerce instance.

This command option also allows the [!DNL Upgrade Compatibility Tool] to analyze a folder containing several modules:

```bash
bin/uct upgrade:check /<dir>/<instance-name> --coming-version=2.4.1 -m /vendor/<vendor-name>/
```

This recommendation also helps with memory issues that can occur when executing the [!DNL Upgrade Compatibility Tool].

## Download the [!DNL Upgrade Compatibility Tool]

To download the [!DNL Upgrade Compatibility Tool], run the following command:

```bash
composer create-project magento/upgrade-compatibility-tool uct --repository https://repo.magento.com
```

## Install

To install the [!DNL Upgrade Compatibility Tool], you must install the necessary prerequisites:

*  Adobe Commerce access keys
*  Composer
*  Node.js

### Adobe Commerce access keys

You must have [Adobe Commerce access keys](https://devdocs.magento.com/marketplace/sellers/profile-information.html#access-keys) to download and use the [!DNL Upgrade Compatibility Tool]. Add your Adobe Commerce access keys to your `auth.json` file, which is located at `~/.composer` by default.

>[!WARNING]
>
>Check your **COMPOSER_HOME** environment variable to see where the `auth.json` file is located.

The **public key** corresponds to the _username_ whereas the **private key** is the _password_:

### Example of Adobe Commerce access keys

```json
    "http-basic": {
        "repo.magento.com": {
            "username": "YOUR_MAGENTO_PUBLIC_KEY",
            "password": "YOUR_MAGENTO_PRIVATE_KEY"
        }
    },
```

### Composer

Clone the [!DNL Upgrade Compatibility Tool] repository and run `composer install` in your terminal to install dependencies.

>[!WARNING]
>
>If the **Adobe Commerce access keys** are not correctly configured, the [!DNL Upgrade Compatibility Tool] will not install and you will get errors when running the `composer install` command.

### Node.js

To install Node.js, see the Node.js [documentation](https://nodejs.dev/learn/how-to-install-nodejs).

## Third-party extensions

Adobe recommends that you contact your extension vendor to determine whether your extension is fully compatible with Adobe Commerce 2.4.x.

See [Run the tool](../upgrade-compatibility-tool/run.md) for information about executing the [!DNL Upgrade Compatibility Tool].
