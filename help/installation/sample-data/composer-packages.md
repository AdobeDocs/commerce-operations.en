---
title: Download Composer packages
description:
---

# Download sample data Composer packages

This section discusses how to install sample data if you got the Adobe Commerce or Magento Open Source software in any of the following ways:

*  Downloaded a compressed archive from [Magento](https://magento.com/tech-resources/download).

  If you downloaded an archive from GitHub, this method won't work because the `composer.json` file doesn't contain the `repo.magento.com` URL.

*  Used `composer create-project`

You can use this method of getting sample data for both Adobe Commerce and Magento Open Source, but you must use the same [authentication keys](../prerequisites/authentication-keys.md) that you used to install the application.

>[!NOTE]
>
>If you encounter errors, such as `Could not find package...` or `...no matching package found...`, make sure there aren't any typos in your command. If you still encounter errors, you may not have access to the right Composer repositories, especially if your using Adobe Commerce. Contact [Adobe Commerce Support](https://magento.com/support) for help.

You can use Composer to install sample data either before or after installing the application; however, there might be [additional tasks](remove-or-update.md).

If you're a contributing developer, refer to [Install by cloning repositories](git-repositories.md).

>[!WARNING]
>
>Do not install sample data if your application is set for [production mode](https://experienceleague.adobe.com/docs/commerce-operations/configuration-guide/setup/application-modes.html#production-mode). Switch to [developer mode](https://experienceleague.adobe.com/docs/commerce-operations/configuration-guide/setup/application-modes.html#developer-mode) first. Installing sample data in production mode [fails](https://support.magento.com/hc/en-us/articles/360033824571#symptom-production-mode-trouble-samp-prod-).

To install sample data using the command line, enter the following command as the file system owner in the `<app_root>` directory:

```bash
bin/magento sampledata:deploy
```

>[!WARNING]
>
>If you're installing sample data _after_ installing the application, you must also run the following command to update the database and schema in the `<app_root>` directory:

```bash
bin/magento setup:upgrade
```

You are required to [authenticate](../prerequisites/authentication-keys.md) to complete the action.

## Authentication error

The following authentication error might display:

```terminal
[Composer\Downloader\TransportException]
The 'https://repo.magento.com/packages.json' URL required authentication.
You must be using the interactive console to authenticate
```

If the error displays, change to your application installation directory and run `composer update`, which will prompt you for your [authentication keys](../prerequisites/authentication-keys.md).

## Complete the sample data installation

{{%include /help/_includes/sample-data-complete.md}}
