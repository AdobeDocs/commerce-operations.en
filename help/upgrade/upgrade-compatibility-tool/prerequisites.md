---
title: "[!DNL Upgrade Compatibility Tool] requirements"
description: Verify that your system meets the necessary requirements to run the [!DNL Upgrade Compatibility Tool] in a command-line interface for your Adobe Commerce project. 
---

# Adobe Commerce access keys

{{commerce-only}}

You must have [Adobe Commerce access keys](https://developer.adobe.com/commerce/marketplace/guides/sellers/profile-information/#access-keys) to download and use the [!DNL Upgrade Compatibility Tool]. Add your Adobe Commerce access keys to your `auth.json` file, which is located at `~/.composer` by default.

>[!NOTE]
>
>Check your **COMPOSER_HOME** environment variable to see where the `auth.json` file is located.

The **public key** corresponds to the _username_ whereas the **private key** is the _password_:

## Example of Adobe Commerce access keys

```json
    "http-basic": {
        "repo.magento.com": {
            "username": "YOUR_MAGENTO_PUBLIC_KEY",
            "password": "YOUR_MAGENTO_PRIVATE_KEY"
        }
    },
```

>[!NOTE]
>
> If you do not correctly configure your **Adobe Commerce access keys**, you cannot download the [!DNL Upgrade Compatibility Tool] and the `composer create-project` command will fail.

Run `composer install` in your terminal to install dependencies.

## System requirements

The minimum requirements to use the [!DNL Upgrade Compatibility Tool] in a command-line interface are:

| **Requirements** | **Constraints** |
|----------------|-----------------|
| PHP version| >= 7.3 |
| Composer | no known requirement. |
| Node.js | Node.js versions `^12.22.0`, `^14.17.0`, or `>=16.0.0` (see [Install Node.js](https://nodejs.dev/learn/how-to-install-nodejs)) |
| Memory limitations | At least 2GB RAM. |

[!DNL Upgrade Compatibility Tool] requires [PCNTL](https://www.php.net/manual/en/book.pcntl.php) and other PHP extensions for the execution. Check the required PHP extensions using `composer check-platform-reqs` command:

```bash
# Example output of `composer check-platform-reqs` command for UCT 2.2.6 and PHP 7.4:

$ composer check-platform-reqs
Checking platform requirements for packages in the vendor dir
ext-ctype     *         success provided by symfony/polyfill-ctype
ext-dom       20031129  success
ext-filter    7.4.30    success
ext-json      7.4.30    success
ext-libxml    7.4.30    success
ext-mbstring  *         success provided by symfony/polyfill-mbstring
ext-openssl   7.4.30    success
ext-pcntl     7.4.30    success
ext-pcre      7.4.30    success
ext-phar      7.4.30    success
ext-simplexml 7.4.30    success
ext-tokenizer 7.4.30    success
ext-xml       7.4.30    success
ext-xmlwriter 7.4.30    success
ext-zip       1.15.6    success
php           7.4.30    success
```

Adobe Commerce is only supported on Linux operating systems. You can run the [!DNL Upgrade Compatibility Tool] in a Linux OS. You do not have to run the [!DNL Upgrade Compatibility Tool] where your Adobe Commerce instance is located.

It is necessary for the [!DNL Upgrade Compatibility Tool] to have access to the source code of the Adobe Commerce instance. For example, you can install it on one server and point it at your Adobe Commerce installation on another server. 

If you are running the [!DNL Upgrade Compatibility Tool] against an Adobe Commerce instance with large modules and files, the tool might require a high amount of RAM (at least 2GB). 
