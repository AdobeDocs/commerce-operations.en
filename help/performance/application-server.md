---
title: GraphQL Application Server
description: Follow these instructions for enabling the GraphQL Application Server in your Adobe Commerce deployment.
exl-id: 9b223d92-0040-4196-893b-2cf52245ec33
---

# GraphQL Application Server

The Commerce GraphQL Application Server enables Adobe Commerce to maintain state among Commerce GraphQL API requests. GraphQL Application Server, which is built on the Swoole extension, operates as a process with worker threads that handle request processing. By preserving a bootstrapped application state among GraphQL API requests, GraphQL Application Server enhances request handling and overall product performance. API requests become significantly more efficient.

GraphQL Application Server is available for Adobe Commerce only. It is not available for Magento Open Source. For Cloud Pro projects, you must [submit an Adobe Commerce Support](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/help-center-guide/magento-help-center-user-guide) ticket to enable the GraphQL Application Server.

>[!NOTE]
>
>GraphQL Application Server is currently not compatible with [[!DNL Amazon Simple Storage Service (AWS S3)]](https://aws.amazon.com/s3/). Adobe Commerce on cloud infrastructure customers currently using [!DNL AWS S3] for [remote storage](../configuration/remote-storage/cloud-support.md) cannot use GraphQL Application Server.

## Architecture

GraphQL Application Server maintains state between Commerce GraphQL API requests and eliminates the need for bootstrapping. By sharing application state across processes, GraphQL requests become significantly more efficient, decreasing response times by up to 30%.

The share-nothing PHP execution model provides a challenge from the perspective of latency because each request requires the bootstrapping of the framework. This bootstrapping process includes time-consuming tasks such as reading configuration, setting up the bootstrap process, and creating service class objects.

Transitioning request handling logic to an application-level event loop appears to address the challenge of streamlining request processing at an enterprise level. This approach eliminates the need for bootstrapping during the request execution lifecycle.

## Advantages

GraphQL Application Server allows Adobe Commerce to sustain state between consecutive Commerce GraphQL API requests. Sharing application state across requests enhances API request efficiency by minimizing processing overhead and optimizing request handling. As a result, GraphQL request response time can be reduced by up to 30%.

## System requirements

Running GraphQL Application Server requires the following:

* Commerce version 2.4.7+
* PHP 8.2 or higher
* Swoole PHP extension v5+ installed
* Adequate RAM and CPU based on the expected load

## Enable and deploy on cloud infrastructure

The `ApplicationServer` module (`Magento/ApplicationServer/`) enables GraphQL Application Server.

### Enable Pro projects

>[!NOTE]
>
>The Application Server is an opt-in feature on Cloud Pro instances. To enable it, submit a support request.

After the Application Server feature is enabled on your Pro project, complete the following steps before deploying GraphQL Application Server:

1. Deploy Adobe Commerce on cloud infrastructure using the cloud template from the [2.4.7-appserver branch](https://github.com/magento/magento-cloud/tree/2.4.7-appserver).
1. Ensure that all your Commerce customizations and extensions are [compatible](https://developer.adobe.com/commerce/php/development/components/app-server/) with GraphQL Application Server.
1. Clone your Commerce Cloud project.
1. Adjust settings in the 'application-server/nginx.conf.sample' file if necessary.
1. Comment out the active 'web' section in `project_root/.magento.app.yaml` file entirely.
1. Uncomment the following 'web' section configuration in the `project_root/.magento.app.yaml` file that includes the GraphQL Application Server `start` command.

   ```yaml
   web:
       upstream:
           socket_family: tcp
           protocol: http
       commands:
           start: ./application-server/start.sh > var/log/application-server-status.log 2>&1

   ```
   
1. Ensure that `/application-server/start.sh` is executable by running the following command:

   ```bash
   chmod +x application-server/start.sh
   ```

1. Add updated files to the git index with this command:

   ```bash
   git add -f .magento.app.yaml application-server/*
   ```

1. Commit your changes with this command:

   ```bash
   git commit -m "AppServer Enabled"
   ```

### Deploy Pro projects

After completing the enablement steps, push changes to your Git repository to deploy GraphQL Application Server:

```bash
git push
```

### Enable Starter projects

Complete the following steps before deploying GraphQL Application Server on Starter projects:

1. Deploy Adobe Commerce on cloud infrastructure using the cloud template from the [2.4.7-appserver branch](https://github.com/magento/magento-cloud/tree/2.4.7-appserver).
1. Ensure that all your Commerce customizations and extensions are compatible with GraphQL Application Server.
1. Confirm that the `CRYPT_KEY` environment variable is set for your instance. You can check the status of this variable on the Cloud Console.
1. Clone your Commerce Cloud project.
1. Rename `application-server/.magento/.magento.app.yaml.sample` to `application-server/.magento/.magento.app.yaml` and adjust settings in .magento.app.yaml if needed.
1. Uncomment the following route's configuration in the `project_root/.magento/routes.yaml` file to redirect `/graphql` traffic to GraphQL Application Server.

   ```yaml
   "http://{all}/graphql":
       type: upstream
       upstream: "application-server:http"

   ```

1. Uncomment the `files` section in the `.magento/services.yaml` file.

   ```yaml
   files:
       type: network-storage:2.0
       disk: 5120
   ```

1. Uncomment the `TEMPORARY SHARED MOUNTS` part of the mounts configuration in the `.magento.app.yaml` file.

   ```yaml
   "var_shared":
       source: "service"
       service: "files"
       source_path: "var"
   "app/etc_shared":
       source: "service"
       service: "files"
       source_path: "etc"
   "pub/media_shared":
       source: "service"
       service: "files"
       source_path: "media"
   "pub/static_shared":
       source: "service"
       service: "files"
       source_path: "static"
   ```

1. Add updated files to the git index:

   ```bash
   git add -f .magento.app.yaml .magento/routes.yaml .magento/services.yaml application-server/.magento/*
   ```

1. Commit your changes and push them to trigger a deployment:

   ```bash
   git commit -m "Enabling AppServer: initial changes"
   git push
   ```

1. Use SSH to log in to the remote cloud environment (_not_ the `application-server` app):

   ```bash
   magento-cloud ssh -p <project-ID> -e <environment-ID>
   ```

1. Sync the data from the local mounts to the shared mounts:

   ```bash
   rsync -avz var/* var_shared/
   rsync -avz app/etc/* app/etc_shared/
   rsync -avz pub/media/* pub/media_shared/
   rsync -avz pub/static/* pub/static_shared/
   ```

1. Comment out the `DEFAULT MOUNTS` and the `TEMPORARY SHARED MOUNTS` parts of the mounts configuration in the `.magento.app.yaml` file.

   ```yaml
   #"var": "shared:files/var"
   #"app/etc": "shared:files/etc"
   #"pub/media": "shared:files/media"
   #"pub/static": "shared:files/static"
   
   #"var_shared":
   #    source: "service"
   #    service: "files"
   #    source_path: "var"
   #"app/etc_shared":
   #    source: "service"
   #    service: "files"
   #    source_path: "etc"
   #"pub/media_shared":
   #    source: "service"
   #    service: "files"
   #    source_path: "media"
   #"pub/static_shared":
   #    source: "service"
   #    service: "files"
   #    source_path: "static"
   ```

1. Uncomment the `OLD LOCAL MOUNTS` and the `SHARED MOUNTS` parts of the mounts configuration in the `.magento.app.yaml` file.

   ```yaml
   "var_old": "shared:files/var"
   "app/etc_old": "shared:files/etc"
   "pub/media_old": "shared:files/media"
   "pub/static_old": "shared:files/static"
   
   "var":
       source: "service"
       service: "files"
       source_path: "var"
   "app/etc":
       source: "service"
       service: "files"
       source_path: "etc"
   "pub/media":
       source: "service"
       service: "files"
       source_path: "media"
   "pub/static":
       source: "service"
       service: "files"
       source_path: "static"
   ```

1. Add the updated file to the git index, commit changes, and push to trigger a deployment:

   ```bash
   git add -f .magento.app.yaml
   git commit -m "Enabling AppServer: switch mounts"
   git push
   ```

1. Ensure files from `*_old` directories are present in the actual directories.

1. Cleanup old local mounts:

   ```bash
   rm -rf var_old/*
   rm -rf app/etc_old/*
   rm -rf pub/media_old/*
   rm -rf pub/static_old/*
   ```

1. Comment out the `OLD LOCAL MOUNTS` part of the mounts configuration in the `.magento.app.yaml` file.

    ```yaml
    #"var_old": "shared:files/var"
    #"app/etc_old": "shared:files/etc"
    #"pub/media_old": "shared:files/media"
    #"pub/static_old": "shared:files/static"
    ```

1. Add the updated file to the git index, commit changes, and push to trigger a deployment:

   ```bash
   git add -f .magento.app.yaml
   git commit -m "Enabling AppServer: finish"
   git push
   ```

>[!NOTE]
>
>Ensure that all custom settings in your root `.magento.app.yaml` file are appropriately migrated to the `application-server/.magento/.magento.app.yaml` file. After the `application-server/.magento/.magento.app.yaml` file is added to your project, you should maintain it in addition to the root `.magento.app.yaml` file. For example, if you need to [configure the RabbitMQ service](https://experienceleague.adobe.com/en/docs/commerce-cloud-service/user-guide/configure/service/rabbitmq) or [manage web properties](https://experienceleague.adobe.com/en/docs/commerce-cloud-service/user-guide/configure/app/properties/web-property) you should add the same configuration to `application-server/.magento/.magento.app.yaml` as well.

### Verify enablement on cloud projects

1. Perform a GraphQL query or mutation against your instance to confirm that the `graphql` endpoint is accessible. For example:

   ```
   mutation {  
    createEmptyCart
   }
   ```

   The expected response should resemble this example:

   ```json
   {    
    "data": {        
        "createEmptyCart": "HLATPzcLw5ylDf76IC92nxdO2hXSXOrv"    
        }
    }
   ```

1. Use SSH to access your Cloud instance. The `project_root/var/log/application-server.log` should contain a new log record for every GraphQL request.

1. You can also check if GraphQL Application Server is running by executing the following command:

   ```bash
   ps aux|grep php
   ```

   You should see a `bin/magento server:run` process with multiple threads.

If these verification steps are successful, GraphQL Application Server is running and serving `/graphql` requests.

## Enable on-premises projects

The `ApplicationServer` module (`Magento/ApplicationServer/`) enables GraphQL Application Server for GraphQL APIs.

Running GraphQL Application Server locally requires installation of the Swoole extension and a minor change to your deployment's Nginx configuration file.

### Prerequisites

Complete the following steps before enabling the `ApplicationServer` module:

* Configure Nginx
* Install and configure the Swoole v5+ extension

#### Configure Nginx

Your specific Commerce deployment determines how to configure Nginx. In general, the Nginx configuration file is by default named `nginx.conf` and is placed in one of these directories: `/usr/local/nginx/conf`, `/etc/nginx`, or `/usr/local/etc/nginx`. See the _[Beginner's Guide](https://nginx.org/en/docs/beginners_guide.html)_ for more information on configuring Nginx.

Sample Nginx configuration:

```conf
location /graphql {
    proxy_set_header Host $http_host;
    proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;

    proxy_pass http://127.0.0.1:9501/graphql;
}
```

#### Install and configure Swoole

To run the GraphQL Application Server locally, install the Swoole extension (v5.0 or higher). There are multiple ways to install this extension.

The following procedure describes how to install the Swoole extension for PHP 8.2 on OSX-based systems. It is one of several ways of installing the Swoole extension.

```bash
pecl install swoole
```

During installation, Adobe Commerce displays prompts to enable support for `openssl`, `mysqlnd`, `sockets`, `http2`, and `postgres`. Enter `yes` for all options except `postgres`.

### Verify Swoole installation

Confirm that the extension has been successfully enabled:

```bash
php -m | grep swoole
```

### Common errors with Swoole installation

Any errors that occur during Swoole installation typically occur during the `pecl` installation phase. Typical errors include missing `openssl.h` and `pcre2.h` files. To resolve these errors, ensure that these two packages are installed in your local system.

* Check the location of `openssl` by running:

```bash
openssl version -d
```

This command shows the path where `openssl` is installed.

* Check the location of `pcre2` by running:

```bash
pcre2-config --prefix 
```

Use Homebrew to install the missing packages if the command output indicates that files are missing:

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
pecl install swoole
```

#### Resolve issues with pcre2.h

To resolve issues related to `pcre2.h`, symlink the `pcre2.h` path to your installed PHP extension directory. Your specific installed version of PHP and `pcr2.h` determines the particular version of the command that you should use.

### Run GraphQL Application Server

Start GraphQL Application Server:

```bash
bin/magento server:run
```

This command starts an HTTP port on 9501. Once GraphQL Application Server launches, port 9501 becomes an HTTP proxy server for all GraphQL queries.

To confirm that GraphQL Application Server is running in your deployment:

```bash
ps aux | grep php
```

Additional ways to confirm that GraphQL Application Server is running include:

* Check the `/var/log/application-server.log` file for entries that are related to processed GraphQL requests.
* Try to connect to the HTTP port that GraphQL Application Server runs on. For example: `curl -g 'http://localhost:9501/graph`.

### Confirm that GraphQL requests are being processed

GraphQL Application Server adds the `X-Backend` response header with the value `graphql_server` to each request that it processes. To check if a whether the GraphQL Application Server has handled a request, check for this response header.

### Confirm extension and customization compatibility

Extension developers and merchants should first verify that their extension and customization code adhere to the guidelines described in _[Technical guidelines](https://developer.adobe.com/commerce/php/coding-standards/technical-guidelines/)_.

Consider these guidelines during code evaluation:

* Service classes (that is, classes that provide behavior but not data, such as `EventManager`) should not have mutable state.
* Avoid temporal coupling.

## Disable GraphQL Application Server

Procedures for disabling GraphQL Application Server vary depending upon whether the server is running in an on-premises or Cloud deployment.

### Disable GraphQL Application Server (cloud)

1. Remove any new files and any other code changes that were included in the `AppServer Enabled` commit during your preparations for deployment.

1. Commit your changes using this command:

   ```bash
   git commit -m "AppServer Disabled"
   ```

1. Deploy these changes using this command:

   ```bash
   git push
   ```

### Disable GraphQL Application Server (on-premises)

1. Comment out the `/graphql` section of `nginx.conf` file that you added when enabling GraphQL Application Server.
1. Restart nginx.

This method of disabling the GraphQL Application Server can be useful to test or compare performance quickly.

### Confirm that GraphQL Application Server is disabled

To confirm that `php-fpm` is processing GraphQL requests instead of the GraphQL Application Server, enter this command: `ps aux | grep php`.

After GraphQL Application Server has been disabled:

* `bin/magento server:run` is inactive.
* `var/log/application-server.log` contains no entries after GraphQL requests.

## Integration and functional tests for GraphQL Application Server

Extension developers can run two integration tests to verify extension compatibility with GraphQL Application Server: `GraphQlStateTest` and `ResetAfterRequestTest`.

### GraphQlStateTest

The `GraphQlStateTest` detects state in shared objects that should not be reused for multiple requests.

This test is designed to detect state changes in service objects that the `ObjectManager` produces. The test executes identical GraphQL queries twice and compares service object state before and after the second query.

#### GraphQlStateTest failures and potential remediation

* **Cannot add, skip, or filter a list**. If you see an error about adding, skipping, or filtering a list, consider whether you can refactor the class in a backward-compatible way to use the factories of service classes that have mutable state.

* **Class exhibits a mutable state**. If the class itself exhibits a mutable state, try to rewrite your code to circumvent this state. If the mutable state is required for performance reasons, then implement `ResetAfterRequestInterface` and use `_resetState()` to reset the object to its initial constructed state.

* **Typed property $x must not be accessed before initialization message**. Failures with this type of message suggest that the specified property has not been initialized by the constructor. This is a form of temporal coupling that occurs because the object cannot be used after it is initially constructed. This coupling occurs even if the property is private because the Collector that retrieves the data from the properties is using the PHP reflection feature. In this case, try refactoring the class to avoid temporal coupling and to avoid mutable state. If that refactoring does not resolve the failure, you can change the property type to a nullable type so it can be initialized to null.  If the property is an array, try initializing the property as an empty array.

Run `GraphQlStateTest` by executing `vendor/bin/phpunit -c $(pwd)/dev/tests/integration/phpunit.xml dev/tests/integration/testsuite/Magento/GraphQl/App/GraphQlStateTest.php`.

### ResetAfterRequestTest

The `ResetAfterRequestTest` looks for all classes that implement `ResetAfterRequestInterface` and verifies that the `_resetState()` method returns an object's state to the same state it held after being constructed by `ObjectManager`.  This test creates a service object with `ObjectManager`, then clones that object, calls `_resetState()`, and then compares both objects. The test does not call any methods between object instantiation and `_resetState()`, so it does not confirm resetting any mutable state. It does find problems where a bug or typo in `_resetState()` may set the state to something different than what it was originally.

#### ResetAfterRequestTest failures and potential remediation

* **Class has inconsistent property values**. If this test fails, check if a class has been changed with the result that the object after construction has different property values than it has after the `_resetState()` method is called. If the class that you are working on does not contain the `_resetState()` method itself, then check the class hierarchy for a superclass that implements it.

* **Typed property $x must not be accessed before initialization message**. This issue also occurs with `GraphQlStateTest`.

  Run `ResetAfterRequestTest` by executing: `vendor/bin/phpunit -c $(pwd)/dev/tests/integration/phpunit.xml dev/tests/integration/testsuite/Magento/Framework/ObjectManager/ResetAfterRequestTest.php`.

### Functional Testing

while deploying the GraphQL Application Server, extension developers should execute WebAPI functional tests and any custom automated or manual functional tests for GraphQL. These functional tests help developers identify potential errors or compatibility issues.

#### State Monitor Mode

While running functional tests (or manual testing), the GraphQL Application Server can run with `--state-monitor mode` enabled to help find classes where state is being unintentionally reused. Start the Application Server normally, except add the `--state-monitor` parameter.

```
bin/magento server:run --state-monitor
```

After each request is processed, a new file is added to the `tmp` directory, for example: `var/tmp/StateMonitor-thread-output-50-6nmxiK`. Once you are done testing, these files can be merged with the `bin/magento server:state-monitor:aggregate-output` command, which creates two merged files, one in `XML` and one in `JSON`.

Examples:

```
/var/workspace/var/tmp/StateMonitor-json-2024-04-10T18:50:39Z-hW0ucN.json
/var/workspace/var/tmp/StateMonitor-junit-2024-04-10T18:50:39Z-oreUco.xml
``` 

These files can be inspected with any tool you use to view XML or JSON that shows the modified properties of service objects like `GraphQlStateTest` does. The `--state-monitor` mode uses the same skip list and filter list as GraphQlStateTest.

>[!NOTE]
>
>Do not use the `--state-monitor` mode in production. It is only designed for development and testing. It creates many output files and runs slower than normally.

>[!NOTE]
>
>`--state-monitor` is not compatible with PHP versions `8.3.0` - `8.3.4` due to a bug in the PHP garbage collector. If you are using PHP 8.3, you must upgrade to `8.3.5` or newer to use this feature.

## Configuring alternativeHeaders for Client IP Detection

Default support is provided for a default configuration for the `x-forwarded-for` header in `app/etc/di.xml`, allowing the platform to correctly retrieve the client IP address in most standard proxy and CDN setups.

If you need to support additional or custom headers (such as `x-client-ip`, `fastly-client-ip`, or `x-real-ip`), you can extend or override the `alternativeHeaders` argument in your `app/etc/di.xml` file. This is only necessary if your environment uses headers other than `x-forwarded-for` to pass the client IP address.

For example, to add support for other headers, update your `app/etc/di.xml` as follows:

```xml
<type name="Magento\Framework\HTTP\PhpEnvironment\RemoteAddress">
    <arguments>
        <argument name="alternativeHeaders" xsi:type="array">
            <item name="x-client-ip" xsi:type="string">HTTP_X_CLIENT_IP</item>
            <item name="fastly-client-ip" xsi:type="string">HTTP_FASTLY_CLIENT_IP</item>
            <item name="x-real-ip" xsi:type="string">HTTP_X_REAL_IP</item>
            <item name="x-forwarded-for" xsi:type="string">HTTP_X_FORWARDED_FOR</item>
        </argument>
    </arguments>
</type>
```

You can add, remove, or reorder the headers as needed to ensure that the client IP is retrieved from the correct source for your setup.

> **Note:**
> If you are using Adobe Commerce Cloud with the Fastly CDN module, this configuration is handled automatically and no manual changes are required. Manual configuration is only necessary for custom CDN, proxy, or non-standard header setups.
