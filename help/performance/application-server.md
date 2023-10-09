---
title: Application Server for GraphQL APIs
description: Follow these instructions for enabling the Application Server for GraphQL APIs in your Adobe Commerce deployment.
badgeCoreBeta: label="2.4.7-beta1" type="informative"
exl-id: 9b223d92-0040-4196-893b-2cf52245ec33
---
# Application Server for GraphQL APIs

The Commerce Application Server for GraphQL APIs enables Adobe Commerce to maintain state among Commerce GraphQL API requests. The Application Server, which is built on the Open Swoole extension, operates as a process with worker threads that handle request processing. By preserving a bootstrapped application state among GraphQL API requests, Application Server enhances request handling and overall product performance. API requests become significantly more efficient.

Application Server is supported on Cloud Starter and on-premises deployments only. It is not available for Cloud Pro instances during Beta. It is not available for Magento Open Source deployments.

## Application Server architectural overview

Application Server maintains state between Commerce GraphQL API requests and eliminates the need for bootstrapping. By sharing application state across processes, GraphQL requests become significantly more efficient, decreasing response times by up to 30%. 

The share-nothing PHP execution model provides a challenge from the perspective of latency because each request requires the bootstrapping of the framework. This bootstrapping process includes time-consuming tasks such as reading configuration, setting up the bootstrap process, and creating service class objects. 

Transitioning request handling logic to an application-level event loop appears to address the challenge of streamlining request processing at an enterprise level. This approach eliminates the need for bootstrapping during the request execution lifecycle.

## Advantages of using Application Server

Application Server allows Adobe Commerce to sustain state between consecutive Commerce GraphQL API requests. Sharing application state across requests enhances API request efficiency by minimizing processing overhead and optimizing request handling. As a result, GraphQL request response time can be reduced up to 30%.

## System requirements

Running Application Server requires the following:

* PHP 8.2 or higher
* Open Swoole PHP extension v22+ installed
* Adequate RAM and CPU based on the expected load

## Enable Application Server for Cloud Starter

The `ApplicationServer` module (`Magento/ApplicationServer/`) enables Application Server for GraphQL APIs. Application Server is supported on on-premises and Cloud Starter deployments only. It is not available for Cloud Pro instances during Beta.

### Before you begin

Complete the following tasks before deploying Application Server: 

1. Confirm that Adobe Commerce is installed.
1. Confirm that the `CRYPT_KEY` environment variable is set for your instance. You can check the status of this variable on the Cloud Project Portal (Onboarding UI).
1. Clone your Cloud project.
1. Add the `openswoole.so` PHP extension file to your project by modifying the `project_root/.magento.app.yaml` file by adding the following line of code into the `build` section before the `composer install` command:

   ```curl

   curl -fsS <https://raw.githubusercontent.com/yaroslavGoncharuk/platformscript/main/install_swoole.sh> | { bash /dev/fd/0 openswoole 22.0.0 ; } 3<&0

   ```

1. Create a new `graphql` folder in your `project_root` folder.
1. Add the additional custom `.magento.app.yaml` file included at the end of this topic into your `project_root/graphql` folder. 
1. Edit the `project_root/.magento/routes.yaml` file to include these directives:

  ```

  The routes of the project.

  Each route describes how an incoming URL is going to be processed.

  "http://{default}/":
    type: upstream
    upstream: "mymagento:http"
 
  "http://{default}/graphql":
    type: upstream
    upstream: "graphql:http"

  ```

1. Add updated files to the git index with this command:

  ```bash
  git add -f php.ini graphql/.magento.app.yaml .magento/routes.yaml swoole.so

  ```

1. Commit your changes with this command:

  ```bash
  git commit -m "AppServer Enabled"
  ```

### Deploy Application Server on Cloud Starter

After performing the prerequisite tasks, deploy Application Server using this command:

```bash
git push
```


### Verify Application Server enablement on Cloud Starter


1. Open your Cloud project user interface. You should see an additional SSH access point for the `graphql` application.

1. Use SSH to access your Cloud instance using the graphql application access point, then execute the following command:

  ```bash
  ps aux|grep php
  ```

1. Perform a GraphQL query or mutation against your instance to confirm that the `graphql` endpoint is accessible. For example:

  ```
  mutation {  createEmptyCart}
  ```

The expected response should resemble the following response:


```json
{    "data": {        "createEmptyCart": "HLATPzcLw5ylDf76IC92nxdO2hXSXOrv"    }}
```

1. Use SSH to access your Cloud instance through the GraphQL application access point.  The `root/var/log/magento-server.log` should contain a new log record for every GraphQL request. 


If these verifciation steps are successful, you can proceed with test cycle execution.

### Disable Application Server on Cloud Starter



## Enable Application Server on on-premises deployments

The `ApplicationServer` module (`Magento/ApplicationServer/`) enables Application Server for GraphQL APIs.

Running Application Server requires installation of the Open Swoole extension and a minor change to your deployment's Nginx configuration file to run this application server locally.

### Before you begin

Complete these two tasks before enabling the `ApplicationServer` module: 

* Configure Nginx

* Install and configure the Open Swoole v22 extension

### Configure Nginx

Your specific Commerce deployment determines how to configure Nginx. In general, the Nginx configuration file is by default named `nginx.conf` and is placed in one of these directories: `/usr/local/nginx/conf`, `/etc/nginx`, or `/usr/local/etc/nginx`. See [Beginner's Guide](https://nginx.org/en/docs/beginners_guide.html) for more information on configuring Nginx.

Sample Nginx configuration:

```
location /graphql  {
    proxy_set_header Host $http_host;
    proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;

    proxy_pass http://127.0.0.1:9501/graphql;
}
```

### Install and configure Open Swoole

To run the Application Server locally, install the Open Swoole v22 extension. There are multiple ways to install this extension.

## Run Application Server

Start the Application Server:

```bash
bin/magento server:run
```

This command starts an HTTP port on 9501. Once Application Server launches, port 9501 becomes an HTTP proxy server for all GraphQL queries.

## Example: Install Open Swoole (OSX)

This procedure illustrates how to install the Open Swoole extension on PHP 8.2 for OSX-based systems. It is one of several ways of installing the Open Swoole extension.

### Install Open Swoole 

Enter:

```bash
pecl install openswoole-22.0.0
composer require openswoole/core:22.1.1
```

During installation, Adobe Commerce displays prompts to enable support for `openssl`, `mysqlnd`, `sockets`, `http2`, and `postgres`. Enter `yes` for all options except `postgres`.

### Confirm installation of Open Swoole

Run `php -m | grep openswoole` to confirm that the extension has been successfully enabled.

### Common errors with the Open Swoole installation

Any errors that occur during Open Swoole installation typically occur during the `pecl` installation phase. Typical errors include missing `openssl.h` and `pcre2.h` files. To resolve these errors, ensure that these two packages are installed in your local system. 

* Check the location of `openssl` by running:

```bash
  openssl version -d
```

This command shows the path where `openssl` is installed.

* Check the location of `pcre2` by running:

```bash
  pcre2-config --prefix 
```

Use Homebrew to install the missing packages if command output indicates that files are missing: 

```bash
brew install openssl
```

```bash
brew install pcre2
```

#### Resolve issues with openssl

To resolve issues related to `openssl`, run:

```bash
export LDFLAGS="-L/opt/homebrew/etc/openssl@3/lib" export CPPFLAGS="-I/opt/homebrew/etc/openssl@3/include"
```

Confirm that you are using the path from your local `dev` environment. 

#### Confirm resolution of openssl-related issues
 
You can run the following command again to check if openssl-related issues have been resolved:

```bash
pecl install openswoole-22.0.0
```

#### Resolve issues with pcre2.h

To resolve issues related to `pcre2.h`, symlink the `pcre2.h` path to your installed PHP extension directory. Your specific installed version of PHP and `pcr2.h` determines the particular version of the command that you should use.

### Confirm that application server is running

To confirm that the Application Server is running in your deployment, execute this command:

```bash
ps aux | grep php
```

Additional ways to confirm that Application Server is running include:

* Check the `/var/log/magento-server.log` file for entries that are related to processed GraphQL requests.
* Try to connect to the HTTP port that Application Server runs on. For example: `curl -g 'http://localhost:9501/graph`.


### Confirm that GraphQL requests are being processed by Application Server

Application Server adds the `X-Backend` response header with the value `graphql_server` to each request it processes. To check if a request has been handled by Application Server, check for this response header.

### Confirm extension and customization compatibility with Application Server

Extension developers and merchants should first verify that their extension and customization code adhere to the technical guidelines described in [Technical guidelines](https://developer.adobe.com/commerce/php/coding-standards/technical-guidelines/). 

Consider these guidelines during code evaluation:

* Service classes (that is, classes that provide behavior but not data, such as `EventManager`) should not have mutable state.
* Avoid temporal coupling.

## Disable Application Server

Procedures for disabling Application Server vary depending upon whether the server is running in an on-premises or Cloud deployment.

### Disable Application Server on Cloud Starter

1. Remove any new files and any other code changes that were included in the `AppServer Enabled` commit during your preparations for deployment. 

1. Commit your changes using this command:

  ```bash
  git commit -m "AppServer Disabled"
  ``` 

1. Deploy these changes using this command:

  ```bash
  git push
  ```

### Disable Application Server

1. Comment out the `/graphql` section of `nginx.conf` file that you added when enabling Application Server.
1. Restart nginx.

This method of disabling Application Server can be useful to quickly test or compare performance. 

### Confirm that Application Server is disabled

To confirm that GraphQL requests are being processed by `php-fpm` instead of Application Server, enter this command: `ps aux | grep php`.


After Application Server has been disabled:

* `bin/magento server:run` is inactive. 
* `var/log/magento-server.log` contains no entries after GraphQL requests. 

## Integration and functional tests for PHP Application Server

Extension developers can run two integration tests to verify extension compatibility with the Application Server: `GraphQlStateTest` and `ResetAfterRequestTest`. 

### GraphQlStateTest

`GraphQlStateTest` detects state in shared objects that should not be reused for multiple requests.

This test is designed to detect state changes in service objects that are produced by the `ObjectManager`. The test executes identical GraphQL queries twice and compares service object state before and after the second query. 

#### GraphQlStateTest failures and potential remediation

* **Cannot add, skip, or filter a list**. If you encounter a failure that suggests it is not safe to add, skip, or filter a list, consider whether the class can be refactored in a backward-compatible way to use the factories of the service classes that have mutable state.

* **Class exhibits a mutable state**. If the class itself exhibits a mutable state, try to rewrite your code to circumvent this state. If the mutable state is required for performance reasons, then implement `ResetAfterRequestInterface` and use `_resetState()` to reset the object to its initial constructed state.

* **Typed property $x must not be accessed before initialization message**. Failures with this type of message suggest that the specified property has not been initialized by the constructor. This is a form of temporal coupling that occurs because the object cannot be used after it is initially constructed. This coupling occurs even if the property is private because the Collector that retrieves the data from the properties is using the PHP reflection feature. In this case, try refactoring the class to avoid temporal coupling and to avoid mutable state. If that refactoring does not resolve the failure, you can change the property type to a nullable type so it can be initialized to null.  If the property is an array, try initializing the property as an empty array.

Run `GraphQlStateTest` by executing `vendor/bin/phpunit -c $(pwd)/dev/tests/integration/phpunit.xml dev/tests/integration/testsuite/Magento/GraphQl/App/GraphQlStateTest.php`.

### ResetAfterRequestTest

`ResetAfterRequestTest` looks for all classes that implement `ResetAfterRequestInterface` and verifies that the `_resetState()` method returns an object's state to the same state it held after being constructed by `ObjectManager`.  This test creates a service object with `ObjectManager`, then clones that object, calls `_resetState()`, and then compares both objects. The test does not call any methods between object instantiation and `_resetState()`, so it does not confirm resetting any mutable state It does find problems where a bug or typo in `_resetState()` may set the state to something different than what it was originally. 

#### ResetAfterRequestTest failures and potential remediation

* **Class has inconcsistent property values**. If this test fails, check if a class has been changed with the result that the object after construction has different property values than it has after the `_resetState()` method is called. If the class that you are working on does not contain the `_resetState()` method itself, then check the class hierarchy for a superclass that implements it.

* **Typed property $x must not be accessed before initialization message**. This issue also occurs with `GraphQlStateTest`.
 
Run `ResetAfterRequestTest` by executing: `vendor/bin/phpunit -c $(pwd)/dev/tests/integration/phpunit.xml dev/tests/integration/testsuite/Magento/Framework/ObjectManager/ResetAfterRequestTest.php`.

### Functional Testing

Extension developers should execute WebAPI functional tests for GraphQL, as well as any custom automated or manual functional tests for GraphQL, while deploying the Application Server. These functional tests help developers identify potential errors or compatibility issues.

## magento.app.yaml file content

See the Before you begin section for instructions on adding the following code to your the  `project_root/graphql` folder. 

```
name: graphql
# The toolstack used to build the application.
type: php:8.2
build:
    flavor: none
 
source:
    root: /
dependencies:
    php:
        composer/composer: '2.5.5'
 
# Enable extensions required by Magento 2
runtime:
    extensions:
        - xsl
        - sodium
 
# The relationships of the application with services or other applications.
# The left-hand side is the name of the relationship as it will be exposed
# to the application in the environment variable. The right-hand
# side is in the form `<service name>:<endpoint name>`.
relationships:
    database: "mysql:mysql"
    redis: "redis:redis"
    opensearch: "opensearch:opensearch"
 
# The configuration of app when it is exposed to the web.
web:
    commands:
        start: "php -dopcache.enable_cli=1 -dopcache.validate_timestamps=0 bin/magento server:run -vvv  --port=${PORT:-80} > ${MAGENTO_CLOUD_APP_DIR}/var/log/magento-server.log 2>&1"
    upstream:
        socket_family: tcp
        protocol: http
    locations:
        '/':
            root: "pub"
            passthru: true
 
# The size of the persistent disk of the application (in MB).
disk: 5120
 
# The mounts that will be performed when the package is deployed.
mounts:
    "var": "shared:files/var"
    "app/etc": "shared:files/etc"
    "pub/media": "shared:files/media"
    "pub/static": "shared:files/static"
 
hooks:
    # We run build hooks before your application has been packaged.
    build: |
        set -e
        composer install
        php ./vendor/bin/ece-tools run scenario/build/generate.xml
        php ./vendor/bin/ece-tools run scenario/build/transfer.xml
    # We run deploy hook after your application has been deployed and started.
    deploy: |
        php ./vendor/bin/ece-tools run scenario/deploy.xml
    # We run post deploy hook to clean and warm the cache. Available with ECE-Tools 2002.0.10.
    post_deploy: |
        php ./vendor/bin/ece-tools run scenario/post-deploy.xml
```





