---
title: Download the [!DNL Upgrade Compatibility Tool]
description: Follow these steps to download the [!DNL Upgrade Compatibility Tool] for your Adobe Commerce project.
---

# Install the [!DNL Upgrade Compatibility Tool]

{{commerce-only}}

The [!DNL Upgrade Compatibility Tool] is a command-line tool that checks an Adobe Commerce customized instance against a specific version by analyzing all modules installed in it. It returns a list of errors and warnings that must be addressed before upgrading to the latest version of Adobe Commerce.

## Prerequisites

To install the [!DNL Upgrade Compatibility Tool], you must install the necessary prerequisites.

See [prerequisites](../upgrade-compatibility-tool/prerequisites.md) for more information.

## Download the [!DNL Upgrade Compatibility Tool]

To download the [!DNL Upgrade Compatibility Tool], run the following command:

```bash
composer create-project magento/upgrade-compatibility-tool uct --repository https://repo.magento.com
```

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

Download the [!DNL Upgrade Compatibility Tool] repository and run `composer install` in your terminal to install dependencies.

>[!WARNING]
>
>If the **Adobe Commerce access keys** are not correctly configured, you cannot download the [!DNL Upgrade Compatibility Tool] and when running the `composer create-project` command it will fail.

### Node.js

To install Node.js, see the Node.js [documentation](https://nodejs.dev/learn/how-to-install-nodejs).

## Third-party extensions

Adobe recommends that you contact your extension vendor to determine whether your extension is fully compatible with Adobe Commerce latest released version.

See [Run the tool](../upgrade-compatibility-tool/run.md) for information about executing the [!DNL Upgrade Compatibility Tool].
