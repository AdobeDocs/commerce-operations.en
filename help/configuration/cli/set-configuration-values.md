---
title: Set configuration values
description: Learn how to set configuration values and change locked Admin values in Adobe Commerce. Discover advanced configuration commands and techniques.
exl-id: 1dc2412d-50b3-41fb-ab22-3eccbb086302
---
# Set configuration values

{{file-system-owner}}

This topic discusses advanced configuration commands that you can use to:

- Set any configuration option from the command line
- Optionally lock any configuration option so its value cannot be changed in the Admin
- Change a configuration option that is locked in the Admin

You can use these commands to set the Commerce configuration manually or using scripts. You set configuration options using a _configuration path_, which is a `/`-delimited string that uniquely identifies that configuration option. You can find configuration paths in the following references:

- [Sensitive and system-specific configuration paths reference](../reference/config-reference-sens.md)
- [Payment configuration paths reference](../reference/config-reference-payment.md)
- [General configuration paths reference](../reference/config-reference-general.md)
- [Commerce Enterprise B2B Extension configuration paths reference](../reference/config-reference-b2b.md)

You can set values at the following times:

- Before you install Commerce, you can set configuration values for the default scope only, because it is the only valid scope.

- After you install Commerce, you can set configuration values for any website or store view scope.

Use the following commands:

- `bin/magento config:set` sets any non-sensitive configuration value by its configuration path
- `bin/magento config:sensitive:set` sets any sensitive configuration value by its configuration path
- `bin/magento config:show` shows saved configuration values; values of encrypted settings are displayed as asterisks

## Prerequisites

To set a configuration value, you must know at least one of the following:

- The configuration path
- To set a configuration value for a particular scope, you must know the scope code.

  To set a configuration value for the default scope, you do not need to do anything.

### Find the configuration path

See the following references:

- [Sensitive and system-specific configuration paths reference](../reference/config-reference-sens.md)
- [Payment configuration paths reference](../reference/config-reference-payment.md)
- [Other configuration paths reference](../reference/config-reference-general.md)
- [Commerce Enterprise B2B Extension configuration paths reference](../reference/config-reference-b2b.md)

### Find the scope code

You can find the scope code either in the Commerce database or in the Commerce Admin.

**To find the scope code in the Admin**:

1. Log in to the Admin as a user who can view websites and store views.
1. Click **[!UICONTROL Stores]** > Settings > **[!UICONTROL All Stores]**.
1. In the right pane, click the name of the website or store view to see its code.

   The following figure shows a sample website code.

   ![Get a website or store view code from the Admin](../../assets/configuration/website-code.png)

1. Continue with [Set values](#set-values).

**To find the scope code in the database**:

Scope codes for websites and store views are stored in the Commerce database in the `store_website` and `store` tables, respectively.

1. Connect to the Commerce database.

   ```bash
   mysql -u <Commerce database username> -p
   ```

1. Enter the following commands:

   ```shell
   use <Commerce database name>;
   ```

   ```shell
   SELECT * FROM store;
   ```

   ```shell
   SELECT * FROM store_website;
   ```

   A sample result follows:

   ```
   [mysql]> SELECT * FROM store_website;
   +------------+-------+--------------+------------+------------------+------------+
   | website_id | code  | name         | sort_order | default_group_id | is_default |
   +------------+-------+--------------+------------+------------------+------------+
   |          0 | admin | Admin        |          0 |                0 |          0 |
   |          1 | base  | Main Website |          0 |                1 |          1 |
   |          2 | test1 | Test Website |          0 |                3 |          0 |
   +------------+-------+--------------+------------+------------------+------------+
   ```

   Use the value in the `code` column.

1. Continue with the next section.

## Set values

**To set system-specific configuration values**:

```bash
bin/magento config:set [--scope="..."] [--scope-code="..."] [-le | --lock-env] [-lc | --lock-config] path value
```

**To set sensitive configuration values**:

```bash
bin/magento config:sensitive:set [--scope="..."] [--scope-code="..."] path
```

The following table describes the `set` command parameters:

| Parameter | Description                                                                                                                                                                                                                                                                                                          |
| --- |----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `--scope` | The scope of the configuration. The possible values are `default`, `website`, or `store`. The default is `default`.                                                                                                                                                                                                  |
| `--scope-code` | The scope code of configuration (website code or store view code)                                                                                                                                                                                                                                                    |
| `-e or --lock-env` | Either locks the value so it cannot be edited in the Admin or changes a setting that is already locked in the Admin. The command writes the value to the `<Commerce base dir>/app/etc/env.php` file.                                                                                                                 |
| `-c or --lock-config` | Either locks the value so it cannot be edited in the Admin or changes a setting that is already locked in the Admin. The command writes the value to the `<Commerce base dir>/app/etc/config.php` file. The `--lock-config` option overwrites `--lock-env` if you specify both options.                              |
| `path` | _Required_. The configuration path                                                                                                                                                                                                                                                                                   |
| `value` | _Required_. The value of the configuration. Although it can be passed as a separate argument in a CLI command, Adobe recommends that you don't specify it in the original command. Instead, run the command without the value, and then enter the value when prompted. Using this method prevents writing  writing sensitive access values to bash_history, which is the safest way to set the config.|

>[!INFO]
>
>As of Commerce 2.2.4, the `--lock-env` and `--lock-config` options replace the `--lock` option.
>
>If you use the `--lock-env` or `--lock-config` option to set or change a value, you must use the [`bin/magento app:config:import` command](../cli/import-configuration.md) to import the setting before you access the Admin or storefront.

If you enter an incorrect configuration path, this command returns an error

```text
The "wrong/config/path" does not exist
```

See one of the following sections for more information:

- [Set configuration values that can be edited in the Admin](#set-configuration-values-that-can-be-edited-in-the-admin)
- [Set configuration values that cannot be edited in the Admin](#set-configuration-values-that-cannot-be-edited-in-the-admin)

### Set configuration values that can be edited in the Admin

Use `bin/magento config:set` _without_ `--lock-env` or `--lock-config` to write the value to the database. Values you set this way can be edited in the Admin.

Some examples for setting a store base URL follow:

Set the base URL for the default scope:

```bash
bin/magento config:set web/unsecure/base_url http://example.com/
```

Set the base URL for the `base` website:

```bash
bin/magento config:set --scope=websites --scope-code=base web/unsecure/base_url http://example2.com/
```

Set the base URL for the `test` store view:

```bash
bin/magento config:set --scope=stores --scope-code=test web/unsecure/base_url http://example3.com/
```

### Set configuration values that cannot be edited in the Admin

If you use the `--lock-env`  option as follows, the command saves the configuration value in `<Commerce base dir>/app/etc/env.php` and disables the field for editing this value in the Admin.

```bash
bin/magento config:set --lock-env --scope=stores --scope-code=default web/unsecure/base_url http://example3.com
```

You can use the `--lock-env` option to set configuration values if Commerce is not installed. However, you can set values only for the default scope.

>[!INFO]
>
>The `env.php` file is system specific. You should not transfer it to another system. You can use it to overwrite configuration values from the database. For example, you can take a database dump from another system and overwrite the `base_url` and other values so you do not have to modify the database.

If you use the `--lock-config` option as follows, the configuration value is saved in `<Commerce base dir>/app/etc/config.php`. The field for editing this value in the Admin is disabled.

```bash
bin/magento config:set --lock-config --scope=stores --scope-code=default web/url/use_store 1
```

You can use `--lock-config` to set configuration values if Commerce is not installed. However, you can set values only for the default scope.

>[!INFO]
>
>You can transfer `config.php` to another system to use the same configuration values there. For example, if you have a testing system, using the same `config.php` means you do not have to set the same configuration values again.

## Display the value of configuration settings

Command options:

```bash
bin/magento config:show [--scope[="..."]] [--scope-code[="..."]] path
```

where

- `--scope` is the scope of configuration (default, website, store). The default value is `default`
- `--scope-code` is the scope code of configuration (website code or store view code)
- `path` is the configuration path in format first_part/second_part/third_part/etc (_required_)

>[!INFO]
>
>The `bin/magento config:show` command displays the values of any [encrypted values](../reference/config-reference-sens.md) as a series of asterisks: `******`.

### Examples

**To show all saved configurations**:

```bash
bin/magento config:show
```

Result:

```
web/unsecure/base_url - http://example.com/
general/region/display_all - 1
general/region/state_required - AT,BR,CA,CH,EE,ES,FI,LT,LV,RO,US
catalog/category/root_id - 2
analytics/subscription/enabled - 1
```

**To show all saved configurations for the `base` website**:

```bash
bin/magento config:show --scope=websites --scope-code=base
```

Result:

```
web/unsecure/base_url - http://example-for-website.com/
general/region/state_required - AT,BR,CA
```

**To show the base URL for the default scope**:

```bash
bin/magento config:show web/unsecure/base_url
```

Result:

```
web/unsecure/base_url - http://example.com/
```

**To show the base URL for the `base` website**:

```bash
bin/magento config:show --scope=websites --scope-code=base web/unsecure/base_url
```

Result:

```
web/unsecure/base_url - http://example-for-website.com/
```

**To show the base URL for the `default` store**:

```bash
bin/magento config:show --scope=stores --scope-code=default web/unsecure/base_url
```

Result:

```
web/unsecure/base_url - http://example-for-store.com/
```

>[!INFO]
>
>The scope code can include letters (a-z or A-Z), numbers (0-9) and underscores (_) only. Also, the first character must be a letter. If uppercase or camelcase is used when creating a website or store view, internally the match is case-insensitive to accommodate override of configuration settings through environment variables. See [Use environment variables to override configuration settings](../reference/override-config-settings.md#environment-variables).

