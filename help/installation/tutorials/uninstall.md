---
title: Uninstall or reinstall Adobe Commerce
description: Follow these steps to uninstall and reinstall on-premises installations of Adobe Commerce.
exl-id: fbaeee2c-8da0-4c89-a6d1-882a65014520
---
# Uninstall or reinstall Adobe Commerce

Before you use these commands, you must [install the application](../tutorials/install.md).

## Update the application

To update the application:

*  If you installed the software from an archive or if you used 'composer-create-project', see the [Upgrade Guide](../../upgrade/overview.md).
*  If you are a contributing developer (that is, you used `git clone`), see [Update the application](../../upgrade/developer/git-installs.md).

## Reinstall the application

The way you reinstall the application from the command line depends on your role:

*  If you installed the software from an archive or if you used 'composer-create-project', see [Update installation dependencies](https://developer.adobe.com/commerce/contributor/guides/install/update-dependencies/).
*  If you're a contributing developer (that is, you started using `git clone`), see [Update installation dependencies](https://developer.adobe.com/commerce/contributor/guides/install/update-dependencies/).

## Uninstall the application

Uninstalling the application drops and restores the database, removes the deployment configuration, and clears directories under `var`.

To uninstall the application, enter the following command:

```bash
bin/magento setup:uninstall
```

The following message displays to confirm a successful uninstallation:

```
[SUCCESS]: Magento uninstallation complete.
```

## Optionally keeping generated files

By default, `bin/magento setup:upgrade` clears compiled code and the cache. Typically, you use `bin/magento setup:upgrade` to update components and each component can require different compiled classes.

However, in some situations (particularly, deploying to production), you might wish to avoid clearing compiled code because it can take some time. (The cache is still cleared.) To update the database schema and data *without* clearing compiled code, enter:

```bash
bin/magento setup:upgrade --keep-generated
```

>[!WARNING]
>
>The optional `--keep-generated` option should be used in limited circumstances by experienced system integrators *only*. This option should *never* be used in a development environment. Improper use of this optional parameter can cause errors during code execution.

## Install the application

*  [Install using the command line](../advanced.md)
