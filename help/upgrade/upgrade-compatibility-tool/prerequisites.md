---
title: "[!DNL Upgrade Compatibility Tool] Prerequisites"
description: Verify that your system meets the requirements necessary to run the [!DNL Upgrade Compatibility Tool] for your Adobe Commerce project. 
---

# Prerequisites

{{commerce-only}}

The minimum requirements to use the [!DNL Upgrade Compatibility Tool] are:

| **Requirements** | **Constraints** |
|----------------|-----------------|
| PHP version| >= 7.3 |
| Composer | none known requirement |
| Node.js | [Node.js](https://nodejs.org/) (`^12.22.0`, `^14.17.0`, or `>=16.0.0`) |
| Memory limitations | At least 2GB RAM |

You can run the [!DNL Upgrade Compatibility Tool] in several operating systems (Windows is not supported). You do not have to run the [!DNL Upgrade Compatibility Tool] where your Adobe Commerce instance is located.

It is necessary for the [!DNL Upgrade Compatibility Tool] to have access to the source code of the Adobe Commerce instance. For example, you can install it on one server and point it at your Adobe Commerce installation on another server. 

If you are running the [!DNL Upgrade Compatibility Tool] against an Adobe Commerce instance with large modules and files, the tool might require a high amount of RAM (at least 2GB). 

## Adobe Commerce access keys

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

## Composer

Download the [!DNL Upgrade Compatibility Tool] repository and run `composer install` in your terminal to install dependencies.

>[!WARNING]
>
>If the **Adobe Commerce access keys** are not correctly configured, you cannot download the [!DNL Upgrade Compatibility Tool] and when running the `composer create-project` command it will fail.

## Node.js

To install Node.js, see the Node.js [documentation](https://nodejs.dev/learn/how-to-install-nodejs).

## Third-party extensions

Adobe recommends that you contact your extension vendor to determine whether your extension is fully compatible with Adobe Commerce latest released version.
