---
title: Write to custom log file
description: Learn how to create and configure custom log files in Adobe Commerce. Discover logger handlers and custom logging implementation.
feature: Configuration, Logs
badge: label="Contributed by Atwix" type="Informative" url="https://www.atwix.com/" tooltip="Atwix"
exl-id: 875f45e7-30c9-4b1b-afe9-d1a8d51ccdf0
---
# Write to a custom log file

The `Magento\Framework\Logger` module contains the following handler classes:

| Class | Log file |
| ----- | -------- |
| [Magento\Framework\Logger\Handler\Base][base] | - |
| [Magento\Framework\Logger\Handler\Debug][debug] | `/var/log/debug.log` |
| [Magento\Framework\Logger\Handler\Exception][exception] | `/var/log/exception.log` |
| [Magento\Framework\Logger\Handler\Syslog][syslog] | - |
| [Magento\Framework\Logger\Handler\System][system] | `/var/log/system.log` |

You may find them in the `lib/internal/Magento/Framework/Logger/Handler` directory.

You can use one of the following approaches for logging into a custom file:

-  Set up a custom log file in the `di.xml`
-  Set up a custom file in the custom logger handler class

## Set up a custom log file in the `di.xml`

This example shows how to use [virtual types](https://developer.adobe.com/commerce/php/development/build/dependency-injection-file/#virtual-types) to log `debug` messages into a custom log file instead of a standard `/var/log/debug.log`.

1. In the `di.xml` file of your module, define a custom log file as a [virtual type](https://developer.adobe.com/commerce/php/development/build/dependency-injection-file/#virtual-types).

   ```xml
   <virtualType name="Magento\Payment\Model\Method\MyCustomDebug" type="Magento\Framework\Logger\Handler\Base">
       <arguments>
           <argument name="fileName" xsi:type="string">/var/log/payment.log</argument>
        </arguments>
   </virtualType>
   ```

   The `name` value of `Magento\Payment\Model\Method\MyCustomDebug` must be unique.

1. Define the handler in another [virtual type](https://developer.adobe.com/commerce/php/development/build/dependency-injection-file/#virtual-types) with a unique `name`:

   ```xml
   <virtualType name="Magento\Payment\Model\Method\MyCustomLogger" type="Magento\Framework\Logger\Monolog">
       <arguments>
           <argument name="handlers" xsi:type="array">
               <item name="debug" xsi:type="object">Magento\Payment\Model\Method\MyCustomDebug</item>
           </argument>
       </arguments>
   </virtualType>
   ```

1. Inject the `MyCustomLogger` [virtual type](https://developer.adobe.com/commerce/php/development/build/dependency-injection-file/#virtual-types) in the `Magento\Payment\Model\Method\Logger` object:

   ```xml
   <type name="Magento\Payment\Model\Method\Logger">
       <arguments>
           <argument name="logger" xsi:type="object">Magento\Payment\Model\Method\MyCustomLogger</argument>
       </arguments>
   </type>
   ```

1. The virtual class `Magento\Payment\Model\Method\MyCustomDebug` is injected into the `debug` handler of the `$logger` property in the `Magento\Payment\Model\Method\Logger` class.

   ```xml
   ...
   <argument name="handlers" xsi:type="array">
       <item name="debug" xsi:type="object">Magento\Payment\Model\Method\MyCustomDebug</item>
   </argument>
   ```

Exception messages are logged into the `/var/log/payment.log` file.

## Set up a custom log file in the logger handler class

This example shows how to use a custom logger handler class to log `error` messages into a specific log file.

1. Create a class that logs data. In this example, the class is defined in `app/code/Vendor/ModuleName/Logger/Handler/ErrorHandler.php`.

   ```php
   <?php
   /**
    * @author Vendor
    * @copyright Copyright (c) 2019 Vendor (https://www.vendor.com/)
    */
   namespace Vendor\ModuleName\Logger\Handler;

   use Magento\Framework\Logger\Handler\Base as BaseHandler;
   use Monolog\Logger as MonologLogger;

   /**
    * Class ErrorHandler
    */
   class ErrorHandler extends BaseHandler
   {
       /**
        * Logging level
        *
        * @var int
        */
       protected $loggerType = MonologLogger::ERROR;

       /**
        * File name
        *
        * @var string
        */
       protected $fileName = '/var/log/my_custom_logger/error.log';
   }
   ```

1. Define the handler for this class as a [virtual type](https://developer.adobe.com/commerce/php/development/build/dependency-injection-file/#virtual-types) in the module's `di.xml` file.

   ```xml
   <virtualType name="MyCustomLogger" type="Magento\Framework\Logger\Monolog">
       <arguments>
           <argument name="handlers" xsi:type="array">
               <item name="error" xsi:type="object">Vendor\ModuleName\Logger\Handler\ErrorHandler</item>
           </argument>
       </arguments>
   </virtualType>
   ```

   `MyCustomLogger` is a unique identifier.

1. In the `type` definition, specify the class name where the custom logger handler is injected. Use the virtual type name from the previous step as an argument for this type.

   ```xml
   <type name="Vendor\ModuleName\Observer\MyObserver">
       <arguments>
           <argument name="logger" xsi:type="object">MyCustomLogger</argument>
       </arguments>
   </type>
   ```

   Source code of `Vendor\ModuleName\Observer\MyObserver` class:

   ```php
   <?php
   /**
    * @author Vendor
    * @copyright Copyright (c) 2019 Vendor (https://www.vendor.com/)
    */
   declare(strict_types=1);

   namespace Vendor\ModuleName\Observer;

   use Psr\Log\LoggerInterface as PsrLoggerInterface;
   use Exception;
   use Magento\Framework\Event\ObserverInterface;
   use Magento\Framework\Event\Observer;

   /**
    * Class MyObserver
    */
   class MyObserver implements ObserverInterface
   {
       /**
        * @var PsrLoggerInterface
        */
       private $logger;

       /**
        * MyObserver constructor.
        *
        * @param PsrLoggerInterface $logger
        */
       public function __construct(
           PsrLoggerInterface $logger
       ) {
           $this->logger = $logger;
       }

       /**
        * @param Observer $observer
        */
       public function execute(Observer $observer)
       {
           try {
               // some code goes here
           } catch (Exception $e) {
               $this->logger->error($e->getMessage());
           }
       }
   }
   ```

1. The class `Vendor\ModuleName\Logger\Handler\ErrorHandler` is injected into the `error` handler of the `$logger` property in the `Vendor\ModuleName\Observer\MyObserver`.

   ```xml
   ...
   <argument name="handlers" xsi:type="array">
       <item name="error" xsi:type="object">Vendor\ModuleName\Logger\Handler\ErrorHandler</item>
   </argument>
   ...
   ```

Exception messages are logged in the `/var/log/my_custom_logger/error.log` file.

<!-- link definitions -->

[base]: https://github.com/magento/magento2/blob/2.4/lib/internal/Magento/Framework/Logger/Handler/Base.php
[debug]: https://github.com/magento/magento2/blob/2.4/lib/internal/Magento/Framework/Logger/Handler/Debug.php
[exception]: https://github.com/magento/magento2/blob/2.4/lib/internal/Magento/Framework/Logger/Handler/Exception.php
[syslog]: https://github.com/magento/magento2/blob/2.4/lib/internal/Magento/Framework/Logger/Handler/Syslog.php
[system]: https://github.com/magento/magento2/blob/2.4/lib/internal/Magento/Framework/Logger/Handler/System.php
