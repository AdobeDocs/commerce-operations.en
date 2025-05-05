---
title: Set the value of bootstrap parameters
description: Learn how to set bootstrap parameters for the Commerce application.
exl-id: 4e1e4e5e-e1bc-49a5-8a2a-2e6b91ca9175
---
# Bootstrap parameters

This topic demonstrates how to set the values of Commerce application bootstrap parameters. See [Overview of application initialization and bootstrapping](initialization.md).

The following table discusses the bootstrap parameters that you can set:

| Bootstrap parameter | Description                                  |
| ------------------- | -------------------------------------------- |
| MAGE_DIRS           | Specifies custom directory and URL paths     |
| MAGE_PROFILER       | Enables dependency graphs and HTML profiling |

>[!INFO]
>
>- Not all bootstrap parameters are documented.
>- You now set the application mode (developer, default, production) using the [`magento deploy:mode:set {mode}`](../cli/set-mode.md) command.

## Set parameters using an environment variable

This section discusses how to set the values of bootstrap parameters using environment variables.

### Set the application mode

You can specify bootstrap variables as system-wide environment variables, which enables all processes to use them.

For example, you can use the `MAGE_PROFILER` system environment variable to specify a mode as follows:

```
MAGE_PROFILER={firebug|csv|<custom value>}
```

Set the variable using a shell-specific command. Because shells have differing syntax, consult a reference like [unix.stackexchange.com][unix-stackx].

Bash shell example for CentOS:

```bash
export MAGE_PROFILER=firebug
```

>[!INFO]
>
>If a `PHP Fatal error` displays in the browser after you set a profiler value, restart your web server. The reason might be related to PHP bytecode caching, which caches bytecodes and PHP classpaths.

## Set parameters for Apache or Nginx

This section discusses how to specify the mode for either Apache or Nginx.

### Nginx setting

See the [Nginx sample configuration][] on _GitHub_.

### Apache .htaccess setting

One way to set the application mode is by editing `.htaccess`. This way, you do not have to change Apache settings.

You can modify `.htaccess` in any of the following locations, depending on your entry point to the Commerce application:

- `<magento_root>/.htaccess`
- `<magento_root>/pub/.htaccess`

**To set a variable**:

1. Open any of the preceding files in a text editor and either add or uncomment the desired setting.

   For example, to specify a [mode](application-modes.md), uncomment the following:

   ```conf
   #   SetEnv MAGE_PROFILER firebug
   ```

1. Set the value of `MAGE_PROFILER` to any of the following:

   ```
   firebug
   csvfile
   <custom value>
   ```

1. Save your changes to `.htaccess`; you do not need to restart Apache for the change to take effect.

### Apache setting

The Apache web server supports setting the application mode using `mod_env` directives.

The Apache `mod_env` directive is slightly different in [Apache version 2.2][] and [Apache version 2.4][].

The procedures that follows show how to set the application mode in an Apache virtual host. This is not the only way to use `mod_env` directives; consult the Apache documentation for details.

>[!TIP]
>
>The following section assumes that you have already set up your virtual host. If you have not, consult a resource such as [this DigitalOcean tutorial](https://www.digitalocean.com/community/tutorials/how-to-set-up-apache-virtual-hosts-on-ubuntu-14-04-lts).

**To Specify a bootstrap variable for Apache on Ubuntu**:

   1. As a user with `root` privileges, open your virtual host configuration file in a text editor.

      For example, if your virtual host is named `my.magento`,

      - Apache 2.4: `vim /etc/apache2/sites-available/my.magento.conf`
      - Apache 2.2: `vim /etc/apache2/sites-available/my.magento`

   1. Anywhere in the virtual host configuration, add the following line:

      ```conf
      SetEnv "<variable name>" "<variable value>"
      ```

      For example,

      ```conf
      SetEnv "MAGE_PROFILER" "firebug"
      ```

   1. Save your changes and exit the text editor.
   1. Enable your virtual host if you have not already done so:

      ```bash
      a2ensite <virtual host config file name>
      ```

      For example,

      ```bash
      a2ensite my.magento.conf
      ```

   1. After setting the mode, restart the web server:

      - Ubuntu: `service apache2 restart`
      - CentOS: `service httpd restart`

>[!TIP]
>
>This section assumes that you have already set up your virtual host. If you have not, consult a resource such as [this DigitalOcean tutorial](https://www.digitalocean.com/community/tutorials/how-to-set-up-apache-virtual-hosts-on-centos-6).

**To specify a bootstrap variable for Apache on CentOS**:

   1. As a user with `root` privileges, open `/etc/httpd/conf/httpd.conf` in a text editor.

   1. Anywhere in the virtual host configuration, add the following line:

      ```conf
      SetEnv "<variable name>" "<variable value>"
      ```

      For example,

      ```conf
      SetEnv "MAGE_PROFILER" "firebug"
      ```

   1. Save your changes and exit the text editor.

   1. After setting the mode, restart the web server:

      - Ubuntu: `service apache2 restart`
      - CentOS: `service httpd restart`

<!-- link definitions -->

[Apache version 2.2]: https://httpd.apache.org/docs/2.2/mod/mod_env.html#setenv
[Apache version 2.4]: https://httpd.apache.org/docs/2.4/mod/mod_env.html#setenv
[Nginx sample configuration]: https://github.com/magento/magento2/blob/2.4/nginx.conf.sample#L16
[unix-stackx]: https://unix.stackexchange.com/questions/117467/how-to-permanently-set-environmental-variables
