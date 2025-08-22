---
title: Example using CLI commands
description: See an example of how to set shared, system-specific, and sensitive values in your development system using the command line.
exl-id: d0058e9f-a5a9-48a6-9c66-c61515666335
---
# Example using CLI commands

This example shows how to set shared, system-specific, and sensitive values in your development system, then deploy those values to your production system.
This is done by using a combination of shared configurations, the `config.php` file, and Commerce CLI command.

This example uses the following configuration settings:

- **Vat Number** and **Store Name** for the shared configuration settings.

   These are found under **Stores** > Settings > **Configuration** > General > **General**.

- **Send Emails To** for the sensitive configuration value.

   This is found under **Stores** > Settings > **Configuration** > General > **Contacts**.

- **Default Email Domain** for the system-specific configuration value.

   This is found under **Stores** > Settings > **Configuration** > Customers > **Customer Configuration** > **Create New Account Options**.

You can use the same procedure shown in this example to configure any settings in the following references:

- [Sensitive and system-specific configuration paths reference](../reference/config-reference-sens.md)
- [Payment configuration paths reference](../reference/config-reference-payment.md)
- [Other configuration paths reference](../reference/config-reference-general.md)
- [Commerce Enterprise B2B Extension configuration paths reference](../reference/config-reference-b2b.md)

## Before you begin

Before you begin, set up file system permissions and ownership as discussed in [Prerequisite for development, build, and production systems](../deployment/prerequisites.md).

## Assumptions

This topic provides an example of modifying the production system configuration. You can choose different configuration options if you wish.

For the purposes of this example, we assume the following:

- You use Git source control
- The development system is available in a Git remote repository named `mconfig`
- Your Git working branch is named `m2.2_deploy`

## Step 1: Set the configuration in the development system

To set the default locale and weight units in your development system:

1. Log in to the Admin.
1. Click **Stores** > Settings > **Configuration** > General > **General**.
1. If you have more than one website available, use the **Store View** list in the upper left corner to switch to a different website as the following figure shows.

   ![Switch websites](../../assets/configuration/split-deploy-switch-website.png)

1. In the right pane, expand **Store Information**.
1. If necessary, clear the **Use Default** checkbox next to the **VAT Number** and **Store Name** fields.
1. Enter a number in the field (for example, `12345`).
1. In the **Store Name** field, enter a value (like `My Store`).
1. Click **Save Config**.
1. In the left navigation, under General, click **Contacts**.
1. In the right pane, expand **Email Options**.
1. If necessary, clear the **Use Default** checkbox next to the **Send Emails To** field.
1. Enter an e-mail address in the field.
1. Click **Save Config**.
1. Use the **Store View** list to select the **Default Config** as the following figure shows.

   ![Switch to the default config](../../assets/configuration/split-deploy-default-config.png)

1. In the left pane, click Customers > **Customer Configuration**.
1. In the right pane, expand **Create New Account Options**.
1. If necessary, clear the **Use system value** checkbox next to the **Default Email Domain** field.
1. Enter a domain name in the field.
1. Click **Save Config**.
1. If prompted, flush the cache.

## Step 2: Update the configuration

Now that you have changed the configuration in the Admin, write the shared configuration to a file as using the following steps:

{{$include /help/_includes/config-save-config.md}}

Even though `app/etc/env.php` (the system-specific configuration) was updated, do not check it in to source control.
You will create the same configuration settings on your production system later in this procedure.

## Step 3: Update your build system and generate files

Now that you have committed your changes to the shared configuration to source control, you can pull those changes into your build system, compile the code, and generate static files.

{{$include /help/_includes/config-update-build-system.md}}

## Step 4: Update the production system

The last step in the process is to update your production system. You must do it in two parts:

- Update the sensitive and system-specific settings
- Update the shared settings

### Update the sensitive and system-specific settings

To set the sensitive and system-specific settings using environment variables, you must know the following:

- Scope for each setting

   If you followed the instructions in Step 1, the scope for **Send Emails To** is website and the scope for **Default Email Domain** is global (that is, the Default Config scope).

   You need the website code to set the **Send Emails To** configuration value.

   For more information on finding this value, see: [Use environment variables to override configuration settings](../reference/override-config-settings.md#environment-variables).

- Configuration paths for the settings used in this example:

   | Setting name         | Configuration path                     |
   | -------------------- | -------------------------------------- |
   | Send Emails To       | `contact/email/recipient_email`        |
   | Default Email Domain | `customer/create_account/email_domain` |

   For all sensitive and system-specific configuration paths, see: [Sensitive and system-specific configuration paths reference](../reference/config-reference-sens.md).

### Set the variables using CLI commands

Use the following CLI commands to set system-specific and sensitive configuration settings:

- `magento config:set` for system-specific settings
- `magento config:sensitive:set` for sensitive settings

To set the system-specific setting **Default Email Domain**, which is in the default scope, use the following command:

```bash
bin/magento config:set customer/create_account/email_domain <email domain>
```

You do not need to use the scope in the command because it is the default scope.

To set values for **Send Emails To**, however, you must know the scope type (`website`) and the scope code, which is likely different on every site.

Example:

``` unix
bin/magento config:sensitive:set contact/email/recipient_email --scope=website --scope-code=<website code> <email address>
```

### Update the shared settings

This section discusses how to pull all the changes you made on your development and build systems to a production environment, which updates the shared configuration settings (Store Name and VAT Number).

{{$include /help/_includes/config-update-prod-system.md}}

### Verify configuration settings in the Admin

To verify the configuration settings:

1. Log in to your production system's Admin.
1. Click **Stores** > Settings > **Configuration** > General > **General**.
1. Use the **Store View** list in the upper left corner to switch to a different website.

   The shared configuration options that you set in the development system are displayed similar to the following.

   ![Check settings in the production system](../../assets/configuration/split-deploy-verify-storeinfo.png)

   >[!INFO]
   >
   >The **Store Name** field is editable in the website scope but if you switch to the Default Config scope, it is not editable. This is the result of how you set the options in the development system. The value of **VAT Number** is not editable in website scope.

1. If you have not already done so, switch to Default Config scope.
1. In the left navigation, under General, click **Contacts**.

   The **Send Emails To** field is not editable, as the following figure shows. This is a sensitive setting.

   ![Check settings in the production system](../../assets/configuration/split-deploy-verify-contacts.png)

1. In the left pane, click Customers > **Customer Configuration**.
1. In the right pane, expand **Create New Account Options**.

   The value of the **Default Email Domain** field is displayed as follows. This is a system-specific setting.

   ![Check settings in the production system](../../assets/configuration/split-default-domain.png)

<!-- Last updated from includes: 2024-07-18 15:50:54 -->
