---
title: Application initialization and bootstrap
description: Read about initialization and bootstrap logic for the Commerce application.
feature: Configuration, Install, Media
exl-id: 46d1ffc0-7870-4dd1-beec-0a9ff858ab62
---
# Overview of initialization and bootstrap

To run the Commerce application, the following actions are implemented in [pub/index.php](https://github.com/magento/magento2/tree/2.4.8/pub/index.php):

- Include the [app/bootstrap.php](https://github.com/magento/magento2/blob/2.4.8/app/bootstrap.php) file for the Commerce version deployed to your environment. This file performs essential initialization routines such as error handling, initializing the autoloader, setting profiling options, and setting the default timezone.
- Create an instance of [\Magento\Framework\App\Bootstrap.php](https://github.com/magento/magento2/tree/2.4.8/lib/internal/Magento/Framework/App/Bootstrap.php) <!-- It requires initialization parameters to be specified in constructor. Normally, the $_SERVER super-global variable is supposed to be passed there. -->
- Create a Commerce application instance: [\Magento\Framework\AppInterface](https://github.com/magento/magento2/tree/2.4.8/lib/internal/Magento/Framework/AppInterface.php)
- Run Commerce

## Bootstrap run logic

[The bootstrap object](https://github.com/magento/magento2/tree/2.4.8/app/bootstrap.php) uses the following algorithm to run the Commerce application:

1. Initializes the error handler.
1. Creates the [object manager](https://github.com/magento/magento2/tree/2.4.8/lib/internal/Magento/Framework/ObjectManager) and basic shared services that are used everywhere and are affected by the environment. The environment parameters are injected properly into these objects.
1. Asserts that maintenance mode is _not_ enabled; otherwise, terminates.
1. Asserts that the Commerce application is installed; otherwise, terminates.
1. Starts the Commerce application.

   Any uncaught exception during application launch is automatically passed back to Commerce in the `catchException()` method which you can use to handle the exception. The latter must return either `true` or `false`:

   - If `true`: Commerce handled exception successfully. No need to do anything else.
   - If `false`: (or any other empty result) Commerce did not handle the exception. The bootstrap object performs the default exception-handling subroutine.

1. Sends the response provided by the application object.

   >[!INFO]
   >
   >The assertions that the Commerce application is installed and not in maintenance mode is the default behavior of the `\Magento\Framework\App\Bootstrap` class. You can modify it using an entry point script when creating the bootstrap object.

   Sample entry point script that modifies the bootstrap object:

   ```php
   <?php
   use Magento\Framework\App\Bootstrap;
   require __DIR__ . '/app/bootstrap.php';

   $params = $_SERVER;
   $params[Bootstrap::PARAM_REQUIRE_MAINTENANCE] = true; // default false
   $params[Bootstrap::PARAM_REQUIRE_IS_INSTALLED] = false; // default true
   $bootstrap = Bootstrap::create(BP, $params);

   /** @var \Magento\Framework\App\Http $app */
   $app = $bootstrap->createApplication('Magento\Framework\App\Http');
   $bootstrap->run($app);
   ```

## Default exception handling

The bootstrap object specifies how the Commerce application handles uncaught exceptions as follows:

- In [developer mode](../bootstrap/application-modes.md#developer-mode), displays the exception as-is.
- In any other mode, attempts to log exception and display a generic error message.
- Terminates Commerce with error code `1`

## Entry point applications

We have the following entry point applications (that is, applications defined by Commerce that are used by the web server as a directory index):

### HTTP entry point

[\Magento\Framework\App\Http](https://github.com/magento/magento2/tree/2.4.8/lib/internal/Magento/Framework/App/Http) operates as follows:

1. Determines the [application area](https://developer.adobe.com/commerce/php/architecture/modules/areas/).
1. Starts the front controller and routing systems in order to find and execute a controller action.
1. Uses an HTTP response object to return result obtained from the controller action.
1. Error handling (in the following priority order):

   1. If you are using [developer mode](../bootstrap/application-modes.md#developer-mode):
      - If the Commerce application is not installed, redirect to Setup Wizard.
      - If the Commerce application is installed, display an error and HTTP status code 500 (Internal Server Error).
   1. If the Commerce application is in maintenance mode, display a user-friendly "Service Unavailable" landing page with HTTP status code 503 (Service Unavailable).
   1. If the Commerce application is _not_ installed, redirect to Setup Wizard.
   1. If the session is invalid, redirect to the home page.
   1. If there is any other application initialization error, display a user-friendly "Page Not Found" page with HTTP status code 404 (Not Found).
   1. On any other error, display a user-friendly "Service Unavailable" page with HTTP response 503 and generate an error report and display its ID on the page.

### Static resource entry point

[\Magento\Framework\App\StaticResource](https://github.com/magento/magento2/tree/2.4.8/lib/internal/Magento/Framework/App/StaticResource.php) is an application for retrieving static resources (for example, CSS, JavaScript, and images). It postpones any actions with a static resource until the resource is requested.

>[!INFO]
>
>The entry point for static view files is not used in [production mode](application-modes.md#production-mode) to avoid potential exploits on the server. In production mode, the Commerce application expects that all necessary resources exist in the `<your Commerce install dir>/pub/static` directory.

In default or developer mode, a request for a non-existent static resource is redirected to the static entry point according to the rewrite rules specified by the appropriate `.htaccess`.
When the request is redirected to the entry point, the Commerce application parses the requested URL based on retrieved parameters and finds the requested resource.

- In [developer](application-modes.md#developer-mode) mode, the content of the file is returned so that every time the resource is requested, the returned content is up to date.
- In [default](application-modes.md#default-mode) mode, the retrieved resource is published so it is accessible by the previously requested URL.

   All future requests for the static resource are processed by the server the same as static files; that is, without involving the entry point. If it is necessary to synchronize published files with original ones, the `pub/static` directory should be removed; as a result, files are automatically republished with the next request.

### Media resource entry point

[Magento\MediaStorage\App\Media](https://github.com/magento/magento2/tree/2.4.8/app/code/Magento/MediaStorage/App/Media.php) retrieves media resources (that is, any files uploaded to media storage) from the database. It is used whenever the database is configured as a media storage.

`\Magento\Core\App\Media` attempts to find the media file in the configured database storage and write it into the `pub/static` directory, then return its contents. On error, it returns an HTTP 404 (Not Found) status code in the header with no contents.

