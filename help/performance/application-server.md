---
title: Application Server for GraphQL APIs
description: Follow these instructions for enabling the Application Server for GraphQL APIs in your Adobe Commerce deployment.
badgeCoreBeta: label="2.4.7-beta1" type="informative"
---
# Application Server for GraphQL APIs

The Commerce Application Server for GraphQL APIs enables Adobe Commerce to maintain state between Commerce GraphQL API requests and decreases the bootstrapping time for each request. By sharing application state among processes, API requests become significantly more efficient. 

  This beta version of Application Server is available for on-premises deployments only. It does not support Cloud-based deployments. It does not yet support B2B GraphQL functionality. GraphQL requests may not work as expected in on-premises deployments when this version of the PHP application server is configured.


## Who can use Application Server?

Application Server is currently available for on-premises Commerce deployments only.


## Enable Application Server for GraphQL APIs

The `ApplicationServer` module (`Magento/ApplicationServer/`) enables Application Server for GraphQL APIs.

Running Application Server requires installation of the Open Swoole extension and a minor change to your deployment's Nginx configuration file to run this application server locally.

### Before you begin

Complete these two tasks before enabling the `ApplicationServer` module: 

*  Configure Nginx

*  Install and configure the Open Swoole v22 extension.

### Configure Nginx

Your specific Commerce deployment determines the details of how to configure Nginx. In general, the Nginx configuration file is by default named `nginx.conf` and is placed in one of these directories: `/usr/local/nginx/conf`, `/etc/nginx`, or `/usr/local/etc/nginx`. See [Beginner's Guide](http://nginx.org/en/docs/beginners_guide.html) for more information on configuring Nginx.

Sample Nginx configuration: 

```
location /graphql {
    proxy_set_header Host $http_host;
    proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;

    proxy_pass http://127.0.0.1:9501/graphql;
}
```


### Install and configure Open Swoole

You must install the Open Swoole v22 extension to run Application Server locally. There are multiple ways to install this extension.

## Run Application Server

Enter `bin/magento server:run`to start Application Server. 

This command starts an HTTP port on 9501. Once Application Server launches, all GraphQL queries are proxied to this web server.

## Example: Install the Open Swoole extension on PHP 8.2 for OSX-based systems in a Docker-based environment

This procedure illustrates how to install the OpenSwoole extension on PHP 8.2 for OSX-based systems. It is one of several ways of installing the Open Swoole extension.

You can install both the Open Swoole extension for PHP (v22) and the Composer packages that this extension requires with one command.

### Install Open Swoole 

Enter `pecl install openswoole-22.0.0 | composer require openswoole/core:22.1.1`. 

During installation, Adobe Commerce displays prompts to enable support for `openssl`, `mysqlnd`, `sockets`, `http2`, and `postgres`. Enter `yes` for all options except `postgres`.

### Confirm installation of Open Swoole

Run `php -m | grep openswoole` to confirm that the extension has been successfully enabled.


### Common errors with the Open Swoole installation

Any errors that occur during Open Swoole installation typically occur during the `pecl` installation phase. Typical errors include missing `openssl.h` and `pcre2.h` files. To resolve these errors, ensure that these two packages are installed in your local system. 

*  Check location of `openssl` by running  `openssl version -d`. This command shows the path where `openssl` is installed.

*  Check location of `pcre2` by running  `pcre2-config --prefix`. 
 
 
Use homebrew to install the missing packages if command output indicates that files are missing: 

`brew install openssl`

`brew install pcre2`

#### Resolve issues with openssl

To resolve issues related to `openssl`, run 

`export LDFLAGS="-L/opt/homebrew/etc/openssl@3/lib" export CPPFLAGS="-I/opt/homebrew/etc/openssl@3/include"`

Confirm that you are using the path from your local `dev` environment. 

#### Confirm resolution of openssl-related issues
 
You can run `pecl install openswoole-22.0.0` again to check if openssl-related issues have been resolved.

#### Resolve issues with pcre2.h

To resolve issues related to `pcre2.h`, symlink the `pcre2.h` path to your installed PHP extension directory. Your specific installed version of PHP and `pcr2.h` determines the particular version of the command you should use. 

