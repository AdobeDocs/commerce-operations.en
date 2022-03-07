---
title: "[!DNL Upgrade Compatibility Tool] Prerequisites"
description: Verify that your system meets the requirements necessary to run the [!DNL Upgrade Compatibility Tool] for your Adobe Commerce project. 
---

# [!DNL Upgrade Compatibility Tool] prerequisites

{{commerce-only}}

Running the [!DNL Upgrade Compatibility Tool] helps you identify what you must do **before** upgrading your Adobe Commerce version.

The minimum requirements to run the [!DNL Upgrade Compatibility Tool] are:

| **Requirements** | **Constraints** |
|----------------|-----------------|
| PHP version| >= 7.3 |
| Composer | none |
| Node.js | [Node.js](https://nodejs.org/) (`^12.22.0`, `^14.17.0`, or `>=16.0.0`) |
| Memory limitations | At least 2GB RAM |
| Adobe Commerce Access keys | none |
| Adobe Commerce | none |

You can run the [!DNL Upgrade Compatibility Tool] in any operating system. There is no requirement to run the [!DNL Upgrade Compatibility Tool] where your Adobe Commerce instance is located.

It is necessary for the [!DNL Upgrade Compatibility Tool] to have access to the source code of the Adobe Commerce instance. For example, you can install it on one server and point it at your Adobe Commerce installation on another server. Refer to the [install](../upgrade-compatibility-tool/install.md) topic for more information.
