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

If you are running the [!DNL Upgrade Compatibility Tool] against an Adobe Commerce instance with large modules and files, the tool might require a high amount of RAM (at least 2GB). You can use the `[=MODULE-PATH]` option in your command to specify the module path directory to avoid issues due to a low memory limitation:

   ```bash
   bin/uct upgrade:check <dir> -m[=MODULE-PATH]
   ```

Where arguments are as follows:

- `<dir>`: Adobe Commerce installation directory.
- `[=MODULE-PATH]`: Specific module path directory.

## Recommended actions

### Optimize your results

The [!DNL Upgrade Compatibility Tool] provides a report containing results with all issues identified on your project by default. You can optimize the results to focus on those issues that you must fix to complete the upgrade:

- Use the option `--ignore-current-version-compatibility-issues`, which suppresses all known critical issues, errors and warnings against your current Adobe Commerce version. It only provides errors against the version you are trying to upgrade to.
- Add the `--min-issue-level` option, this setting allows to set the minimum issue level, to help prioritize only the most important issues with your upgrade.
- If you want to analyze only a certain vendor, module, or even directory, you can specify the path as an option as well. Run the `bin` command with the added option `-m`. This allows the [!DNL Upgrade Compatibility Tool] to analyze a specific module independently, and helps with memory issues that can occur when executing the [!DNL Upgrade Compatibility Tool].

### Follow Adobe Commerce Best Practices

- Avoid having two modules with the same name. 
- Follow Adobe Commerce [coding standards](https://devdocs.magento.com/guides/v2.4/coding-standards/bk-coding-standards.html). 

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
