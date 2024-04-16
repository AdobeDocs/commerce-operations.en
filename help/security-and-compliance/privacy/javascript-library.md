---
title: Privacy JavaScript Library
description: Learn how to use custom tools for accessing and deleting customer personal information collected by Adobe Commerce.
exl-id: bcfea656-2cf0-48ae-9049-d91679166d05
---
<!-- TODO: Remove this topic and redirect to the adobe-privacy-javascript-library.md when the Adobe privacy library has been integrated with Commerce. -->

# Privacy JavaScript Library

The Privacy JavaScript Library is a set of tools to help create a process for accessing and deleting private data collected by Adobe Commerce.

Commerce data tracking services can store private information applicable to privacy regulations such as the [General Data Protection Regulation (GDPR)](gdpr.md) and [California Consumer Privacy Act (CCPA)](ccpa.md).

This library provides a set of functions for creating privacy data requests and gathering their responses. Use this library to retrieve and remove the data stored in the browser by Adobe Commerce data tracking services.

>[!NOTE]
>
>If [Cookie Restriction Mode](https://experienceleague.adobe.com/docs/commerce-admin/start/compliance/privacy/compliance-cookie-law.html) is enabled, Commerce does not collect behavioral data until the shopper consents. If [!UICONTROL **Cookie Restriction Mode**] is disabled, Commerce collects behavioral data by default.

## Installation

The Privacy JavaScript Library is available at the following CDN location: `commerce.adobe.net/magentoprivacy.js`

After you have the file, you will need to add it to a custom module or theme installed in your Adobe Commerce or Magento Open Source instance. Follow the instructions described in the [Use custom JavaScript](https://developer.adobe.com/commerce/frontend-core/javascript/custom/) topic to accomplish this task.

### Initialization

Import and instantiate a new `MagentoPrivacy` object or use the `window` object to access the Privacy JavaScript functions.

Example using `import`:

```js
import MagentoPrivacy from "./MagentoPrivacy"

const magePriv = new MagentoPrivacy()
```

Example using `window`:

```js
const magePriv = new window.MagentoPrivacy()
```

## Usage

The Privacy JS Library provides various functions to manage identity data stored in the browser.

`retrieveIdentity()`
: Returns a JavaScript promise for an identity object from a service in the browser.

  ```js
  magePriv.retrieveIdentity().then((ids)=>console.log(ids))
  // {"value":"1ccfd8c2-5159-433c-98d7-e937ce3b13f3"}
  ```

`removeIdentity()`
: Removes the identity data from a service in the browser.
  This function returns a JavaScript promise for an identity object with an `isDeleted` boolean property to indicate whether the data has been deleted.

  ```js
  magePriv.removeIdentity().then((ids)=>console.log(ids))
  // {"value":"1ccfd8c2-5159-433c-98d7-e937ce3b13f3","isDeleted":true}
  ```
