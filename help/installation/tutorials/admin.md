---
title: Create, edit, or unlock an administrator account
description: Follow these steps to manage the administrator account of your Adobe Commerce Admin application.
feature: Install, User Account
exl-id: d87871a1-717d-4662-b84d-98a018518286
---
# Create, edit, or unlock an administrator account

Before you can use this command, you must do the following:

-  [Create the deployment configuration](deployment.md)
-  [Enable at minimum the Magento_Authorization and Magento_User modules](manage-modules.md)
-  Create the database schema

>[!NOTE]
>
>The simplest way to create the database is to use the command `magento setup:upgrade`.

## Create or edit an administrator

Use this command to create an administrator or to edit an existing administrator.

>[!NOTE]
>
>If you're editing an administrator, only the `first name`, `last name`, and `password` can be edited.

Command usage:

```bash
bin/magento admin:user:create [--<parameter_name>=<value>, ...]
```

Where the following table defines parameters and values:

|Name|Value|Required?|
|--- |--- |--- |
|`--admin-firstname`|Administrator user's first name.|Yes|
|`--admin-lastname`|Administrator user's last name.|Yes|
|`--admin-email`|Administrator user's e-mail address.|Yes|
|`--admin-user`|Administrator username.|Yes|
|`--admin-password`|Administrator user password. The password must be at least 7 characters in length and must include at least one alphabetic and at least one numeric character. <br><br>We recommend a longer, more complex password. If the password string contains special characters that require literal interpretation (such as backslashes or spaces), enclose the password in single quotations.|Yes|
|`--magento-init-params`|Add to any command to customize application initialization parameters<br/><br/>For example: `MAGE_MODE=developer&MAGE_DIRS[base][path]=/var/www/example.com&MAGE_DIRS[cache][path]=/var/tmp/cache`|No|

Example of usage:

```bash
bin/magento admin:user:create --admin-firstname=John --admin-lastname=Doe --admin-email=j.doe@example.com --admin-user=j.doe --admin-password=A0b9%t3g
```

```
Created Magento administrator user named j.doe
```

If you do not specify any of the required params, the application asks about them in the CLI:

```bash
bin/magento admin:user:create
```

```
Admin user: John
Admin password:
Admin email: j.doe.young@example.com
Admin first name: John
Admin last name: Doe Young
```

```
Created Magento administrator user named John
```

The following example updates `first name`, `last name`, and `password` of `j.doe` admin user:

```bash
bin/magento admin:user:create --admin-firstname="John X" --admin-lastname="Doe X" --admin-email=j.doe@example.com --admin-user=j.doe --admin-password=A1234567
```

```
Created Magento administrator user named j.doe
```

## Unlock an administrator account

Use this command to unlock the account of an administrator that was locked, typically because of multiple incorrect login attempts.

```bash
bin/magento admin:user:unlock {username}
```

You must specify the administrator's username. Example:

```bash
bin/magento admin:user:unlock admin
```

```
The user account "admin" has been unlocked
```

If the account is either not unlocked or if there was a problem, the following message displays:

```
The user account "admin" was not locked or could not be unlocked
```

Verify that the user is an administrator, the user is active, and that the account is locked. To view the list of locked users in the Admin, log in as an administrator and click **System** > **Permissions** > **Locked Users**.

If the account doesn't exist, the following message displays:

```
Couldn't find the user account "bob"
```
