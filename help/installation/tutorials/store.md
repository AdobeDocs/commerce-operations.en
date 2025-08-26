---
title: Configure the store
description: Follow these steps to configure your Adobe Commerce store.
exl-id: ab5e9c43-d914-4de9-98a9-b60d3984b23c
---
# Configure the store

Before you run this command, you must do the following *or* you must [install the application](../advanced.md):

*  [Create or update the deployment configuration](deployment.md)
*  [Create the database schema](database.md)

## Secure installation

{{$include /help/_includes/secure-install.md}}

## Configure the store

Command usage:

```bash
bin/magento setup:store-config:set [--<parameter_name>=<value>, ...]
```

Where the following table defines parameters and values:

|Name|Value|Required?|
|--- |--- |--- |
|`--base-url`|Base URL to use to access your Admin and storefront in any of the following formats:<br><br>- `http[s]://<host or ip>/<your install dir>/`.<br><br>**Note:** The scheme (`http://` or `https://`) and a trailing slash are both required. `<your install dir>` is the docroot-relative path in which to install the application. Depending on how you set up your web server and virtual hosts, the path might be magento2 or it might be blank.<br><br>To access the application on localhost, you can use `http://127.0.0.1/<your install dir>/`.<br><br>- `{{base_url}}` which represents a base URL defined by a virtual host setting or by a virtualization environment like Docker. For example, if you set up a virtual host with the hostname commerce.example.com, you can install the application with `--base-url={{base_url}}` and access the Admin with a URL like `http://commerce.example.com/admin`.|No|
|`--language`|Language code to use in the Admin and storefront.<br><br>(If you have not already done so, you can view the list of language codes by entering `magento info:language:list` from the `bin` directory.)|No|
|`--currency`|Default currency to use in the storefront. <br><br>(If you have not already done so, you can view the list of currencies by entering `magento info:currency:list` from the `bin` directory.)|No|
|`--timezone`|Default time zone to use in the Admin and storefront. (If you have not already done so, you can view the list of time zones by entering `magento info:timezone:list` from the `bin` directory.)|No|
|`--use-rewrites`|`1` means you use web server rewrites for generated links in the storefront and Admin.<br><br>`0` disables the use of web server rewrites. This is the default.|No|
|`--use-secure`|`1` enables the use of Secure Sockets Layer (SSL) in storefront URLs. Make sure that your web server supports SSL before you select this option.<br><br>`0` disables the use of SSL. In this case, all other secure URL options are assumed to also be 0. This is the default.|No|
|`--base-url-secure`|Secure base URL to use to access your Admin and storefront in the following format: `http[s]://<host or ip>/<your install dir>/`|No|
|`--use-secure-admin`|`1` means you use SSL to access the Admin. Make sure that your web server supports SSL before you select this option.<br><br>`0` means you do not use SSL with the Admin. This is the default.|No|
|`--admin-use-security-key`|`1` causes the application to use a randomly generated key value to access pages in the Admin and in forms. These key values help prevent cross-site script forgery attacks. This is the default.<br/><br/>`0` disables the use of the key.|No|
|`--magento-init-params`|Add to any command to customize application initialization parameters<br/><br/>For example: `MAGE_MODE=developer&MAGE_DIRS[base][path]=/var/www/example.com&MAGE_DIRS[cache][path]=/var/tmp/cache`|No|

<!-- Last updated from includes: 2022-09-08 11:33:05 -->
