---
title: Best practices for modifying core and third-party php code
description: Learn how and when to modify Adobe Commerce and third-party php code.
role: Developer, Architect
feature: Best Practices
last-substantial-update: 2023-12-8
---
# Best practices for modifying or overriding core and third-party php code

This document describes best practices when the need arises to modify the functionality, result, or input of any code you did not author or do not directly control. In other words, core code and 3rd-party code. This document focuses primarily on backend PHP code.

Methods of Modifying Code

When modifying code, it is important to consider the scope of your changes. The "scope" of the changes refers to how far-reaching the effects of the code changes are. As a best practice, base the decision for how the eventual implementation is completed based on the option that has the smallest footprint and the least resource usage. The more wide-reaching the code overrides are, the more a development team deviates from the core Adobe Commerce functionality and this increases the likelihood of bugs and greater effort to maintain the codebase in the future.

## Patch

A patch is a file that contains instructions to directly change code within a file that is not under the direct control of the development team. This is an option that should usually be considered as a last resort when no other options exist. Patches are intended to be a temporary solution. If you must create a patch, as a general best practice, remove the patch in favor of a more permanent solution within the following 2-4 weeks. 

Patches break easily. If the files that the patch targets are updated, this often causes the patch to stop working. That's because a patch file contains line numbers and column numbers that specifically indicate what is to be changed by the patch. If anything doesn't match what the patch was expecting, it ceases to apply and is now broken.

```bash
diff --git a/vendor/magento/module-quote/Model/QuoteManagement.php b/vendor/magento/module-quote/Model/QuoteManagement.php
index 51b68411d40..ac4a3468322 100644
--- a/vendor/magento/module-quote/Model/QuoteManagement.php
+++ b/vendor/magento/module-quote/Model/QuoteManagement.php
@@ -424,8 +424,9 @@ class QuoteManagement implements CartManagementInterface
                 }
             }
             $quote->setCustomerIsGuest(true);
-            $groupId = $customer ? $customer->getGroupId() : GroupInterface::NOT_LOGGED_IN_ID;
-            $quote->setCustomerGroupId($groupId);
+            $quote->setCustomerGroupId(
+                $quote->getCustomerId() ? $customer->getGroupId() : GroupInterface::NOT_LOGGED_IN_ID
+            );
         }
  
         $remoteAddress = $this->remoteAddress->getRemoteAddress();
```

### What can be changed with a patch

Anything. Literally, any character within any targeted file can be changed. Patches are not limited to any particular file type or code language. Typically, you would use a patch to target files within the `vendor` directory. 

### When to use a patch

If you realize that no other option exists. For example, when the vendor has yet to publish a fix for the code, you can use a patch to temporarily address the issue while awaiting a permanent solution.

Drawbacks

Patches break easily. The moment the targeted code changes, the patch ceases to work. They are meant to be a short-term solution only.

## Preference

A preference is a concept engineered into the Adobe Commerce platform. It is essentially a "PHP class replacement."

The Adobe Commerce platform uses an "object manager" to instantiate PHP classes as because it doesn't instantiate PHP classes with the new keyword as is done in traditional PHP applications. Instead, the object manager cross-references the name of the PHP class to be instantiated against a compiled configuration to determine if any module has declared a preference for the original class. If a preference for the PHP class is found, the object manager instantiates the specified class instead.

It should be noted that (usually) the new PHP class which replaces the original PHP class, usually extends/inherits from the original PHP class. This is done for a couple of reasons:

To ensure that dependency injection/type-hinting is complied with. Otherwise, a fatal error occurs and the application breaks.
To allow for minimal code writing. If the original PHP class contains ten methods but you only need to override one method, you can usually change one method alone and leave the other nine methods intact. This is important to make sure you are not blocking updates to the core functionality as the platform is upgraded to new versions.

### Declare a preference

It is a fairly simple process to declare a preference. A single line of code would need to be added to a di.xml file within a module. This can be done globally or within any Adobe Commerce "area", such as `frontend`, `adminhtml`, `graphql`, `webapi_rest`, and `crontab`.

```xml
<preference for="Magento\Elasticsearch7\SearchAdapter\Adapter" type="Vendor\Namespace\Adapter\AlgoliaElasticSearch7Adapter"/>
```

```ph
p
<?php

declare(strict_types=1);

namespace Vendor\Namespace\Adapter;

class AlgoliaElasticSearchAdapter extends \Magento\Elasticsearch7\SearchAdapter\Adapter
{
}
```

### What can be changed with a preference

Only PHP classes can be overridden with a preference. Within the PHP class, you can modify public and protected methods and properties. For public and protected methods, you can fully override the method or you can modify the arguments going into or the result coming out of the original, parent method.

Private methods cannot technically be overridden. However, you can create your own replacement for the original private method. You can even give it an arbitrary name, you can also use the original name. It doesn't truly matter because a private method only exists within the actual file that contains it. To override a private method, you need to override or modify the public or protected method that calls the original private method and you need to substitute your own functionality in its place.

### When to use a preference

Once again, you should use preferences when no other option exists and when you can't accomplish your goal with dependency injection, a plugin, or observer. Sometimes you might need a preference if you need to modify or override private or protected methods or properties. It should be noted that preferences should be used sparingly. They are a fairly "greedy" method of changing the application and you effectively take ownership of the PHP class. This can lead to conflicts with third-party modules and can block updates to the core class and lead to difficult-to-diagnose bugs. The Adobe Commerce platform has been engineered to include other avenues by which changes to the underlying code can be made with a smaller footprint.

### Drawbacks

Preferences are a greedy way to modify code and should only be used when other options don't exist. Preferences can oftentimes lead to conflicts within the codebase and worse yet, they can block core updates that occur with platform upgrades. 

## Observer

An observer is the concept of an event listener, as found in many applications, platforms, libraries, coding languages, and so on. The concept is not unique to the Adobe Commerce platform. Observers have been baked into the platform since the days of Magento 1 and are considered to be a primary choice of how to modify core code and third-party code. 

The core codebase and any third-party modules can dispatch an event at a chosen place in the code. The observer, which is declared in an `events.xml` file and is listening for the dispatched event by name, can work on a global level or constrained to any Adobe Commerce "area", such as `frontend`, `adminhtml`, `graphql`, `webapi_rest`, and `crontab`.

How to declare an observer

Observers can be configured in a global or area-specific events.xml file.

```xml
    <event name="sales_model_service_quote_submit_before">
        <observer name="set_reward_flag_order" instance="Adobe\RewardAdjustments\Observer\SetOrderRewardFlag" />
    </event>
```

```php
<?php

declare(strict_types=1);

namespace Adobe\RewardAdjustments\Observer;

use Magento\Framework\Event\ObserverInterface;
use Magento\Framework\Event\Observer;
use Magento\Quote\Model\Quote;
use Magento\Sales\Api\Data\OrderInterface;

class SetOrderRewardFlag implements ObserverInterface
{
    /**
     * @param Observer $observer
     * @return void
     */
    public function execute(Observer $observer)
    {
        $event = $observer->getEvent();
        /* @var $order OrderInterface */
        $order = $event->getOrder();
        /** @var $quote Quote $quote */
        $quote = $event->getQuote();

        // do something to the order and/or quote object here
    }
}
```

### What can be changed with an observer

Observers only apply to PHP code within the Adobe Commerce platform. You can only modify the specific data and objects that are passed with event dispatch.

### When to use an observer

Whenever available! If observers were more widely available and flexible, then observers would take the #2 spot in this list. Observers have less processing overhead than plugins do, they are less available and less flexible.

### Drawbacks

While observers are an excellent way to intercept and modify code, the dispatch of the events must be added into the core or third-party code to be available for your code to listen for. This makes the concept of using observers a bit limited. You are limited to events that a developer had the foresight to include in the code.

Also, another limiting factor of observers is that the dispatched event only provides access to the specific data and objects that the developer decided to pass along with the event.

## Plugin

A plugin is a flexible concept introduced in the Adobe Commerce platform. It allows us to intercept, replace, and modify any public PHP methods. Plugins allow us to modify the arguments going into a method before the targeted method is executed, modify the result after the targeted method is executed, or to fully replace the targeted method. Also, you can modify many methods of a targeted PHP class within a single plugin file. Also, plugins, by using the $subject argument, allow us to execute any public methods that exist in the targeted PHP class.

How to declare a plugin

Plugins can be configured in a global or area-specific di.xml file.

```xml
    <type name="Magento\Catalog\Api\CategoryRepositoryInterface">
        <plugin name="Adobe\CatalogAdjustments\Plugin\CategoryRepositoryPlugin" type="Adobe\CatalogAdjustments\Plugin\CategoryRepositoryPlugin"/>
    </type>
```

```php

<?php

declare(strict_types=1);

namespace Adobe\CatalogAdjustments\Plugin;

class CategoryRepositoryPlugin
{
    /**
     * @param \Magento\Catalog\Api\CategoryRepositoryInterface $subject
     * @param int $categoryId
     * @param int $storeId
     *
     * @return array
     */
    public function beforeGet($subject, $categoryId, $storeId = null): array
    {
        // modify the $categoryId or $storeId arguments or perform some other functionality prior to execution of the `get` method
        return [$categoryId, $storeId];
    }

    /**
     * @param \Magento\Catalog\Api\CategoryRepositoryInterface $subject
     * @param \Closure $origMethod
     * @param int $categoryId
     * @param int $storeId
     *
     * @return \Magento\Catalog\Api\Data\CategoryInterface
     */
    public function aroundGet($subject, $origMethod, $categoryId, $storeId = null): \Magento\Catalog\Api\Data\CategoryInterface
    {
        // here you can do something before calling the original method
        $result = $origMethod($categoryId, $storeId);
        // here you can do something after calling the original method
        // you can also NOT call the original method at all and instead, substitute our own functionality

        return $result;
    }

    /**
     * @param \Magento\Catalog\Api\CategoryRepositoryInterface $subject
     * @param \Magento\Catalog\Api\Data\CategoryInterface $result
     * @param int $categoryId
     * @param int $storeId
     *
     * @return \Magento\Catalog\Api\Data\CategoryInterface
     */
    public function afterGet($subject, $result, $categoryId, $storeId = null): \Magento\Catalog\Api\Data\CategoryInterface
    {
        // here you modify the result produced by the original `get` function or you can execute some other functionality
        // note that you also have access to the original function arguments. it's too late to modify them, but if needed, they are available for reading

        return $result;
    }
}
```

### What can be changed with a plugin

This functionality is only available to be used to target PHP classes. You can change the input or output of a public method and you can use a plugin to trigger other functionality that you need run. Also, if multiple plugins target the same PHP class, a sort order for the execution of plugins can be set to allow your plugin to run before or after other plugins.

### When to use a plugin

Whenever dependency replacement is unavailable. Plugins are used commonly throughout the core codebase, third-party code, and can be used commonly in your own custom code. Usually, when you must modify functionality not owned or controlled by your custom code, a plugin is the way to go.

### Drawbacks

Cannot modify protected methods or properties. The processing overhead is higher than that of an observer. That's not really an argument to not use plugins, the difference is trivial. However, this is something good to keep in mind.

## Dependency Replacement

Dependency injection is a standard object-oriented coding concept in which you pass your required dependencies into a class via the constructor. However, the Adobe Commerce platform takes this a step further by giving multiple avenues of substituting dependencies via XML. Essentially, dependency replacement. Dependency replacement is not suitable for every situation but it allows for minimal code writing, low overhead, and you can narrowly target only the exact bit of code that you want to target. Also, dependency replacement can be used to modify private and protected methods.

### How to use dependency replacement

Dependency replacement can be done on a global basis or area-specific basis.

```php
<?php

class SomeClass
{
    public function __construct(
        private readonly AllowedCountries $allowedCountriesReader
    ) {}

    /**
     * Check is address allowed for store
     *
     * @param AddressInterface $address
     * @param int|null $storeId
     * @return bool
     */
    private function isAddressAllowedForWebsite(AddressInterface $address, $storeId): bool
    {
        $allowedCountries = $this->allowedCountriesReader->getAllowedCountries(ScopeInterface::SCOPE_STORE, $storeId);

        return in_array($address->getCountryId(), $allowedCountries);
    }
}
```

```php
<?php

use Magento\Store\Model\ScopeInterface;

class OverrideAllowedCountries extends AllowedCountries
{
    /**
     * Retrieve all allowed countries for scope or scopes
     *
     * @param string $scope
     * @param string|null $scopeCode
     * @return array
     * @since 100.1.2
     */
    public function getAllowedCountries(
        $scope = ScopeInterface::SCOPE_WEBSITE,
        $scopeCode = null
    ) {
        // do some stuff here
        // you can call the original method or override it completely
        
        return $something;
    }
}
```

```xml
<?xml version="1.0"?>
<config xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="urn:magento:framework:ObjectManager/etc/config.xsd">
    <type name="Vendor\Namespace\SomeClass">
        <arguments>
            <argument name="allowedCountriesReader" xsi:type="object">OverrideAllowedCountries</argument>
        </arguments>
    </type>
</config>
```

After following these steps, you will have successfully modified the behavior of a private method.

### What can be changed with dependency replacement

Public, protected, and private methods can be changed with dependency replacement. Like with a plugin, you can modify the arguments going in, completely replace the function altogether, or modify the output of the function.

### When to use dependency replacement

This is a good first option when it would actually accomplish the desired goal, assuming nothing too complex has to be done to implement.

### Drawbacks

Not many. It's not usable in every situation. The only real drawback that comes to mind is that you must extend the original class which contains the functionality you must modify. That goes against the principle of "Composition over Inheritance".
