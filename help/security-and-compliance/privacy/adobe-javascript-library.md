---
title: Adobe Privacy JavaScript Library
description: Learn how to use custom tools for accessing and deleting customer personal information collected by Adobe Commerce and Magento Open Source.
hide: yes
hidefromtoc: yes
---

# Adobe Privacy JavaScript Library

<!-- TODO: Remove hide metadata when the library has been integrated with Commerce. -->

The [Adobe Privacy JavaScript Library](https://developer.adobe.com/apis/experienceplatform/gdpr/services/allservices.html) is a set of tools to help create a process for accessing and deleting private data.

Adobe Commerce and Magento Open Source data tracking services can store private information applicable to privacy regulations such as the [General Data Protection Regulation (GDPR)](gdpr.md) and [California Consumer Privacy Act (CCPA)](ccpa.md).

This library provides a unified set of functions for creating privacy-data requests, sending them to each product's implementations, and gathering the responses. Use this library to retrieve and remove the data stored in the browser by these data tracking services.

## Installation

Use one of the following methods to download the library file:

-  npm: `npm install @adobe/adobe-privacy`
-  GitHub: [https://github.com/Adobe-Marketing-Cloud/adobe-privacy](https://github.com/Adobe-Marketing-Cloud/adobe-privacy)

After you have the file, you will need to add it to a custom module or theme installed in your Adobe Commerce and Magento Open Source instance. Follow the instructions described in the [Use custom JavaScript](https://developer.adobe.com/commerce/frontend-core/javascript/custom/) topic to accomplish this task.

## Usage

The AdobePrivacy JS Library provides various functions to manage identity data stored in the browser.

`retrieveIdentities()`
: Returns an array of identities from a service along with an array of identities not found in the service

`removeIdentities()`
: Removes identities from the browser and returns an array of identity objects with a `isDeleteClientSide` boolean property to indicate whether the data has been deleted.

`retrieveThenRemoveIdentities()`
: This function is similar to `removeIdentities()` in that it retrieves an array of identities and removes them from the browser.

For more information and examples for using these functions, see the [official library documentation](https://developer.adobe.com/apis/experienceplatform/gdpr/services/allservices.html).

### Initialization

Instantiate a new `AdobePrivacy` object to use the AdobePrivacy JS Library in your implementation code.

```js
var adobePrivacy = new AdobePrivacy({});
```

The constructor accepts a configuration object with parameters during instantiation.
Refer to the [official library documentation](https://developer.adobe.com/apis/experienceplatform/gdpr/services/allservices.html) for a list of these configuration parameters.
