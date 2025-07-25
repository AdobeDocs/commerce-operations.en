# Magento Open Source release notes (v2.4.8)

## Highlights

The following 31 highlights apply to the Magento Open Source 2.4.8 release.

### Framework

#### Upgrade the league/flysystem Composer dependencies upgrading to latest version

Upgrade the 2.x league/flysystem Composer dependencies to latest version 3.x

_AC-10721 - [GitHub code contribution](<https://github.com/magento/magento2/commit/91cb4d46>)_

#### Investigate php-amqplib/php-amqplib latest versions

Updated the latest version php-amqplib/php-amqplib :^3.x

_AC-11673 - [GitHub code contribution](<https://github.com/magento/magento2/commit/de4dfb8e>)_

#### jQuery/fileuploader css cleanup after migration to uppy library

Removed jQuery/fileUploader library because it has been migrated to Uppy library

_AC-11911 - [GitHub code contribution](<https://github.com/magento/magento2/commit/7cabfb46>)_

#### Add compatibility with MySQL 8.4 LTS for Magento CE

_AC-11995 - [GitHub code contribution](<https://github.com/magento/magento2/commit/672a2e61>)_

#### ExtJs folder cleanup after migration to jsTree library

Removed extJs folder as the related functionality has been migrated to jsTree

_AC-12015 - [GitHub code contribution](<https://github.com/magento/magento2/commit/7cabfb46>)_

#### Upgrade monolog/monolog system dependency to the latest major version

The system has been updated to use the latest major version of the &quot;monolog/monolog:^3.x&quot; library, ensuring compatibility and improved performance. Previously, the system was using an outdated version of the &quot;monolog/monolog&quot; library which could have led to potential issues and limitations.

_AC-12022 - [GitHub code contribution](<https://github.com/magento/magento2/commit/edcd0dcc>)_

#### Upgrade wikimedia/less.php dependency to the latest major version

The system has been updated to use the latest major version 5.x of the &quot;wikimedia/less.php&quot; library, ensuring compatibility and up-to-date functionality. Previously, the system was using an outdated version of the library which could have led to security issues.

_AC-12023 - [GitHub code contribution](<https://github.com/magento/magento2/commit/edcd0dcc>)_

#### Upgrade jquery/validate library dependency to the latest minor version

Upgrade jquery/validate library dependency to the latest minor version 1.20.0

_AC-12024 - [GitHub code contribution](<https://github.com/magento/magento2/commit/de4dfb8e>)_

#### Upgrade moment.js system dependency to the latest minor version

Upgrade moment.js system dependency to the latest minor version 2.30.1

_AC-12025 - [GitHub code contribution](<https://github.com/magento/magento2/commit/de4dfb8e>)_

#### Add compatibility with MySQL 8.4 LTS for EE

_AC-12032 - [GitHub code contribution](<https://github.com/magento/magento2/commit/672a2e61>)_

#### Add compatibility with MySQL 8.4 LTS for B2B

_AC-12034 - [GitHub code contribution](<https://github.com/magento/magento2/commit/672a2e61>)_

#### Add compatibility with MySQL 8.4 LTS for bundle extensions

_AC-12074 - [GitHub code contribution](<https://github.com/magento/magento2/commit/672a2e61>)_

#### Add compatibility with MariaDB 11.4 LTS For CE

Added MariaDB 11.4 support with Adobe Commerce and extensions

_AC-12085 - [GitHub code contribution](<https://github.com/magento/magento2/commit/b34c0a75>)_

#### Subscribers Optimisation - PhpUnit10

_AC-12165 - [GitHub code contribution](<https://github.com/magento/magento2/commit/90e25b6b>)_

#### Support connection retries for Redis session and compatible with colinmollenhour/php-redis-session-abstract v2.0.0

Updated latest version of colinmollenhour/php-redis-session-abstract v2.0.0 compatible with adobe commerce

_AC-12267 - [GitHub code contribution](<https://github.com/magento/magento2/commit/672a2e61>)_

#### Investigate the automation tests failures with MySQL 8.4 LTS

_AC-12576 - [GitHub code contribution](<https://github.com/magento/magento2/commit/672a2e61>)_

#### Add compatibility with MariaDB 11.4 LTS For EE

Added MariaDB 11.4 support with Adobe Commerce and extensions

_AC-12595 - [GitHub code contribution](<https://github.com/magento/magento2/commit/b34c0a75>)_

#### Update laminas composer dependencies upgrading to latest version

The system now supports the latest versions of laminas composer dependencies:
laminas/laminas-servicemanager
laminas/laminas-server
laminas/laminas-stdlib
laminas/laminas-validator
ensuring compatibility and up-to-date functionality. Previously, updating to the latest versions of these dependencies could cause backward incompatibility issues and test failures.

_AC-12715 - [GitHub code contribution](<https://github.com/magento/magento2/commit/b34c0a75>)_

#### Investigate the unit test failure due to phpunit patch update during component upgrade

_AC-12823 - [GitHub code contribution](<https://github.com/magento/magento2/commit/b34c0a75>)_

#### [Part 1] - Update all js library and npm dependency with latest available version

composer version support was up to the composer version 2.2.x only. Now the support extended to 2.4.x version as well.

_AC-13076 - [GitHub code contribution](<https://github.com/magento/magento2/commit/19844aa0>)_

### Order

#### [Feature Request] Customer suggests that Submit Comment Button on Order Details page is confusing and should be changed to something else

In order to minimize the confusion, the &quot;Submit Comment&quot; button label changed to &quot;Update&quot; in the order detail page.

_ACP2E-2709 - [GitHub code contribution](<https://github.com/magento/magento2/commit/488c1034>)_

### Other

#### Set indexers appear in Ready status default when new version of Adobe Commerce is installed

After Installation Magento, Indexer&apos;s Status must be in *Ready* state by default.

_AC-11420 - [GitHub code contribution](<https://github.com/magento/magento2/commit/71432aeb>)_

#### In existing Magento installation when install third party indexer module set indexers in update by schedule by default.

All new indexers are by default in [Update by Schedule] mode. Previously, the default mode was [Update on Save]. Same with custom indexers as well.

_AC-11421 - [GitHub code contribution](<https://github.com/magento/magento2/commit/71432aeb>)_

#### Elasticsearch 7 and 8 options should come with Deprecated in Admin config.

Elasticsearch 8 option in Admin Config option will show with Deprecated text to inform users that Elasticsearch 8 is no longer recommended option to use.

_AC-12480 - [GitHub code contribution](<https://github.com/magento/magento2/commit/0611e750>)_

#### Add text note when Elasticsearch option is selected in Admin Configuration

A text note is added to let Adobe Commerce admin users know that elasticsearch is no longer supported by Adobe and is deprecated.

_AC-12481 - [GitHub code contribution](<https://github.com/magento/magento2/commit/0611e750>)_

#### Deliver tier-price operations performance improvement patch into 2.4.8

The system now allows for more efficient bulk updates of tier prices without causing performance issues or site unresponsiveness when using the &quot;/V1/products/tier-prices&quot; REST API endpoint. Previously, updating a large number of prices using this endpoint could result in performance issues and site unresponsiveness.

_AC-13448 - [GitHub code contribution](<https://github.com/magento/magento2/commit/082d981c>)_

#### Remove all the Adobe confidential copyright notices from the Magento Open Source repositories

All Adobe confidential copyright notices have been removed from the open source repositories, ensuring that only the reduced form of Adobe copyright is used. Previously, some files in the public repositories contained Adobe confidential copyright notices, which led to escalations from the community.

_AC-13550 - [GitHub issue](https://github.com/magento/magento2/issues/39493) - [GitHub code contribution](<https://github.com/magento/magento2/commit/4bca5dfe>)_

### UI Framework

#### [2.4.8-beta1] TinyMCE 5 migration to TinyMCE 7

Migrated TinyMCE 5 to TinyMCE 7.3.0 to be a supported version for Adobe Commerce, previously system was using 5.10.2 which was out dated and reported security vulnerability

_AC-12726 - [GitHub code contribution](<https://github.com/magento/magento2/commit/edcd0dcc>)_

#### [2.4.8-beta1] TinyMCE 5 migration to TinyMCE 7 Page Builder

Migrated TinyMCE 5 to TinyMCE 7.3.0 to be a supported version for Adobe Commerce, previously system was using 5.10.2 which was out dated and reported security vulnerability

_AC-12825 - [GitHub code contribution](<https://github.com/magento/magento2/commit/edcd0dcc>)_

#### [2.4.8-beta1] TinyMCE 5 migration to TinyMCE 7 - Magento2-infra - banned words

Migrated TinyMCE 5 to TinyMCE 7.3.0 to be a supported version for Adobe Commerce, previously system was using 5.10.2 which was out dated and reported security vulnerability

_AC-12844 - [GitHub code contribution](<https://github.com/magento/magento2/commit/edcd0dcc>)_

#### Require.js upgrade to the latest version 2.3.7 (security vulnerability CVE-2024-38999)

Updated require.js to the latest version 2.3.7. In previous version reported security vulnerability

_AC-12901 - [GitHub code contribution](<https://github.com/magento/magento2/commit/b34c0a75>)_

## Fixed issues in v2.4.8

We have fixed 497 issues in the Magento Open Source 2.4.8 core code. A subset of the fixed issues included in this release is described below.

### APIs

#### /V1/transactions REST API returns error when parent_txn_id = txn_id

The system now correctly handles the parent and child concept transactions where the parent transaction ID is the same as the transaction ID, preventing an infinite loop when querying the /V1/transactions REST API endpoint. Previously, this scenario would result in a fatal error due to maximum execution time being exceeded.

_AC-10042 - [GitHub code contribution](https://github.com/magento/magento2/commit/1bafc571)_

#### [Graphql] Type issue in 2.4.7

The system now correctly handles integer values in the GetCustomSelectedOptionAttributes function when executing a GraphQL query, preventing any type-related errors. Previously, launching a GraphQL query that used GetCustomSelectedOptionAttributes with an integer argument resulted in a type error.

_AC-11878 - [GitHub issue](https://github.com/magento/magento2/issues/38662) - [GitHub code contribution](https://github.com/magento/magento2/pull/38663)_

#### Special characters in category url_key (when created via REST API)

Earlier In category_url_key special character is not there after the fix it  is showing special character in category_url_key

_AC-3223 - [GitHub issue](https://github.com/magento/magento2/issues/35577) - [GitHub code contribution](https://github.com/magento/magento2/commit/c699c206)_

#### Issue with rest api after enable 2FA Duo

2FA with Duo security option now generates correct signature for Rest API

_ACP2E-2755 - [GitHub code contribution](https://github.com/magento/security-package/commit/412fa642)_

#### [REST API]: Use Default value in store view does not stay checked after adding configurations for a configurable product

The issue has been fixed by ensuring correct database entries for the customizable options for a non-default store. The checkbox for the custom store in the &quot;admin &gt; Catalogue &gt; Product Edit &gt; Customizable Options&quot; section was previously unchecked owing to inaccurate database entries, even if the option title for the custom store stayed the same as the default store.

_ACP2E-2927 - [GitHub code contribution](https://github.com/magento/magento2/commit/3056e9cb)_

#### REST API unable to make requests with slash (/) in SKU when using Oauth1

Prior to the fix, you were not able to make a successful API call for a product that had &quot;/&quot; in its SKU. Now, you can issue a successful API get request for product details even though its SKU has a forward slash in it.

_ACP2E-2969 - [GitHub code contribution](https://github.com/magento/magento2/commit/b21e5d91)_

#### Customer address update failing when updating through REST API if &quot;validateDefaultAddress&quot; enabled

The API endpoint is now functioning as intended after the problem with the ID key missing from the API payload has been resolved.

_ACP2E-3079 - [GitHub code contribution](https://github.com/magento/magento2/commit/9af794a4)_

#### [Cloud] Creating the Duplicate website group price customer group in Tier Prices Api.

Now Tier Price Rest Api doesn&apos;t allow to create the Duplicate website group price customer group.
Previously it was possible to create the Duplicate website group price customer group in Tier Prices Api that would not pass validation in Admin during product save.

_ACP2E-3091 - [GitHub code contribution](https://github.com/magento/magento2/commit/148c3ead)_

#### Can&apos;t add order comment with status via REST API

The issue has been resolved by allowing the change in order status if it is from the current state only. Previously, it was not honouring the order state and preventing changes in any order status, even if it was from the same state.

_ACP2E-3130 - [GitHub code contribution](https://github.com/magento/magento2/commit/93d50f8d)_

#### Async operation fails when the SKU is missing from the payload

Async and sync operations previously failed due to product save errors if sku is missing from payload. After the fix, the async and sync product save rest api operations fail with relevant exception message.

_ACP2E-3236 - [GitHub code contribution](https://github.com/magento/magento2/commit/66dea0de)_

#### [CLOUD] Unable to update the Base-prices using REST API (The value of &apos;value_id&apos; in &apos;catalog_product_entity_decimal&apos; is not incremented correctly.)

Previously to this fix, when rest api /rest/default/V1/products/base-prices was called, the increment id was increased wrongly leaving a gap between values. After the fix the increment id is increased as expected, incrementaly. Also the value_id field range was increased.

_ACP2E-3376 - [GitHub code contribution](https://github.com/magento/magento2/commit/d50f6b5d)_

#### Order items are not visible in credit memo emails for the API POST V1/order/:orderId/refund

Previously, before this fix, when a customer creates a credit memo from an API request notifying send_email, it does not contain the product details grid. After this fix apply the customer sends a credit memo API request, and will find the product item details appearing in the email.

_ACP2E-3460 - [GitHub code contribution](https://github.com/magento/magento2/commit/3f12d152)_

#### Default values are not set for date and time attributes with products RestAPI

Default values now sets properly for date and date and time attributes via RestAPI

_ACP2E-3486 - [GitHub code contribution](https://github.com/magento/magento2/commit/1984c61c)_

### APIs, Cart & Checkout

#### Critical 500 Error: Magento\Framework\Webapi\Exception Related to Accept HTTP Header

After the fix, there is no issue with specifying the &quot;Accept&quot; header.

_ACP2E-3343 - [GitHub code contribution](https://github.com/magento/magento2/commit/1366ae5e)_

### Account

#### Customer address form allows random code in the name fields

The system now validates the input in the First Name and Last Name fields in the customer address form, preventing the use of random code. Previously, the system allowed the use of random code in these fields without throwing an error.

_AC-10782 - [GitHub issue](https://github.com/magento/magento2/issues/38331) - [GitHub code contribution](https://github.com/magento/magento2/pull/38345)_

#### admin Password update.

_AC-10886 - [GitHub issue](https://github.com/magento/magento2/issues/38352) - [GitHub code contribution](https://github.com/magento/magento2/commit/4bca5dfe)_

#### my account add address crash on save

The system now correctly saves customer addresses even when the region field is not displayed, preventing a crash during the save process. Previously, attempting to add or edit an address without a displayed region field would result in an exception error.

_AC-10990 - [GitHub issue](https://github.com/magento/magento2/issues/38406) - [GitHub code contribution](https://github.com/magento/magento2/pull/38407)_

#### Redirect loop when URL have uppercase

The system now automatically converts uppercase characters in URLs to lowercase, preventing a redirect loop when accessing the homepage. Previously, having uppercase characters in the Secure Base URL would cause a continuous redirect loop when trying to access the homepage.

_AC-11718 - [GitHub issue](https://github.com/magento/magento2/issues/38538) - [GitHub code contribution](https://github.com/magento/magento2/pull/38539)_

#### middlename(&apos;s) not saved for guest accounts

The system now correctly saves the middle name for guest accounts during checkout, making it accessible in the email template. Previously, the middle name was not saved in the quote table and was not accessible in the email template for guest accounts.

_AC-11755 - [GitHub issue](https://github.com/magento/magento2/issues/38593) - [GitHub code contribution](https://github.com/magento/magento2/pull/39067)_

#### Admin: Page Actions Buttons floating left instead of right

The system now correctly aligns the Page Actions Buttons to the right side of the sticky header in the admin panel, enhancing the professional look and feel. Previously, these buttons were incorrectly floating to the left side of the sticky header.

_AC-11919 - [GitHub issue](https://github.com/magento/magento2/issues/38701) - [GitHub code contribution](https://github.com/magento/magento2/commit/44cef3a9)_

#### `dev:di:info` error in magento 2.4.7

The system now correctly displays constructor parameters when executing the `dev:di:info` command, preventing any errors from occurring. Previously, executing this command resulted in an error due to a type mismatch in the argument.

_AC-11999 - [GitHub issue](https://github.com/magento/magento2/issues/38740) - [GitHub code contribution](https://github.com/magento/magento2/commit/0c53bbf7)_

#### Login as customer opt-in checkbox not translatable

The system now allows the &quot;Login as Customer opt-in checkbox&quot; and &quot;Login as Customer checkbox tooltip&quot; fields to be set at the &quot;Store view&quot; scope, enabling translations for different store views. Previously, these fields were only set at the &quot;Website&quot; scope, preventing translations for individual store views.

_AC-13000 - [GitHub issue](https://github.com/magento/magento2/issues/32329) - [GitHub code contribution](https://github.com/magento/magento2/pull/32359)_

#### Customer is logged in but showing 404 error in frontend.

The storefront customer dashboard page now loads as expected when a customer logs in. Previously, customers could log in, but this page showed a 404 error. [GitHub-35838](https://github.com/magento/magento2/issues/35838)

_AC-6071 - [GitHub issue](https://github.com/magento/magento2/issues/35838) - [GitHub code contribution](https://github.com/magento/magento2/pull/36263)_

#### Not able to Save Customer attribute information in Admin Edit customer section;

The store ID of the customer is now implemented properly per website scope for the admin customer edit form.

_ACP2E-2791 - [GitHub code contribution](https://github.com/magento/magento2/commit/488c1034)_

#### After logging in, the products added to the compare list as a guest user are not visible.

Products that were added to product compare list before logging in as a customer now are preserved after logging in.
Previously, after logging in, the products added to the compare list as a guest user were not visible.

_ACP2E-3329 - [GitHub code contribution](https://github.com/magento/magento2/commit/078c387e)_

#### Allow Countries configuration causes issues in customer address configurations

Now selecting Allow Countries configuration doesn&apos;t influence countries shown for outside the given scope. Previously Allow Countries configuration influenced customer address attribute outside given scope

_ACP2E-3433 - [GitHub code contribution](https://github.com/magento/magento2/commit/078c387e)_

#### VAPT: Business Logic Error - future date as customer date of birth

Customer&apos;s date of birth can not be set later than today

_ACP2E-3501 - [GitHub code contribution](https://github.com/magento/magento2/commit/d4de4726)_

### Account, APIs, GraphQL

#### Customer API - Login Failures Number Not Able To Reset To 0 After Successful Login

Now failure number is reset to zero in customer entity table after customer successful login through API endpoints.

_ACP2E-3246 - [GitHub code contribution](https://github.com/magento/magento2/commit/ec7e32a9)_

### Account, Admin UI, B2B

#### Restricted admin users can&apos;t always see custom shared catalogs

Restricted admin users can now consistently view and manage customers and all shared catalogs to which the products are assigned, provided they have access to the specific store. Previously, a restricted admin user with access to a particular store could not always see all shared catalogs to which the products were assigned or could see customers that could not save, leading to inconsistencies in the system.

_ACP2E-3038 - [GitHub code contribution](https://github.com/magento/magento2/commit/7377de59)_

### Account, Cart & Checkout

#### &quot;select&quot; custom customer address attribute does not render for new customer address

_AC-2341 - [GitHub issue](https://github.com/magento/magento2/issues/34950)_

### Admin UI

#### [Issue] add permission check for &quot;reload data&quot; data button

The system now includes a permission check for the &quot;Reload Data&quot; button, ensuring that it is only displayed and accessible to users with the appropriate permissions. Previously, the &quot;Reload Data&quot; button was visible and clickable for all users, leading to a &quot;not permitted&quot; page when clicked by users without the necessary permissions.

_AC-10705 - [GitHub issue](https://github.com/magento/magento2/issues/38283) - [GitHub code contribution](https://github.com/magento/magento2/pull/38279)_

#### [Issue] Inconsistent labels for attributes in marketing rules

The system now correctly populate the labels consistently for category and attribute options in cart price rule

_AC-11427 - [GitHub issue](https://github.com/magento/magento2/issues/31232) - [GitHub code contribution](https://github.com/magento/magento2/pull/31231)_

#### Data validation is success and Import button is present during Import products with Replace behavior

The system now correctly validates data and hides the &quot;Import&quot; button during the product import process with &quot;Replace&quot; behavior, preventing any unintended data replacement. Previously, the system incorrectly validated the data and displayed the &quot;Import&quot; button, leading to potential data inconsistencies.

_AC-11588 - [GitHub code contribution](https://github.com/magento/magento2/commit/0574ac23)_

#### [Bug] Magento 2.4.7 doesn&apos;t allow product photo&apos;s with capital letter file extension.

The system now accepts product image uploads with capital letter file extensions, ensuring a smooth product creation process. Previously, image uploads with capital letter file extensions were refused, forcing users to change the file extension to lowercase.

_AC-12167 - [GitHub issue](https://github.com/magento/magento2/issues/38831) - [GitHub code contribution](https://github.com/magento/magento2/commit/c8f87c25)_

#### Hidden dropdown in grids with select action (e.g. Content &gt; Elements &gt; Pages)

Now the system has been fixed all similar dropdown for all the grids.

_AC-12319 - [GitHub issue](https://github.com/magento/magento2/issues/38891) - [GitHub code contribution](https://github.com/magento/magento2/pull/39371)_

#### [Issue] Fix Warning: Undefined array key &quot;filters&quot;

The system now handles scenarios where a new user has not interacted with bookmarks yet, preventing an undefined array key &quot;filters&quot; warning from being logged. Previously, this warning would be logged when a fresh user had not interacted with bookmarks.

_AC-13131 - [GitHub issue](https://github.com/magento/magento2/issues/39013) - [GitHub code contribution](https://github.com/magento/magento2/pull/38996)_

#### Product import csv file with special characters fails due to code changes in Validate.php file

The system now correctly validates and imports product CSV files containing special characters, allowing for successful data transfer. Previously, attempting to import a product CSV file with special characters would result in an error, preventing the import process.

_AC-13529 - [GitHub code contribution](https://github.com/magento/magento2/commit/6cfb9b6b)_

#### There is no red asterisk for mandatory phone number field

Earlier red asterisk was not showing for phone number but  phone number was mandatory. Which is now fixed red asterisk can be seen on phone number as a mandatory filed.

_AC-13850 - [GitHub code contribution](https://github.com/magento/magento2/commit/c699c206)_

#### [Issue] Set default indexer mode to &apos;schedule&apos;

All new indexers are by default in **[!UICONTROL Update by Schedule]** mode.  Previously, the default mode was **[!UICONTROL Update on Save]**. Existing indexers are not affected. [GitHub-36419](https://github.com/magento/magento2/issues/36419)

_AC-6975 - [GitHub issue](https://github.com/magento/magento2/issues/36419) - [GitHub code contribution](https://github.com/magento/magento2/commit/0b410856)_

#### [Issue] Drop indexer changelog tables on mview unsubscribe

The system now automatically removes unused changelog tables when an index is switched from &apos;update on schedule&apos; to &apos;update on save&apos;, marking the index as invalid to ensure no entries are missed. Previously, switching an index to &apos;update on save&apos; would leave unused changelog tables in the system and mark all changed indexes as &apos;valid&apos;.

_AC-7700 - [GitHub issue](https://github.com/magento/magento2/issues/29789) - [GitHub code contribution](https://github.com/magento/magento2/pull/25859)_

#### No link to shipping when in payments in checkout in mobile phone view

The system now ensures that the checkout titles/links &quot;Shipping&quot; and &quot;Review &amp; Payments&quot; are always visible on top of the page in mobile view, allowing users to easily navigate between steps and make necessary corrections. Previously, these titles/links were hidden in mobile view, making it difficult for users to know their current step or go back to previous steps.

_AC-7962 - [GitHub issue](https://github.com/magento/magento2/issues/36856) - [GitHub code contribution](https://github.com/magento/magento2/pull/36982)_

#### customer Orders query shipment comments created_at is returned in +0 timezone not in store configured timezone

The system now correctly displays the &apos;created_at&apos; field from shipment comments in the customer&apos;s configured timezone when using the customer Orders query. Previously, the &apos;created_at&apos; field was displayed in the +0 timezone, regardless of the customer&apos;s configured timezone.

_AC-8109 - [GitHub issue](https://github.com/magento/magento2/issues/36947) - [GitHub code contribution](https://github.com/magento/magento2/pull/37642)_

#### i18n:collect-phrases breaks the translations integrity

The `bin/magento i18n:collect-phrases -o` command  now correctly collects and adds new phrases from JavaScript and .phtml files, ensuring that translations are accurately reflected in the translation file. Previously, the system failed to include multiline translation phrases from JavaScript files and phrases from .phtml files in the translation file, leading to incomplete or incorrect translations.

_AC-9843 - [GitHub code contribution](https://github.com/magento/magento2/commit/0c53bbf7)_

#### Apostrophe in store view name is replaced by &amp;#039;

The grid&apos;s store view filters now properly display apostrophes

_ACP2E-2787 - [GitHub issue](https://github.com/magento/magento2/issues/38395) - [GitHub code contribution](https://github.com/magento/magento2/commit/39d54c2d)_

#### Favicon upload fails to validate .ico files

The file validation error has been updated to &quot;File validation failed. Please verify the Image Processing Settings in the Store Configuration.&quot; Previously, it was simply &quot;File validation failed.&quot;

_ACP2E-2847 - [GitHub code contribution](https://github.com/magento/magento2/commit/39d54c2d)_

#### Gallery in PageBuilder is showing old image thumbnail instead of newly uploaded image

Regenerate image previews for images deleted and re-uploaded with same name through media gallery in page builder content.

_ACP2E-2957 - [GitHub code contribution](https://github.com/magento/magento2-page-builder/commit/60140cd2) - [GitHub code contribution](https://github.com/magento/magento2/commit/001e5188)_

#### Saving product by admin user with different role scope overwrites/deletes existing Related product information in the product

Previously, before the fix, the related products were reset and became empty when the secondary admin user clicked on the save button without changing in related product. After this fix, the secondary admin user clicks on the save button and the product doesn&apos;t reset and is saved successfully.

_ACP2E-2978 - [GitHub code contribution](https://github.com/magento/magento2/commit/3056e9cb)_

#### Unable to export more than 200 orders

The server limits for the request size of previously submitted selected IDs have been neglected by altering the HTTP request from GET to POST in order to fix the issue. Previously, due to the server limitations for GET request size, the issue was encountered.

_ACP2E-3033 - [GitHub code contribution](https://github.com/magento/magento2/commit/93d50f8d)_

#### Checkout page Validation message incorrect.

If any required field is left empty, such as &quot;address,&quot; the server-side validation will not display the message. The client-side validation will ensure that the required field error notification appears, stating &quot;This is a required field.&quot; Previously, the message &quot;address is required&quot; would appear if any required field was left empty, in addition to the client-side validation message.

_ACP2E-3037 - [GitHub code contribution](https://github.com/magento/magento2/commit/9af794a4)_

#### Password reset template issue with Admin user

The issue has been resolved by using the correct key, which now includes the admin username in the email template and properly completes the subject. Previously, the problem stemmed from an outdated key that was being used.

_ACP2E-3125 - [GitHub code contribution](https://github.com/magento/magento2/commit/93d50f8d)_

#### Double slashes in customer segment URL

Double slashes do not appear in the URL when &apos;Reset Filter&apos; is clicked in the grid.

_ACP2E-3149 - [GitHub code contribution](https://github.com/magento/magento2/commit/8459b17d)_

#### COD is not available for allowed specific countries

Now Cash on delivery is available for allowed specific countries whenever it is required and   AC-3216 is working as expected.

_ACP2E-3171 - [GitHub code contribution](https://github.com/magento/magento2/commit/6f4805f8)_

#### Cannot update Custom created Order status

&apos;We can now update custom-created order statuses, whereas previously, the status could only be changed if the current status was either &quot;processing&quot; or &quot;fraud.&quot;

_ACP2E-3178 - [GitHub issue](https://github.com/magento/magento2/issues/38659) - [GitHub code contribution](https://github.com/magento/magento2/commit/8459b17d)_

#### The shipping address state is not auto updating

Prior to the fix, the shipping address region (or region id) was not in sync with the address billing information. Now, both shipping address region and region id are properly updated when billing address information is changed.

_ACP2E-3294 - [GitHub code contribution](https://github.com/magento/magento2/commit/581b7ef1)_

#### Reset button doesn&apos;t work on Add/Edit admin user

Previously, the Reset button did not function on the Add/Edit Admin User page. Now, in the Admin panel under System -&gt; Permissions -&gt; All Users, the Reset button will work correctly on the Add/Edit Admin User page.

_ACP2E-3364 - [GitHub code contribution](https://github.com/magento/magento2/commit/5184c067)_

#### Magento admin URL routing wrong detection and CORS errors

After the fix, if the custom admin domain is a subdomain of the main domain, the admin is accessible only from the configured subdomain.

_ACP2E-3373 - [GitHub issue](https://github.com/magento/magento2/issues/37663) - [GitHub code contribution](https://github.com/magento/magento2/commit/3f12d152)_

#### Broken validation for &apos;Maximum Qty Allowed in Shopping Cart&apos;

Previously, when we put `Maximum Qty Allowed in Shopping Cart` empty, it did not throw any exception, though an empty value is not accepted here. After this fix applies, putting an empty string will throw exceptions and will not allow saving the product.

_ACP2E-3392 - [GitHub code contribution](https://github.com/magento/magento2/commit/d50f6b5d)_

#### [Pagebuilder Preview UI Issue] The buttons in the Page Builder column aren&apos;t lining up correctly

The buttons in the Page Builder columns are now correctly aligned. Previously, they were misaligned within the Page Builder columns.

_ACP2E-3408 - [GitHub code contribution](https://github.com/magento/magento2-page-builder/commit/1a52ef4c)_

#### Products Ordered report is not exporting. 404 error instead.

Products Ordered report excport to CSV and XML now works as expected

_ACP2E-3431 - [GitHub code contribution](https://github.com/magento/magento2/commit/88660e79)_

#### TinyMCE JS Error in console after Js minification enable with production mode

Previously, enabling JavaScript minification in production mode within the admin panel caused JavaScript errors related to TinyMCE 6 to appear in the browser console, affecting the functionality and user experience. Now, This issue has been resolved, ensuring that TinyMCE 6 operates smoothly without generating any errors, even when JS minification is enabled.

_ACP2E-3457 - [GitHub code contribution](https://github.com/magento/magento2/commit/56463d5e)_

#### Request for additional changes to fully complete the ACP2E-3375 fix

&apos;-

_ACP2E-3459 - [GitHub code contribution](https://github.com/magento/magento2/commit/d50f6b5d)_

#### Automatic enabling of new ACL permissions

New permissions added to custom modules will no longer automatically grant access to all existing user roles unless explicitly configured.

_ACP2E-3503 - [GitHub code contribution](https://github.com/magento/magento2/commit/3f12d152)_

#### Admin Actions Log User Report doesnt show details for adminhtml_user_delete

The adminhtml_user_delete now correctly logs important details. Previously, logs were not generated for user deletions.

_ACP2E-3509 - [GitHub code contribution](https://github.com/magento/magento2/commit/4de008a9)_

#### Cart Rule with shipping condition not applying when placing order from admin

Previously, if the cart price rule has a shipping method discount with the coupon, it can not be applied through Admin UI. After this fix is applied, the cart price rule discount with a coupon for a specific shipping method will be applied from Admin UI successfully.

_ACP2E-3536 - [GitHub code contribution](https://github.com/magento/magento2/commit/a52ff98f) - [GitHub code contribution](https://github.com/magento/inventory/commit/11ce816b)_

#### [FRESH] HEX code is not updating correctly in SWATCH

HEX code that is manually entered by user in the Visual Swatch color picker is no longer altered by the system. Previously, certain HEX codes experienced slight adjustments due to conversion errors between color models.

_ACP2E-3559 - [GitHub code contribution](https://github.com/magento/magento2/commit/344fce23) - [GitHub code contribution](https://github.com/magento/inventory/commit/1ef984c0)_

### Admin UI, B2B

#### B2B Login as Customer header still has Magento branding

Earlier the storefront header shows &quot;You are now connected as &lt;customer name&gt; on &lt;store name&gt;&quot; with Magento branding. Which is now fixed and the header shows with ADOBE branding.

_AC-13628 - [GitHub code contribution](https://github.com/magento/magento2/commit/96dec499)_

### Admin UI, Payment/ Payment Methods, Order

#### Transaction Authorization Not Displayed in Transaction Tab After PayPal Smart Button Order

The system now correctly displays the transaction authorization in the Transaction tab after an order is placed using the PayPal Smart Button. Previously, the authorization transaction was not appearing in the Transaction tab after clicking the &quot;Authorize&quot; button, and no new transaction of type &quot;Authorization&quot; was created.

_AC-13520 - [GitHub code contribution](https://github.com/magento/magento2/commit/6cfb9b6b)_

### Admin UI, Performance

#### After update to 2.4.5-p8 500 errors occur when creating order from admin

Previously, when enabling HTML minification, an order from admin could not be placed. Now, with HTML minification enabled, the order from admin can be placed successfully.

_ACP2E-3169 - [GitHub code contribution](https://github.com/magento/magento2/commit/b21e5d91)_

### Admin UI, Shipping

#### The coupon code count does not update in the   &quot;Time Used&quot; column in the Manage Coupon Codes tab if an order is placed with multi-shipping.

Earlier, when an order was placed with multi-shipping, the coupon code count did not update in the &quot;Time Used&quot; column on the Manage Coupon Codes tab. Now, the correct count is displayed in both the &quot;Time Used&quot; reflecting the desired values with multi shipping.

_ACP2E-2519 - [GitHub code contribution](https://github.com/magento/magento2/commit/4745100c)_

### Admin UI, Staging & Preview

#### [Cloud] Removing template with missing images causes pub/media to be deleted

Previously to this fix, if the preview image name was missing for a pagebuilder template, the pub/media folder was deleted. After the fix, only the template will be deleted and the preview image if found.

_ACP2E-3424 - [GitHub code contribution](https://github.com/magento/magento2-page-builder/commit/0986853b)_

### Analytics / Reporting

#### Google Analytics CSP Error https://region1.analytics.google.com

The system now correctly allows connections to &apos;https://region1.analytics.google.com&apos; when Google Analytics is enabled, preventing Content Security Policy (CSP) errors. Previously, enabling Google Analytics and viewing the website from the EU would result in CSP console errors due to a refusal to connect to &apos;https://region1.analytics.google.com&apos;.

_AC-9922 - [GitHub issue](https://github.com/magento/magento2/issues/37750) - [GitHub code contribution](https://github.com/magento/magento2/pull/38991)_

#### Advance Report is not working

The system now supports the generation of Advance Reporting data files for extra-large datasets by loading and writing reports in batches of 10,000. Previously, the Advance Reporting module was unable to generate data files for extra-large datasets, causing &quot;MySQL server has gone away&quot; errors during the execution of the analytics_collect_data cron job.

_ACP2E-2570 - [GitHub code contribution](https://github.com/magento/magento2/commit/a12063bd)_

#### Admin Ordered Products Report date range visibility issue.

The user will be able to select any date from the ordered products report. Previously, after a table refresh, selecting &apos;FROM&apos; date will reset &apos;TO&apos; date.

_ACP2E-3080 - [GitHub code contribution](https://github.com/magento/magento2/commit/6f4805f8)_

#### Incorrect curl headers making `newrelic:create:deploy-marker` not working

The system now correctly formats curl headers, allowing the `newrelic:create:deploy-marker` command to successfully create a deployment marker in New Relic. Previously, incorrect curl headers prevented the creation of a deployment marker in New Relic.

_ACP2E-3096 - [GitHub issue](https://github.com/magento/magento2/issues/37641) - [GitHub code contribution](https://github.com/magento/magento2/commit/6a185204)_

#### NewRelic browser monitoring inlineJS  script causes CSP errors

NewRelic Browser Monitoring scripts are now injected by the application instead of the APM agent for compliance with CSP (Content Security Policy). Previously, NewRelic Browser Monitoring scripts injected by APM agent were not compliant with CSP and caused the scripts to not be executed.

_ACP2E-3183 - [GitHub code contribution](https://github.com/magento/magento2/commit/66dea0de)_

#### INSERT queries to the sales_bestsellers_aggregated_daily table become slow on project with large sales order volume

Previously the bestsellers aggregated daily report would take a lot of time to generate for large volume of placed orders. Now the report is generated in a timely manner.

_ACP2E-3189 - [GitHub code contribution](https://github.com/magento/magento2/commit/7377de59)_

#### Order reports showing the wrong currency symbol

The currency symbol for order amounts in the Order Report was incorrectly taken from currency/options/base. It has now been corrected to use currency/options/default for accurate reporting.

_ACP2E-3276 - [GitHub code contribution](https://github.com/magento/magento2/commit/fd5cf3af)_

#### [Cloud] Incorrect Calculations in Coupon Usage Report

The sales total in the coupon report grid is now accurately calculated by incorporating both the &quot;Discount Tax Compensation Amount&quot; and the &quot;Shipping Discount Tax Compensation Amount.&quot; Previously, these amounts were missing from the calculation, leading to discrepancies between the sales total and the sales order data.

_ACP2E-3302 - [GitHub code contribution](https://github.com/magento/magento2/commit/d75cff27)_

#### Issues with shared &quot;&lt;project_id&gt;/var/tmp&quot;

Analytics DataExport temporary files will use the sys tmp directory, which is more suitable for frequent access and changes. To avoid collisions in case multiple instances are running on the same server, the tmp path was updated to use an instance&apos;s unique id

_ACP2E-3339 - [GitHub code contribution](https://github.com/magento/magento2/commit/a4cf5e62)_

### Analytics / Reporting, B2B

#### B2B - sitemap includes products/categories not assigned to Shared Catalog

Restrict the sitemap generated categories and products to the categories and product assigned only to the public shared catalog and / or the catalog category permission setup.

_ACP2E-2300 - [GitHub code contribution](https://github.com/magento/magento2/commit/ea79f7dd)_

### Analytics / Reporting, Cloud

#### Magento discards most New Relic cron transactions #34108

AC is correctly reporting cron job related transactions to NewRelic. Previously, some cron job related transactions would be shown as &quot;OtherTransaction/Action/unknown&quot; in NR

_ACP2E-3067 - [GitHub code contribution](https://github.com/magento/magento2/commit/35b1b1da)_

#### Metric in NR might be misleading for background transactions- Follow up of ACP2E-3067

Background transactions (cron) will use New Relic app name defined in the config settings

_ACP2E-3187 - [GitHub code contribution](https://github.com/magento/magento2/commit/ec7e32a9)_

### B2B

#### Products assigned to shared catalog are not reflect on the front end when partial index is executed

Products assigned to shared catalog via REST API are now immediately visible on storefront after partial indexing is complete. Previously, Products were visible only after a full re-indexation.

_ACP2E-2139 - [GitHub code contribution](https://github.com/magento/magento2/commit/7377de59)_

#### Unnecessary borders on the My Orders section

Previously an additional container(order references) was created that applied additional CSS classes, which caused unnecessary border lines were appearing below the order number inside the My Orders section, which isn&apos;t visible now.

_ACP2E-3044 - [GitHub code contribution](https://github.com/magento/magento2/commit/9af794a4)_

#### sales_clean_quotes cron deletes quotes from to yet approved purchase orders

Quotes used in purchase orders now will not be deleted by sales_clean_quotes cron job

_ACP2E-3247 - [GitHub code contribution](https://github.com/magento/magento2/commit/581b7ef1)_

### B2B, Framework

#### Filtering Company Grid &amp; Then Attempting Grid CSV Export Will Fail &amp; Throw Exception

The system now allows successful CSV export of the Companies grid data in the admin panel, even when filters such as &apos;Outstanding Balance&apos; and &apos;Company Type&apos; are applied. Previously, applying certain filters and attempting to export the grid data would result in a failure and an exception being thrown.

_AC-9607 - [GitHub code contribution](https://github.com/magento/magento2/commit/44cef3a9)_

### Bundle

#### Storefront Bundle Checkbox Validation Error message count more than 1

The system now displays only one validation error message when the &apos;Add to Cart&apos; button is clicked without selecting any checkbox options for a bundled product. Previously, the system was displaying multiple validation error messages for each unselected checkbox.

_AC-10826 - [GitHub code contribution](https://github.com/magento/magento2/commit/3ea26621)_

### Cart & Checkout

#### Exception is not getting handled properly while adding a product to cart in the compare product page

The system now properly handles exceptions when adding a product to the cart from the compare product page, displaying a message manager message in the controller. Previously, an exception would result in a JSON encoded page being returned instead of being properly caught and handled.

_AC-10660 - [GitHub issue](https://github.com/magento/magento2/issues/38200) - [GitHub code contribution](https://github.com/magento/magento2/pull/38257) - [GitHub code contribution](https://github.com/magento/magento2/commit/0c53bbf7)_

#### GTag not send transaction prices and totals.

The system now correctly sends transaction prices and totals to Google Tag when GTag is enabled, ensuring accurate tracking of ecommerce data. Previously, the currency was incorrectly being sent as part of the &quot;all&quot; orders, rather than being associated with the individual order.

_AC-10698 - [GitHub issue](https://github.com/magento/magento2/issues/37348) - [GitHub code contribution](https://github.com/magento/magento2/pull/37504) - [GitHub code contribution](https://github.com/magento/magento2/pull/37349)_

#### [Issue] [Checkout] Depend directives updated in failed payment email template

The system now correctly omits the shipping address and shipping method from the failed payment email template for virtual products, ensuring only relevant information is included in the email. Previously, the failed payment email for virtual products incorrectly included the shipping address and shipping method.

_AC-11641 - [GitHub issue](https://github.com/magento/magento2/issues/32781) - [GitHub code contribution](https://github.com/magento/magento2/pull/32511)_

#### Magento 2 login inside the checkout with existing customer give console error in Firefox browser

The system now allows users to log in during the checkout process without encountering any console errors in the Firefox browser. Previously, attempting to log in as an existing customer during checkout would result in a console error in Firefox.

_AC-11717 - [GitHub issue](https://github.com/magento/magento2/issues/38557) - [GitHub code contribution](https://github.com/magento/magento2/pull/39509)_

#### [Issue] Sales Rules regression in 2.4.7

The system now correctly validates sales rules, preventing the application of a coupon code to a cart when the product condition does not match any product name. Previously, a sales rule could be applied and a discount given on the shipping amount even when the product condition did not match any product name.

_AC-11876 - [GitHub issue](https://github.com/magento/magento2/issues/38671) - [GitHub code contribution](https://github.com/magento/magento2/commit/0574ac23)_

#### [Issue] Sales rule CartFixed calculation : incorrect discount amount

The system now correctly calculates the discount amount for sales rules with cart fixed amounts, ensuring accurate discounts are applied regardless of changes in cart items. Previously, the discount amount could vary incorrectly when cart items changed, sometimes resulting in significantly larger discounts than expected.

_AC-11914 - [GitHub issue](https://github.com/magento/magento2/issues/38694) - [GitHub code contribution](https://github.com/magento/magento2/commit/581b7ef1)_

#### [Issue] The loader blocks the shipping methods after the postcode is changed, shipping rates validation rules

The system now correctly handles custom shipping methods without shipping rates validation rules, ensuring that the loader does not block the shipping methods after the postcode is changed in the shipping address during checkout. Previously, changing the postcode in the shipping address during checkout would cause the loader to block the shipping methods and not disappear when custom shipping methods without shipping rates validation rules were used.

_AC-11993 - [GitHub issue](https://github.com/magento/magento2/issues/38742) - [GitHub code contribution](https://github.com/magento/magento2/commit/1bafc571)_

#### Coupon code feature is not working properly in the checkout page on Magento 2.4.7

The system now enables the discount code/coupon input field on the checkout page for virtual and downloadable products, allowing users to apply discount codes as expected. Previously, the discount code/coupon input was disabled, and the button title text displayed as &quot;Cancel coupon&quot;, preventing users from applying discount codes.

_AC-12170 - [GitHub issue](https://github.com/magento/magento2/issues/38826) - [GitHub code contribution](https://github.com/magento/magento2/commit/1bafc571)_

#### Terms and conditions checkbox is not allowing HTML on storefront

The system now supports HTML formatting in the &quot;Terms and Conditions&quot; checkbox text on the storefront, allowing for enhanced customization and readability. Previously, the checkbox text was displayed in plain text format, ignoring any HTML tags used.

_AC-12479 - [GitHub code contribution](https://github.com/magento/magento2/commit/6cfb9b6b)_

#### Cart price rule created for logged in user incorrectly gets applied for not logged in user

The system now correctly removes the cart price rule for logged-in users when they are automatically logged out due to cookie expiration, ensuring that the discount is not applied to non-logged-in users. Previously, the cart price rule was still applied even when the user was logged out, resulting in an incorrect discount being applied to non-logged-in users.

_AC-12541 - [GitHub issue](https://github.com/magento/magento2/issues/38944) - [GitHub code contribution](https://github.com/magento/magento2/commit/7d5e3906)_

#### [Issue] [FEATURE] Performance optimisation large shopping carts by preventing…

The system now optimizes performance for large shopping carts by preventing duplicate getActions calls, enhancing the speed and efficiency of shopping cart operations. Previously, for a shopping cart with multiple items, the getActions function was called multiple times, slowing down the system&apos;s performance.

_AC-13302 - [GitHub issue](https://github.com/magento/magento2/issues/39292) - [GitHub code contribution](https://github.com/magento/magento2/pull/39290)_

#### Translation VAT in address renderer

The system now allows for the translation of the text &quot;VAT&quot;, &quot;T&quot;, &quot;F&quot; in the address renderers, enabling users to translate these terms to the specific language of the store. Previously, these terms were not translatable, forcing users to employ a workaround.

_AC-8103 - [GitHub issue](https://github.com/magento/magento2/issues/36942) - [GitHub code contribution](https://github.com/magento/magento2/pull/36943)_

#### Duplicate orders with same Quote Id at same time with few time difference

Fixed the issue when Adobe Commerce customers encountered duplicate orders placed with the same QuoteID

_ACP2E-2055 - [GitHub code contribution](https://github.com/magento/magento2/commit/f89a447e)_

#### Persistent shopping cart cleared during checkout step

After the fix, selecting the payment method during checkout while not logged in doesn&apos;t terminate the persistent session.

_ACP2E-2470 - [GitHub code contribution](https://github.com/magento/magento2/commit/a4fbf702)_

#### Reorder adds non assigned product to cart

Previously, for the different stores products can be reordered from the other store. After this fix is applied only the same store , same scope product can be reordered when the customer account share is enabled

_ACP2E-2518 - [GitHub code contribution](https://github.com/magento/magento2/commit/f89a447e)_

#### In admin, the &quot;Shopping Cart&quot; on left side doesn&apos;t get updated when selecting the items and &quot;Move to Shopping Cart&quot; from the right side

The &quot;Shopping cart&quot; on the left side gets updated when selecting the items and &quot;Move to shopping cart&quot; from the right side in the admin side. Previously this functionality was not working because the transformed cart items were not getting empty from the session.

_ACP2E-2620 - [GitHub code contribution](https://github.com/magento/magento2/commit/39d54c2d)_

#### [Cloud] Sales Rule not applied to first order of Multi Shipping

After the fix, the discount is shown correctly for each order of the same multi-shipping quote.

_ACP2E-2646 - [GitHub code contribution](https://github.com/magento/magento2/commit/f89a447e)_

#### [Cloud] Production Parallel Requests to Add Same Product to Cart Result In Two Separate Items In The Cart rest API

The system now correctly processes multiple parallel requests to add the same product to the cart into a single line item, preventing the creation of separate line items for the same SKU. Previously, making parallel requests to add the same product to the cart via the REST API would result in multiple line items for the same SKU.

_ACP2E-2664 - [GitHub code contribution](https://github.com/magento/magento2/commit/f89a447e)_

#### Getting Unable to send the cookie. Size of &apos;mage-messages&apos; while trying to Reorder

The reordering processwill not generate its own errors now. It will rely on cart listing built-in item checks.

_ACP2E-2704 - [GitHub code contribution](https://github.com/magento/magento2/commit/ba25af8a)_

#### Default shipping address is not selected on checkout

Default shipping address is now being selected event in context of enabled address search.

_ACP2E-2798 - [GitHub code contribution](https://github.com/magento/magento2/commit/7e0e5582)_

#### [CLOUD] graphql addProductsToCart api issue with custom option

GraphQL adds to cart correctly the same product with different custom options

_ACP2E-2897 - [GitHub code contribution](https://github.com/magento/magento2/commit/c971859e)_

#### Multiple addresses added to the account when checkout as new customer

The system now saves a new customer address only once if the order failed to be created, preventing the creation of multiple identical addresses in the event of order placement errors. Previously, the system would save a new address each time an order placement attempt was made, regardless of whether the order was successfully created or not.

_ACP2E-2923 - [GitHub code contribution](https://github.com/magento/magento2/commit/001e5188) - [GitHub code contribution](https://github.com/magento/inventory/commit/2ebcef39)_

#### Reordering customer order via guest order form results an empty cart

Previously, when placing a reorder through the Orders and Returns page, the customer was redirected to the login page. After this fix is applied, the registered customer is correctly redirected to the View Cart page when placing a reorder. The flow works the same as like as guest customers.

_ACP2E-3004 - [GitHub code contribution](https://github.com/magento/magento2/commit/6a185204)_

#### Admin User with limited Role Resources unable to view Shopping Carts

Previously, the restricted admin could not see the abandoned shopping cart from the admin panel for an associated website. After this fix is applied, the restricted admin can see the abandoned shopping cart from the admin panel.

_ACP2E-3025 - [GitHub code contribution](https://github.com/magento/magento2/commit/d1f7dc95)_

#### [Cloud] quick order large amount of SKU performance

Checkout performance has been improved when attributes used in cart price rules conditions are not present for all products and when MAP (Minimum advertised price) feature is enabled.

_ACP2E-3176 - [GitHub code contribution](https://github.com/magento/magento2/commit/66dea0de)_

#### Duplicated items in cart

The system now correctly processes multiple parallel requests to add the same product to the cart into a single line item, preventing the creation of separate line items for the same SKU. Previously, making parallel requests to add the same product to the cart on Storefront would result in multiple line items for the same SKU.

_ACP2E-3211 - [GitHub code contribution](https://github.com/magento/magento2/commit/66dea0de)_

#### Checkout order email confirmation is sent to emails entered in First/Last name

The checkout order email confirmation, which was previously sent when an email-like pattern was entered in the First and Last Name fields, is no longer being sent.

_ACP2E-3296 - [GitHub code contribution](https://github.com/magento/magento2/commit/5184c067)_

#### Checkout shipping address form get update with wrong address

shippingAddressFromData is now saved into the local storage per website. Previously, an address from the wrong website could be auto-populated into the shipping address form during checkout if a store code was used in the URL and checkout was initiated from multiple websites during the same guest session.

_ACP2E-3402 - [GitHub code contribution](https://github.com/magento/magento2/commit/078c387e)_

#### Gift Card Product | Cart Merge is merging Gift Cards

Giftcard products now merged correctly in the cart

_ACP2E-3407 - [GitHub code contribution](https://github.com/magento/magento2/commit/88660e79)_

#### Cart persistence is not being respected upon logout

Added missing functionality Remember Me from customer login to authentication popup and checkout sign ins.

_ACP2E-3415 - [GitHub code contribution](https://github.com/magento/magento2/commit/344fce23)_

#### Existing quote data is not update / not visible, instead create a new quote record when trigger_recollect = 1

Customer&apos;s shopping cart items no longer disappear as result of a product being deleted after it was added to the shopping cart.

_ACP2E-3488 - [GitHub code contribution](https://github.com/magento/magento2/commit/1984c61c)_

#### [CLOUD] Re-order button functionality

Re-orderind an order from the administrator area will now add products with stock to the quote even though there are some products in the original order that do not have stock anymore. Prior to the fix no products were being added to the new quote if product with no stock were in the original order.

_ACP2E-3618 - [GitHub code contribution](https://github.com/magento/magento2/commit/a52ff98f)_

#### Search stores are not working by zip code

Searching pickup locations by zip code was not working properly for Dutch localisations. After the fix, the pickup location search will provide results based on zip code.

_ACP2E-3622 - [GitHub code contribution](https://github.com/magento/magento2/commit/344fce23)_

### Cart & Checkout, Checkout/ One Page Checkout

#### [Random BUG] Email field isn&apos;t rendered or takes a lot of time show up in Checkout Shipping or Payment page

Commerce now renders the **[!UICONTROL Email]** field on the checkout shipping and payment pages as expected. Previously, this field was either absent or rendered slowly.

_AC-9386 - [GitHub code contribution](https://github.com/magento/magento2/commit/e1babcfd)_

### Cart & Checkout, Order

#### Datepicker for product with multiple Customizable Options with date fields not working when placing order from admin

The system now correctly displays the date picker for all date fields when configuring a product with multiple customizable date options in the admin order creation process. Previously, the date picker was only displayed for the first date field, leaving the remaining fields without a date picker.

_ACP2E-3097 - [GitHub code contribution](https://github.com/magento/magento2/commit/b21e5d91)_

### Cart & Checkout, Shipping

#### Instant purchase &quot;cheapest shipping&quot; broken for configurable products

The Instant Purchase feature incorrectly selected the more expensive In-Store Delivery option for configurable products instead of the cheapest Flat Rate method. This fix ensures that the correct shipping method is chosen based on the actual price.&quot;

_AC-12119 - [GitHub issue](https://github.com/magento/magento2/issues/38811) - [GitHub code contribution](https://github.com/magento/magento2/pull/38819) - [GitHub code contribution](https://github.com/magento/magento2/commit/29fe9097)_

### Catalog

#### Cleanup of cron_schedule database table doesn&apos;t cleanup non-existing jobs

The system now automatically cleans up the cron_schedule database table, removing entries for jobs that no longer exist in the system. This ensures optimal performance by maintaining a minimal number of rows in the table. Previously, entries for jobs from inactive or removed modules were not cleaned up, leading to unnecessary data accumulation in the cron_schedule table.

_AC-10910 - [GitHub issue](https://github.com/magento/magento2/issues/38217) - [GitHub code contribution](https://github.com/magento/magento2/pull/38693)_

#### Tier Price is not being deleted from Configurable Product

The system now correctly removes the tier price of a product when it is converted from a simple product to a configurable product, ensuring accurate price display on the frontend. Previously, the tier price of a configurable product was not deleted when a product was converted from a simple product to a configurable product, leading to a mismatch in the displayed price.

_AC-10953 - [GitHub issue](https://github.com/magento/magento2/issues/38390) - [GitHub code contribution](https://github.com/magento/magento2/pull/38427)_

#### Category description WYSIWYG is empty on non default storeview

The system now correctly saves and displays the category description in the WYSIWYG editor when editing a category on the store view level. Previously, the WYSIWYG editor would appear empty after saving a category description on the store view level.

_AC-11804 - [GitHub issue](https://github.com/magento/magento2/issues/38622) - [GitHub code contribution](https://github.com/magento/magento2/pull/38623)_

#### Imposible to reorder configurable products with one checkbox selected custom option

The system now correctly processes the reordering of configurable products with a single selected checkbox custom option, allowing for successful basket creation. Previously, attempting to reorder such products resulted in an error and prevented items from being added to the shopping cart.

_AC-11970 - [GitHub issue](https://github.com/magento/magento2/issues/38736) - [GitHub code contribution](https://github.com/magento/magento2/commit/1d144bce)_

#### [Issue] Fix wording of filter item on layered navigation

The system now correctly uses the words &quot;item&quot; and &quot;items&quot; in the layered navigation filter item, enhancing the clarity and accuracy of the filter descriptions. Previously, these words were used incorrectly, leading to potential confusion for users navigating the filter options.

_AC-12076 - [GitHub issue](https://github.com/magento/magento2/issues/38789) - [GitHub code contribution](https://github.com/magento/magento2/pull/37852)_

#### Date and Time Format for Custom Option Not Working

The system now correctly applies the configured date format to product custom options of type Date, ensuring that the date format is displayed correctly on the front-end. Previously, changes to the date format configuration did not reflect on the front-end for product custom options of type Date.

_AC-12164 - [GitHub issue](https://github.com/magento/magento2/issues/32990) - [GitHub code contribution](https://github.com/magento/magento2/pull/38925)_

#### Dropdown options missing

The system now correctly displays all values in the dropdown when creating a new attribute with more than 20 values. Previously, only the first 20 values or another selected page values were displayed, causing the remaining values to be missing.

_AC-13068 - [GitHub code contribution](https://github.com/magento/magento2/commit/47b448e2)_

#### [Issue] Use current sore id for category runtime cache

The system now correctly uses the current store ID for category runtime cache, preventing data override when emulation is used or custom code saves the category in different stores. Previously, the object stored in runtime might have been from the wrong store, leading to data override.

_AC-13296 - [GitHub issue](https://github.com/magento/magento2/issues/39310) - [GitHub code contribution](https://github.com/magento/magento2/pull/36394)_

#### bin/magento sampledata:deploy --no-update throws an exception

The system now correctly accepts a boolean value when using the --no-update option in the sampledata:deploy command, preventing any errors during sample data deployment. Previously, an error was thrown when using this command as the system was incorrectly expecting an integer value.

_AC-13324 - [GitHub issue](https://github.com/magento/magento2/issues/39344) - [GitHub code contribution](https://github.com/magento/magento2/pull/39345)_

#### [Issue] Fix usage of EAV cache type

The system now correctly uses the EAV cache type in all relevant places, ensuring consistent and efficient data caching. Previously, the EAV cache type was not used consistently, leading to potential inefficiencies and inconsistencies in data caching.

_AC-13355 - [GitHub issue](https://github.com/magento/magento2/issues/32322) - [GitHub code contribution](https://github.com/magento/magento2/pull/31264)_

#### Catalog Advanced Search with empty data goes to search result page[2.4.dev branch]

The system now correctly retains users on the Advanced Search page and displays an error message when they attempt to perform a search without entering any data. Previously, performing an empty search would redirect users to the Catalog Advanced Search page with a message prompting them to modify their search.

_AC-13596 - [GitHub code contribution](https://github.com/magento/magento2/commit/6cfb9b6b)_

#### [Issue] Product layout based on attribute_set

The system now allows the adjustment of product layout based on the attribute set, providing a more practical and efficient way to manage product display in the frontend store. Previously, the layout could only be adjusted by SKU or by product types, which was not always practical for many products or specific articles.

_AC-13622 - [GitHub issue](https://github.com/magento/magento2/issues/38790) - [GitHub code contribution](https://github.com/magento/magento2/pull/36244)_

#### Missing unique key on eav_attribute_option_value table

The system now includes a unique key on the &apos;option_id&apos; and &apos;store_id&apos; columns in the &apos;eav_attribute_option_value&apos; table, preventing the possibility of an option having multiple values for the same store view. Previously, faulty code could result in an option having multiple values for the same store view, causing issues when editing products or attributes.

_AC-6738 - [GitHub issue](https://github.com/magento/magento2/issues/24718) - [GitHub code contribution](https://github.com/magento/magento2/pull/28796)_

#### [Issue] Use visibility class for category product indexer, instead of hardcoded values

The system now uses the visibility class for the category product indexer instead of hardcoded values, enhancing modularity. Previously, hardcoded values were used in the category product indexer, limiting flexibility and adaptability.

_AC-8297 - [GitHub issue](https://github.com/magento/magento2/issues/37200) - [GitHub code contribution](https://github.com/magento/magento2/pull/37199)_

#### Currency code not change in New product widget

The system now correctly updates the currency code in the New Product widget when the currency is changed in the frontend, ensuring consistency in currency display across the site. Previously, changing the currency in the frontend did not affect the currency code displayed in the New Product widget.

_AC-9375 - [GitHub issue](https://github.com/magento/magento2/issues/37898) - [GitHub code contribution](https://github.com/magento/magento2/pull/37899)_

#### Regular Price does not show on PLP for Configurable Product

Regular price is now being displayed on product listing pages for configurable products that have children products with special price.

_ACP2E-2224 - [GitHub code contribution](https://github.com/magento/magento2/commit/a4fbf702)_

#### Stock information not showing right on Visual Merchandising grid

Stock is now displayed according to selected store.

_ACP2E-2478 - [GitHub code contribution](https://github.com/magento/inventory/commit/bdbf97ea)_

#### Widget content is not updating on cms page

The system now updates the widget content on a CMS page when a product is set as new and saved, ensuring that the page displays the updated product collection. Previously, the page was not updated to show the new product due to the incorrect cache identities used for the widget in the cache.

_ACP2E-2621 - [GitHub code contribution](https://github.com/magento/magento2/commit/f89a447e)_

#### Issues saving advanced pricing on bundle products

Bundle product saving performance improvement.

_ACP2E-2630 - [GitHub code contribution](https://github.com/magento/magento2/commit/b2286ecf)_

#### [On-Premise] Re-index process is inefficient when creating Catalog Price Rules

Now saving catalog price rule will not invalidate indexers, instead it will reindex affected products only

_ACP2E-2652 - [GitHub code contribution](https://github.com/magento/magento2/commit/f89a447e)_

#### Updating time of Date and Time type product attributes via CSV import

Now datetime attributes will have time part in exported data. It will be also possible to update the time for such attributes using import. Also if &quot;Fields Enclosure&quot; is enabled, attribute values in &quot;additional_attributes&quot; column will be enclosed within double quotes.

_ACP2E-2679 - [GitHub issue](https://github.com/magento/magento2/issues/38306) - [GitHub code contribution](https://github.com/magento/magento2/commit/ea79f7dd)_

#### No Appropriate error message when website id is wrong in the request

Now the appropriate error message was added to display when the website id is wrong in the request. Previously there was no validation when the website id was wrong in the request.

_ACP2E-2689 - [GitHub code contribution](https://github.com/magento/magento2/commit/39d54c2d)_

#### Product image is lost after deleting an existing Scheduled Update that doesn&apos;t affect the image

Product images are not removed while deleting staging update.

_ACP2E-2785 - [GitHub code contribution](https://github.com/magento/magento2/commit/c8931218)_

#### [Cloud] Wrong bundle product price when used with tier prices

Previously when calculating certain percentage discounts rounded up to 2 decimal points will generate different final prices for the cart and product listing page/product details page. After this fix is applied, the final price for the bundle product is the same as in the product details page, product listing page, and mini cart page.

_ACP2E-2799 - [GitHub issue](https://github.com/magento/magento2/issues/38091) - [GitHub code contribution](https://github.com/magento/magento2/commit/b2286ecf)_

#### Catalog Promotions Rule not working with quantity_and_stock_status attribute

The quantity_and_stock_status attribute will now be taken into account by the catalog promotion rule, which was not previously taken into account when generating new product from the admin side.

_ACP2E-2805 - [GitHub issue](https://github.com/magento/magento2/issues/35627) - [GitHub code contribution](https://github.com/magento/inventory/commit/cf34971d)_

#### Product entity updated_at column values not updating while updating price through REST API

The product &apos;last updated at&apos; column from the admin is updated the proper date time while updating the existing products through the REST API. Previously the column &apos;last updated at&apos; is not updated properly.

_ACP2E-2837 - [GitHub code contribution](https://github.com/magento/magento2/commit/39d54c2d)_

#### It&apos;s possible to set non-unique values via product import

The system now correctly enforces the unique value constraint for unique product attributes during product import, preventing from having duplicate values for that such attribute. Previously, it was possible to set non-unique values for product attributes that were configured to have unique values via product import.

_ACP2E-2840 - [GitHub issue](https://github.com/magento/magento2/issues/38445) - [GitHub code contribution](https://github.com/magento/magento2/commit/7e0e5582)_

#### Products on the frontend use store specific data when Single-Store Mode is enabled

Previously, when we enabled single store mode for the default store view, the changes were not migrated to the website-level scope. After this fix is applied, when we enable single store mode, the default store view-specific data will be synced with website-level-specific data and will resolve the possible conflicts for products and categories.

_ACP2E-2843 - [GitHub code contribution](https://github.com/magento/magento2/commit/c8931218)_

#### Cannot set &quot;Default Sort By&quot; in a category using the rest API

Update correctly default_sort_by on a category through REST / SOAP APi request

_ACP2E-2857 - [GitHub code contribution](https://github.com/magento/magento2/commit/57a32313)_

#### [Cloud] The Merchant is facing issues with wishlist count

Adding a product to the wishlist in one store no longer increases the wishlist count in other stores open in the same browser. Previously, if both stores were loaded in the same browser, the wishlist count would increase in the other store as well.

_ACP2E-2871 - [GitHub code contribution](https://github.com/magento/magento2/commit/3a7c4d17)_

#### Category Page at frontend shows empty slots when using bundle product

Bundle products that are not salable in current store context are not indexed anymore.

_ACP2E-2874 - [GitHub code contribution](https://github.com/magento/inventory/commit/bc37ec76)_

#### [Cloud] Issue of Quote in multi-website architecture

Previously, multi-website architecture with different currencies and customer groups could not correctly apply discounts to the store. After this fix is implemented, multi-website architecture with different customer group price discounts will apply successfully to different stores.

_ACP2E-2905 - [GitHub issue](https://github.com/magento/magento2/issues/38506) - [GitHub code contribution](https://github.com/magento/magento2/commit/a4fbf702)_

#### dynamic-rows.js:658 Uncaught TypeError: dataRecord.slice while editing bundle products

There is no javascript error in browser console while deleting option from bundle product.

_ACP2E-2909 - [GitHub issue](https://github.com/magento/magento2/issues/38505) - [GitHub code contribution](https://github.com/magento/magento2/commit/93d50f8d)_

#### [Cloud] Bundle Product wrong pricing in order confirmation

Correct amount is displayed for bundle options in order on Storefront when currency other than base one was used.

_ACP2E-2950 - [GitHub code contribution](https://github.com/magento/magento2/commit/a4fbf702)_

#### YouTube Video Adding Bug

Product images and videos are configured in global scope. Given that you can&apos;t have a product video in one scope and not in another, Youtube API key setting has been set to global scope.

_ACP2E-2956 - [GitHub code contribution](https://github.com/magento/magento2/commit/a4fbf702)_

#### [Cloud] URL update only for store_id=0

The &quot;URL Path&quot; is now stored with the correct store ID. Previously, the store ID was incorrect, resulting in incorrect URL paths remaining in the database when moving categories.

_ACP2E-2964 - [GitHub code contribution](https://github.com/magento/magento2/commit/9af794a4)_

#### async.operations.all executed and created an error.

Incorrect product link data in REST API calls no longer cause critical errors.

_ACP2E-3009 - [GitHub code contribution](https://github.com/magento/magento2/commit/a4fbf702)_

#### [Cloud] Mobile Issue Only not able to pinch on the PDP image

The system now supports pinch-to-zoom functionality on product detail page images in mobile view on Chrome, enhancing the mobile user experience. Previously, double-tapping on the image in mobile view on Chrome did not zoom in on the image as expected.

_ACP2E-3029 - [GitHub code contribution](https://github.com/magento/magento2/commit/148c3ead)_

#### Missing label in LayeredNavigation with option name 0

The issue has been resolved by skipping an empty value checker for attribute value 0. Previously, it was considered empty and was causing the issue.

_ACP2E-3058 - [GitHub code contribution](https://github.com/magento/magento2/commit/3a7c4d17)_

#### Customers see prices from other customer groups

Fixed issue where customer group related information was saved in a wrong segment due to the old value of the X-Magento-Vary in request

_ACP2E-3069 - [GitHub code contribution](https://github.com/magento/magento2/commit/d1f7dc95)_

#### Error when deleting bundle options

The system now correctly deletes bundle options without triggering an error or causing the page to become unresponsive. Previously, attempting to delete bundle options would result in a &quot;Page Unresponsive&quot; error and prevent the product from being saved.

_ACP2E-3076 - [GitHub code contribution](https://github.com/magento/magento2/commit/6a185204)_

#### [Cloud] Image File does not exist in New Relic Error Log

The system now synchronizes custom placeholder images to local storage, ensuring that they render correctly when using remote storage such as AWS S3. Previously, custom placeholder images failed to render when using remote storage, resulting in a broken image display and error logs.

_ACP2E-3100 - [GitHub code contribution](https://github.com/magento/magento2/commit/d1f7dc95)_

#### New Products RSS feed is not updated with new products due to cache

The Rss feed for New Products is now updated when a product is set as new and saved

_ACP2E-3103 - [GitHub code contribution](https://github.com/magento/magento2/commit/d01ee51e)_

#### [Cloud] Product Media Gallery GQL response is not sorted by image position

The system now correctly sorts items in the media gallery by position in the GraphQL response, ensuring accurate display order. Previously, items in the media gallery were not sorted by position, leading to an incorrect display order.

_ACP2E-3126 - [GitHub issue](https://github.com/magento/magento2/issues/37671) - [GitHub code contribution](https://github.com/magento/magento2/commit/b21e5d91)_

#### [Cloud] Sub Category items are not displayed on the widgets edit on the admin backend

The category tree on the new widget page should no longer have issues loading Level 5+ categories. Previously, some categories were missing when loading the tree past Level 5 categories.

_ACP2E-3136 - [GitHub code contribution](https://github.com/magento/magento2/commit/148c3ead)_

#### [cloud] Two-finger zoom and move issue on the real mobile device

The system now ensures consistent image zoom functionality on mobile devices, providing a smooth and predictable user experience. Previously, the image zoom feature was inconsistent and would suddenly zoom out after a certain point when viewed on a mobile device.

_ACP2E-3198 - [GitHub code contribution](https://github.com/magento/magento2/commit/1366ae5e)_

#### When we unassign products from the shared catalog, the wishlist products are not being cleared

Now, no items are visible in the wishlist if a product is not available in the shared catalog. Previously, the wishlist page incorrectly displayed a count of &quot;1 Item&quot; even when no items were actually available in the wishlist.

_ACP2E-3282 - [GitHub code contribution](https://github.com/magento/magento2/commit/5184c067)_

#### Related products Select All/Unselect All Issue

Previously, the &quot;Select All&quot;/&quot;Unselect All&quot; buttons for related products didn&apos;t work correctly if a product was manually selected. After the fix, these buttons now function consistently, even after manual selection, ensuring that all products are properly selected or unselected.

_ACP2E-3286 - [GitHub code contribution](https://github.com/magento/magento2/commit/fd5cf3af)_

#### [Cloud] Stock alert email translation to the wrong language

When sending Stock/Price Alerts for a website with multiple store views using different languages, the language for the store view where the alert was created will be used on the email.

_ACP2E-3336 - [GitHub code contribution](https://github.com/magento/magento2/commit/a4cf5e62) - [GitHub code contribution](https://github.com/magento/inventory/commit/9f3e63d1)_

#### Disabled Categories are no longer have their names grayed out in the category tree

Previously, disabled categories were not grayed out in the category tree. Now, they are displayed with a gray-out effect.

_ACP2E-3350 - [GitHub code contribution](https://github.com/magento/magento2/commit/d75cff27)_

#### Configurable product edit form load causes timeout and memory exhaustion

Prior to the fix configurable product variations were constructed based on all possible attribute option combinations. In cases where attributes had a lot of options this resulted in a lengthy and resource consuming operation. Now, configurable product variations are constructed based on existing child product attributes. This results in far less calculations - thus an improved usage of resources.

_ACP2E-3410 - [GitHub code contribution](https://github.com/magento/magento2/commit/078c387e)_

#### Fotorama doesn&apos;t load video correctly when using Swatches and option is pre-selected via URL

Product videos will now render properly on configurable product details page, if the URL contains selected options.

_ACP2E-3454 - [GitHub code contribution](https://github.com/magento/magento2/commit/078c387e)_

#### PageBuilder Carousel Widget shows products that doesn&apos;t match conditions

Product list used in widgets now respects category condition

_ACP2E-3461 - [GitHub code contribution](https://github.com/magento/magento2/commit/078c387e)_

#### Validation Error Triggered for All Products in Group When One Has Invalid Quantity

Now, the validation error is correctly triggered for all products in the group when one product has an invalid quantity, which was not happening previously.

_ACP2E-3469 - [GitHub code contribution](https://github.com/magento/magento2/commit/56463d5e)_

#### [CLOUD] Special price not showing in Configurable product

After the fix, changing the &quot;Used in Product Listing&quot; value for the special price attribute will not affect showing the special price for configurable products.

_ACP2E-3513 - [GitHub code contribution](https://github.com/magento/magento2/commit/d4de4726)_

#### Indexers Temporary tables are not cleaned up if the process is terminated

CatalogRule indexer temporary tables are now cleaned up if the indexer process is terminated

_ACP2E-3516 - [GitHub code contribution](https://github.com/magento/magento2/commit/1984c61c)_

#### [QUANS] Core unit test failures in 2.4.7-p3

Release notes for this test is not needed since it is a Unit-test improvement.

_ACP2E-3520 - [GitHub code contribution](https://github.com/magento/magento2/commit/1984c61c)_

#### Performance Issue in Stock Quantity Retrieval for Grouped Products with Multiple Sources

Grouped product and bundle product edit page is now optimized when assigned products have large number of inventory sources.

_ACP2E-3533 - [GitHub code contribution](https://github.com/magento/inventory/commit/0208e433)_

#### Refix ACP2E-3389

Improved performance of admin category page in case of large number of anchor categories

_ACP2E-3641 - [GitHub code contribution](https://github.com/magento/magento2/commit/982b1c42)_

### Catalog, Content

#### [Cloud] Cache is not getting invalidated.

Previously, when saving a CMS page with an updated design layout, it did not reflect appropriately on the front end. After this fix is applied, the appropriate design layout will be visible at the front end when we change the design layout and save the CMS page.

_ACP2E-3063 - [GitHub code contribution](https://github.com/magento/magento2/commit/66dea0de)_

#### [Cloud] Anchor/Non-Anchor Categories Reversed in Content Widget

Previously, when we selected Display On -&gt; Anchor Categories, it showed all the categories that did not reflect the parent-child relation between the anchor and non-anchor. After this fix is applied, the  Display On -&gt; Anchor Categories only displays Anchor Categories (selectable), and  Display On -&gt; Non Anchor Categories displays Non-Anchor Categories (selectable)

_ACP2E-3131 - [GitHub code contribution](https://github.com/magento/magento2/commit/7377de59)_

#### Categories not working with widgets

Previously, if we saved the CMS block for different anchor/non-anchor categories, it did not work for the child categories when it showed on the front end. After this fix has been applied, the block is shown at the front end for different categories.

_ACP2E-3152 - [GitHub code contribution](https://github.com/magento/magento2/commit/d01ee51e)_

### Catalog, Framework

#### Order get(Shipments|Creditmemos|Invoice)Collection - Collection should not be loaded

The system now ensures that the collections for shipments and credit memos are not pre-loaded when retrieved from an order, allowing for additional filters or orders to be applied to these collections. Previously, these collections were automatically loaded, preventing any further modifications.

_AC-9111 - [GitHub issue](https://github.com/magento/magento2/issues/37561) - [GitHub code contribution](https://github.com/magento/magento2/pull/37562)_

#### [Cloud]Follow-up: Mismatch in Data Comparison when checking if data has changes

Previously, the save object was called every time without any data changes (for any numeric data field - like int/float/double). It triggers the flag _hasDataChanges to be true and calls the save function. It also does not check the floating numbers encapsulated by string. After this fix applies, the save function will call only if the data is changed. The data value for int/float/double-check with the value passing to the function and does strict type matching

_ACP2E-2949 - [GitHub code contribution](https://github.com/magento/magento2/commit/c8931218)_

### Catalog, GraphQL

#### Handling Category Filters in GraphQL: includeDirectChildrenOnly and category_uid

Only the direct child categories are fetched while filtering by category_uid.

_ACP2E-3090 - [GitHub code contribution](https://github.com/magento/magento2/commit/93d50f8d)_

#### [Cloud] Graphql Product sorting do not work

GraphQl Product sorting by multiple fields when the fields are passed in variables now works as expected.

_ACP2E-3166 - [GitHub code contribution](https://github.com/magento/magento2/commit/8459b17d)_

#### Tier Prices return wrong value in products GraphQL (compared to Storefront)

After the fix, product&apos;s tier prices returned for graphql requests have price per one item.

_ACP2E-3312 - [GitHub code contribution](https://github.com/magento/magento2/commit/1366ae5e)_

### Catalog, Pricing, Staging & Preview

#### [Cloud] Special price API endpoint returns error when updating large numbers of products concurrently

Now Special Price bulk update API will create a single campaign for each date range instead of multiple scheduled updates for each product and date range. Also, it will support concurrent API requests for faster processing of large number of SKUs.

_ACP2E-2672 - [GitHub code contribution](https://github.com/magento/magento2/commit/f89a447e)_

### Catalog, Product

#### Category selection tree in edit product is not in the same order as set in Catalog-&gt;Categories

The system now correctly displays the category selection tree in the product edit section in the same order as set in Catalog-&gt;Categories, making product administration easier in large catalogues. Previously, the category tree in the product edit section was displayed in the order of category creation, regardless of the display order set in Catalog-&gt;Categories.

_AC-7050 - [GitHub issue](https://github.com/magento/magento2/issues/36101) - [GitHub code contribution](https://github.com/magento/magento2/pull/36104)_

### Catalog, SEO

#### Incorrect canonical URL for category when page &gt; 1

Previously, the canonical URL for multi-page content did not function correctly, consistently displaying the base URL. However, after the fix was implemented, the canonical URL for multi-page content now correctly displays the URL with the page ID.

_ACP2E-3653 - [GitHub code contribution](https://github.com/magento/magento2/commit/982b1c42)_

### Catalog, Search

#### Products not showing on category and search but direct links are working

Previously, the Yes/No custom attribute with price_* attrbute_code does not work with indexing. After this fix, the Yes/No custom attribute works as expected.

_ACP2E-2757 - [GitHub code contribution](https://github.com/magento/magento2/commit/ba25af8a)_

#### [Cloud] Elastic search error on certain category pages

Previously, with the configuration ticket mentioned, when we put price 0 for multiple products, it will throw an exception at the frontend category page. After this fix applied when multiple product price 0 and we load category page at frontend it wont throw any exception and will load category page successfully.

_ACP2E-3053 - [GitHub code contribution](https://github.com/magento/magento2/commit/c8931218)_

#### Type Error occurred when creating object: Magento\CatalogSearch\Model\Indexer\Fulltext\Interceptor Exception

After the fix, an instance of Magento\CatalogSearch\Model\Indexer\Fulltext class can be created without specifying $data.

_ACP2E-3345 - [GitHub code contribution](https://github.com/magento/magento2/commit/1366ae5e)_

#### [CLOUD] Issue with Products are Not Visible in Frontend After Saving in Magento Admin

After the fix configurable products that have child products with long names will not be missed in the storefront.

_ACP2E-3521 - [GitHub code contribution](https://github.com/magento/magento2/commit/1984c61c)_

### Cloud

#### [Cloud] PHPSESSID is changing each POST Request

PHPSESSID no longer regenerates on POST requests on frontend area for a logged-in customer if L2 Redis cache is enabled and the customer was updated from the backend

_ACP2E-3010 - [GitHub code contribution](https://github.com/magento/magento2/commit/6a185204)_

#### Sitemap Generation Warnings

After the fix, the sitemap is generated in the system tmp directory and copied to the final destination.

_ACP2E-3532 - [GitHub code contribution](https://github.com/magento/magento2/commit/d4de4726)_

### Content

#### [Issue]  issue with the price display in the Recently Viewed widget

The system now correctly displays the price of out-of-stock simple products in the &quot;Recently Viewed Product&quot; widget, ensuring consistency across all widgets and product list pages. Previously, the price of out-of-stock simple products was not displayed in the &quot;Recently Viewed Product&quot; widget due to a condition in the price loading templates.

_AC-10539 - [GitHub issue](https://github.com/magento/magento2/issues/38167) - [GitHub code contribution](https://github.com/magento/magento2/pull/38159)_

#### [Issue] Correct typo and grammar in acl.xsd file

The system now corrects a typo and grammar error in the acl.xsd file, enhancing the clarity and accuracy of the documentation. Previously, the acl.xsd file contained a typo and incorrect grammar which could potentially cause confusion.

_AC-10596 - [GitHub issue](https://github.com/magento/magento2/issues/38061) - [GitHub code contribution](https://github.com/magento/magento2/pull/38046)_

#### Pagebuilder banner image not visible in gallery

The system now correctly displays banner images uploaded in newly created folders in the Pagebuilder gallery, eliminating previous console errors. Prior to this fix, banner images were not visible in the gallery if they were uploaded in a new folder, causing a console error.

_AC-10845 - [GitHub code contribution](https://github.com/magento/magento2/commit/c8f87c25)_

#### &quot;Area code not set&quot; after update to 2.4.5-p8

The system now successfully completes the static content deployment process when the Magento_CSP module is enabled and &quot;dev/js/translate_strategy&quot; is set to &quot;embedded&quot;, without triggering the &quot;Area code not set&quot; error. Previously, under these conditions, the static content deployment process would fail with an &quot;Area code not set&quot; error.

_AC-12283 - [GitHub issue](https://github.com/magento/magento2/issues/38845) - [GitHub code contribution](https://github.com/magento/magento2/pull/38922)_

#### Widget category tree is not rendered correctly

_AC-12692 - [GitHub issue](https://github.com/magento/magento2/issues/39008) - [GitHub code contribution](https://github.com/magento/magento2/commit/58e40ceb)_

#### Unable to see &quot;Using Default value&quot; message when changing the theme in design configuration page

The system now includes a separate column to display the &quot;Using Default value&quot; message depending on the selected theme in the design configuration page. This ensures clarity and visibility of the default value status. Previously, the &quot;Using Default value&quot; message was not displayed, leading to confusion about the status of the selected theme.

_AC-13054 - [GitHub code contribution](https://github.com/magento/magento2/commit/47b448e2)_

#### [Issue] Restores backwards compatibility with TinyMCE plugins again (after it…

The system now restores backward compatibility with TinyMCE plugins, allowing functions defined inside the plugin to be called when using the widget from another location. Previously, due to a change in the TinyMCE version, the plugins were not returning the widgets as an object, resulting in an error when trying to call certain functions on the widget instance.

_AC-13569 - [GitHub issue](https://github.com/magento/magento2/issues/39262) - [GitHub code contribution](https://github.com/magento/magento2/pull/39258)_

#### [Issue] file upload issue in WYSIWYG editor on product page

The system now correctly displays the folder tree and allows image uploads in the WYSIWYG editor on the product page, even after expanding the &apos;Image and Videos&apos; tab first. Previously, expanding the &apos;Image and Videos&apos; tab first resulted in the folder tree not being displayed and an error message when attempting to upload an image in the WYSIWYG editor.

_AC-9638 - [GitHub issue](https://github.com/magento/magento2/issues/38026) - [GitHub code contribution](https://github.com/magento/magento2/pull/38025)_

#### [On-PREM] Dynamic block issue

Wdigets are now being properly rendered within dynamic blocks.

_ACP2E-2392 - [GitHub code contribution](https://github.com/magento/magento2/commit/a12063bd)_

#### [Cloud] Frontend not loading due to issue in newsletter template

Adding blocks via CMS Page content section does not lead to exception anymore

_ACP2E-2693 - [GitHub code contribution](https://github.com/magento/magento2/commit/ea79f7dd)_

#### ACP2E-2836: [Cloud] Investigate exception found in the log: InvalidArgumentException: Class does not exist in vendor/magento/module-rule/Model/ConditionFactory.php

Removing a condition on PageBuilder products content settings no longer causes an exception to be recorded in the log files. Previously, removing a condition on PageBuilder products content settings would cause a critical exception to be recorded in the logs, despite not causing any issues on the frontend.

_ACP2E-2836 - [GitHub code contribution](https://github.com/magento/magento2-page-builder/commit/36c0f5df)_

#### Switching to single store mode - global content no longer appears

The system now synchronizes store view design configurations with website design configurations when enabling single store mode, ensuring that content updates are visible on the frontend. Previously, switching to single store mode would prevent content updates from being reflected on the storefront.

_ACP2E-2842 - [GitHub code contribution](https://github.com/magento/magento2/commit/7e0e5582)_

#### Page Builder replaces image when trying to add link and other usability glitches.

Now clicking on an image, links in wysiwyg editor in Page Builder text element will load proper data in the image, link configuration dialog. Also adding a link to an image in the editor now works properly. Previously, the image was replaced with a link.

_ACP2E-2903 - [GitHub code contribution](https://github.com/magento/magento2-page-builder/commit/4d5db10a)_

#### Old media gallery fails to render images when a 0-byte image is placed in the directory

The system now handles 0-byte images in the media gallery without disrupting functionality, allowing other images in the directory to be displayed and selected as expected. Previously, the presence of a 0-byte image in the media gallery would prevent all images in the directory from being displayed or selected.

_ACP2E-2970 - [GitHub code contribution](https://github.com/magento/magento2/commit/35b1b1da)_

#### Error Page Builder when editing CMS Block

The system now correctly saves changes made in the admin area using Page Builder, without throwing the error &quot;Page Builder was rendering for 5 seconds without releasing locks.&quot; in the browser console. Previously, this error would occur when attempting to save changes, preventing the successful update of content.

_ACP2E-3064 - [GitHub code contribution](https://github.com/magento/magento2/commit/35b1b1da) - [GitHub code contribution](https://github.com/magento/magento2-page-builder/commit/4d5db10a)_

#### [CLOUD] No buttons of checkout or edit cart on the cart section

Bundle product is now added to the cart via widgets without errors.

_ACP2E-3092 - [GitHub code contribution](https://github.com/magento/magento2/commit/b21e5d91) - [GitHub code contribution](https://github.com/magento/magento2-page-builder/commit/4ebe3f1d)_

#### [CLOUD] Upload image button doesn&apos;t work

Before the Upload Image button for Banner and Slider from PageBuilder didn&apos;t work as expected, and now when pressing it opens the local file manager to select the wanted image to upload.

_ACP2E-3122 - [GitHub code contribution](https://github.com/magento/magento2-page-builder/commit/476ef8ea)_

#### imagecreatetruecolor(): Argument #2 ($height) must be greater than 0. Can&apos;t upload specific image

Resolved the issue causing errors in the admin when uploading images with a height of 0 via the media gallery, and successful the assets synchronization using the sync command. Previously can&apos;t upload the image via the media gallery and the sync command also fails when a specific image is in the gallery.

_ACP2E-3127 - [GitHub code contribution](https://github.com/magento/magento2/commit/6f4805f8)_

#### Prototype.js Array.from in conflict with Google Maps API

Google Maps now renders properly in PageBuilder editor. Previously, a Javascript error prevents Google Maps from rendering correctly.

_ACP2E-3154 - [GitHub code contribution](https://github.com/magento/magento2/commit/148c3ead)_

#### [Cloud] - CMS Slider not reflecting the latest changes

The issue has been fixed by ensuring the slider list gets refreshed while the save event is triggered on the edit slide screen. Previously, it was triggering and causing the issue.

_ACP2E-3275 - [GitHub code contribution](https://github.com/magento/magento2-page-builder/commit/ae2cdeb0)_

#### An error occurs in CSM page when CMS blocks are inserted using page builder in certain order

Previously on some versions of PHP and OS (Linux), the rendering of blocks that referenced other cms blocks through PageBuilder would have failed with an &quot;An unknown error occurred. Please try again.&quot;. Now the content of the cms blocks is rendered correctly inside a PageBuilder controlled content.

_ACP2E-3326 - [GitHub code contribution](https://github.com/magento/magento2-page-builder/commit/ae2cdeb0)_

#### Pagebuilder&apos;s template preview failure for large content

Large content was leading to canvas element overflowing the browser&apos;s limits, and returning incorrect value, which broke backend code (cannot properly decode the image). Fixed with limiting canvas size to the universal browser&apos;s limit.

_ACP2E-3428 - [GitHub code contribution](https://github.com/magento/magento2-page-builder/commit/adfb1747)_

#### Latest security updates with TinyMCE 7 missing font size

Font size and font family selectors are now available in WYSIWYG editor. Prior to this fix, with TinyMCE 7 these were not available in the editor interface.

_ACP2E-3430 - [GitHub code contribution](https://github.com/magento/magento2/commit/d50f6b5d) - [GitHub code contribution](https://github.com/magento/magento2-page-builder/commit/2c2f7a0e)_

#### TinyMCE 7 editor font size in the admin in PT and not PX please clarify

Prior to the fix you could not specify font size in px in WYSIWYG areas. Now you can set the font size in px instead of pt.

_ACP2E-3483 - [GitHub code contribution](https://github.com/magento/magento2/commit/3f12d152) - [GitHub code contribution](https://github.com/magento/magento2-page-builder/commit/20aa5d7a)_

#### Product Content Type in Page Builder Gets Collapsed Without Correct Messages

Prior to the fix the preview html was not being generated properly when there were no products in the widget. Now, the empty response is properly generated and products widget is being displayed fine in preview.

_ACP2E-3490 - [GitHub code contribution](https://github.com/magento/magento2/commit/3f12d152) - [GitHub code contribution](https://github.com/magento/magento2-page-builder/commit/20aa5d7a)_

#### [page builder]Adding Product Listing to block results in errors

Now adding Bundle Product Listing to block via page builder doesn&apos;t results in errors

_ACP2E-3534 - [GitHub code contribution](https://github.com/magento/magento2/commit/344fce23)_

### Customer/ Customers

#### Front end - Date of birth validation is failing in Customer creation page

Ensure all validation should work after upgrade moment.js system dependency to the latest minor version

_AC-12162 - [GitHub code contribution](https://github.com/magento/magento2/commit/de4dfb8e)_

#### Region text field is not reset when country dropdown is changed

The system now resets the region text field when the country is changed in the dropdown menu, ensuring that previous values do not persist. Previously, changing the country from the dropdown list did not reset the region field, causing the last saved value to be preserved.

_AC-8499 - [GitHub code contribution](https://github.com/magento/magento2/commit/3ea26621)_

#### Deleting Customer Does Not Clean All Browser Session Data on Storefront for Logged in &amp; Deleted Customer

Deleting a customer now cleans all browser session data from the storefront for logged-in and deleted customers as expected. The shopper can continue shopping, and their browser treats their session as a guest session. Previously, when the customer account for a logged-in shopper was deleted from the Admin, then the shopper&apos;s browser threw JavaScript errors.

_AC-9240 - [GitHub code contribution](https://github.com/magento/magento2/commit/7d5e3906)_

### Framework

#### [Question]Unused Type configuration in `app/code/Magento/Translation/etc/di.xml`

The system now removes unused dependencies in the configuration, enhancing the overall code cleanliness and efficiency. Previously, there were unused dependencies in the configuration which were not contributing to any functionality.

_AC-10037 - [GitHub issue](https://github.com/magento/magento2/issues/38030) - [GitHub code contribution](https://github.com/magento/magento2/pull/38064)_

#### V1/customers/password endpoint question/issue

The system now adheres to the constraints set within the management GUI when processing password change requests via the API, preventing potential abuse of the password reset function. Previously, the API could process password change requests outside of the rules defined in the management GUI, potentially allowing for a constant stream of reset emails if valid emails were known.

_AC-10654 - [GitHub issue](https://github.com/magento/magento2/issues/38238) - [GitHub code contribution](https://github.com/magento/magento2/commit/0c53bbf7)_

#### Varnish configuration does not exclude all marketing parameters

The system now correctly excludes all common marketing parameters in the Varnish configuration, ensuring accurate tracking and analytics. Previously, certain marketing parameters such as gad_source, srsltid, and msclkid were not excluded, leading to potential inaccuracies in data collection.

_AC-10738 - [GitHub issue](https://github.com/magento/magento2/issues/38298) - [GitHub code contribution](https://github.com/magento/magento2/pull/39188)_

#### Catalog search index process error indexation process

The system now successfully completes the re-index command without encountering any errors, regardless of the libxml version compiled with PHP. Previously, running the re-index command resulted in a &quot;Catalog Search index process error during indexation process&quot; error when PHP was compiled with certain versions of libxml.

_AC-10838 - [GitHub issue](https://github.com/magento/magento2/issues/38254) - [GitHub code contribution](https://github.com/magento/magento2/pull/38553) - [GitHub code contribution](https://github.com/magento/magento2/commit/0574ac23)_

#### Added created_at, status and grand_total filters to customer Orders query and fixed multiple filters failure

The system now supports the use of created_at, status, and grand_total filters in customer Orders queries, and has resolved an issue where multiple filters were not being applied correctly. Previously, the system did not support these filters and would fail to apply all filters when more than one was used in a query.

_AC-10941 - [GitHub issue](https://github.com/magento/magento2/issues/38392) - [GitHub code contribution](https://github.com/magento/magento2/pull/36949)_

#### Randomly getting flooded with queries from related / upsell / crosssell blocks and price indexing

The system now optimizes queries from related, upsell, and cross-sell blocks, improving the performance and preventing the site from going down due to excessive queries. Previously, the system could become overloaded with queries from these blocks, causing significant slowdowns and potentially bringing the site down.

_AC-10991 - [GitHub issue](https://github.com/magento/magento2/issues/36667) - [GitHub code contribution](https://github.com/magento/magento2/pull/38050)_

#### Exception: Warning: Trying to access array offset in... -&gt; Calendar.php since upgrade to ICU 74.1 (PHP Intl)

Commerce no longer logs the following exception in the exception.log whenever a shopper or merchant visits either the storefront or Admin: `main.CRITICAL: Exception: Warning: Trying to access array offset on value of type null in /vendor/magento/framework/View/Element/Html/Calendar.php on line 114 in /vendor/magento/framework/App/ErrorHandler.php:62`. [GitHub-38214](https://github.com/magento/magento2/issues/38214)

_AC-11423 - [GitHub issue](https://github.com/magento/magento2/issues/38214) - [GitHub code contribution](https://github.com/magento/magento2/pull/38364)_

#### [Issue] Fix issues with Customer Data when form contains element with name `method`

The system now correctly identifies the &apos;method&apos; attribute in form submissions, even when an element named &apos;method&apos; is present in the form. This ensures accurate processing of customer data. Previously, if a form element was named &apos;method&apos;, it would interfere with the identification of the &apos;method&apos; attribute in form submissions, leading to potential issues with customer data handling.

_AC-11476 - [GitHub issue](https://github.com/magento/magento2/issues/38484) - [GitHub code contribution](https://github.com/magento/magento2/pull/38449)_

#### [Issue] Fix PHPDocs for \Magento\Framework\Data\Collection::getItemById

The PHPDocs for the \Magento\Framework\Data\Collection::getItemById method have been updated to include null as a possible return type, addressing issues with static analysis tools. Previously, the method&apos;s PHPDocs did not specify null as a possible return type, leading to warnings or errors in static analysis when the method was used in conditional statements.

_AC-11489 - [GitHub issue](https://github.com/magento/magento2/issues/38485) - [GitHub code contribution](https://github.com/magento/magento2/pull/38439)_

#### [Issue] Allow only valid preferences during `setup:di:compile`

The system now throws an error during the `setup:di:compile` command if a preference is created for a class that does not exist or is specifically excluded, ensuring that only valid preferences are allowed. Previously, these scenarios would fail silently, potentially rendering any plugins associated with the original classes useless.

_AC-11592 - [GitHub issue](https://github.com/magento/magento2/issues/38517) - [GitHub code contribution](https://github.com/magento/magento2/pull/33161)_

#### Magento trying to modify read-only property in __wakeup method of LoggerProxy

The system now allows the modification of previously read-only properties in the LoggerProxy&apos;s __wakeup method, ensuring smooth operation without forcing users to employ a workaround. Previously, an attempt to reassign the value of a read-only property in the LoggerProxy&apos;s __wakeup method would cause issues.

_AC-11651 - [GitHub issue](https://github.com/magento/magento2/issues/38526) - [GitHub code contribution](https://github.com/magento/magento2/commit/c8f87c25)_

#### [Issue] AC-2039 AC-1667 upgrade TinyMCE references

Updated tinymce latest version in composer.json

_AC-11681 - [GitHub issue](https://github.com/magento/magento2/issues/38533) - [GitHub code contribution](https://github.com/magento/magento2/pull/36543) - [GitHub code contribution](https://github.com/magento/magento2/commit/b34c0a75)_

#### ChangelogBatchWalker does not work in multiple threads

The system now supports process fork for MView indexation, preventing errors during indexer execution when operating on multiple threads. Previously, running the ChangelogBatchWalker on multiple threads would lead to the deletion of tables used by other threads, causing an error during indexer execution.

_AC-11696 - [GitHub issue](https://github.com/magento/magento2/issues/38246) - [GitHub code contribution](https://github.com/magento/magento2/pull/38248)_

#### [Issue] Rename wrongly named variable

The system now correctly names the variable that contains the amount of money that can still be refunded, preventing confusion during debugging. Previously, this variable was incorrectly named as totalRefund, which could lead to misunderstandings for developers.

_AC-11781 - [GitHub issue](https://github.com/magento/magento2/issues/38609) - [GitHub code contribution](https://github.com/magento/magento2/pull/36205)_

#### [Issue] Pass custom attributes to current link via XML

The system now allows custom attributes to be passed to the current link via XML, ensuring that these attributes are correctly displayed even when the link is the current page. Previously, custom attributes were not displayed for the current page link due to the getAttributesHtml() method not being used for the current link.

_AC-11809 - [GitHub issue](https://github.com/magento/magento2/issues/38500) - [GitHub code contribution](https://github.com/magento/magento2/pull/30070)_

#### Built-in FPC cache is broken in 2.4.7 for some configurations

The system now correctly caches pages when the MAGE_RUN_CODE parameter is set, ensuring optimal performance. Previously, pages were not being cached under these conditions, leading to potential performance issues.

_AC-11819 - [GitHub issue](https://github.com/magento/magento2/issues/38626) - [GitHub code contribution](https://github.com/magento/magento2/pull/38646) - [GitHub code contribution](https://github.com/magento/magento2/commit/0c53bbf7)_

#### [Issue] Fix exception handling inconsistency between developer and production modes

The system now consistently handles exceptions between developer and production modes, preventing unexpected redirection to the login page when an exception is thrown. Previously, an inconsistency in exception handling could cause a redirect to the login page in production mode instead of displaying the exception message.

_AC-11829 - [GitHub issue](https://github.com/magento/magento2/issues/38639) - [GitHub code contribution](https://github.com/magento/magento2/pull/37712)_

#### Replace &apos;PayPal Account&apos; translation in token_list.phtml

The system now labels the section for tokenizable account payment methods as &quot;Account&quot; instead of &quot;PayPal Account&quot; in the Stored Payment Methods page, making it more representative of its function. Previously, this section was specifically labeled as &quot;PayPal Account&quot;, which was misleading when other tokenizable account payment methods were added.

_AC-11852 - [GitHub issue](https://github.com/magento/magento2/issues/35622) - [GitHub code contribution](https://github.com/magento/magento2/pull/37959)_

#### Backward compatibility has been lost on Magento\Catalog\Model\ProductRepository class

The ProductRepository class now maintains backward compatibility by restoring the Initialization Helper class as the second parameter, ensuring that modules extending from this class function as expected. Previously, the removal of the Initialization Helper from the constructor in the ProductRepository class resulted in a loss of backward compatibility, forcing users to employ a workaround.

_AC-11874 - [GitHub issue](https://github.com/magento/magento2/issues/38669)_

#### [Issue] Static content deploy - Type error

The system now correctly handles empty LESS files during static content deployment, displaying an &quot;LESS file is empty&quot; error message. Previously, an incorrect type error was thrown when encountering an empty LESS file during deployment.

_AC-11905 - [GitHub issue](https://github.com/magento/magento2/issues/38682) - [GitHub code contribution](https://github.com/magento/magento2/pull/38683)_

#### [Issue] [View] Removed extra space in link and script tag

The system now ensures that there are no extra spaces in the link and script tags, providing cleaner and more efficient code. Previously, double spaces could be found between attributes in the link and script tags.

_AC-12002 - [GitHub issue](https://github.com/magento/magento2/issues/32920) - [GitHub code contribution](https://github.com/magento/magento2/pull/32919)_

#### [Issue] avoid a misconfiguration infinite loop

The system now avoids an infinite loop by preventing self-referential mapping in virtual type configurations. This ensures the application does not get stuck in an endless loop when attempting to dereference a self-referential node. Previously, if a virtual type configuration was self-referential, it would cause the application to spin indefinitely.

_AC-12127 - [GitHub issue](https://github.com/magento/magento2/issues/38822) - [GitHub code contribution](https://github.com/magento/magento2/pull/38794)_

#### Object Manager not used for Magento\Csp\Model\Mode\Data\ModeConfigured

The system now correctly uses the Object Manager when creating the ModeConfigured object, allowing plugins to be used on this object. Previously, the Object Manager was not being used, preventing plugins from being applied to the ModeConfigured object.

_AC-12299 - [GitHub issue](https://github.com/magento/magento2/issues/38875) - [GitHub code contribution](https://github.com/magento/magento2/pull/38886)_

#### Inaccurate doc block comment in Product Stock and Price Alerts

The doc block comment for the deleteCustomer method in the Product Stock and Price Alerts has been corrected to accurately reflect that the method deletes all stock product or price alerts associated with a given customer and website, not the customer from the website. Previously, the comment inaccurately stated that the method was for deleting a customer from the website.

_AC-12540 - [GitHub issue](https://github.com/magento/magento2/issues/38939) - [GitHub code contribution](https://github.com/magento/magento2/pull/39001)_

#### [Issue] Use compiled config for generated data instead of general config

The system now uses the compiled configuration for generated data instead of the general configuration, reducing network transfer and overhead of data that depends on a certain version of code. This change prevents cache overriding in shared instances during container swapping, leading to improved stability and reduced downtime. Previously, certain core classes used shared config type, which could lead to cache overriding or application downtime due to differences in code versions across multiple servers.

_AC-12594 - [GitHub issue](https://github.com/magento/magento2/issues/38785) - [GitHub code contribution](https://github.com/magento/magento2/pull/29954)_

#### [Issue] Remove references to files from extjs which got removed in e1ccdb…

The system now removes references to files from extjs which were previously removed, eliminating errors in the browser&apos;s console and the system log file. Previously, these references were causing errors due to the absence of the referenced files.

_AC-12597 - [GitHub issue](https://github.com/magento/magento2/issues/38960) - [GitHub code contribution](https://github.com/magento/magento2/pull/38951)_

#### [Issue] Minor cleanup: fixed wrong usage of sprintf, it only takes 2 placeholders here and w…

The system now correctly uses the sprintf function with the appropriate number of placeholders, enhancing code cleanliness and consistency. Previously, the sprintf function was incorrectly used with an extra argument, which did not cause any major issues but was not the correct usage.

_AC-12778 - [GitHub issue](https://github.com/magento/magento2/issues/39062) - [GitHub code contribution](https://github.com/magento/magento2/pull/38628)_

#### PHP 8.2.15 removed FTP extension

The system now includes the FTP extension as a dependency in the composer.json file, ensuring the successful configuration of CSV imports via FTP. Previously, an error was thrown when attempting to configure CSV imports via FTP due to the FTP extension being missing in the PHP package.

_AC-12857 - [GitHub issue](https://github.com/magento/magento2/issues/39083) - [GitHub code contribution](https://github.com/magento/magento2/commit/47b448e2)_

#### [Issue] Fixes incorrect classes being referenced in Magento modules.

The system now correctly references classes in modules, ensuring smoother operation and preventing crashes due to non-existing classes. This includes a bugfix in the Indexer and Creditmemo modules, and the implementation of the HttpGetActionInterface in the PrintAction class. Previously, incorrect class references led to errors and potential system crashes, and certain functionalities, such as the filename for creditmemo PDF files and reindexing of stocks, were not working as expected.

_AC-12869 - [GitHub issue](https://github.com/magento/magento2/issues/39126) - [GitHub code contribution](https://github.com/magento/magento2/pull/37784)_

#### Ability to define Area for `dev:di:info` CLI command

The system now allows developers to define an area for the `dev:di:info` CLI command, enhancing the development and debugging process. Previously, this command could only display information for the GLOBAL area.

_AC-12964 - [GitHub issue](https://github.com/magento/magento2/issues/38758) - [GitHub code contribution](https://github.com/magento/magento2/pull/38759)_

#### [Issue] add isMultipleFiles property to image form element template

This fix, prevents the &quot;Browse to find or drag image here&quot; button to disappear when an image is added in a multiple files image form element.

_AC-13149 - [GitHub issue](https://github.com/magento/magento2/issues/39219) - [GitHub code contribution](https://github.com/magento/magento2/pull/36325)_

#### [Issue] Remove all marketing get parameters to minimize the cache

The system now removes all marketing get parameters to optimize cache utilization, mirroring the logic used when Varnish is in use. Previously, these parameters could lead to cache bloating and reduced performance.

_AC-13279 - [GitHub issue](https://github.com/magento/magento2/issues/39266) - [GitHub code contribution](https://github.com/magento/magento2/pull/39099)_

#### [Issue] [PHPDOC] Fix bad phpdoc Magento\Directory\Model\AllowedCountries::getAllowedCountries()

The PHPDoc for the AllowedCountries::getAllowedCountries() method has been corrected to provide accurate information, enhancing the clarity and usefulness of the documentation. Previously, the PHPDoc for this method contained incorrect information, which could lead to confusion or misuse of the method.

_AC-13345 - [GitHub issue](https://github.com/magento/magento2/issues/39246) - [GitHub code contribution](https://github.com/magento/magento2/pull/39241)_

#### [Issue] Removes some code for PHP versions we no longer support.

Removal of code for PHP versions that no longer getting supported in Magento

_AC-13348 - [GitHub issue](https://github.com/magento/magento2/issues/39361) - [GitHub code contribution](https://github.com/magento/magento2/pull/39202)_

#### [Issue] Make ImageMagick Adapter compatible with php8 (Implicit conversion from float to int)

The system now ensures compatibility with PHP8 by correctly handling float numbers when calculating image dimensions, preventing any errors due to implicit conversion from float to int. Previously, the calculation of image dimensions could result in float numbers, which when implicitly rounded, would cause an error.

_AC-13417 - [GitHub issue](https://github.com/magento/magento2/issues/39402) - [GitHub code contribution](https://github.com/magento/magento2/pull/37362)_

#### [Issue] [PHPDOC] Fix bad phpdoc Magento\Framework\App\Config\ScopeConfigInterface

This update corrects the PHPDoc annotations in the Magento\Framework\App\Config\ScopeConfigInterface to accurately reflect the type of the $scopeCode argument for the getValue and isSetFlag methods.

_AC-13537 - [GitHub issue](https://github.com/magento/magento2/issues/39492) - [GitHub code contribution](https://github.com/magento/magento2/pull/39199)_

#### Magento\Framework\Filesystem\Driver\Http depends on reason phrase OK

Removed &quot;OK&quot; phrase check from Magento\Framework\Filesystem\Driver\Http::isExists

_AC-13725 - [GitHub issue](https://github.com/magento/magento2/issues/39546) - [GitHub code contribution](https://github.com/magento/magento2/pull/39558)_

#### Customer Grid indexer does not work properly in Update by Schedule mode

Earlier Customer grid was updated instantly but after the fix Customer grid is updated after cron run but not reflect instantly.

_AC-13810 - [GitHub code contribution](https://github.com/magento/magento2/commit/1da9ba6f)_

#### typo error on a js file.

The system now correctly uses the term &quot;subscribers&quot; in the JavaScript file, ensuring proper functionality of the related features. Previously, a typographical error in the JavaScript file resulted in the incorrect use of the term &quot;subsctibers&quot;.

_AC-6754 - [GitHub issue](https://github.com/magento/magento2/issues/36163) - [GitHub code contribution](https://github.com/magento/magento2/pull/36171)_

#### [Issue] Remove forbidden `@author` tag

The system now adheres to coding standards by removing the forbidden `@author` tag from certain modules, ensuring cleaner and more standardized code. Previously, the `@author` tag was present in some modules, which was against the established coding standards.

_AC-8353 - [GitHub issue](https://github.com/magento/magento2/issues/37253) - [GitHub code contribution](https://github.com/magento/magento2/pull/37003)_

#### [Issue] Remove forbidden `@author` tag from `Magento_Customer` (part 2)

The system now adheres to the coding standard by removing the forbidden `@author` tag from certain modules, ensuring cleaner and more standardized code. Previously, the `@author` tag was present in some modules, which was against the established coding standards.

_AC-8356 - [GitHub issue](https://github.com/magento/magento2/issues/37250) - [GitHub code contribution](https://github.com/magento/magento2/pull/37000)_

#### Space in editorconfig syntax breaks rule for `[{composer,auth}.json]`

The system now correctly applies a 4-space indent to the composer and auth.json files, following a fix to a syntax error in the editorconfig. Previously, due to a space in the editorconfig syntax, these files were incorrectly formatted with a 2-space indent.

_AC-8659 - [GitHub issue](https://github.com/magento/magento2/issues/37394) - [GitHub code contribution](https://github.com/magento/magento2/pull/37395)_

#### [Issue] Improve cron error logging

The system now captures and logs both STDERR and STDOUT for cron processes, providing valuable diagnostic information in scenarios where cron processes fail. Previously, any error messages within cron processes were not recorded, and STDERR and STDOUT for cron groups running in separate processes were lost.

_AC-8662 - [GitHub issue](https://github.com/magento/magento2/issues/37453) - [GitHub code contribution](https://github.com/magento/magento2/pull/32690)_

#### [Issue] Adds some more colors to the output of certain setup cli commands

The system now adds more colors to the output of certain setup command line interface (CLI) commands, enhancing readability and user experience. Previously, the output of these commands was harder to read due to lack of color differentiation.

_AC-8984 - [GitHub issue](https://github.com/magento/magento2/issues/29335) - [GitHub code contribution](https://github.com/magento/magento2/pull/29298)_

#### Upgrading Magento resets general/region/state_required when new country with required state/region is added.

The system now only adds the modified country to the &apos;general/region/state_required&apos; configuration when a new country with required states is added, preventing any disruption to custom code that assumes the region is disabled. Previously, adding a new country with required states would reset the &apos;general/region/state_required&apos; configuration to default countries with a required state, potentially breaking the shop.

_AC-9630 - [GitHub issue](https://github.com/magento/magento2/issues/37796) - [GitHub code contribution](https://github.com/magento/magento2/pull/38076)_

#### Difference in less compilation between php &amp; nodejs library (grunt) with complicated `calc` expressions

Fix the difference in less compilation between php &amp; nodejs library (grunt) after update wikimedia/less.php:^5.x

_AC-9712 - [GitHub issue](https://github.com/magento/magento2/issues/37841) - [GitHub code contribution](https://github.com/magento/magento2/commit/b34c0a75)_

#### &quot;Base table or view not found&quot; error occurs when partial indexing is executed

Partial reindex now works correctly with big changelog in case of secondary db connection

_ACP2E-2692 - [GitHub code contribution](https://github.com/magento/magento2/commit/ba25af8a)_

#### Issues after upgrading MariaDB to 10.5.1 or higher

Fixed the issue when datetime values in a DB would be converted to  0000-00-00 00:00:00 after Mysql upgrade

_ACP2E-2844 - [GitHub code contribution](https://github.com/magento/magento2/commit/a12063bd)_

#### Type Mismatch in Data Comparison when checking if data has changes

Previously, the save object was called every time without any data changes (for any numeric data field - like int/float/double). It triggers the flag _hasDataChanges to be true and calls the save function. After this fix applies, the save function will call only if the data is changed. The data value for int/float/double-check with the value passing to the function and does strict type matching.

_ACP2E-2855 - [GitHub code contribution](https://github.com/magento/magento2/commit/57a32313)_

#### [Cloud] import cannot be used with directory var

Product can be imported successfully regardless of the file name.

_ACP2E-2959 - [GitHub code contribution](https://github.com/magento/magento2/commit/3a7c4d17)_

#### In ipad mini the menu and header loads as mobile, instead they should load as desktop.

The system now treats devices with a width of 768px as desktop, ensuring that the menu and header load correctly. Previously, devices with a width of 768px were treated as mobile, causing the menu and header to load in a mobile view.

_ACP2E-2966 - [GitHub code contribution](https://github.com/magento/magento2/commit/35b1b1da) - [GitHub code contribution](https://github.com/magento/magento2-page-builder/commit/4d5db10a)_

#### Modifying column length via db_schema.xml doesn&apos;t work in case of foreign keys

modifying column with foreign key via declarative schema now doesn&apos;t rise errors with MariaDB

_ACP2E-3230 - [GitHub code contribution](https://github.com/magento/magento2/commit/581b7ef1)_

#### Some of the relations records are saved to DB when order record is saved

Before the fix unnecessary UPDATE queries were being triggered that can have an impact performance wise. After the fix, the unnecessary UPDATE queries were eliminated.

_ACP2E-3361 - [GitHub code contribution](https://github.com/magento/magento2/commit/1366ae5e)_

#### [CLOUD] In admin there are many javascript error in console

Previously, In admin panel there are many javascript error in console. Now, In the admin panel, there will be no JavaScript errors in the console, and all the default JavaScript functions will execute successfully without any issues.

_ACP2E-3375 - [GitHub code contribution](https://github.com/magento/magento2/commit/d75cff27)_

#### [Cloud] Magento: queue message has been deleted

Queue messages are now properly being cleared out. Prior to the fix, given that SQL queue system was being used, new messages could have been deleted if the cleaning queue message was running at the same time.

_ACP2E-3387 - [GitHub code contribution](https://github.com/magento/magento2/commit/d50f6b5d)_

#### Corresponding cache key entries are not available in cache tags, hence cache cleaning does not work correctly

LUA mode is now enabled by default for Redis cache garbage collector to prevent race conditions

_ACP2E-3537 - [GitHub code contribution](https://github.com/magento/magento2/commit/a52ff98f)_

#### MAGENTO_DC_INDEXER__USE_APPLICATION_LOCK value is ignored

After the fix, an ENV variable set to &quot;false&quot; will be treated as bool false, not as string &apos;false&apos;.

_ACP2E-3681 - [GitHub code contribution](https://github.com/magento/magento2/commit/982b1c42)_

### Framework, GraphQL

#### [Issue] Introduced support of custom scalar types for GraphQL schema

The system now supports custom scalar types for GraphQL schema, allowing developers to define custom scalar types and implementations. This feature can be particularly useful for expressing values that may require validation, such as HTML, emails, URLs, dates, etc., and for more advanced cases like EAV attributes. Previously, the system did not support the processing of custom scalar types in GraphQL.

_AC-7976 - [GitHub issue](https://github.com/magento/magento2/issues/36877) - [GitHub code contribution](https://github.com/magento/magento2/pull/34651) - [GitHub code contribution](https://github.com/magento/magento2/commit/0574ac23)_

### Framework, UI Framework

#### Possibility to overwrite config value even if it&apos;s locked

Previously to this fix, the design configuration could not be set through bin/magento config:set command and locked values could be changed by manipulation of the form displaying them. After the fix locked values set from cli with --lock-env or --lock-conf cannot be updated anymore.

_ACP2E-3324 - [GitHub code contribution](https://github.com/magento/magento2/commit/55615e61)_

### GraphQL

#### Magento_GraphQl execute headers processing even if the header value does not pass validation

The system now ensures that header processing is only executed once and only if the header value passes validation, enhancing security and preventing potential vulnerabilities. Previously, header processing was executed even if the header value did not pass validation, leading to potential vulnerabilities and unexpected behavior due to double processing of header values.

_AC-11729 - [GitHub code contribution](https://github.com/magento/magento2/commit/c8f87c25)_

#### Physical Giftcard options don&apos;t have the right sorting order

The system now correctly sorts the options of physical gift card products when queried via GraphQL, ensuring consistent rendering with the Luma theme. Previously, the sort order was incorrect according to luma theme, leading to incorrect display and ordering of options such as sender name, recipient name, and amount.

_AC-8951 - [GitHub code contribution](https://github.com/magento/magento2/commit/1bafc571)_

#### [GraphQL] Resolver Cache is Invalidated When Creating/Editing/Moving/Deleting a Staging Update

The system now ensures that the resolver cache is not invalidated when creating, editing, moving, or deleting a staging update, but only when the staging update is applied to the entity. Previously, the resolver cache was invalidated prematurely, even before the staging update was applied, which led to unnecessary cache invalidations.

_AC-9157 - [GitHub code contribution](https://github.com/magento/magento2/commit/0c53bbf7)_

#### Fastly cache not cleared for content staging update

Now GraphQL with PageBuilder contents response cache is invalidated, when the PageBuilder content related entities are updated.

_ACP2E-2642 - [GitHub code contribution](https://github.com/magento/magento2/commit/ba25af8a)_

#### Disabling Layered Navetion - Does not remove aggregation from Graphql

The issue has been fixed after applying the check while requesting a product search with category aggregations through a GraphQL query when the admin configuration setting of &quot;Catalog &gt; Layered Navigation &gt; Display Category Filter&quot;.

_ACP2E-2653 - [GitHub code contribution](https://github.com/magento/magento2/commit/12e071c3)_

#### GraphQL Products call containing the price filter `{from:&quot;0&quot;}` returns no result

Previously graphql products search with filter for zero prices did not return any results at all due to a thrown exception. Now the search returns results as expected.

_ACP2E-2928 - [GitHub code contribution](https://github.com/magento/magento2/commit/c971859e)_

#### Translations for customer return attributes not reflected in GraphQL API for respective StoreView

Translations for customer return attributes are reflected in GraphQL API for respective StoreView.
Previously customer Return attributes for respective StoreView were not reflected in GraphQL API.

_ACP2E-2974 - [GitHub code contribution](https://github.com/magento/magento2/commit/ec7e32a9)_

#### [Cloud] Broken GraphQL call for getPurchaseOrder with node quote

The Purchase Order GraphQL call will be able to execute the task without encountering any internal server errors.

_ACP2E-3128 - [GitHub code contribution](https://github.com/magento/magento2/commit/6f4805f8)_

#### [Cloud] Configurable Products not shown in Production Site if Product is not enabled in &quot;All Store Views&quot;

The system now correctly displays configurable products in the site even if the product is not enabled in &quot;All Store Views&quot;, but is enabled in specific store view scopes. 
Previously, if a product was disabled in &quot;All Store Views&quot; and enabled only in specific store view scopes, the product attributes would not be displayed correctly in the GraphQL response, leading to the product not being displayed properly.

_ACP2E-3184 - [GitHub code contribution](https://github.com/magento/inventory/commit/3f300077)_

#### [Cloud] Products graphql having error when same simple product has assigned to multiple configurable products

Previously, with separate configurable products with the same simple product, grapQL returns an error. After this fix apply, different configurable products with the same simple product, grapQL returns result without no error.

_ACP2E-3190 - [GitHub code contribution](https://github.com/magento/magento2/commit/148c3ead)_

#### [Cloud] Issue with User Authentication and Cross-Site Token Access in Multi-Site Setup

GraphQl Customer Info and Cart queries in Multi-Site setup checks if the customer on non-default website exists.
Previously query worked without making sure the customer exists on non-default website in Multi-Site setup.

_ACP2E-3215 - [GitHub code contribution](https://github.com/magento/magento2/commit/581b7ef1)_

#### GraphQL cart itemsV2 pagination is not working correctly

The issue has been fixed by passing the correct value for the current page argument in the collection query. Previously, the wrong value was getting passed to set the current page, causing the issue.

_ACP2E-3253 - [GitHub code contribution](https://github.com/magento/magento2/commit/8459b17d)_

#### [GRAPHQL] model value should be specified when getting customerCart

The GraphQL &apos;customerCart&apos; query can now create an empty cart even when the quote is not available in the database. Previously, this operation failed due to country validation issues while creating the empty cart.

_ACP2E-3255 - [GitHub code contribution](https://github.com/magento/magento2/commit/fd5cf3af)_

#### [GraphQl] Wishlist items are visible via GraphQl but not visible on storefront

Wishlist products where not being properly listed when requested via GraphQL. Now, wishlist products are filtered based on provided store context.

_ACP2E-3380 - [GitHub code contribution](https://github.com/magento/magento2/commit/55615e61)_

#### [GraphQL] Reset password email inconsistency between content and subject/link

The issue has been resolved by simulating the correct store where the customer&apos;s account is registered when sending the password reset request, regardless of the website store.

_ACP2E-3404 - [GitHub code contribution](https://github.com/magento/magento2/commit/5184c067)_

#### [Cloud] products GraphQL query returns related products not assigned to current website

Previously, for graphQL query, multi-store related products do not show properly for product query. After this fix is applied, for products, graphQL query multi-store related products showing accordingly.

_ACP2E-3419 - [GitHub code contribution](https://github.com/magento/magento2/commit/078c387e)_

#### Using the wrong Store ID in GraphQL header causes fatal memory error

Sending wrong store code in GraphQL request no longer results in excessive memory consumption.

_ACP2E-3447 - [GitHub code contribution](https://github.com/magento/magento2/commit/d50f6b5d)_

#### [Cloud] 500 response to empty Graphql response on 2.4.7

After the fix, invalid graphql requests will not be logged into the exception.log file.

_ACP2E-3467 - [GitHub code contribution](https://github.com/magento/magento2/commit/1984c61c)_

#### [Cloud] Problems with Graphql API

Before the fix by using Graphql application server, customer address request did not return the most recent data.

_ACP2E-3492 - [GitHub code contribution](https://github.com/magento/magento2/commit/3f12d152)_

#### Disabled product still appears in related, upsell, crosssell items in grpahQL query

Graphql now provide correct response for disabled relared, upsell and cross-sell products

_ACP2E-3505 - [GitHub code contribution](https://github.com/magento/magento2/commit/d4de4726)_

#### [CLOUD]: GraphQl error Internal server error placeOrder mutation

The &quot;placeOrder&quot; mutation with coupon code information in the request is no longer throwing an internal error exception, the order was placed successfully. Previously, it failed with &quot;Internal server error&quot;.

_ACP2E-3647 - [GitHub code contribution](https://github.com/magento/magento2/commit/982b1c42)_

#### The discount_percentage is not calculated for bundle products with dynamic price

Fix added for discount_percentage of product.price_details not showing the correct value for bundle products with dynamic price enabled and discount coupon applied.

_LYNX-426_

#### Bundle products still shows &quot;IN_STOCK&quot; when one of its bundled product out of stock

Resolved the issue where bundle products were still showing &quot;IN_STOCK&quot; even when one of their bundled products was out of stock.

_LYNX-485_

#### not_available_message and only_x_left_in_stock doesn&apos;t show the same available stock

Resolved the issue where the not_available_message and only_x_left_in_stock were showing inconsistent stock availability

_LYNX-486_

#### original_row_total field returning wrong value

Resolved the issue with the original_row_total field, which was returning incorrect values when custom options were selected

_LYNX-488_

#### Grouped product thumbnail should be shown according to the configuration     .

Resolved the issue to ensure the grouped product thumbnail is displayed according to the configuration settings

_LYNX-503_

#### original_item_price is not including discounts

Updated original_item_price to include discounts.

_LYNX-512_

#### Not available message is not showing the available inventory quantity

Resolved the error message and error code for the AddProductsToCart mutation to align with the &quot;not available&quot; message configuration

_LYNX-530_

#### &quot;OUT_OF_STOCK&quot; status returns on Simple with custom options products with multi select options

Updated the StockStatusProvider resolver in the inventory package to fix the stock_status for simple products with custom options.

_LYNX-532_

#### Error (GQL): cart.itemsV2.items.product.custom_attributesV2 returns a server error

Resolved the server error that occurred when a cart query included a product&apos;s custom attributes by adding a product without any custom attributes.

_LYNX-533_

#### orders/date_of_first_order always returning null

Resolved the issue where orders &gt; date_of_first_order was always returning null.

_LYNX-536_

#### Customer must not be able to cancel a partially shipped order

Validation has been added to restrict customers from canceling a partially shipped order.

_LYNX-544_

#### Error codes for order cancellation based on the error message

The error codes for order cancellation are now based on the specific error message.

_LYNX-548_

#### Move back cookie-related properties from private to protected

Reverts Magento\Framework\App\PageCache\Version class constructor properties visibility from private to protected

_LYNX-581_

#### Increase max default GraphQL query complexity to 1000

Increased the default maximum GraphQL query complexity from 300 to 1000.

_LYNX-600_

#### GQL - itemsV2 &gt; Original row total, price range prices is returned as $0.00 for downloadable product with file options which has separate prices.

Resolved an issue where downloadable products with separate link purchase options enabled were returning $0 for itemsV2 &gt; Original row total, price range returned as $0.00 for products with file options having separate prices.

_LYNX-620_

#### GraphQl Compatibility for PHP-8.4 Version

Fixed GraphQL compatibility issues with PHP 8.4 across multiple resolvers, ensuring smooth functionality. Updated affected files in CatalogRule, Customer, GiftMessage, GiftCard, and GiftWrapping modules.

_LYNX-772_

### GraphQL, Inventory / MSI

#### MergeCart mutation throws exception when source and destination carts have same bundle items

&apos;-

_ACP2E-2607 - [GitHub code contribution](https://github.com/magento/magento2/commit/c971859e) - [GitHub code contribution](https://github.com/magento/inventory/commit/db0620da)_

### GraphQL, Inventory / MSI, Performance

#### Site down after upgrade

The performance of fetching bundle products through GraphQl is improved.

_ACP2E-1716 - [GitHub code contribution](https://github.com/magento/magento2/commit/ba25af8a) - [GitHub code contribution](https://github.com/magento/inventory/commit/bdbf97ea)_

### GraphQL, Performance

#### [GraphQL Resolver] Customer Resolver Data is Not Invalidated From Import

GraphQL customer resolver cache is now invalidated as expected when a customer is edited or deleted through imports. Previously, the cache was not invalidated, and customer data could be edited or deleted during import.

_AC-9569 - [GitHub code contribution](https://github.com/magento/magento2/commit/0574ac23)_

### GraphQL, Search

#### GraphQL product list sorting by multiple parameters doesn&apos;t work

Product sorting by multiple fields in GraphQl now works as described in the documentation

_ACP2E-2809 - [GitHub code contribution](https://github.com/magento/magento2/commit/c971859e)_

#### Product listing GraphQL query limited to total_count 10,000 products only

After the fix, the search result is not limited to 10000 products, it becomes possible to get all products matching the search criteria even if the count is more than 10000.

_ACP2E-948 - [GitHub code contribution](https://github.com/magento/magento2/commit/a4cf5e62)_

### GraphQL, Test framework

#### Magento\GraphQl\App\GraphQlCustomerMutationsTest.php Integration Test failure

&apos;-

_ACP2E-3363 - [GitHub code contribution](https://github.com/magento/magento2/commit/a4cf5e62)_

### Import / export

#### Issue at product import when provided with custom options-type: file (Created Product does not contain price for custom-option and show only the first file type extension provided)

The system now correctly imports product data with custom options of type &apos;file&apos;, ensuring that all provided file extensions are displayed and the price for the custom option is included. Previously, during product import, if a custom option of type &apos;file&apos; was provided with more than one file extension, only the first extension was displayed and the price for the custom option was missing.

_AC-12172 - [GitHub issue](https://github.com/magento/magento2/issues/38805) - [GitHub code contribution](https://github.com/magento/magento2/pull/38926)_

#### Wrong execution time for import operation in Import History grid

Import report execution time shows correctly independent of admin locale.

_ACP2E-2710 - [GitHub code contribution](https://github.com/magento/magento2/commit/ea79f7dd)_

#### Duplicate customers being created with same email address using import

Importing the customer while Account Sharing set to Global, imported customer that exists in the system is updated.
Previously imported customer was duplicated.

_ACP2E-2737 - [GitHub code contribution](https://github.com/magento/magento2/commit/c971859e)_

#### Add/Update Import on Products Duplicating Customizable Options

The issue has been resolved by assigning the correct store to product options during product options CSV imports.
Previously, assigned to the admin store instead of their respective store.

_ACP2E-2902 - [GitHub code contribution](https://github.com/magento/magento2/commit/3a7c4d17)_

#### Customer &quot;created_at&quot; date Not Converted to store time zone upon export

A column &apos;created_at&apos; date value is converted to the proper date format based on the store timezone in the customer export CSV section.

_ACP2E-2990 - [GitHub code contribution](https://github.com/magento/magento2/commit/3056e9cb)_

#### [Cloud] Getting error while checking the data in import data using CSV

There is no error when checking the data during CSV import. Previously, the error message displayed was: &quot;We can&apos;t find a customer who matches this email and website code in row(s): 1&quot; when checking the data in the import section using CSV from the admin.

_ACP2E-3165 - [GitHub code contribution](https://github.com/magento/magento2/commit/8459b17d)_

#### Import button missing

Resolve the Import button missing issue after data checks with correct and incorrect records in the CSV. Previously the import button doesn&apos;t display after data checks with correct and incorrect records in the CSV.

_ACP2E-3172 - [GitHub code contribution](https://github.com/magento/magento2/commit/1819fe73)_

#### Exported customer address cannot be imported

Customer address import will proceed as expected. Previously, a customer address import file would not pass validation if Share Customer Accounts = Global, and there are two websites where the default website has a restricted country list, and the address that is being imported is for another website where allowed countries are different

_ACP2E-3382 - [GitHub code contribution](https://github.com/magento/magento2/commit/ec7e32a9)_

#### [Cloud] Wrong quantity in CSV file did not give error

Now stock sources import will throw validation error for non numeric values in the quantity column. Previously, importing stock sources with non numeric value in the quantity column resulted in the quantity being set to 0.

_ACP2E-3448 - [GitHub code contribution](https://github.com/magento/inventory/commit/5b21b7af)_

#### Duplicated URL key error message generated when importing a product is not correct when the URL Key already belongs to a category

Displaying the correct error message during product import check, when customer tried to import product when product&apos;s url key already belongs to a category.

_ACP2E-3455 - [GitHub code contribution](https://github.com/magento/magento2/commit/d4de4726)_

#### Product export causes OOM even with 4G memory limit

Previous to this fix, the product export failed if product attributes had thousands of option values even with 4G available memory. After this fix, the product export should finish exporting the csv file.

_ACP2E-3475 - [GitHub code contribution](https://github.com/magento/magento2/commit/1984c61c)_

#### [Cloud] Import Processes Interfering with Each Other

Correct messages are shown if the same admin user performs two or more import operations using the same user session.

_ACP2E-3527 - [GitHub code contribution](https://github.com/magento/magento2/commit/d4de4726)_

### Import / export, Performance

#### [Cloud] Product import time has significantly increased

Previous to the fix, catalog product import with over 10K entries had a significant time degradation. After the fix, the import of catalog product executes in a timely manner.

_ACP2E-3476 - [GitHub code contribution](https://github.com/magento/magento2/commit/87d012e5)_

### Install & Administer

#### Magento upgrade fails on MariaDB 11.4 + 2.4.8-beta1

Upgrade should happened without any error.

_AC-13242 - [GitHub code contribution](https://github.com/magento/magento2/commit/7b336d0a)_

#### No Export VCL for Varnish 7 button in admin panel

&quot;Export VCL for Varnish 7&quot; button was added to the Admin panel.

_ACP2E-2102 - [GitHub code contribution](https://github.com/magento/magento2/commit/a4fbf702)_

### Inventory / MSI

#### Inventory update of Configurable Product fails when database uses prefixes

The system now correctly updates the inventory of configurable products when the database uses prefixes, preventing any error messages and ensuring the correct quantity is saved. Previously, an error would occur when trying to save the inventory quantity for simple products within a configurable product if the database was using prefixes.

_AC-10750 - [GitHub issue](https://github.com/magento/magento2/issues/38045)_

#### Google google API key is not working while adding Map with attributes

The system now supports the latest Google Maps API version 3.56, allowing users to successfully add a Map content block from the PageBuilder menu to the stage without encountering any errors. Previously, users were unable to add a Map content block due to compatibility issues with the Google Maps API version, resulting in a &quot;something went wrong&quot; error message.

_AC-11593 - [GitHub code contribution](https://github.com/magento/magento2/commit/0574ac23)_

#### Unable to create shipment for order item with multiple sources and corrupted SKU

Earlier when spaces  was mistakenly added  in sku  through database leads to error in shipment page which is now fixed and automatic trim is considered as human friendly error and no impact was found .Therefore shipment was successfully created.

_AC-13922 - [GitHub code contribution](https://github.com/magento/inventory/commit/c18eb5fa)_

#### [Test] Bundle products with 0 inventory showing on store front

The bundle product does not display on the additional websites using additional stock.

_ACP2E-1411_

#### [Cloud] Critical Issue with Product Listing with Empty Spaces

The system now correctly displays product listings without empty spaces when products are set to &apos;Out of Stock&apos;, ensuring a consistent and accurate display of available products. Previously, setting a product to &apos;Out of Stock&apos; would result in an empty space appearing in the product listing, disrupting the layout and potentially confusing customers.

_ACP2E-2794 - [GitHub code contribution](https://github.com/magento/magento2/commit/ea79f7dd) - [GitHub code contribution](https://github.com/magento/inventory/commit/b59e48ca)_

#### Unable to ship the order when MSI pick up store is enabled

Improved inventory performance of create shipping in case of many sources with in-store pickup

_ACP2E-3335 - [GitHub code contribution](https://github.com/magento/inventory/commit/9f3e63d1)_

#### Cron reindex fails to update product availability on the frontend

Previously, Products remained out of stock on the frontend after updating the backorder status through the REST API. Now, after updating the backorder status via the REST API, products are shown as in stock.

_ACP2E-3355 - [GitHub code contribution](https://github.com/magento/inventory/commit/e6fe0aa7)_

#### Adding images to configurable not working when MSI is enabled.

Image upload for configurable product will now work as expected when inventory module is used. Previously the image upload didn&apos;t work

_ACP2E-3357 - [GitHub code contribution](https://github.com/magento/inventory/commit/fdf409aa)_

#### Issue with Bundle Product + MSI in Clean M2.4.7-p3

Previously, for inventory bundle products after duplication with the same simple product, the simple product can not be saved. After this fix is applied, the simple product can be saved successfully without any exceptions.

_ACP2E-3470 - [GitHub issue](https://github.com/magento/magento2/issues/39358) - [GitHub code contribution](https://github.com/magento/inventory/commit/0208e433)_

### Inventory / MSI, Search

#### All products are indexed with [is_out_of_stock] = 1 when the SKU is not set as a searchable attribute

After the fix, the &quot;is_out_of_stock&quot; in catalog search index is correct, even when sku is not searchable.

_ACP2E-3413 - [GitHub code contribution](https://github.com/magento/inventory/commit/5b21b7af)_

### Order

#### Backend order overview screen: Backordered quantity not visible on order item level

The system now displays the number of backordered items in the quantity column on the backend order overview screen. This ensures that users can accurately track the status of all items in an order. Previously, the quantity column only showed the number of items that were ordered, invoiced, and shipped, but did not display the number of backordered items.

_AC-10828 - [GitHub issue](https://github.com/magento/magento2/issues/38252) - [GitHub code contribution](https://github.com/magento/magento2/pull/38320)_

#### [Issue] Wrong store ID used in Order Address Renderer

The system now correctly uses the store ID associated with an order when rendering the order address, ensuring that addresses are formatted correctly according to their respective store ID. Previously, the system was incorrectly using the current store ID, which could lead to incorrect address formatting in cases where multiple order emails from different stores needed to be sent.

_AC-10994 - [GitHub issue](https://github.com/magento/magento2/issues/38412) - [GitHub code contribution](https://github.com/magento/magento2/pull/37932)_

#### JoinProcessor caching issue

The system now correctly applies the JoinProcessor for each iteration, even with consecutive calls, ensuring accurate data retrieval. Previously, the JoinProcessor was incorrectly marked as already applied in consecutive iterations, leading to errors in data retrieval.

_AC-11690 - [GitHub issue](https://github.com/magento/magento2/issues/27504) - [GitHub code contribution](https://github.com/magento/magento2/pull/37550)_

#### [Issue] Shipping price showing diffrent in printed pdf

The system now correctly displays shipping prices in printed PDFs according to the tax configuration settings, ensuring consistency between the sales order invoice view page and the printed invoice. Previously, the shipping price displayed in the printed PDF was excluding tax, regardless of the tax configuration settings.

_AC-11798 - [GitHub issue](https://github.com/magento/magento2/issues/38608) - [GitHub code contribution](https://github.com/magento/magento2/pull/38595) - [GitHub code contribution](https://github.com/magento/magento2/commit/1bafc571)_

#### Reorder with a deleted parent configurable product

Now while reordering with the deleted product the system will not show the reorder button to reorder

_AC-13839 - [GitHub issue](https://github.com/magento/magento2/issues/39568) - [GitHub code contribution](https://github.com/magento/magento2/pull/39601)_

#### [Issue] Fix bad \Magento\Sales\Model\Order\Email\Container\Template::$id property

This fixes the bad phpdoc for \Magento\Sales\Model\Order\Email\Container\Template::$id, actually $id is type int but in reality is string.

_AC-13924 - [GitHub issue](https://github.com/magento/magento2/issues/39151) - [GitHub code contribution](https://github.com/magento/magento2/pull/39150)_

#### Unable to save changes to phone number in existing order details

Now the user can add the international prefix 00 in the telephone field of order address

_ACP2E-2622 - [GitHub issue](https://github.com/magento/magento2/issues/38201) - [GitHub code contribution](https://github.com/magento/magento2/commit/12e071c3)_

#### Emails are failing to send

The system now includes a configuration option async_sending_attempts to specify the number of attempts to send an email before stopping, improving the handling of failed email sends when &quot;Asynchronous sending&quot; is enabled. Previously, if an email failed to send, the system would continuously attempt to resend it, resulting in an endless loop of error messages in the system log.

_ACP2E-2734 - [GitHub code contribution](https://github.com/magento/magento2/commit/b2286ecf)_

#### [Cloud] Order Status changed to complete when partially refund of a partially shipped order

When issuing a credit memo, the order status is no longer changed to &quot;completed&quot; if there are items that haven&apos;t been shipped yet.

_ACP2E-2756 - [GitHub code contribution](https://github.com/magento/magento2/commit/7e0e5582)_

#### [CLOUD] Cannot Disable Send Emails from Admin UI as Dev Docs shows

The system now correctly prevents sales emails from being sent when email communication is disabled. These emails will no longer be sent when email communication is re-enabled. Previously, sales emails initiated while email communication was disabled would still be sent once email communication was re-enabled.

_ACP2E-3002 - [GitHub code contribution](https://github.com/magento/magento2/commit/c8931218)_

#### Order closed without fully refunded

The system now correctly maintains the order status as &apos;Processing&apos; and the invoice status as &apos;Pending&apos; when an order with an uncaptured payment has a shipment created. This ensures that orders are only marked as &apos;Closed&apos; after being fully refunded. Previously, creating a shipment for an order with a pending invoice would incorrectly change the order status to &apos;Closed&apos;.

_ACP2E-3045 - [GitHub code contribution](https://github.com/magento/magento2/commit/6a185204)_

#### [Cloud] Cannot create order in admin on one store if only the Default Billing Address was not set up

Now relevant error message &quot;A customer with the same email address already exists in an associated website.&quot; is displayed if a customer doesn&apos;t have a Default Billing Address and tries to create an order on another store.

_ACP2E-3311 - [GitHub code contribution](https://github.com/magento/magento2/commit/d75cff27)_

#### Admin duplicated place order requests sent

Previously, the &quot;Submit Order&quot; button in the admin panel could be clicked multiple times or activated by repeatedly pressing the &quot;Enter&quot; key, causing duplicate or order submissions with error. Now, preventing additional actions until the order is fully processed, ensuring that only one order is submitted.

_ACP2E-3416 - [GitHub code contribution](https://github.com/magento/magento2/commit/5184c067)_

#### Admin can still place order even without payment method

Previously selected payment method is now retained when the payment method reappears in the list of available payments.

_ACP2E-3425 - [GitHub code contribution](https://github.com/magento/magento2/commit/d50f6b5d)_

### Order, Payments

#### Admin can still place order even without payment method

Previously, the merchant could place orders from the admin panel without selecting a payment method. Now, the merchant is required a payment method to proceed with placing an order.

_ACP2E-3233 - [GitHub code contribution](https://github.com/magento/magento2/commit/fd5cf3af)_

### Order, Returns

#### Order refund results in duplicate credit memo

Issuing the refund over REST API when two identical requests were executed simultaneously will no longer create duplicate Credit Memos.

_ACP2E-2982 - [GitHub code contribution](https://github.com/magento/magento2/commit/a4fbf702)_

### Order, Tax

#### [CLOUD] Incorrect base_row_total in RESTFUL order API when enabling cross-border transactions and applying coupon discounts

Now correct base_row_total is returned from RESTFUL order API when cross-border transaction is enabled and coupon discount is applied.

_ACP2E-3003 - [GitHub code contribution](https://github.com/magento/magento2/commit/9af794a4)_

### Other

#### private_content_version cookie returned in GQL queries

Fixed an issue where the private_content_version cookie was returned in GraphQL queries, even when the session cookie was disabled. The cookie is no longer included in GraphQL responses when the session is disabled, as expected.

_LYNX-339_

#### is_available attribute in CartItemInterface returns always false for configurable products

Fixed an issue where the is_available attribute in CartItemInterface always returned false for in-stock configurable products. Now, it correctly reflects availability as true when applicable.

_LYNX-380_

#### is_available attribute in CartItemInterface returns true even when salable stock is lower than the quantity of the product

Fixed the issue where the is_available attribute in the CartItemInterface incorrectly returned true even when the cart item quantity exceeded the salable stock.

_LYNX-382_

#### Placeholder thumbnail returns when a simple product added to cart within a grouped product

Fixed an issue where adding a simple product (part of a grouped product) to the cart returned a placeholder thumbnail image, even when the product had an assigned image.
Fix Details:
 * The product thumbnail now correctly displays the assigned image if available.
 * The thumbnail selection respects the admin configuration under:
Stores &gt; Configuration &gt; Sales &gt; Checkout &gt; Shopping Cart &gt; Grouped Product Image.
This ensures consistent thumbnail behavior for grouped products based on store settings.

_LYNX-399_

#### Customer&apos;s custom option attributes not working with integer values

Fixed an issue where customer&apos;s custom option attributes did not work when the returned value was an integer. Custom options now correctly handle and return integer values as expected.

_LYNX-400_

#### Internal server error when trying to get priceDetails for Bundle products with dynamic price

Resolved an issue where querying price_details for bundle products with dynamic pricing via GraphQL resulted in an internal server error. This enhancement ensures stable cart queries when working with bundle products configured with dynamic pricing.

_LYNX-402_

#### only_x_left_in_stock always returns 0 for configurable products

Resolved an issue where the only_x_left_in_stock attribute always returned 0 for configurable products when added using the parent SKU with options.
Fix Details:
 * The only_x_left_in_stock value now accurately reflects the stock of the selected child variant instead of the parent SKU.
 * This ensures that stock levels are correctly displayed for configurable product variations in the cart and product pages.

_LYNX-403_

#### GraphQL query not returning correct calculated regular price for customizable products

Fixed an issue where GraphQL did not return the correct calculated regular price for customizable products. The query now correctly includes the calculated regular price with customizable values applied (e.g., $125) in the prices property, reflecting both the base price and any additional customization costs.

_LYNX-411_

#### AppliedTaxes via EstimatedTotals persist with updated mutations

Fixed an issue with the EstimatedTotals mutation where applied taxes persisted on a cart even after updating the region or postcode. The mutation now correctly updates the applied taxes when changing between region and postcode values, ensuring that only the correct tax rule is applied based on the current cart data.

_LYNX-412_

#### is_available attribute in CartItemInterface returns true even when salable stock is lower than the quantity of the product

Fixed an issue where the is_available attribute in CartItemInterface incorrectly returned true even when the salable stock was lower than the requested product quantity. The is_available field now correctly returns false when the product&apos;s quantity exceeds the available stock.

_LYNX-420_

#### Product regular price with 12 decimals and wrong value

Fixed an issue where the regular_price value in the product.price_range.maximum_price and minimum_price GraphQL paths did not match the catalog price when multiple tax rates were applied. The regular_price now consistently reflects the catalog price across all tax configurations, ensuring accurate unit pricing, total row cost calculations, and discount checks in the Cart Summary.

_LYNX-425_

#### GraphQL server error on cart with out of stock bundled product

Fixed an issue where GraphQL returned an internal server error when fetching a cart containing a bundled product with an out-of-stock item, specifically when the query included the itemsV2 property. GraphQL now correctly returns a list of items with relevant error messages attached to the bundled product item entry, as expected.

_LYNX-430_

#### It is not possible to create an address with custom attributes

Fixed an issue with the createCustomerAddress mutation that prevented the creation of addresses with required custom attributes. The mutation now correctly handles custom address attributes when the appropriate payload is provided.

_LYNX-441_

#### GraphQL server error on cart with only_x_left_in_stock on bundled product

Fixed an issue where fetching a cart containing a bundled product with the only_x_left_in_stock field in the GraphQL query resulted in an internal server error. GraphQL now correctly returns a float or null for the only_x_left_in_stock field without errors.

_LYNX-447_

#### GraphQL error when removing other products with insufficient configurable product in cart

Fixed an issue where attempting to remove in-stock products from the cart resulted in a &apos;The requested qty is not available&apos; GraphQL error if the cart also contained configurable products with insufficient stock. The removal now works as expected without triggering errors.

_LYNX-464_

#### Cannot add products due to SKU in mutation being case sensitive

Resolved an issue where the addProductsToCart mutation returned a &apos;PRODUCT_NOT_FOUND&apos; error when using SKUs with different casing. The mutation now handles SKUs case-insensitively, ensuring consistency with Catalog Service queries and PDP behavior.

_LYNX-469_

#### Product attribute &gt; trademark short form &amp;trade; is returned as &amp;trade;

Resolved character encoding issue with the product name for the GraphQL API

_LYNX-603_

#### updateCustomerEmail mutation issue

Resolved an issue with the updateCustomerEmail mutation where customers without required custom attributes (added after account creation) were unable to update their email.

_LYNX-619_

#### Mutation setShippingAddressesOnCart throws error when using pickup_location_code

Fixed an issue where the setShippingAddressesOnCart mutation returned an error when using pickup_location_code without specifying customer_address_id or address. The mutation now correctly allows setting a shipping address with just the pickup_location_code.

_LYNX-626_

#### Storefront Compatibility - Update logic to get table name with prefix and other minor improvements

Updated logic to retrieve the table name with the prefix (related to SCP changes).

_LYNX-637_

#### save in address book does not work when using setBillingAddressOnCart GQL&apos;s same_as_shipping field

Fixed an issue where the shipping address was not saved to the customer&apos;s address book when using the setBillingAddressOnCart GraphQL mutation with the same_as_shipping field set to true. Now, the shipping address is correctly stored as expected.

_LYNX-643_

#### Standarize the order_id in mutations

Standardized the order_id input in mutations and updated the order cancel confirmation email template to expose increment id instead of order id.

_LYNX-650_

#### CustomerOrder is not displaying the order comments

Resolved an issue with CustomerOrder to include order comments in guest and customer order GraphQL queries.

_LYNX-651_

#### original_item_price must not include any discount

Updated the logic for original_item_price in GraphQL Cart Item prices to exclude discounts.

_LYNX-652_

#### Bundle products still shows &quot;IN_STOCK&quot; when one of its bundled product out of stock

Resolved an issue where product.stock_status for bundle products still showed &quot;IN_STOCK&quot; even when one of the bundled items was out of stock.

_LYNX-681_

#### customer query returns Internal Server Error if value for deleted custom attribute exists for a customer

Fixed the issue where the customer query returned an internal server error when a deleted custom attribute still had a stored value. Now, a proper error message is returned if a non-existing attribute is requested. Necessary cache is invalidated upon deleing customer custom attribute.

_LYNX-686_

#### Action parameter for return and cancel confirmation links

Action parameter added for return and cancel confirmation email related links

_LYNX-687_

#### Guest user confirmation url is redirected to order status page as it is missing orderRef

Added orderRef parameter to the link in guest order cancellation confirmation email

_LYNX-689_

#### Cannot return null for non-nullable field &quot;TaxItem.title&quot; on placeOrder GQL

Fixed an issue where the placeOrder mutation failed with an internal server error due to a null value for the non-nullable field TaxItem.title. Now, the field always returns a valid value, ensuring successful order placement.

_LYNX-699_

#### EstimateTotals: Discounts is null for virtual product types

Resolved the issue with the estimateTotals mutation returning null for discounts when a discount code is applied to a cart containing virtual products.

_LYNX-702_

#### Bundle product does not return the correct discount percentage and amount

New properties &quot;catalog_discount&quot; and &quot;row_catalog_discount&quot; have been introduced for catalog item prices to display the correct discount amounts and percentages at both the row and single item levels.

_LYNX-703_

#### Gift message configuration on product level

Fixed an issue where gift messages were not applied at the product level when globally disabled. Now, if gift messages are enabled for a specific product, they can be successfully added using the updateCartItems mutation and will be correctly saved and reflected.

_LYNX-714_

#### cart.rules query return error instead of empty array in case no active cart rules are applied

Fixed the cart.rules query to return an empty array instead of an error when no active cart rules are applied.

_LYNX-757_

#### GraphQL calls with OPTIONS method are returning 500 response code when adobe-commerce/storefront-compatibility package installed

Fixed an issue where GraphQL calls using the OPTIONS method returned a 500 Internal Server Error when the adobe-commerce/storefront-compatibility package was installed. The endpoint now correctly returns a 200/204 response as expected.

_LYNX-778_

### Other Developer Tools

#### [Issue] Fix HTML syntax error in visual.phtml

The system now correctly closes the start tag in the visual.phtml file, ensuring proper HTML syntax. Previously, the start tag was not closed properly, causing an HTML syntax error.

_AC-10658 - [GitHub issue](https://github.com/magento/magento2/issues/38247) - [GitHub code contribution](https://github.com/magento/magento2/pull/37457)_

#### [Issue] Changed &quot;active&quot; to &quot;enabled&quot; in bin/magento maintenance:status command

The system now provides more accurate status messages for the maintenance mode command, changing the status from &quot;active&quot; to &quot;enabled&quot; and from &quot;not active&quot; to &quot;disabled&quot;. Previously, the status message for the maintenance mode command was displayed as &quot;active&quot; or &quot;not active&quot;, which could lead to confusion.

_AC-11474 - [GitHub issue](https://github.com/magento/magento2/issues/38486) - [GitHub code contribution](https://github.com/magento/magento2/pull/38410)_

#### Navigating in the categories tree leads to errors in Redis: &quot;Redis session exceeded concurrent connections&quot;

_AC-12571 - [GitHub issue](https://github.com/magento/magento2/issues/38851) - [GitHub code contribution](https://github.com/magento/magento2/commit/0611e750)_

#### CSP issues combined with dev/css/use_css_critical_path

The system now correctly loads CSS files asynchronously on checkout pages, even when the &apos;dev/css/use_css_critical_path&apos; setting is enabled, ensuring that these pages are rendered with the proper CSS styles. Previously, a restricted Content Security Policy (CSP) prevented inline JavaScript from executing, which resulted in CSS files not being loaded as expected.

_AC-12731 - [GitHub issue](https://github.com/magento/magento2/issues/39020) - [GitHub code contribution](https://github.com/magento/magento2/pull/39040)_

#### Using virtual type to configure plugin, interceptor method cannot be generated correctly in `setup:di:compile` command

The system now correctly generates interceptor methods when using a virtual type to configure a plugin, ensuring consistent results whether precompiled or runtime compiled. Previously, the system would generate incorrect results when precompiled compared to runtime compilation.

_AC-13398 - [GitHub issue](https://github.com/magento/magento2/issues/33980) - [GitHub code contribution](https://github.com/magento/magento2/pull/38141)_

#### Adobe Commerce 2.4.7-p3 unit tests are failing

No release notes are required.

_ACP2E-3631 - [GitHub code contribution](https://github.com/magento/magento2/commit/982b1c42)_

### Payment/ Payment Methods, Order

#### Papal payflow Credit card details saved for later use are not showing up on stored payment method page

Earlier Papal payflow Credit card details saved for later use was not showing up on stored payment method page which is now fixed credit card details are showing up on stored payment method page.

_AC-13699 - [GitHub code contribution](https://github.com/magento/magento2/commit/96dec499)_

### Payments

#### Credit Card(Payflow Link) payment is not working

Earlier Getting error (Payment got Declined) while placing order with Credit Card after the fix Order placed successfully.

_AC-13414 - [GitHub code contribution](https://github.com/magento/magento2/commit/a68324bc)_

#### Payflow creates new transaction each time we click on fetch button on the view transaction screen

The system now correctly fetches transaction information without creating a new payment transaction each time the fetch button is clicked on the view transaction screen. Previously, clicking the fetch button would incorrectly create a new payment transaction for an order that had already been paid.

_ACP2E-2841 - [GitHub code contribution](https://github.com/magento/magento2/commit/b2286ecf)_

#### Paylater message not showing in PDP for Canadian paypal merchant account

The system now correctly displays the PayLater message for Canadian PayPal merchant accounts on the Product Detail Page (PDP) when the buyer&apos;s country can be determined from the account billing address or shipment. Previously, the PayLater message was not displayed due to a missing parameter, resulting in an error in the browser console.

_ACP2E-3028 - [GitHub code contribution](https://github.com/magento/magento2/commit/6a185204)_

#### PayPal order refund results in duplicate credit memo

Fixed concurrency issue of IPN-created credit memos for PayPal payment service.

_ACP2E-3143 - [GitHub code contribution](https://github.com/magento/magento2/commit/d01ee51e)_

#### Cart price rule not working for Paypal

Correct amount is shown on PayPal side when discount is applied by payment method

_ACP2E-3163 - [GitHub code contribution](https://github.com/magento/magento2/commit/7377de59)_

#### [Cloud] Users with a specific role cannot login

admin user with role that contain only PayPal Section access now can login without errors

_ACP2E-3208 - [GitHub code contribution](https://github.com/magento/magento2/commit/66dea0de)_

### Performance

#### Default Product Attribute Settings Issue

The system now allows users to deselect a default option for a product attribute, ensuring that the attribute does not always have a default set. Previously, once a default was set for a product attribute, there was no way to deselect it, resulting in the attribute always having a default set.

_AC-11932 - [GitHub issue](https://github.com/magento/magento2/issues/38703) - [GitHub code contribution](https://github.com/magento/magento2/commit/7d5e3906)_

#### [Issue] Code cleanup and add new critical head block and move critical css before assets

The system now includes a new critical head block and moves critical CSS before assets, allowing for more customization and performance optimization in the frontend. Previously, the critical CSS was not positioned before the assets, limiting customization and optimization opportunities.

_AC-12000 - [GitHub issue](https://github.com/magento/magento2/issues/38748) - [GitHub code contribution](https://github.com/magento/magento2/pull/35580)_

#### Theme compilation breaks when mysql host contains port information

The system now correctly handles MySQL host configuration that includes port information, ensuring successful theme compilation. Previously, theme compilation would fail if the MySQL host configuration in the database connection included port information.

_AC-12176 - [GitHub issue](https://github.com/magento/magento2/issues/38799) - [GitHub code contribution](https://github.com/magento/magento2/pull/38842)_

#### Support for Symfony&apos;s CommandLoaderInterface in Magento CLI

This change reduces initialization time of the Magento CLI app by allowing deferred initialization of commands until they&apos;re needed.

_AC-13471 - [GitHub issue](https://github.com/magento/magento2/issues/29266) - [GitHub code contribution](https://github.com/magento/magento2/pull/29355)_

#### Performance issue when loading product attributes in cart rules

Improved query performance for sales rules - from around 150ms to single digit ms.

_ACP2E-2494 - [GitHub code contribution](https://github.com/magento/magento2/commit/ba25af8a)_

#### Price partial indexing performance

The price partial indexing performance has been improved by optimizing some of the delete queries used within the indexing process.

_ACP2E-2673 - [GitHub code contribution](https://github.com/magento/magento2/commit/ba25af8a)_

#### Order gets rejected on multi-store setup when using Async-order processing + Terms and Conditions

The orders placed from non default websites with terms and conditions enabled are now processed.
Before they were automatically rejected.

_ACP2E-2850 - [GitHub code contribution](https://github.com/magento/magento2/commit/57a32313)_

#### Order Rest API call is taking a long time to execute

The system now executes the Order Rest API call within a reasonable timeframe, improving the performance when fetching a large number of orders. Previously, the Order Rest API call was taking a long time to execute, causing delays when retrieving a large number of orders.

_ACP2E-2910 - [GitHub code contribution](https://github.com/magento/magento2/commit/001e5188)_

### Pricing

#### Magento2.4.6-p4 Order API Simple Item missing price

The system now correctly displays the price of simple products when queried through the Order API, ensuring accurate data representation. Previously, the price of simple products was incorrectly displayed as zero in the API response.

_AC-11810 - [GitHub issue](https://github.com/magento/magento2/issues/38603)_

#### Penny rounding error in catalog rule

_AC-13855 - [GitHub code contribution](https://github.com/magento/magento2/commit/276e0acd)_

### Product

#### Special characters in configurable associate product name are  being Converted to HTML Entities.

The system now correctly retains special characters in the names of associated products when editing a configurable product, preventing them from being converted into HTML entities. Previously, special characters in associated product names were converted into HTML entities when the configurable product was edited.

_AC-10535 - [GitHub issue](https://github.com/magento/magento2/issues/38146) - [GitHub code contribution](https://github.com/magento/magento2/pull/38447)_

#### ProductRepository function GetById does not create the correct cache key

The system now correctly creates a cache key in the ProductRepository&apos;s function GetById, regardless of whether the store ID is passed as a string or an integer. This ensures that the product is retrieved from memory on subsequent calls, improving performance. Previously, the system would retrieve the product from the database each time the function was called, even with the same parameters, due to incorrect cache key creation.

_AC-10947 - [GitHub issue](https://github.com/magento/magento2/issues/38384) - [GitHub code contribution](https://github.com/magento/magento2/pull/38433)_

#### [Issue] [MFTF] Added AdminClickAddOptionForBundleItemsActionGroup

The system now includes the AdminClickAddOptionForBundleItemsActionGroup, enhancing the functionality of the admin panel. Previously, this action group was not available.

_AC-11992 - [GitHub issue](https://github.com/magento/magento2/issues/30857) - [GitHub code contribution](https://github.com/magento/magento2/pull/30838)_

#### [Issue] Fix typo in PHPDoc block

The system now correctly removes an unknown referenced variable in PHPDoc for the $helper variable declaration, enhancing code clarity and accuracy. Previously, this unknown referenced variable in PHPDoc was causing confusion and potential inaccuracies in the code.

_AC-13173 - [GitHub issue](https://github.com/magento/magento2/issues/38961) - [GitHub code contribution](https://github.com/magento/magento2/pull/38940)_

#### [Issue] Fixed broken Bundle and Downloadable product pages layout in Magento &gt;= 2.4.7

The layout for bundle and downloadable product pages has been fixed, ensuring a consistent and correct display across all devices. Previously, these pages experienced layout issues due to a rearrangement of the product info media block.

_AC-13423 - [GitHub issue](https://github.com/magento/magento2/issues/39403) - [GitHub code contribution](https://github.com/magento/magento2/commit/6cfb9b6b)_

#### AlertProcessor - Argument #2 ($storeId) must be of type int, string given

The system now correctly triggers product alert emails by ensuring the store identifier is of the correct data type. Previously, product alert emails were not being sent due to a type mismatch in the store identifier.

_AC-5969 - [GitHub issue](https://github.com/magento/magento2/issues/35602) - [GitHub code contribution](https://github.com/magento/magento2/commit/0574ac23)_

#### [Cloud] addFilterToMap function is not working for certain columns

Now, the custom module can be used in the order grid. Previously errors occurred while using a custom module.

_ACP2E-2944 - [GitHub code contribution](https://github.com/magento/magento2/commit/3a7c4d17)_

### Promotion

#### Customer attribute not visible when creating account from invitation

Customer attributes are available while creating account from invitation.

_ACP2E-2602 - [GitHub code contribution](https://github.com/magento/magento2/commit/39d54c2d)_

#### Coupon code with Uses per Coupon limit is not getting released for payment failed with order cancel

The system now immediately updates coupon usages when an order is created or cancelled, and adds rule usages to a queue to prevent potential deadlocks. This ensures that a coupon code with a &quot;Uses per Coupon&quot; limit is released and can be reused if an order is cancelled due to a failed payment. Previously, the system did not release the coupon code for reuse in such cases, resulting in an error message stating that the coupon code was not valid.

_ACP2E-2627 - [GitHub code contribution](https://github.com/magento/magento2/commit/c971859e)_

#### [Cloud] Reindexing Catalog Rule Product Indexer throws SQLSTATE[HY000]: General error: 2006 MySQL server has gone away.

The system now correctly handles custom &quot;batchCount&quot; value in the di.xml for the &quot;Magento\CatalogRule\Model\Indexer\IndexBuilder&quot;, preventing SQL errors such as &quot;General error: 2006 MySQL server has gone away&quot; during the reindexing of the Catalog Rule Product Indexer due to the incorrect batch size on large catalogs

_ACP2E-2811 - [GitHub code contribution](https://github.com/magento/magento2/commit/b2286ecf)_

#### Sales Rule with Discount Qty Step (Buy X) attribute causes other rules to not be applied

Cart price rule does not cancel previously applied rules if quantity of the product in the cart is not enough for rule to be applied.

_ACP2E-3139 - [GitHub code contribution](https://github.com/magento/magento2/commit/d01ee51e)_

#### Issue sales rules with Fixed amount discount and &quot;Maximum Qty Discount is Applied To&quot;

Fixed issue with cart rules discount, when fixed amount discount is configured to be applied for a limited qty of products is the cart. Previously, the &quot;Maximum Qty Discount is Applied To&quot; value was used to calculate current item&apos;s price in the cart, not only for calculation the rule&apos;s discount.

_ACP2E-3332 - [GitHub code contribution](https://github.com/magento/magento2/commit/581b7ef1)_

#### Cart rules &quot;Fixed amount discount for whole cart&quot;  Action applies discounts incorrectly

Coupon codes will be validated properly regardless of upper case or lowercase, when used in order creation from the admin area. Before, the coupon code was not validated if it did not match the exact letter case of the configured cart rule code.

_ACP2E-3349 - [GitHub code contribution](https://github.com/magento/magento2/commit/581b7ef1)_

#### In Backend, default store values for product attributes (instead of expected admin values)

Now In Backend, admin values are used instead of default store values for product attributes.

_ACP2E-3374 - [GitHub code contribution](https://github.com/magento/magento2/commit/5184c067)_

#### Cart rules &quot;Fixed amount discount for whole cart&quot;  action applies discounts incorrectly when adding bundle products

Fixed amount cart rules were not being applied properly for bundle products. Now, when calculating the total discount amount, bundle child products are taken into consideration, resulting in proper discount calculation.

_ACP2E-3377 - [GitHub code contribution](https://github.com/magento/magento2/commit/1366ae5e)_

#### Cart Price Rules Miscalculating Discount

Fixed amount discounts are now being properly calculated. Prior to the fix, fixed amount discounts were not totalled properly for bundle products.

_ACP2E-3403 - [GitHub code contribution](https://github.com/magento/magento2/commit/0b488dd1)_

#### Nested categories in rule conditions not showing

Fixed issue when nested categories under level 3 category are not shown in marketing rules for category condition

_ACP2E-3406 - [GitHub code contribution](https://github.com/magento/magento2/commit/88660e79)_

#### usage_limit and uses_per_customer not updating in salesrule_coupon Table

Updating Uses per Coupon and Uses per Customer in cart price rule will now affect existing autogenerated coupons. Previously the new values affected only new coupons

_ACP2E-3432 - [GitHub code contribution](https://github.com/magento/magento2/commit/88660e79)_

#### Cart price rule doesn&apos;t consider parent category when it is using &quot;equals or greater than&quot; condition.

Cart Price Rules now consider parent category correctly when it is used in advanced conditions

_ACP2E-3456 - [GitHub code contribution](https://github.com/magento/magento2/commit/93359343)_

#### Invalid discount calculation with priority

In the case of fixed amount appllied for the whole cart discount type, the amount was not being calculated properly for cart items that were already discounted by a previous promotion. Now, discounts are properly summed up.

_ACP2E-3463 - [GitHub code contribution](https://github.com/magento/magento2/commit/078c387e)_

#### [CLOUD] Shipping calculation is not considering the shopping cart rule

Prior to the fix, a cart rule with region condition was not being applied consistently. After the fix, cart rules with region conditions are being applied properly.

_ACP2E-3472 - [GitHub code contribution](https://github.com/magento/magento2/commit/d4de4726)_

#### Cart rule sku condition is failing for invoice.

Discount on Bundle product with dynamic price is now correctly reflected in the invoice. Previously, the discount was not reflected on the invoice.

_ACP2E-3491 - [GitHub code contribution](https://github.com/magento/magento2/commit/3f12d152)_

#### Incorrect discount value when multiple cart price rules are applied simultaneously with discounted/special priced products

Prior to the fix, fixed amount for whole cart rules were not being applied properly if more than one was being applied. Now, fixed amount discount cart rules are being applied properly.

_ACP2E-3498 - [GitHub code contribution](https://github.com/magento/magento2/commit/1984c61c)_

### SEO

#### Adding URL rewrites with an accent causes infinite loading

The system now successfully creates and functions URL rewrites with accents, preventing infinite loading during the saving process. Previously, adding a URL rewrite with an accent caused an infinite loading issue.

_AC-11907 - [GitHub issue](https://github.com/magento/magento2/issues/38692) - [GitHub code contribution](https://github.com/magento/magento2/commit/44cef3a9)_

#### Multi Store Wrong category url-rewrite for third level category

Generate correct url rewrites for children with parent with custom scoped url key

_ACP2E-2641 - [GitHub code contribution](https://github.com/magento/magento2/commit/ea79f7dd)_

#### Double-byte characters (special characters) in Product Name field blocks product creation in backend

A new setting has been added that allows you to apply transliteration to product URL or not. Setting is available here: Stores &gt; Configuration &gt; Catalog &gt; Catalog &gt; Search Engine Optimization: &quot;Apply transliteration for product URL&quot;

_ACP2E-2770 - [GitHub code contribution](https://github.com/magento/magento2/commit/b2286ecf)_

#### Incorrect url_rewrite entries creation with multiple stores in one store group

Prior to the fix, you could only generate URL rewrites on a website level when editing a product. With the fix, a new setting was introduced (Stores &gt; Configuration &gt; Catalog &gt; Catalog &gt; Search Engine Optimization, &quot;Product URL Rewrite Scope&quot; with options &quot;Store view&quot;, &quot;Website&quot;) that allows you to generate URL rewrites at the store view or website level.

_ACP2E-3383 - [GitHub code contribution](https://github.com/magento/magento2/commit/2d627301)_

### Search

#### Getting &quot;Enter a search term and try again.&quot; error on advanced search page in storefront in 2.4.8-beta1

The system now correctly displays search results on the Advanced Search page when a product attribute is set to &quot;No&quot;. Previously, setting a product attribute to &quot;No&quot; and performing a search would result in an error message, &quot;Enter a search term and try again.&quot;

_AC-13053 - [GitHub code contribution](https://github.com/magento/magento2/commit/3ea26621)_

#### magento/module-open-search depends on on nonexistent opensearch-php branch

_AC-13721 - [GitHub code contribution](https://github.com/magento/magento2/commit/05dc0bbf)_

#### search_query table when of huge size, has large impact on load time frontend

Improved search listing page load time. Prior to the fix, the search listing page was being delayed because of an unoptimized query.

_ACP2E-3362 - [GitHub code contribution](https://github.com/magento/magento2/commit/55615e61)_

### Security

#### [Issue] Missing Font CSP Paylater Popup

The system now allows the loading of the font &apos;https://www.paypalobjects.com/webstatic/mktg/2014design/font/PP-Sans/PayPalSansBig-Medium.woff&apos; without violating the Content Security Policy directive, ensuring the correct display of the Paylater Popup. Previously, the font was refused to load due to a violation of the Content Security Policy directive, causing display issues with the Paylater Popup.

_AC-11855 - [GitHub issue](https://github.com/magento/magento2/issues/38624) - [GitHub code contribution](https://github.com/magento/magento2/pull/37401)_

#### [Issue] Update js.js DOM text reinterpreted as HTML

By using innerText, it will avoid the risk of HTML injection, as these properties automatically escape any HTML special characters in the provided text. This fix, helps prevent cross-site scripting (XSS) vulnerabilities by treating the input as plain text rather than interpreted HTML.

_AC-12035 - [GitHub issue](https://github.com/magento/magento2/issues/38767)_

#### ReCaptcha V2 shows incorrectly on checkout for German language

Previously the recaptcha from under email address from checkout appear unstyled for languages with long words, like german. After this the recaptcha looks the same as all recaptcha elements from the rest of the areas.

_ACP2E-3273 - [GitHub code contribution](https://github.com/magento/magento2/commit/7377de59)_

#### Captcha on admin login does not require interaction for some users

ReCaptcha for admin login is validated as expected

_ACP2E-3300 - [GitHub code contribution](https://github.com/magento/security-package/commit/8f64ab3c)_

### Shipping

#### [Issue] Fixed typo in tracking.phtml - renamed JS-functions &quot;currier&quot; to &quot;carrier&quot;

The system now correctly uses the term &quot;carrier&quot; instead of the misspelled &quot;currier&quot; in the JavaScript handler functions used in the order tracking template, ensuring proper function naming and code clarity. Previously, the misspelled term &quot;currier&quot; was used, leading to potential confusion and inconsistency in the codebase.

_AC-10757 - [GitHub issue](https://github.com/magento/magento2/issues/34523) - [GitHub code contribution](https://github.com/magento/magento2/pull/33414)_

#### UPS REST &quot;A shipment cannot have a KGS/IN or LBS/CM or OZS/CM as its unit of measurements&quot;

Ensure to UPS rates should visible in checkout and cart.

_AC-11938 - [GitHub issue](https://github.com/magento/magento2/issues/38618) - [GitHub code contribution](https://github.com/magento/magento2/commit/493e01f5)_

#### [Issue] Correct spelling of variables for customer address

The system now correctly spells variables for customer addresses, ensuring accurate display in the account area of the front end. Previously, incorrect spelling of these variables could lead to errors during local code reviews.

_AC-13172 - [GitHub issue](https://github.com/magento/magento2/issues/32817) - [GitHub code contribution](https://github.com/magento/magento2/pull/32815)_

#### Tracking Window showing wrong Expected Delivery Date

Display correct Delivery Date for Fedex Carrier.

_ACP2E-2738 - [GitHub code contribution](https://github.com/magento/magento2/commit/57a32313)_

#### Table Rates Still Showing Even Though Free Shipping Is Applied

Table Rate shipping method now is shown even if Free Shipping becomes available after coupon applying

_ACP2E-2763 - [GitHub code contribution](https://github.com/magento/magento2/commit/b2286ecf)_

#### MFTF test AdminCreatingShippingLabelTest failing due to credentials not added in Jenkins environment

mftf test fix

_ACP2E-2765 - [GitHub code contribution](https://github.com/magento/magento2/commit/ea79f7dd)_

#### FedEx Track API not working with REST credentials

Previously FedEx integration didn&apos;t require additional API keys for Tracking API. Now new configuration was added to support Tracking API keys.

_ACP2E-3340 - [GitHub code contribution](https://github.com/magento/magento2/commit/ec7e32a9)_

#### [Cloud] FedEx Negotiated Rates not returned on REST

Previous to the fix,FedEx account specific rates where not sent on the response, even through according to FedEx documentation they should have been sent. After the fix, the account specific rates are sent on the response by changing the request from our side.

_ACP2E-3354 - [GitHub code contribution](https://github.com/magento/magento2/commit/55615e61)_

### Staging & Preview

#### Unable to Update Scheduled Update When Using Unique Custom Category Attribute

Fixed an issue where updating a scheduled update for a category was not possible if the category had a unique attribute

_ACP2E-3453 - [GitHub code contribution](https://github.com/magento/magento2/commit/078c387e)_

### Targeting

#### [Issue] Allow use of CIDR ranges in maintenance allow list

The system now supports the use of CIDR ranges in the maintenance mode allow IP list, enabling a range of IP addresses to bypass maintenance mode. Previously, the maintenance mode allow IP list only permitted individual IP addresses to bypass maintenance mode.

_AC-9432 - [GitHub issue](https://github.com/magento/magento2/issues/37943) - [GitHub code contribution](https://github.com/magento/magento2/pull/30699)_

### Tax

#### [Issue] Feature/php8.1 constructor property promotion wee graph ql

Replace allmost all properties with constructor property promotion in module wee graph ql:

_AC-13295 - [GitHub issue](https://github.com/magento/magento2/issues/39309) - [GitHub code contribution](https://github.com/magento/magento2/pull/36975)_

#### Fixed Product Tax (FPT) is not working with configurable products

FPT for configurable product variations working properly.

_ACP2E-3193 - [GitHub code contribution](https://github.com/magento/magento2/commit/ec7e32a9)_

### Test framework

#### Integration test failing testDbSchemaUpToDate due to JSON column type

The system now correctly recognizes JSON column types in the database schema during integration tests, preventing test failures due to a mismatch between the database schema and the declarative schema. Previously, the system incorrectly identified JSON column types as LONGTEXT in MariaDB, causing integration tests to fail.

_AC-11654 - [GitHub code contribution](https://github.com/magento/magento2/commit/ef81f5a2)_

#### [Issue] PHPDoc correction spelling

The system now correctly recognizes deprecated methods in IDEs due to a spelling correction in the PHPDoc. Previously, a spelling error in the PHPDoc caused IDEs to not recognize certain methods as deprecated.

_AC-13362 - [GitHub issue](https://github.com/magento/magento2/issues/31399) - [GitHub code contribution](https://github.com/magento/magento2/pull/31398)_

#### MAGETWO-95118: Checking behaviour with the persistent shopping cart after the session is expired

_AC-13478 - [GitHub code contribution](https://github.com/magento/magento2/commit/7d5e3906)_

#### Fix static tests to enable usage by 3d-party extensions

_AC-13848 - [GitHub code contribution](https://github.com/magento/magento2/commit/9e383b4d)_

#### [Internal] Fixture apply failure is not shown during execution or in logs

&apos;-

_ACP2E-3334 - [GitHub code contribution](https://github.com/magento/magento2/commit/d4de4726)_

#### [MFTF] StorefrontCheckoutProcessForQuoteWithoutNegotiatedPricesTest

Fixed mftfs

_ACP2E-3458 - [GitHub code contribution](https://github.com/magento/magento2/commit/078c387e)_

### UI Framework

#### Prototype.js security vulnerability fix CVE-2020-27511

The system has been updated to address the security vulnerability CVE-2020-27511 in Prototype.js 1.7.3, enhancing the overall security of the system. Prior to this update, the system was susceptible to a Regular Expression Denial of Service (ReDOS) through stripping crafted HTML tags.

_AC-12128 - [GitHub code contribution](https://github.com/magento/magento2/commit/de4dfb8e)_

#### Grunt Less uses pub/ prefix for sourcemaps

The system now generates less/css sourcemaps without the /pub prefix for paths when using grunt, eliminating the need for a workaround in the webserver configuration. Previously, the use of the /pub prefix in sourcemaps paths required a specific configuration in the webserver to function correctly.

_AC-12189 - [GitHub issue](https://github.com/magento/magento2/issues/38837) - [GitHub code contribution](https://github.com/magento/magento2/pull/38840)_

#### Ui Component File Field

The system now correctly validates the file field in a UI component form, allowing the form to be submitted without error when a file is selected. Previously, the validation would fail even when a file was selected, preventing the form from being submitted.

_AC-12432 - [GitHub issue](https://github.com/magento/magento2/issues/38908) - [GitHub code contribution](https://github.com/magento/magento2/pull/39004)_

#### [Issue] Improved date format in js console: switch from 12 hour to 24 hour fo…

Improved date format in js console: switch from 12 hour to 24 hour

_AC-12645 - [GitHub issue](https://github.com/magento/magento2/issues/38983) - [GitHub code contribution](https://github.com/magento/magento2/pull/38972)_

#### [Issue] add sourceMap generation for less files in developer mode

The system now generates source maps for less files when in developer mode, making it easier to identify the source of a style. Previously, identifying the source of a style was challenging when running the system in developer mode with server-side less compilation.

_AC-12650 - [GitHub issue](https://github.com/magento/magento2/issues/38982) - [GitHub code contribution](https://github.com/magento/magento2/pull/38977)_

#### Static content is deploying for disabled modules

The system now excludes CSS related to disabled modules from the final CSS output files, ensuring that unnecessary styles are not loaded. Previously, CSS related to disabled modules was included in the final CSS output files, leading to the loading of extra, unnecessary styles.

_AC-1306 - [GitHub issue](https://github.com/magento/magento2/issues/24666) - [GitHub code contribution](https://github.com/magento/magento2/pull/32922)_

#### Inconsistent Behavior in &quot;Out of Stock&quot; Sorting with Minimum Stock Threshold

The system now correctly sorts products in the catalog based on stock levels, adhering to the set Minimum Stock Threshold and moving out-of-stock items to the bottom of the list consistently. Previously, the sorting behavior was inconsistent, with items not always appearing in the correct order based on their stock levels, and changes in sorting could occur unpredictably after saving, refreshing, or modifying the category hierarchy.

_AC-13459 - [GitHub code contribution](https://github.com/magento/magento2/commit/47b448e2)_

#### Suggestion for improved error reporting for require.js loading problems

This PR improves the error message when requirejs fails to load a component.

_AC-13472 - [GitHub issue](https://github.com/magento/magento2/issues/36761) - [GitHub code contribution](https://github.com/magento/magento2/pull/38971)_

#### PHP 8.4 Deprecation Errors Causing Build Failures in 2.4-develop

_AC-14004 - [GitHub code contribution](https://github.com/magento/magento2/commit/1da9ba6f)_

#### [Issue] Do not load backend block context on frontend

The system now ensures that backend block context is not loaded on the frontend, preventing the creation of unnecessary backend sessions and potential session locks. Previously, the system was incorrectly loading the backend block context on the frontend, leading to the creation of backend sessions and potential session locks.

_AC-9007 - [GitHub issue](https://github.com/magento/magento2/issues/37617) - [GitHub code contribution](https://github.com/magento/magento2/pull/36368)_

#### [Issue] Remove unnecessary scripts review summary

The system now optimizes page load time by removing unnecessary JavaScript scripts from the rating section, instead using inline CSS styles for a more efficient and readable code. Previously, the use of JavaScript scripts for the rating section could potentially slow down page load time.

_AC-9168 - [GitHub issue](https://github.com/magento/magento2/issues/37776) - [GitHub code contribution](https://github.com/magento/magento2/pull/34643)_

#### Exception when checking a gift card balance when Recaptcha is enabled

Users will be able to fetch gift card balance in the view and edit cart screen. Previously these details were not shown while reCAPTCHA enabled.

_ACP2E-2529 - [GitHub code contribution](https://github.com/magento/magento2-page-builder/commit/4a2795ea)_

#### [CLARIFICATION] Feature Request ADA Compliance

The system now ensures ADA compliance by removing unsupported CSS properties and replacing them with supported ones in the print.css file. Previously, the use of unsupported CSS properties led to browser compatibility issues.

_ACP2E-2729 - [GitHub code contribution](https://github.com/magento/magento2/commit/57a32313)_

#### [Cloud] Confusion library code in effect-drop.js of AC 2.4.4-p8

The system now correctly implements the effect-drop.js library, ensuring the proper functioning of jQuery UI effects. Previously, the effect-drop.js library was mistakenly overwritten with the effect-clip.js library, causing potential issues with jQuery UI effects.

_ACP2E-3061 - [GitHub code contribution](https://github.com/magento/magento2/commit/35b1b1da)_

#### Site Header | Special Characters Breaking the Customer Welcome section

After the fix, special characters are shown correctly in the customer welcome section.

_ACP2E-3367 - [GitHub code contribution](https://github.com/magento/magento2/commit/1366ae5e)_

#### Customer Segment edition fails with daterange

It is possible to save customer segment with date range condition, when only one of dates was edited.

_ACP2E-3561 - [GitHub code contribution](https://github.com/magento/magento2/commit/a52ff98f)_
