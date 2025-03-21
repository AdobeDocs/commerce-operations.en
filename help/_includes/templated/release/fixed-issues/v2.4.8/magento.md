# Magento Open Source release notes (v2.4.8)

## Fixed issues in v2.4.8

We have fixed 497 issues in the Magento Open Source 2.4.8 core code. A subset of the fixed issues included in this release is described below.

### APIs

* _AC-10042_: /V1/transactions REST API returns error when parent_txn_id = txn_id
  * _Fix note_: The system now correctly handles the parent and child concept transactions where the parent transaction ID is the same as the transaction ID, preventing an infinite loop when querying the /V1/transactions REST API endpoint. Previously, this scenario would result in a fatal error due to maximum execution time being exceeded.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/1bafc571>
* _AC-11878_: [Graphql] Type issue in 2.4.7
  * _Fix note_: The system now correctly handles integer values in the GetCustomSelectedOptionAttributes function when executing a GraphQL query, preventing any type-related errors. Previously, launching a GraphQL query that used GetCustomSelectedOptionAttributes with an integer argument resulted in a type error.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38662>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/38663>
* _AC-3223_: Special characters in category url_key (when created via REST API)
  * _Fix note_: Earlier In category_url_key special character is not there after the fix it  is showing special character in category_url_key
  * _GitHub issue_: <https://github.com/magento/magento2/issues/35577>
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/c699c206>
* _ACP2E-2755_: Issue with rest api after enable 2FA Duo
  * _Fix note_: 2FA with Duo security option now generates correct signature for Rest API
  * _GitHub code contribution_: <https://github.com/magento/security-package/commit/412fa642>
* _ACP2E-2927_: [REST API]: Use Default value in store view does not stay checked after adding configurations for a configurable product
  * _Fix note_: The issue has been fixed by ensuring correct database entries for the customizable options for a non-default store. The checkbox for the custom store in the &quot;admin &gt; Catalogue &gt; Product Edit &gt; Customizable Options&quot; section was previously unchecked owing to inaccurate database entries, even if the option title for the custom store stayed the same as the default store.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/3056e9cb>
* _ACP2E-2969_: REST API unable to make requests with slash (/) in SKU when using Oauth1
  * _Fix note_: Prior to the fix, you were not able to make a successful API call for a product that had &quot;/&quot; in its SKU. Now, you can issue a successful API get request for product details even though its SKU has a forward slash in it.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/b21e5d91>
* _ACP2E-3079_: Customer address update failing when updating through REST API if "validateDefaultAddress" enabled
  * _Fix note_: The API endpoint is now functioning as intended after the problem with the ID key missing from the API payload has been resolved.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/9af794a4>
* _ACP2E-3091_: [Cloud] Creating the Duplicate website group price customer group in Tier Prices Api.
  * _Fix note_: Now Tier Price Rest Api doesn&apos;t allow to create the Duplicate website group price customer group.
Previously it was possible to create the Duplicate website group price customer group in Tier Prices Api that would not pass validation in Admin during product save.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/148c3ead>
* _ACP2E-3130_: Can't add order comment with status via REST API
  * _Fix note_: The issue has been resolved by allowing the change in order status if it is from the current state only. Previously, it was not honouring the order state and preventing changes in any order status, even if it was from the same state.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/93d50f8d>
* _ACP2E-3236_: Async operation fails when the SKU is missing from the payload
  * _Fix note_: Async and sync operations previously failed due to product save errors if sku is missing from payload. After the fix, the async and sync product save rest api operations fail with relevant exception message.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/66dea0de>
* _ACP2E-3376_: [CLOUD] Unable to update the Base-prices using REST API (The value of 'value_id' in 'catalog_product_entity_decimal' is not incremented correctly.)
  * _Fix note_: Previously to this fix, when rest api /rest/default/V1/products/base-prices was called, the increment id was increased wrongly leaving a gap between values. After the fix the increment id is increased as expected, incrementaly. Also the value_id field range was increased.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/d50f6b5d>
* _ACP2E-3460_: Order items are not visible in credit memo emails for the API POST V1/order/:orderId/refund
  * _Fix note_: Previously, before this fix, when a customer creates a credit memo from an API request notifying send_email, it does not contain the product details grid. After this fix apply the customer sends a credit memo API request, and will find the product item details appearing in the email.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/3f12d152>
* _ACP2E-3486_: Default values are not set for date and time attributes with products RestAPI
  * _Fix note_: Default values now sets properly for date and date and time attributes via RestAPI
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/1984c61c>

### APIs, Cart & Checkout

* _ACP2E-3343_: Critical 500 Error: Magento\Framework\Webapi\Exception Related to Accept HTTP Header
  * _Fix note_: After the fix, there is no issue with specifying the &quot;Accept&quot; header.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/1366ae5e>

### Account

* _AC-10782_: Customer address form allows random code in the name fields
  * _Fix note_: The system now validates the input in the First Name and Last Name fields in the customer address form, preventing the use of random code. Previously, the system allowed the use of random code in these fields without throwing an error.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38331>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/38345>
* _AC-10886_: admin Password update.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38352>
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/4bca5dfe>
* _AC-10990_: my account add address crash on save
  * _Fix note_: The system now correctly saves customer addresses even when the region field is not displayed, preventing a crash during the save process. Previously, attempting to add or edit an address without a displayed region field would result in an exception error.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38406>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/38407>
* _AC-11718_: Redirect loop when URL have uppercase
  * _Fix note_: The system now automatically converts uppercase characters in URLs to lowercase, preventing a redirect loop when accessing the homepage. Previously, having uppercase characters in the Secure Base URL would cause a continuous redirect loop when trying to access the homepage.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38538>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/38539>
* _AC-11755_: middlename('s) not saved for guest accounts
  * _Fix note_: The system now correctly saves the middle name for guest accounts during checkout, making it accessible in the email template. Previously, the middle name was not saved in the quote table and was not accessible in the email template for guest accounts.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38593>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/39067>
* _AC-11919_: Admin: Page Actions Buttons floating left instead of right
  * _Fix note_: The system now correctly aligns the Page Actions Buttons to the right side of the sticky header in the admin panel, enhancing the professional look and feel. Previously, these buttons were incorrectly floating to the left side of the sticky header.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38701>
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/44cef3a9>
* _AC-11999_: dev:di:info error in magento 2.4.7
  * _Fix note_: The system now correctly displays constructor parameters when executing the dev:di:info command, preventing any errors from occurring. Previously, executing this command resulted in an error due to a type mismatch in the argument.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38740>
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/0c53bbf7>
* _AC-13000_: Login as customer opt-in checkbox not translatable
  * _Fix note_: The system now allows the &quot;Login as Customer opt-in checkbox&quot; and &quot;Login as Customer checkbox tooltip&quot; fields to be set at the &quot;Store view&quot; scope, enabling translations for different store views. Previously, these fields were only set at the &quot;Website&quot; scope, preventing translations for individual store views.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/32329>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/32359>
* _AC-6071_: Customer is logged in but showing 404 error in frontend.
  * _Fix note_: The storefront customer dashboard page now loads as expected when a customer logs in. Previously, customers could log in, but this page showed a 404 error. [GitHub-35838](https://github.com/magento/magento2/issues/35838)
  * _GitHub issue_: <https://github.com/magento/magento2/issues/35838>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/36263>
* _ACP2E-2791_: Not able to Save Customer attribute information in Admin Edit customer section;
  * _Fix note_: The store ID of the customer is now implemented properly per website scope for the admin customer edit form.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/488c1034>
* _ACP2E-3329_: After logging in, the products added to the compare list as a guest user are not visible.
  * _Fix note_: Products that were added to product compare list before logging in as a customer now are preserved after logging in.
Previously, after logging in, the products added to the compare list as a guest user were not visible.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/078c387e>
* _ACP2E-3433_: Allow Countries configuration causes issues in customer address configurations
  * _Fix note_: Now selecting Allow Countries configuration doesn&apos;t influence countries shown for outside the given scope. Previously Allow Countries configuration influenced customer address attribute outside given scope
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/078c387e>
* _ACP2E-3501_: VAPT: Business Logic Error - future date as customer date of birth
  * _Fix note_: Customer&apos;s date of birth can not be set later than today
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/d4de4726>

### Account, APIs, GraphQL

* _ACP2E-3246_: Customer API - Login Failures Number Not Able To Reset To 0 After Successful Login
  * _Fix note_: Now failure number is reset to zero in customer entity table after customer successful login through API endpoints.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/ec7e32a9>

### Account, Admin UI, B2B

* _ACP2E-3038_: Restricted admin users can't always see custom shared catalogs
  * _Fix note_: Restricted admin users can now consistently view and manage customers and all shared catalogs to which the products are assigned, provided they have access to the specific store. Previously, a restricted admin user with access to a particular store could not always see all shared catalogs to which the products were assigned or could see customers that could not save, leading to inconsistencies in the system.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/7377de59>

### Account, Cart & Checkout

* _AC-2341_: "select" custom customer address attribute does not render for new customer address
  * _GitHub issue_: <https://github.com/magento/magento2/issues/34950>

### Admin UI

* _AC-10705_: [Issue] add permission check for "reload data" data button
  * _Fix note_: The system now includes a permission check for the &quot;Reload Data&quot; button, ensuring that it is only displayed and accessible to users with the appropriate permissions. Previously, the &quot;Reload Data&quot; button was visible and clickable for all users, leading to a &quot;not permitted&quot; page when clicked by users without the necessary permissions.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38283>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/38279>
* _AC-11427_: [Issue] Inconsistent labels for attributes in marketing rules
  * _Fix note_: The system now correctly populate the labels consistently for category and attribute options in cart price rule
  * _GitHub issue_: <https://github.com/magento/magento2/issues/31232>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/31231>
* _AC-11588_: Data validation is success and Import button is present during Import products with Replace behavior
  * _Fix note_: The system now correctly validates data and hides the &quot;Import&quot; button during the product import process with &quot;Replace&quot; behavior, preventing any unintended data replacement. Previously, the system incorrectly validated the data and displayed the &quot;Import&quot; button, leading to potential data inconsistencies.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/0574ac23>
* _AC-12167_: [Bug] Magento 2.4.7 doesn't allow product photo's with capital letter file extension.
  * _Fix note_: The system now accepts product image uploads with capital letter file extensions, ensuring a smooth product creation process. Previously, image uploads with capital letter file extensions were refused, forcing users to change the file extension to lowercase.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38831>
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/c8f87c25>
* _AC-12319_: Hidden dropdown in grids with select action (e.g. Content > Elements > Pages)
  * _Fix note_: Now the system has been fixed all similar dropdown for all the grids.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38891>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/39371>
* _AC-13131_: [Issue] Fix Warning: Undefined array key "filters"
  * _Fix note_: The system now handles scenarios where a new user has not interacted with bookmarks yet, preventing an undefined array key &quot;filters&quot; warning from being logged. Previously, this warning would be logged when a fresh user had not interacted with bookmarks.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/39013>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/38996>
* _AC-13529_: Product import csv file with special characters fails due to code changes in Validate.php file
  * _Fix note_: The system now correctly validates and imports product CSV files containing special characters, allowing for successful data transfer. Previously, attempting to import a product CSV file with special characters would result in an error, preventing the import process.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/6cfb9b6b>
* _AC-13850_: There is no red asterisk for mandatory phone number field
  * _Fix note_: Earlier red asterisk was not showing for phone number but  phone number was mandatory. Which is now fixed red asterisk can be seen on phone number as a mandatory filed.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/c699c206>
* _AC-6975_: [Issue] Set default indexer mode to 'schedule'
  * _Fix note_: All new indexers are by default in **[!UICONTROL Update by Schedule]** mode.  Previously, the default mode was **[!UICONTROL Update on Save]**. Existing indexers are not affected. [GitHub-36419](https://github.com/magento/magento2/issues/36419)
  * _GitHub issue_: <https://github.com/magento/magento2/issues/36419>
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/0b410856>
* _AC-7700_: [Issue] Drop indexer changelog tables on mview unsubscribe
  * _Fix note_: The system now automatically removes unused changelog tables when an index is switched from &apos;update on schedule&apos; to &apos;update on save&apos;, marking the index as invalid to ensure no entries are missed. Previously, switching an index to &apos;update on save&apos; would leave unused changelog tables in the system and mark all changed indexes as &apos;valid&apos;.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/29789>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/25859>
* _AC-7962_: No link to shipping when in payments in checkout in mobile phone view
  * _Fix note_: The system now ensures that the checkout titles/links &quot;Shipping&quot; and &quot;Review &amp; Payments&quot; are always visible on top of the page in mobile view, allowing users to easily navigate between steps and make necessary corrections. Previously, these titles/links were hidden in mobile view, making it difficult for users to know their current step or go back to previous steps.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/36856>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/36982>
* _AC-8109_: customer Orders query shipment comments created_at is returned in +0 timezone not in store configured timezone
  * _Fix note_: The system now correctly displays the &apos;created_at&apos; field from shipment comments in the customer&apos;s configured timezone when using the customer Orders query. Previously, the &apos;created_at&apos; field was displayed in the +0 timezone, regardless of the customer&apos;s configured timezone.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/36947>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/37642>
* _AC-9843_: i18n:collect-phrases breaks the translations integrity
  * _Fix note_: The `bin/magento i18n:collect-phrases -o` command  now correctly collects and adds new phrases from JavaScript and .phtml files, ensuring that translations are accurately reflected in the translation file. Previously, the system failed to include multiline translation phrases from JavaScript files and phrases from .phtml files in the translation file, leading to incomplete or incorrect translations.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/0c53bbf7>
* _ACP2E-2787_: Apostrophe in store view name is replaced by &#039;
  * _Fix note_: The grid&apos;s store view filters now properly display apostrophes
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38395>
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/39d54c2d>
* _ACP2E-2847_: Favicon upload fails to validate .ico files
  * _Fix note_: The file validation error has been updated to &quot;File validation failed. Please verify the Image Processing Settings in the Store Configuration.&quot; Previously, it was simply &quot;File validation failed.&quot;
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/39d54c2d>
* _ACP2E-2957_: Gallery in PageBuilder is showing old image thumbnail instead of newly uploaded image
  * _Fix note_: Regenerate image previews for images deleted and re-uploaded with same name through media gallery in page builder content.
  * _GitHub code contribution_: <https://github.com/magento/magento2-page-builder/commit/60140cd2>, <https://github.com/magento/magento2/commit/001e5188>
* _ACP2E-2978_: Saving product by admin user with different role scope overwrites/deletes existing Related product information in the product
  * _Fix note_: Previously, before the fix, the related products were reset and became empty when the secondary admin user clicked on the save button without changing in related product. After this fix, the secondary admin user clicks on the save button and the product doesn&apos;t reset and is saved successfully.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/3056e9cb>
* _ACP2E-3033_: Unable to export more than 200 orders
  * _Fix note_: The server limits for the request size of previously submitted selected IDs have been neglected by altering the HTTP request from GET to POST in order to fix the issue. Previously, due to the server limitations for GET request size, the issue was encountered.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/93d50f8d>
* _ACP2E-3037_: Checkout page Validation message incorrect.
  * _Fix note_: If any required field is left empty, such as &quot;address,&quot; the server-side validation will not display the message. The client-side validation will ensure that the required field error notification appears, stating &quot;This is a required field.&quot; Previously, the message &quot;address is required&quot; would appear if any required field was left empty, in addition to the client-side validation message.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/9af794a4>
* _ACP2E-3125_: Password reset template issue with Admin user
  * _Fix note_: The issue has been resolved by using the correct key, which now includes the admin username in the email template and properly completes the subject. Previously, the problem stemmed from an outdated key that was being used.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/93d50f8d>
* _ACP2E-3149_: Double slashes in customer segment URL
  * _Fix note_: Double slashes do not appear in the URL when &apos;Reset Filter&apos; is clicked in the grid.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/8459b17d>
* _ACP2E-3171_: COD is not available for allowed specific countries
  * _Fix note_: Now Cash on delivery is available for allowed specific countries whenever it is required and   AC-3216 is working as expected.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/6f4805f8>
* _ACP2E-3178_: Cannot update Custom created Order status
  * _Fix note_: &apos;
We can now update custom-created order statuses, whereas previously, the status could only be changed if the current status was either &quot;processing&quot; or &quot;fraud.&quot;
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38659>
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/8459b17d>
* _ACP2E-3294_: The shipping address state is not auto updating
  * _Fix note_: Prior to the fix, the shipping address region (or region id) was not in sync with the address billing information. Now, both shipping address region and region id are properly updated when billing address information is changed.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/581b7ef1>
* _ACP2E-3364_: Reset button doesn't work on Add/Edit admin user
  * _Fix note_: Previously, the Reset button did not function on the Add/Edit Admin User page. Now, in the Admin panel under System -&gt; Permissions -&gt; All Users, the Reset button will work correctly on the Add/Edit Admin User page.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/5184c067>
* _ACP2E-3373_: Magento admin URL routing wrong detection and CORS errors
  * _Fix note_: After the fix, if the custom admin domain is a subdomain of the main domain, the admin is accessible only from the configured subdomain.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/37663>
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/3f12d152>
* _ACP2E-3392_: Broken validation for “Maximum Qty Allowed in Shopping Cart”
  * _Fix note_: Previously, when we put `Maximum Qty Allowed in Shopping Cart` empty, it did not throw any exception, though an empty value is not accepted here. After this fix applies, putting an empty string will throw exceptions and will not allow saving the product.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/d50f6b5d>
* _ACP2E-3408_: [Pagebuilder Preview UI Issue] The buttons in the Page Builder column aren't lining up correctly
  * _Fix note_: The buttons in the Page Builder columns are now correctly aligned. Previously, they were misaligned within the Page Builder columns.
  * _GitHub code contribution_: <https://github.com/magento/magento2-page-builder/commit/1a52ef4c>
* _ACP2E-3431_: Products Ordered report is not exporting. 404 error instead.
  * _Fix note_: Products Ordered report excport to CSV and XML now works as expected
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/88660e79>
* _ACP2E-3457_: TinyMCE JS Error in console after Js minification enable with production mode
  * _Fix note_: Previously, enabling JavaScript minification in production mode within the admin panel caused JavaScript errors related to TinyMCE 7 to appear in the browser console, affecting the functionality and user experience. Now, This issue has been resolved, ensuring that TinyMCE 7 operates smoothly without generating any errors, even when JS minification is enabled.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/56463d5e>
* _ACP2E-3459_: Request for additional changes to fully complete the ACP2E-3375 fix
  * _Fix note_: &apos;-
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/d50f6b5d>
* _ACP2E-3503_: Automatic enabling of new ACL permissions
  * _Fix note_: New permissions added to custom modules will no longer automatically grant access to all existing user roles unless explicitly configured.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/3f12d152>
* _ACP2E-3509_: Admin Actions Log User Report doesnt show details for adminhtml_user_delete
  * _Fix note_: The adminhtml_user_delete now correctly logs important details. Previously, logs were not generated for user deletions.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/4de008a9>
* _ACP2E-3536_: Cart Rule with shipping condition not applying when placing order from admin
  * _Fix note_: Previously, if the cart price rule has a shipping method discount with the coupon, it can not be applied through Admin UI. After this fix is applied, the cart price rule discount with a coupon for a specific shipping method will be applied from Admin UI successfully.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/a52ff98f>, <https://github.com/magento/inventory/commit/11ce816b>
* _ACP2E-3559_: [FRESH] HEX code is not updating correctly in SWATCH
  * _Fix note_: HEX code that is manually entered by user in the Visual Swatch color picker is no longer altered by the system. Previously, certain HEX codes experienced slight adjustments due to conversion errors between color models.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/344fce23>, <https://github.com/magento/inventory/commit/1ef984c0>

### Admin UI, B2B

* _AC-13628_: B2B Login as Customer header still has Magento branding
  * _Fix note_: Earlier the storefront header shows &quot;You are now connected as &lt;customer name&gt; on &lt;store name&gt;&quot; with Magento branding. Which is now fixed and the header shows with ADOBE branding.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/96dec499>

### Admin UI, Payment/ Payment Methods, Order

* _AC-13520_: Transaction Authorization Not Displayed in Transaction Tab After PayPal Smart Button Order
  * _Fix note_: The system now correctly displays the transaction authorization in the Transaction tab after an order is placed using the PayPal Smart Button. Previously, the authorization transaction was not appearing in the Transaction tab after clicking the &quot;Authorize&quot; button, and no new transaction of type &quot;Authorization&quot; was created.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/6cfb9b6b>

### Admin UI, Performance

* _ACP2E-3169_: After update to 2.4.5-p8 500 errors occur when creating order from admin
  * _Fix note_: Previously, when enabling HTML minification, an order from admin could not be placed. Now, with HTML minification enabled, the order from admin can be placed successfully.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/b21e5d91>

### Admin UI, Shipping

* _ACP2E-2519_: The coupon code count does not update in the   "Time Used" column in the Manage Coupon Codes tab if an order is placed with multi-shipping.
  * _Fix note_: Earlier, when an order was placed with multi-shipping, the coupon code count did not update in the &quot;Time Used&quot; column on the Manage Coupon Codes tab. Now, the correct count is displayed in both the &quot;Time Used&quot; reflecting the desired values with multi shipping.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/4745100c>

### Admin UI, Staging & Preview

* _ACP2E-3424_: [Cloud] Removing template with missing images causes pub/media to be deleted
  * _Fix note_: Previously to this fix, if the preview image name was missing for a pagebuilder template, the pub/media folder was deleted. After the fix, only the template will be deleted and the preview image if found.
  * _GitHub code contribution_: <https://github.com/magento/magento2-page-builder/commit/0986853b>

### Analytics / Reporting

* _AC-9922_: Google Analytics CSP Error https://region1.analytics.google.com
  * _Fix note_: The system now correctly allows connections to &apos;https://region1.analytics.google.com&apos; when Google Analytics is enabled, preventing Content Security Policy (CSP) errors. Previously, enabling Google Analytics and viewing the website from the EU would result in CSP console errors due to a refusal to connect to &apos;https://region1.analytics.google.com&apos;.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/37750>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/38991>
* _ACP2E-2570_: Advance Report is not working
  * _Fix note_: The system now supports the generation of Advance Reporting data files for extra-large datasets by loading and writing reports in batches of 10,000. Previously, the Advance Reporting module was unable to generate data files for extra-large datasets, causing &quot;MySQL server has gone away&quot; errors during the execution of the analytics_collect_data cron job.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/a12063bd>
* _ACP2E-3080_: Admin Ordered Products Report date range visibility issue.
  * _Fix note_: The user will be able to select any date from the ordered products report. Previously, after a table refresh, selecting &apos;FROM&apos; date will reset &apos;TO&apos; date.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/6f4805f8>
* _ACP2E-3096_: Incorrect curl headers making newrelic:create:deploy-marker not working
  * _Fix note_: The system now correctly formats curl headers, allowing the newrelic:create:deploy-marker command to successfully create a deployment marker in New Relic. Previously, incorrect curl headers prevented the creation of a deployment marker in New Relic.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/37641>
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/6a185204>
* _ACP2E-3183_: NewRelic browser monitoring inlineJS  script causes CSP errors
  * _Fix note_: NewRelic Browser Monitoring scripts are now injected by the application instead of the APM agent for compliance with CSP (Content Security Policy). Previously, NewRelic Browser Monitoring scripts injected by APM agent were not compliant with CSP and caused the scripts to not be executed.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/66dea0de>
* _ACP2E-3189_: INSERT queries to the sales_bestsellers_aggregated_daily table become slow on project with large sales order volume
  * _Fix note_: Previously the bestsellers aggregated daily report would take a lot of time to generate for large volume of placed orders. Now the report is generated in a timely manner.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/7377de59>
* _ACP2E-3276_: Order reports showing the wrong currency symbol
  * _Fix note_: The currency symbol for order amounts in the Order Report was incorrectly taken from currency/options/base. It has now been corrected to use currency/options/default for accurate reporting.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/fd5cf3af>
* _ACP2E-3302_: [Cloud] Incorrect Calculations in Coupon Usage Report
  * _Fix note_: The sales total in the coupon report grid is now accurately calculated by incorporating both the &quot;Discount Tax Compensation Amount&quot; and the &quot;Shipping Discount Tax Compensation Amount.&quot; Previously, these amounts were missing from the calculation, leading to discrepancies between the sales total and the sales order data.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/d75cff27>
* _ACP2E-3339_: Issues with shared "<project_id>/var/tmp"
  * _Fix note_: Analytics DataExport temporary files will use the sys tmp directory, which is more suitable for frequent access and changes. To avoid collisions in case multiple instances are running on the same server, the tmp path was updated to use an instance&apos;s unique id
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/a4cf5e62>

### Analytics / Reporting, B2B

* _ACP2E-2300_: B2B - sitemap includes products/categories not assigned to Shared Catalog
  * _Fix note_: Restrict the sitemap generated categories and products to the categories and product assigned only to the public shared catalog and / or the catalog category permission setup.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/ea79f7dd>

### Analytics / Reporting, Cloud

* _ACP2E-3067_: Magento discards most New Relic cron transactions #34108
  * _Fix note_: AC is correctly reporting cron job related transactions to NewRelic. Previously, some cron job related transactions would be shown as &quot;OtherTransaction/Action/unknown&quot; in NR
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/35b1b1da>
* _ACP2E-3187_: Metric in NR might be misleading for background transactions- Follow up of ACP2E-3067
  * _Fix note_: Background transactions (cron) will use New Relic app name defined in the config settings
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/ec7e32a9>

### B2B

* _ACP2E-2139_: Products assigned to shared catalog are not reflect on the front end when partial index is executed
  * _Fix note_: Products assigned to shared catalog via REST API are now immediately visible on storefront after partial indexing is complete. Previously, Products were visible only after a full re-indexation.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/7377de59>
* _ACP2E-3044_: Unnecessary borders on the My Orders section
  * _Fix note_: Previously an additional container(order references) was created that applied additional CSS classes, which caused unnecessary border lines were appearing below the order number inside the My Orders section, which isn&apos;t visible now.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/9af794a4>
* _ACP2E-3247_: sales_clean_quotes cron deletes quotes from to yet approved purchase orders
  * _Fix note_: Quotes used in purchase orders now will not be deleted by sales_clean_quotes cron job
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/581b7ef1>

### B2B, Framework

* _AC-9607_: Filtering Company Grid & Then Attempting Grid CSV Export Will Fail & Throw Exception
  * _Fix note_: The system now allows successful CSV export of the Companies grid data in the admin panel, even when filters such as &apos;Outstanding Balance&apos; and &apos;Company Type&apos; are applied. Previously, applying certain filters and attempting to export the grid data would result in a failure and an exception being thrown.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/44cef3a9>

### Bundle

* _AC-10826_: Storefront Bundle Checkbox Validation Error message count more than 1
  * _Fix note_: The system now displays only one validation error message when the &apos;Add to Cart&apos; button is clicked without selecting any checkbox options for a bundled product. Previously, the system was displaying multiple validation error messages for each unselected checkbox.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/3ea26621>

### Cart & Checkout

* _AC-10660_: Exception is not getting handled properly while adding a product to cart in the compare product page
  * _Fix note_: The system now properly handles exceptions when adding a product to the cart from the compare product page, displaying a message manager message in the controller. Previously, an exception would result in a JSON encoded page being returned instead of being properly caught and handled.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38200>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/38257>, <https://github.com/magento/magento2/commit/0c53bbf7>
* _AC-10698_: GTag not send transaction prices and totals.
  * _Fix note_: The system now correctly sends transaction prices and totals to Google Tag when GTag is enabled, ensuring accurate tracking of ecommerce data. Previously, the currency was incorrectly being sent as part of the &quot;all&quot; orders, rather than being associated with the individual order.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/37348>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/37504>, <https://github.com/magento/magento2/pull/37349>
* _AC-11641_: [Issue] [Checkout] Depend directives updated in failed payment email template
  * _Fix note_: The system now correctly omits the shipping address and shipping method from the failed payment email template for virtual products, ensuring only relevant information is included in the email. Previously, the failed payment email for virtual products incorrectly included the shipping address and shipping method.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/32781>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/32511>
* _AC-11717_: Magento 2 login inside the checkout with existing customer give console error in Firefox browser
  * _Fix note_: The system now allows users to log in during the checkout process without encountering any console errors in the Firefox browser. Previously, attempting to log in as an existing customer during checkout would result in a console error in Firefox.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38557>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/39509>
* _AC-11876_: [Issue] Sales Rules regression in 2.4.7
  * _Fix note_: The system now correctly validates sales rules, preventing the application of a coupon code to a cart when the product condition does not match any product name. Previously, a sales rule could be applied and a discount given on the shipping amount even when the product condition did not match any product name.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38671>
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/0574ac23>
* _AC-11914_: [Issue] Sales rule CartFixed calculation : incorrect discount amount
  * _Fix note_: The system now correctly calculates the discount amount for sales rules with cart fixed amounts, ensuring accurate discounts are applied regardless of changes in cart items. Previously, the discount amount could vary incorrectly when cart items changed, sometimes resulting in significantly larger discounts than expected.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38694>
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/581b7ef1>
* _AC-11993_: [Issue] The loader blocks the shipping methods after the postcode is changed, shipping rates validation rules
  * _Fix note_: The system now correctly handles custom shipping methods without shipping rates validation rules, ensuring that the loader does not block the shipping methods after the postcode is changed in the shipping address during checkout. Previously, changing the postcode in the shipping address during checkout would cause the loader to block the shipping methods and not disappear when custom shipping methods without shipping rates validation rules were used.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38742>
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/1bafc571>
* _AC-12170_: Coupon code feature is not working properly in the checkout page on Magento 2.4.7
  * _Fix note_: The system now enables the discount code/coupon input field on the checkout page for virtual and downloadable products, allowing users to apply discount codes as expected. Previously, the discount code/coupon input was disabled, and the button title text displayed as &quot;Cancel coupon&quot;, preventing users from applying discount codes.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38826>
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/1bafc571>
* _AC-12479_: Terms and conditions checkbox is not allowing HTML on storefront
  * _Fix note_: The system now supports HTML formatting in the &quot;Terms and Conditions&quot; checkbox text on the storefront, allowing for enhanced customization and readability. Previously, the checkbox text was displayed in plain text format, ignoring any HTML tags used.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/6cfb9b6b>
* _AC-12541_: Cart price rule created for logged in user incorrectly gets applied for not logged in user
  * _Fix note_: The system now correctly removes the cart price rule for logged-in users when they are automatically logged out due to cookie expiration, ensuring that the discount is not applied to non-logged-in users. Previously, the cart price rule was still applied even when the user was logged out, resulting in an incorrect discount being applied to non-logged-in users.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38944>
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/7d5e3906>
* _AC-13302_: [Issue] [FEATURE] Performance optimisation large shopping carts by preventing…
  * _Fix note_: The system now optimizes performance for large shopping carts by preventing duplicate getActions calls, enhancing the speed and efficiency of shopping cart operations. Previously, for a shopping cart with multiple items, the getActions function was called multiple times, slowing down the system&apos;s performance.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/39292>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/39290>
* _AC-8103_: Translation VAT in address renderer
  * _Fix note_: The system now allows for the translation of the text &quot;VAT&quot;, &quot;T&quot;, &quot;F&quot; in the address renderers, enabling users to translate these terms to the specific language of the store. Previously, these terms were not translatable, forcing users to employ a workaround.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/36942>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/36943>
* _ACP2E-2055_: Duplicate orders with same Quote Id at same time with few time difference
  * _Fix note_: Fixed the issue when Adobe Commerce customers encountered duplicate orders placed with the same QuoteID
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/f89a447e>
* _ACP2E-2470_: Persistent shopping cart cleared during checkout step
  * _Fix note_: After the fix, selecting the payment method during checkout while not logged in doesn&apos;t terminate the persistent session.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/a4fbf702>
* _ACP2E-2518_: Reorder adds non assigned product to cart
  * _Fix note_: Previously, for the different stores products can be reordered from the other store. After this fix is applied only the same store , same scope product can be reordered when the customer account share is enabled
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/f89a447e>
* _ACP2E-2620_: In admin, the "Shopping Cart" on left side doesn't get updated when selecting the items and "Move to Shopping Cart" from the right side
  * _Fix note_: The &quot;Shopping cart&quot; on the left side gets updated when selecting the items and &quot;Move to shopping cart&quot; from the right side in the admin side. Previously this functionality was not working because the transformed cart items were not getting empty from the session.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/39d54c2d>
* _ACP2E-2646_: [Cloud] Sales Rule not applied to first order of Multi Shipping
  * _Fix note_: After the fix, the discount is shown correctly for each order of the same multi-shipping quote.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/f89a447e>
* _ACP2E-2664_: [Cloud] Production Parallel Requests to Add Same Product to Cart Result In Two Separate Items In The Cart rest API
  * _Fix note_: The system now correctly processes multiple parallel requests to add the same product to the cart into a single line item, preventing the creation of separate line items for the same SKU. Previously, making parallel requests to add the same product to the cart via the REST API would result in multiple line items for the same SKU.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/f89a447e>
* _ACP2E-2704_: Getting Unable to send the cookie. Size of 'mage-messages' while trying to Reorder
  * _Fix note_: The reordering processwill not generate its own errors now. It will rely on cart listing built-in item checks.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/ba25af8a>
* _ACP2E-2798_: Default shipping address is not selected on checkout
  * _Fix note_: Default shipping address is now being selected event in context of enabled address search.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/7e0e5582>
* _ACP2E-2897_: [CLOUD] graphql addProductsToCart api issue with custom option
  * _Fix note_: GraphQL adds to cart correctly the same product with different custom options
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/c971859e>
* _ACP2E-2923_: Multiple addresses added to the account when checkout as new customer
  * _Fix note_: The system now saves a new customer address only once if the order failed to be created, preventing the creation of multiple identical addresses in the event of order placement errors. Previously, the system would save a new address each time an order placement attempt was made, regardless of whether the order was successfully created or not.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/001e5188>, <https://github.com/magento/inventory/commit/2ebcef39>
* _ACP2E-3004_: Reordering customer order via guest order form results an empty cart
  * _Fix note_: Previously, when placing a reorder through the Orders and Returns page, the customer was redirected to the login page. After this fix is applied, the registered customer is correctly redirected to the View Cart page when placing a reorder. The flow works the same as like as guest customers.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/6a185204>
* _ACP2E-3025_: Admin User with limited Role Resources unable to view Shopping Carts
  * _Fix note_: Previously, the restricted admin could not see the abandoned shopping cart from the admin panel for an associated website. After this fix is applied, the restricted admin can see the abandoned shopping cart from the admin panel.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/d1f7dc95>
* _ACP2E-3176_: [Cloud] quick order large amount of SKU performance
  * _Fix note_: Checkout performance has been improved when attributes used in cart price rules conditions are not present for all products and when MAP (Minimum advertised price) feature is enabled.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/66dea0de>
* _ACP2E-3211_: Duplicated items in cart
  * _Fix note_: The system now correctly processes multiple parallel requests to add the same product to the cart into a single line item, preventing the creation of separate line items for the same SKU. Previously, making parallel requests to add the same product to the cart on Storefront would result in multiple line items for the same SKU.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/66dea0de>
* _ACP2E-3296_: Checkout order email confirmation is sent to emails entered in First/Last name
  * _Fix note_: The checkout order email confirmation, which was previously sent when an email-like pattern was entered in the First and Last Name fields, is no longer being sent.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/5184c067>
* _ACP2E-3402_: Checkout shipping address form get update with wrong address
  * _Fix note_: shippingAddressFromData is now saved into the local storage per website. Previously, an address from the wrong website could be auto-populated into the shipping address form during checkout if a store code was used in the URL and checkout was initiated from multiple websites during the same guest session.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/078c387e>
* _ACP2E-3407_: Gift Card Product | Cart Merge is merging Gift Cards
  * _Fix note_: Giftcard products now merged correctly in the cart
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/88660e79>
* _ACP2E-3415_: Cart persistence is not being respected upon logout
  * _Fix note_: Added missing functionality Remember Me from customer login to authentication popup and checkout sign ins.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/344fce23>
* _ACP2E-3488_: Existing quote data is not update / not visible, instead create a new quote record when trigger_recollect = 1
  * _Fix note_: Customer&apos;s shopping cart items no longer disappear as result of a product being deleted after it was added to the shopping cart.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/1984c61c>
* _ACP2E-3618_: [CLOUD] Re-order button functionality
  * _Fix note_: Re-orderind an order from the administrator area will now add products with stock to the quote even though there are some products in the original order that do not have stock anymore. Prior to the fix no products were being added to the new quote if product with no stock were in the original order.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/a52ff98f>
* _ACP2E-3622_: Search stores are not working by zip code
  * _Fix note_: Searching pickup locations by zip code was not working properly for Dutch localisations. After the fix, the pickup location search will provide results based on zip code.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/344fce23>

### Cart & Checkout, Checkout/ One Page Checkout

* _AC-9386_: [Random BUG] Email field isn't rendered or takes a lot of time show up in Checkout Shipping or Payment page
  * _Fix note_: Commerce now renders the **[!UICONTROL Email]** field on the checkout shipping and payment pages as expected. Previously, this field was either absent or rendered slowly.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/e1babcfd>

### Cart & Checkout, Order

* _ACP2E-3097_: Datepicker for product with multiple Customizable Options with date fields not working when placing order from admin
  * _Fix note_: The system now correctly displays the date picker for all date fields when configuring a product with multiple customizable date options in the admin order creation process. Previously, the date picker was only displayed for the first date field, leaving the remaining fields without a date picker.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/b21e5d91>

### Cart & Checkout, Shipping

* _AC-12119_: Instant purchase "cheapest shipping" broken for configurable products
  * _Fix note_: The Instant Purchase feature incorrectly selected the more expensive In-Store Delivery option for configurable products instead of the cheapest Flat Rate method. This fix ensures that the correct shipping method is chosen based on the actual price.&quot;
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38811>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/38819>, <https://github.com/magento/magento2/commit/29fe9097>

### Catalog

* _AC-10910_: Cleanup of cron_schedule database table doesn't cleanup non-existing jobs
  * _Fix note_: The system now automatically cleans up the cron_schedule database table, removing entries for jobs that no longer exist in the system. This ensures optimal performance by maintaining a minimal number of rows in the table. Previously, entries for jobs from inactive or removed modules were not cleaned up, leading to unnecessary data accumulation in the cron_schedule table.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38217>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/38693>
* _AC-10953_: Tier Price is not being deleted from Configurable Product
  * _Fix note_: The system now correctly removes the tier price of a product when it is converted from a simple product to a configurable product, ensuring accurate price display on the frontend. Previously, the tier price of a configurable product was not deleted when a product was converted from a simple product to a configurable product, leading to a mismatch in the displayed price.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38390>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/38427>
* _AC-11804_: Category description WYSIWYG is empty on non default storeview
  * _Fix note_: The system now correctly saves and displays the category description in the WYSIWYG editor when editing a category on the store view level. Previously, the WYSIWYG editor would appear empty after saving a category description on the store view level.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38622>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/38623>
* _AC-11970_: Imposible to reorder configurable products with one checkbox selected custom option
  * _Fix note_: The system now correctly processes the reordering of configurable products with a single selected checkbox custom option, allowing for successful basket creation. Previously, attempting to reorder such products resulted in an error and prevented items from being added to the shopping cart.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38736>
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/1d144bce>
* _AC-12076_: [Issue] Fix wording of filter item on layered navigation
  * _Fix note_: The system now correctly uses the words &quot;item&quot; and &quot;items&quot; in the layered navigation filter item, enhancing the clarity and accuracy of the filter descriptions. Previously, these words were used incorrectly, leading to potential confusion for users navigating the filter options.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38789>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/37852>
* _AC-12164_: Date and Time Format for Custom Option Not Working
  * _Fix note_: The system now correctly applies the configured date format to product custom options of type Date, ensuring that the date format is displayed correctly on the front-end. Previously, changes to the date format configuration did not reflect on the front-end for product custom options of type Date.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/32990>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/38925>
* _AC-13068_: Dropdown options missing
  * _Fix note_: The system now correctly displays all values in the dropdown when creating a new attribute with more than 20 values. Previously, only the first 20 values or another selected page values were displayed, causing the remaining values to be missing.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/47b448e2>
* _AC-13296_: [Issue] Use current sore id for category runtime cache
  * _Fix note_: The system now correctly uses the current store ID for category runtime cache, preventing data override when emulation is used or custom code saves the category in different stores. Previously, the object stored in runtime might have been from the wrong store, leading to data override.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/39310>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/36394>
* _AC-13324_: bin/magento sampledata:deploy --no-update throws an exception
  * _Fix note_: The system now correctly accepts a boolean value when using the --no-update option in the sampledata:deploy command, preventing any errors during sample data deployment. Previously, an error was thrown when using this command as the system was incorrectly expecting an integer value.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/39344>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/39345>
* _AC-13355_: [Issue] Fix usage of EAV cache type
  * _Fix note_: The system now correctly uses the EAV cache type in all relevant places, ensuring consistent and efficient data caching. Previously, the EAV cache type was not used consistently, leading to potential inefficiencies and inconsistencies in data caching.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/32322>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/31264>
* _AC-13596_: Catalog Advanced Search with empty data goes to search result page[2.4.dev branch]
  * _Fix note_: The system now correctly retains users on the Advanced Search page and displays an error message when they attempt to perform a search without entering any data. Previously, performing an empty search would redirect users to the Catalog Advanced Search page with a message prompting them to modify their search.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/6cfb9b6b>
* _AC-13622_: [Issue] Product layout based on attribute_set
  * _Fix note_: The system now allows the adjustment of product layout based on the attribute set, providing a more practical and efficient way to manage product display in the frontend store. Previously, the layout could only be adjusted by SKU or by product types, which was not always practical for many products or specific articles.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38790>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/36244>
* _AC-6738_: Missing unique key on eav_attribute_option_value table
  * _Fix note_: The system now includes a unique key on the &apos;option_id&apos; and &apos;store_id&apos; columns in the &apos;eav_attribute_option_value&apos; table, preventing the possibility of an option having multiple values for the same store view. Previously, faulty code could result in an option having multiple values for the same store view, causing issues when editing products or attributes.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/24718>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/28796>
* _AC-8297_: [Issue] Use visibility class for category product indexer, instead of hardcoded values
  * _Fix note_: The system now uses the visibility class for the category product indexer instead of hardcoded values, enhancing modularity. Previously, hardcoded values were used in the category product indexer, limiting flexibility and adaptability.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/37200>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/37199>
* _AC-9375_: Currency code not change in New product widget
  * _Fix note_: The system now correctly updates the currency code in the New Product widget when the currency is changed in the frontend, ensuring consistency in currency display across the site. Previously, changing the currency in the frontend did not affect the currency code displayed in the New Product widget.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/37898>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/37899>
* _ACP2E-2224_: Regular Price does not show on PLP for Configurable Product
  * _Fix note_: Regular price is now being displayed on product listing pages for configurable products that have children products with special price.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/a4fbf702>
* _ACP2E-2478_: Stock information not showing right on Visual Merchandising grid
  * _Fix note_: Stock is now displayed according to selected store.
  * _GitHub code contribution_: <https://github.com/magento/inventory/commit/bdbf97ea>
* _ACP2E-2621_: Widget content is not updating on cms page
  * _Fix note_: The system now updates the widget content on a CMS page when a product is set as new and saved, ensuring that the page displays the updated product collection. Previously, the page was not updated to show the new product due to the incorrect cache identities used for the widget in the cache.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/f89a447e>
* _ACP2E-2630_: Issues saving advanced pricing on bundle products
  * _Fix note_: Bundle product saving performance improvement.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/b2286ecf>
* _ACP2E-2652_: [On-Premise] Re-index process is inefficient when creating Catalog Price Rules
  * _Fix note_: Now saving catalog price rule will not invalidate indexers, instead it will reindex affected products only
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/f89a447e>
* _ACP2E-2679_: Updating time of Date and Time type product attributes via CSV import
  * _Fix note_: Now datetime attributes will have time part in exported data. It will be also possible to update the time for such attributes using import. Also if &quot;Fields Enclosure&quot; is enabled, attribute values in &quot;additional_attributes&quot; column will be enclosed within double quotes.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38306>
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/ea79f7dd>
* _ACP2E-2689_: No Appropriate error message when website id is wrong in the request
  * _Fix note_: Now the appropriate error message was added to display when the website id is wrong in the request. Previously there was no validation when the website id was wrong in the request.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/39d54c2d>
* _ACP2E-2785_: Product image is lost after deleting an existing Scheduled Update that doesn't affect the image
  * _Fix note_: Product images are not removed while deleting staging update.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/c8931218>
* _ACP2E-2799_: [Cloud] Wrong bundle product price when used with tier prices
  * _Fix note_: Previously when calculating certain percentage discounts rounded up to 2 decimal points will generate different final prices for the cart and product listing page/product details page. After this fix is applied, the final price for the bundle product is the same as in the product details page, product listing page, and mini cart page.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38091>
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/b2286ecf>
* _ACP2E-2805_: Catalog Promotions Rule not working with quantity_and_stock_status attribute
  * _Fix note_: The quantity_and_stock_status attribute will now be taken into account by the catalog promotion rule, which was not previously taken into account when generating new product from the admin side.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/35627>
  * _GitHub code contribution_: <https://github.com/magento/inventory/commit/cf34971d>
* _ACP2E-2837_: Product entity updated_at column values not updating while updating price through REST API
  * _Fix note_: The product &apos;last updated at&apos; column from the admin is updated the proper date time while updating the existing products through the REST API. Previously the column &apos;last updated at&apos; is not updated properly.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/39d54c2d>
* _ACP2E-2840_: It's possible to set non-unique values via product import
  * _Fix note_: The system now correctly enforces the unique value constraint for unique product attributes during product import, preventing from having duplicate values for that such attribute. Previously, it was possible to set non-unique values for product attributes that were configured to have unique values via product import.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38445>
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/7e0e5582>
* _ACP2E-2843_: Products on the frontend use store specific data when Single-Store Mode is enabled
  * _Fix note_: Previously, when we enabled single store mode for the default store view, the changes were not migrated to the website-level scope. After this fix is applied, when we enable single store mode, the default store view-specific data will be synced with website-level-specific data and will resolve the possible conflicts for products and categories.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/c8931218>
* _ACP2E-2857_: Cannot set "Default Sort By" in a category using the rest API
  * _Fix note_: Update correctly default_sort_by on a category through REST / SOAP APi request
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/57a32313>
* _ACP2E-2871_: [Cloud] The Merchant is facing issues with wishlist count
  * _Fix note_: Adding a product to the wishlist in one store no longer increases the wishlist count in other stores open in the same browser. Previously, if both stores were loaded in the same browser, the wishlist count would increase in the other store as well.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/3a7c4d17>
* _ACP2E-2874_: Category Page at frontend shows empty slots when using bundle product
  * _Fix note_: Bundle products that are not salable in current store context are not indexed anymore.
  * _GitHub code contribution_: <https://github.com/magento/inventory/commit/bc37ec76>
* _ACP2E-2905_: [Cloud] Issue of Quote in multi-website architecture
  * _Fix note_: Previously, multi-website architecture with different currencies and customer groups could not correctly apply discounts to the store. After this fix is implemented, multi-website architecture with different customer group price discounts will apply successfully to different stores.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38506>
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/a4fbf702>
* _ACP2E-2909_: dynamic-rows.js:658 Uncaught TypeError: dataRecord.slice while editing bundle products
  * _Fix note_: There is no javascript error in browser console while deleting option from bundle product.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38505>
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/93d50f8d>
* _ACP2E-2950_: [Cloud] Bundle Product wrong pricing in order confirmation
  * _Fix note_: Correct amount is displayed for bundle options in order on Storefront when currency other than base one was used.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/a4fbf702>
* _ACP2E-2956_: YouTube Video Adding Bug
  * _Fix note_: Product images and videos are configured in global scope. Given that you can&apos;t have a product video in one scope and not in another, Youtube API key setting has been set to global scope.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/a4fbf702>
* _ACP2E-2964_: [Cloud] URL update only for store_id=0
  * _Fix note_: The &quot;URL Path&quot; is now stored with the correct store ID. Previously, the store ID was incorrect, resulting in incorrect URL paths remaining in the database when moving categories.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/9af794a4>
* _ACP2E-3009_: async.operations.all executed and created an error.
  * _Fix note_: Incorrect product link data in REST API calls no longer cause critical errors.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/a4fbf702>
* _ACP2E-3029_: [Cloud] Mobile Issue Only not able to pinch on the PDP image
  * _Fix note_: The system now supports pinch-to-zoom functionality on product detail page images in mobile view on Chrome, enhancing the mobile user experience. Previously, double-tapping on the image in mobile view on Chrome did not zoom in on the image as expected.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/148c3ead>
* _ACP2E-3058_: Missing label in LayeredNavigation with option name 0
  * _Fix note_: The issue has been resolved by skipping an empty value checker for attribute value 0. Previously, it was considered empty and was causing the issue.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/3a7c4d17>
* _ACP2E-3069_: Customers see prices from other customer groups
  * _Fix note_: Fixed issue where customer group related information was saved in a wrong segment due to the old value of the X-Magento-Vary in request
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/d1f7dc95>
* _ACP2E-3076_: Error when deleting bundle options
  * _Fix note_: The system now correctly deletes bundle options without triggering an error or causing the page to become unresponsive. Previously, attempting to delete bundle options would result in a &quot;Page Unresponsive&quot; error and prevent the product from being saved.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/6a185204>
* _ACP2E-3100_: [Cloud] Image File does not exist in New Relic Error Log
  * _Fix note_: The system now synchronizes custom placeholder images to local storage, ensuring that they render correctly when using remote storage such as AWS S3. Previously, custom placeholder images failed to render when using remote storage, resulting in a broken image display and error logs.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/d1f7dc95>
* _ACP2E-3103_: New Products RSS feed is not updated with new products due to cache
  * _Fix note_: The Rss feed for New Products is now updated when a product is set as new and saved
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/d01ee51e>
* _ACP2E-3126_: [Cloud] Product Media Gallery GQL response is not sorted by image position
  * _Fix note_: The system now correctly sorts items in the media gallery by position in the GraphQL response, ensuring accurate display order. Previously, items in the media gallery were not sorted by position, leading to an incorrect display order.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/37671>
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/b21e5d91>
* _ACP2E-3136_: [Cloud] Sub Category items are not displayed on the widgets edit on the admin backend
  * _Fix note_: The category tree on the new widget page should no longer have issues loading Level 5+ categories. Previously, some categories were missing when loading the tree past Level 5 categories.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/148c3ead>
* _ACP2E-3198_: [cloud] Two-finger zoom and move issue on the real mobile device
  * _Fix note_: The system now ensures consistent image zoom functionality on mobile devices, providing a smooth and predictable user experience. Previously, the image zoom feature was inconsistent and would suddenly zoom out after a certain point when viewed on a mobile device.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/1366ae5e>
* _ACP2E-3282_: When we unassign products from the shared catalog, the wishlist products are not being cleared
  * _Fix note_: Now, no items are visible in the wishlist if a product is not available in the shared catalog. Previously, the wishlist page incorrectly displayed a count of &quot;1 Item&quot; even when no items were actually available in the wishlist.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/5184c067>
* _ACP2E-3286_: Related products Select All/Unselect All Issue
  * _Fix note_: Previously, the &quot;Select All&quot;/&quot;Unselect All&quot; buttons for related products didn&apos;t work correctly if a product was manually selected. After the fix, these buttons now function consistently, even after manual selection, ensuring that all products are properly selected or unselected.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/fd5cf3af>
* _ACP2E-3336_: [Cloud] Stock alert email translation to the wrong language
  * _Fix note_: When sending Stock/Price Alerts for a website with multiple store views using different languages, the language for the store view where the alert was created will be used on the email.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/a4cf5e62>, <https://github.com/magento/inventory/commit/9f3e63d1>
* _ACP2E-3350_: Disabled Categories are no longer have their names grayed out in the category tree
  * _Fix note_: Previously, disabled categories were not grayed out in the category tree. Now, they are displayed with a gray-out effect.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/d75cff27>
* _ACP2E-3410_: Configurable product edit form load causes timeout and memory exhaustion
  * _Fix note_: Prior to the fix configurable product variations were constructed based on all possible attribute option combinations. In cases where attributes had a lot of options this resulted in a lengthy and resource consuming operation. Now, configurable product variations are constructed based on existing child product attributes. This results in far less calculations - thus an improved usage of resources.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/078c387e>
* _ACP2E-3454_: Fotorama doesn't load video correctly when using Swatches and option is pre-selected via URL
  * _Fix note_: Product videos will now render properly on configurable product details page, if the URL contains selected options.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/078c387e>
* _ACP2E-3461_: PageBuilder Carousel Widget shows products that doesn't match conditions
  * _Fix note_: Product list used in widgets now respects category condition
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/078c387e>
* _ACP2E-3469_: Validation Error Triggered for All Products in Group When One Has Invalid Quantity
  * _Fix note_: Now, the validation error is correctly triggered for all products in the group when one product has an invalid quantity, which was not happening previously.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/56463d5e>
* _ACP2E-3513_: [CLOUD] Special price not showing in Configurable product
  * _Fix note_: After the fix, changing the &quot;Used in Product Listing&quot; value for the special price attribute will not affect showing the special price for configurable products.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/d4de4726>
* _ACP2E-3516_: Indexers Temporary tables are not cleaned up if the process is terminated
  * _Fix note_: CatalogRule indexer temporary tables are now cleaned up if the indexer process is terminated
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/1984c61c>
* _ACP2E-3520_: [QUANS] Core unit test failures in 2.4.7-p3
  * _Fix note_: Release notes for this test is not needed since it is a Unit-test improvement.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/1984c61c>
* _ACP2E-3533_: Performance Issue in Stock Quantity Retrieval for Grouped Products with Multiple Sources
  * _Fix note_: Grouped product and bundle product edit page is now optimized when assigned products have large number of inventory sources.
  * _GitHub code contribution_: <https://github.com/magento/inventory/commit/0208e433>
* _ACP2E-3641_: Refix https://jira.corp.adobe.com/browse/ACP2E-3389
  * _Fix note_: Improved performance of admin category page in case of large number of anchor categories
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/982b1c42>

### Catalog, Content

* _ACP2E-3063_: [Cloud] Cache is not getting invalidated.
  * _Fix note_: Previously, when saving a CMS page with an updated design layout, it did not reflect appropriately on the front end. After this fix is applied, the appropriate design layout will be visible at the front end when we change the design layout and save the CMS page.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/66dea0de>
* _ACP2E-3131_: [Cloud] Anchor/Non-Anchor Categories Reversed in Content Widget
  * _Fix note_: Previously, when we selected Display On -&gt; Anchor Categories, it showed all the categories that did not reflect the parent-child relation between the anchor and non-anchor. After this fix is applied, the  Display On -&gt; Anchor Categories only displays Anchor Categories (selectable), and  Display On -&gt; Non Anchor Categories displays Non-Anchor Categories (selectable)
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/7377de59>
* _ACP2E-3152_: Categories not working with widgets
  * _Fix note_: Previously, if we saved the CMS block for different anchor/non-anchor categories, it did not work for the child categories when it showed on the front end. After this fix has been applied, the block is shown at the front end for different categories.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/d01ee51e>

### Catalog, Framework

* _AC-9111_: Order get(Shipments|Creditmemos|Invoice)Collection - Collection should not be loaded
  * _Fix note_: The system now ensures that the collections for shipments and credit memos are not pre-loaded when retrieved from an order, allowing for additional filters or orders to be applied to these collections. Previously, these collections were automatically loaded, preventing any further modifications.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/37561>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/37562>
* _ACP2E-2949_: [Cloud]Follow-up: Mismatch in Data Comparison when checking if data has changes
  * _Fix note_: Previously, the save object was called every time without any data changes (for any numeric data field - like int/float/double). It triggers the flag _hasDataChanges to be true and calls the save function. It also does not check the floating numbers encapsulated by string. After this fix applies, the save function will call only if the data is changed. The data value for int/float/double-check with the value passing to the function and does strict type matching
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/c8931218>

### Catalog, GraphQL

* _ACP2E-3090_: Handling Category Filters in GraphQL: includeDirectChildrenOnly and category_uid
  * _Fix note_: Only the direct child categories are fetched while filtering by category_uid.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/93d50f8d>
* _ACP2E-3166_: [Cloud] Graphql Product sorting do not work
  * _Fix note_: GraphQl Product sorting by multiple fields when the fields are passed in variables now works as expected.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/8459b17d>
* _ACP2E-3312_: Tier Prices return wrong value in products GraphQL (compared to Storefront)
  * _Fix note_: After the fix, product&apos;s tier prices returned for graphql requests have price per one item.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/1366ae5e>

### Catalog, Pricing, Staging & Preview

* _ACP2E-2672_: [Cloud] Special price API endpoint returns error when updating large numbers of products concurrently
  * _Fix note_: Now Special Price bulk update API will create a single campaign for each date range instead of multiple scheduled updates for each product and date range. Also, it will support concurrent API requests for faster processing of large number of SKUs.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/f89a447e>

### Catalog, Product

* _AC-7050_: Category selection tree in edit product is not in the same order as set in Catalog->Categories
  * _Fix note_: The system now correctly displays the category selection tree in the product edit section in the same order as set in Catalog-&gt;Categories, making product administration easier in large catalogues. Previously, the category tree in the product edit section was displayed in the order of category creation, regardless of the display order set in Catalog-&gt;Categories.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/36101>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/36104>

### Catalog, SEO

* _ACP2E-3653_: Incorrect canonical URL for category when page > 1
  * _Fix note_: Previously, the canonical URL for multi-page content did not function correctly, consistently displaying the base URL. However, after the fix was implemented, the canonical URL for multi-page content now correctly displays the URL with the page ID.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/982b1c42>

### Catalog, Search

* _ACP2E-2757_: Products not showing on category and search but direct links are working
  * _Fix note_: Previously, the Yes/No custom attribute with price_* attrbute_code does not work with indexing. After this fix, the Yes/No custom attribute works as expected.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/ba25af8a>
* _ACP2E-3053_: [Cloud] Elastic search error on certain category pages
  * _Fix note_: Previously, with the configuration ticket mentioned, when we put price 0 for multiple products, it will throw an exception at the frontend category page. After this fix applied when multiple product price 0 and we load category page at frontend it wont throw any exception and will load category page successfully.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/c8931218>
* _ACP2E-3345_: Type Error occurred when creating object: Magento\CatalogSearch\Model\Indexer\Fulltext\Interceptor Exception
  * _Fix note_: After the fix, an instance of Magento\CatalogSearch\Model\Indexer\Fulltext class can be created without specifying $data.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/1366ae5e>
* _ACP2E-3521_: [CLOUD] Issue with Products are Not Visible in Frontend After Saving in Magento Admin
  * _Fix note_: After the fix configurable products that have child products with long names will not be missed in the storefront.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/1984c61c>

### Cloud

* _ACP2E-3010_: [Cloud] PHPSESSID is changing each POST Request
  * _Fix note_: PHPSESSID no longer regenerates on POST requests on frontend area for a logged-in customer if L2 Redis cache is enabled and the customer was updated from the backend
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/6a185204>
* _ACP2E-3532_: Sitemap Generation Warnings
  * _Fix note_: After the fix, the sitemap is generated in the system tmp directory and copied to the final destination.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/d4de4726>

### Content

* _AC-10539_: [Issue]  issue with the price display in the Recently Viewed widget
  * _Fix note_: The system now correctly displays the price of out-of-stock simple products in the &quot;Recently Viewed Product&quot; widget, ensuring consistency across all widgets and product list pages. Previously, the price of out-of-stock simple products was not displayed in the &quot;Recently Viewed Product&quot; widget due to a condition in the price loading templates.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38167>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/38159>
* _AC-10596_: [Issue] Correct typo and grammar in acl.xsd file
  * _Fix note_: The system now corrects a typo and grammar error in the acl.xsd file, enhancing the clarity and accuracy of the documentation. Previously, the acl.xsd file contained a typo and incorrect grammar which could potentially cause confusion.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38061>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/38046>
* _AC-10845_: Pagebuilder banner image not visible in gallery
  * _Fix note_: The system now correctly displays banner images uploaded in newly created folders in the Pagebuilder gallery, eliminating previous console errors. Prior to this fix, banner images were not visible in the gallery if they were uploaded in a new folder, causing a console error.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/c8f87c25>
* _AC-12283_: "Area code not set" after update to 2.4.5-p8
  * _Fix note_: The system now successfully completes the static content deployment process when the Magento_CSP module is enabled and &quot;dev/js/translate_strategy&quot; is set to &quot;embedded&quot;, without triggering the &quot;Area code not set&quot; error. Previously, under these conditions, the static content deployment process would fail with an &quot;Area code not set&quot; error.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38845>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/38922>
* _AC-12692_: Widget category tree is not rendered correctly
  * _GitHub issue_: <https://github.com/magento/magento2/issues/39008>
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/58e40ceb>
* _AC-13054_: Unable to see "Using Default value" message when changing the theme in design configuration page
  * _Fix note_: The system now includes a separate column to display the &quot;Using Default value&quot; message depending on the selected theme in the design configuration page. This ensures clarity and visibility of the default value status. Previously, the &quot;Using Default value&quot; message was not displayed, leading to confusion about the status of the selected theme.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/47b448e2>
* _AC-13569_: [Issue] Restores backwards compatibility with TinyMCE plugins again (after it…
  * _Fix note_: The system now restores backward compatibility with TinyMCE plugins, allowing functions defined inside the plugin to be called when using the widget from another location. Previously, due to a change in the TinyMCE version, the plugins were not returning the widgets as an object, resulting in an error when trying to call certain functions on the widget instance.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/39262>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/39258>
* _AC-9638_: [Issue] file upload issue in WYSIWYG editor on product page
  * _Fix note_: The system now correctly displays the folder tree and allows image uploads in the WYSIWYG editor on the product page, even after expanding the &apos;Image and Videos&apos; tab first. Previously, expanding the &apos;Image and Videos&apos; tab first resulted in the folder tree not being displayed and an error message when attempting to upload an image in the WYSIWYG editor.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38026>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/38025>
* _ACP2E-2392_: [On-PREM] Dynamic block issue
  * _Fix note_: Wdigets are now being properly rendered within dynamic blocks.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/a12063bd>
* _ACP2E-2693_: [Cloud] Frontend not loading due to issue in newsletter template
  * _Fix note_: Adding blocks via CMS Page content section does not lead to exception anymore
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/ea79f7dd>
* _ACP2E-2836_: ACP2E-2836: [Cloud] Investigate exception found in the log: InvalidArgumentException: Class does not exist in vendor/magento/module-rule/Model/ConditionFactory.php
  * _Fix note_: Removing a condition on PageBuilder products content settings no longer causes an exception to be recorded in the log files. Previously, removing a condition on PageBuilder products content settings would cause a critical exception to be recorded in the logs, despite not causing any issues on the frontend.
  * _GitHub code contribution_: <https://github.com/magento/magento2-page-builder/commit/36c0f5df>
* _ACP2E-2842_: Switching to single store mode - global content no longer appears
  * _Fix note_: The system now synchronizes store view design configurations with website design configurations when enabling single store mode, ensuring that content updates are visible on the frontend. Previously, switching to single store mode would prevent content updates from being reflected on the storefront.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/7e0e5582>
* _ACP2E-2903_: Page Builder replaces image when trying to add link and other usability glitches.
  * _Fix note_: Now clicking on an image, links in wysiwyg editor in Page Builder text element will load proper data in the image, link configuration dialog. Also adding a link to an image in the editor now works properly. Previously, the image was replaced with a link.
  * _GitHub code contribution_: <https://github.com/magento/magento2-page-builder/commit/4d5db10a>
* _ACP2E-2970_: Old media gallery fails to render images when a 0-byte image is placed in the directory
  * _Fix note_: The system now handles 0-byte images in the media gallery without disrupting functionality, allowing other images in the directory to be displayed and selected as expected. Previously, the presence of a 0-byte image in the media gallery would prevent all images in the directory from being displayed or selected.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/35b1b1da>
* _ACP2E-3064_: Error Page Builder when editing CMS Block
  * _Fix note_: The system now correctly saves changes made in the admin area using Page Builder, without throwing the error &quot;Page Builder was rendering for 5 seconds without releasing locks.&quot; in the browser console. Previously, this error would occur when attempting to save changes, preventing the successful update of content.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/35b1b1da>, <https://github.com/magento/magento2-page-builder/commit/4d5db10a>
* _ACP2E-3092_: [CLOUD] No buttons of checkout or edit cart on the cart section
  * _Fix note_: Bundle product is now added to the cart via widgets without errors.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/b21e5d91>, <https://github.com/magento/magento2-page-builder/commit/4ebe3f1d>
* _ACP2E-3122_: [CLOUD] Upload image button doesn't work
  * _Fix note_: Before the Upload Image button for Banner and Slider from PageBuilder didn&apos;t work as expected, and now when pressing it opens the local file manager to select the wanted image to upload.
  * _GitHub code contribution_: <https://github.com/magento/magento2-page-builder/commit/476ef8ea>
* _ACP2E-3127_: imagecreatetruecolor(): Argument #2 ($height) must be greater than 0. Can't upload specific image
  * _Fix note_: Resolved the issue causing errors in the admin when uploading images with a height of 0 via the media gallery, and successful the assets synchronization using the sync command. Previously can&apos;t upload the image via the media gallery and the sync command also fails when a specific image is in the gallery.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/6f4805f8>
* _ACP2E-3154_: Prototype.js Array.from in conflict with Google Maps API
  * _Fix note_: Google Maps now renders properly in PageBuilder editor. Previously, a Javascript error prevents Google Maps from rendering correctly.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/148c3ead>
* _ACP2E-3275_: [Cloud] - CMS Slider not reflecting the latest changes
  * _Fix note_: The issue has been fixed by ensuring the slider list gets refreshed while the save event is triggered on the edit slide screen. Previously, it was triggering and causing the issue.
  * _GitHub code contribution_: <https://github.com/magento/magento2-page-builder/commit/ae2cdeb0>
* _ACP2E-3326_: An error occurs in CSM page when CMS blocks are inserted using page builder in certain order
  * _Fix note_: Previously on some versions of PHP and OS (Linux), the rendering of blocks that referenced other cms blocks through PageBuilder would have failed with an &quot;An unknown error occurred. Please try again.&quot;. Now the content of the cms blocks is rendered correctly inside a PageBuilder controlled content.
  * _GitHub code contribution_: <https://github.com/magento/magento2-page-builder/commit/ae2cdeb0>
* _ACP2E-3428_: Pagebuilder's template preview failure for large content
  * _Fix note_: Large content was leading to canvas element overflowing the browser&apos;s limits, and returning incorrect value, which broke backend code (cannot properly decode the image). Fixed with limiting canvas size to the universal browser&apos;s limit.
  * _GitHub code contribution_: <https://github.com/magento/magento2-page-builder/commit/adfb1747>
* _ACP2E-3430_: Latest security updates with TinyMCE 7 missing font size
  * _Fix note_: Font size and font family selectors are now available in WYSIWYG editor. Prior to this fix, with TinyMCE 7 these were not available in the editor interface.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/d50f6b5d>, <https://github.com/magento/magento2-page-builder/commit/2c2f7a0e>
* _ACP2E-3483_: TinyMCE 7 editor font size in the admin in PT and not PX please clarify
  * _Fix note_: Prior to the fix you could not specify font size in px in WYSIWYG areas. Now you can set the font size in px instead of pt.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/3f12d152>, <https://github.com/magento/magento2-page-builder/commit/20aa5d7a>
* _ACP2E-3490_: Product Content Type in Page Builder Gets Collapsed Without Correct Messages
  * _Fix note_: Prior to the fix the preview html was not being generated properly when there were no products in the widget. Now, the empty response is properly generated and products widget is being displayed fine in preview.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/3f12d152>, <https://github.com/magento/magento2-page-builder/commit/20aa5d7a>
* _ACP2E-3534_: [page builder]Adding Product Listing to block results in errors
  * _Fix note_: Now adding Bundle Product Listing to block via page builder doesn&apos;t results in errors
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/344fce23>

### Customer/ Customers

* _AC-12162_: Front end - Date of birth validation is failing in Customer creation page
  * _Fix note_: Ensure all validation should work after upgrade moment.js system dependency to the latest minor version
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/de4dfb8e>
* _AC-8499_: Region text field is not reset when country dropdown is changed
  * _Fix note_: The system now resets the region text field when the country is changed in the dropdown menu, ensuring that previous values do not persist. Previously, changing the country from the dropdown list did not reset the region field, causing the last saved value to be preserved.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/3ea26621>
* _AC-9240_: Deleting Customer Does Not Clean All Browser Session Data on Storefront for Logged in & Deleted Customer
  * _Fix note_: Deleting a customer now cleans all browser session data from the storefront for logged-in and deleted customers as expected. The shopper can continue shopping, and their browser treats their session as a guest session. Previously, when the customer account for a logged-in shopper was deleted from the Admin, then the shopper’s browser threw JavaScript errors.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/7d5e3906>

### Framework

* _AC-10037_: [Question]Unused Type configuration in `app/code/Magento/Translation/etc/di.xml`
  * _Fix note_: The system now removes unused dependencies in the configuration, enhancing the overall code cleanliness and efficiency. Previously, there were unused dependencies in the configuration which were not contributing to any functionality.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38030>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/38064>
* _AC-10654_: V1/customers/password endpoint question/issue
  * _Fix note_: The system now adheres to the constraints set within the management GUI when processing password change requests via the API, preventing potential abuse of the password reset function. Previously, the API could process password change requests outside of the rules defined in the management GUI, potentially allowing for a constant stream of reset emails if valid emails were known.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38238>
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/0c53bbf7>
* _AC-10738_: Varnish configuration does not exclude all marketing parameters
  * _Fix note_: The system now correctly excludes all common marketing parameters in the Varnish configuration, ensuring accurate tracking and analytics. Previously, certain marketing parameters such as gad_source, srsltid, and msclkid were not excluded, leading to potential inaccuracies in data collection.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38298>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/39188>
* _AC-10838_: Catalog search index process error indexation process
  * _Fix note_: The system now successfully completes the re-index command without encountering any errors, regardless of the libxml version compiled with PHP. Previously, running the re-index command resulted in a &quot;Catalog Search index process error during indexation process&quot; error when PHP was compiled with certain versions of libxml.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38254>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/38553>, <https://github.com/magento/magento2/commit/0574ac23>
* _AC-10941_: Added created_at, status and grand_total filters to customer Orders query and fixed multiple filters failure
  * _Fix note_: The system now supports the use of created_at, status, and grand_total filters in customer Orders queries, and has resolved an issue where multiple filters were not being applied correctly. Previously, the system did not support these filters and would fail to apply all filters when more than one was used in a query.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38392>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/36949>
* _AC-10991_: Randomly getting flooded with queries from related / upsell / crosssell blocks and price indexing
  * _Fix note_: The system now optimizes queries from related, upsell, and cross-sell blocks, improving the performance and preventing the site from going down due to excessive queries. Previously, the system could become overloaded with queries from these blocks, causing significant slowdowns and potentially bringing the site down.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/36667>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/38050>
* _AC-11423_: Exception: Warning: Trying to access array offset in... -> Calendar.php since upgrade to ICU 74.1 (PHP Intl)
  * _Fix note_: Commerce no longer logs the following exception in the exception.log whenever a shopper or merchant visits either the storefront or Admin: `main.CRITICAL: Exception: Warning: Trying to access array offset on value of type null in /vendor/magento/framework/View/Element/Html/Calendar.php on line 114 in /vendor/magento/framework/App/ErrorHandler.php:62`. [GitHub-38214](https://github.com/magento/magento2/issues/38214)
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38214>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/38364>
* _AC-11476_: [Issue] Fix issues with Customer Data when form contains element with name `method`
  * _Fix note_: The system now correctly identifies the &apos;method&apos; attribute in form submissions, even when an element named &apos;method&apos; is present in the form. This ensures accurate processing of customer data. Previously, if a form element was named &apos;method&apos;, it would interfere with the identification of the &apos;method&apos; attribute in form submissions, leading to potential issues with customer data handling.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38484>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/38449>
* _AC-11489_: [Issue] Fix PHPDocs for \Magento\Framework\Data\Collection::getItemById
  * _Fix note_: The PHPDocs for the \Magento\Framework\Data\Collection::getItemById method have been updated to include null as a possible return type, addressing issues with static analysis tools. Previously, the method&apos;s PHPDocs did not specify null as a possible return type, leading to warnings or errors in static analysis when the method was used in conditional statements.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38485>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/38439>
* _AC-11592_: [Issue] Allow only valid preferences during setup:di:compile
  * _Fix note_: The system now throws an error during the setup:di:compile command if a preference is created for a class that does not exist or is specifically excluded, ensuring that only valid preferences are allowed. Previously, these scenarios would fail silently, potentially rendering any plugins associated with the original classes useless.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38517>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/33161>
* _AC-11651_: Magento trying to modify read-only property in __wakeup method of LoggerProxy
  * _Fix note_: The system now allows the modification of previously read-only properties in the LoggerProxy&apos;s __wakeup method, ensuring smooth operation without forcing users to employ a workaround. Previously, an attempt to reassign the value of a read-only property in the LoggerProxy&apos;s __wakeup method would cause issues.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38526>
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/c8f87c25>
* _AC-11681_: [Issue] AC-2039 AC-1667 upgrade TinyMCE references
  * _Fix note_: Updated tinymce latest version in composer.json
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38533>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/36543>, <https://github.com/magento/magento2/commit/b34c0a75>
* _AC-11696_: ChangelogBatchWalker does not work in multiple threads
  * _Fix note_: The system now supports process fork for MView indexation, preventing errors during indexer execution when operating on multiple threads. Previously, running the ChangelogBatchWalker on multiple threads would lead to the deletion of tables used by other threads, causing an error during indexer execution.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38246>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/38248>
* _AC-11781_: [Issue] Rename wrongly named variable
  * _Fix note_: The system now correctly names the variable that contains the amount of money that can still be refunded, preventing confusion during debugging. Previously, this variable was incorrectly named as totalRefund, which could lead to misunderstandings for developers.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38609>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/36205>
* _AC-11809_: [Issue] Pass custom attributes to current link via XML
  * _Fix note_: The system now allows custom attributes to be passed to the current link via XML, ensuring that these attributes are correctly displayed even when the link is the current page. Previously, custom attributes were not displayed for the current page link due to the getAttributesHtml() method not being used for the current link.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38500>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/30070>
* _AC-11819_: Built-in FPC cache is broken in 2.4.7 for some configurations
  * _Fix note_: The system now correctly caches pages when the MAGE_RUN_CODE parameter is set, ensuring optimal performance. Previously, pages were not being cached under these conditions, leading to potential performance issues.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38626>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/38646>, <https://github.com/magento/magento2/commit/0c53bbf7>
* _AC-11829_: [Issue] Fix exception handling inconsistency between developer and production modes
  * _Fix note_: The system now consistently handles exceptions between developer and production modes, preventing unexpected redirection to the login page when an exception is thrown. Previously, an inconsistency in exception handling could cause a redirect to the login page in production mode instead of displaying the exception message.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38639>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/37712>
* _AC-11852_: Replace 'PayPal Account' translation in token_list.phtml
  * _Fix note_: The system now labels the section for tokenizable account payment methods as &quot;Account&quot; instead of &quot;PayPal Account&quot; in the Stored Payment Methods page, making it more representative of its function. Previously, this section was specifically labeled as &quot;PayPal Account&quot;, which was misleading when other tokenizable account payment methods were added.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/35622>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/37959>
* _AC-11874_: Backward compatibility has been lost on Magento\Catalog\Model\ProductRepository class
  * _Fix note_: The ProductRepository class now maintains backward compatibility by restoring the Initialization Helper class as the second parameter, ensuring that modules extending from this class function as expected. Previously, the removal of the Initialization Helper from the constructor in the ProductRepository class resulted in a loss of backward compatibility, forcing users to employ a workaround.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38669>
* _AC-11905_: [Issue] Static content deploy - Type error
  * _Fix note_: The system now correctly handles empty LESS files during static content deployment, displaying an &quot;LESS file is empty&quot; error message. Previously, an incorrect type error was thrown when encountering an empty LESS file during deployment.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38682>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/38683>
* _AC-12002_: [Issue] [View] Removed extra space in link and script tag
  * _Fix note_: The system now ensures that there are no extra spaces in the link and script tags, providing cleaner and more efficient code. Previously, double spaces could be found between attributes in the link and script tags.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/32920>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/32919>
* _AC-12127_: [Issue] avoid a misconfiguration infinite loop
  * _Fix note_: The system now avoids an infinite loop by preventing self-referential mapping in virtual type configurations. This ensures the application does not get stuck in an endless loop when attempting to dereference a self-referential node. Previously, if a virtual type configuration was self-referential, it would cause the application to spin indefinitely.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38822>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/38794>
* _AC-12299_: Object Manager not used for Magento\Csp\Model\Mode\Data\ModeConfigured
  * _Fix note_: The system now correctly uses the Object Manager when creating the ModeConfigured object, allowing plugins to be used on this object. Previously, the Object Manager was not being used, preventing plugins from being applied to the ModeConfigured object.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38875>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/38886>
* _AC-12540_: Inaccurate doc block comment in Product Stock and Price Alerts
  * _Fix note_: The doc block comment for the deleteCustomer method in the Product Stock and Price Alerts has been corrected to accurately reflect that the method deletes all stock product or price alerts associated with a given customer and website, not the customer from the website. Previously, the comment inaccurately stated that the method was for deleting a customer from the website.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38939>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/39001>
* _AC-12594_: [Issue] Use compiled config for generated data instead of general config
  * _Fix note_: The system now uses the compiled configuration for generated data instead of the general configuration, reducing network transfer and overhead of data that depends on a certain version of code. This change prevents cache overriding in shared instances during container swapping, leading to improved stability and reduced downtime. Previously, certain core classes used shared config type, which could lead to cache overriding or application downtime due to differences in code versions across multiple servers.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38785>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/29954>
* _AC-12597_: [Issue] Remove references to files from extjs which got removed in e1ccdb…
  * _Fix note_: The system now removes references to files from extjs which were previously removed, eliminating errors in the browser&apos;s console and the system log file. Previously, these references were causing errors due to the absence of the referenced files.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38960>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/38951>
* _AC-12778_: [Issue] Minor cleanup: fixed wrong usage of sprintf, it only takes 2 placeholders here and w…
  * _Fix note_: The system now correctly uses the sprintf function with the appropriate number of placeholders, enhancing code cleanliness and consistency. Previously, the sprintf function was incorrectly used with an extra argument, which did not cause any major issues but was not the correct usage.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/39062>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/38628>
* _AC-12857_: PHP 8.2.15 removed FTP extension
  * _Fix note_: The system now includes the FTP extension as a dependency in the composer.json file, ensuring the successful configuration of CSV imports via FTP. Previously, an error was thrown when attempting to configure CSV imports via FTP due to the FTP extension being missing in the PHP package.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/39083>
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/47b448e2>
* _AC-12869_: [Issue] Fixes incorrect classes being referenced in Magento modules.
  * _Fix note_: The system now correctly references classes in modules, ensuring smoother operation and preventing crashes due to non-existing classes. This includes a bugfix in the Indexer and Creditmemo modules, and the implementation of the HttpGetActionInterface in the PrintAction class. Previously, incorrect class references led to errors and potential system crashes, and certain functionalities, such as the filename for creditmemo PDF files and reindexing of stocks, were not working as expected.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/39126>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/37784>
* _AC-12964_: Ability to define Area for dev:di:info CLI command
  * _Fix note_: The system now allows developers to define an area for the dev:di:info CLI command, enhancing the development and debugging process. Previously, this command could only display information for the GLOBAL area.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38758>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/38759>
* _AC-13149_: [Issue] add isMultipleFiles property to image form element template
  * _Fix note_: This fix, prevents the &quot;Browse to find or drag image here&quot; button to disappear when an image is added in a multiple files image form element.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/39219>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/36325>
* _AC-13279_: [Issue] Remove all marketing get parameters to minimize the cache
  * _Fix note_: The system now removes all marketing get parameters to optimize cache utilization, mirroring the logic used when Varnish is in use. Previously, these parameters could lead to cache bloating and reduced performance.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/39266>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/39099>
* _AC-13345_: [Issue] [PHPDOC] Fix bad phpdoc Magento\Directory\Model\AllowedCountries::getAllowedCountries()
  * _Fix note_: The PHPDoc for the AllowedCountries::getAllowedCountries() method has been corrected to provide accurate information, enhancing the clarity and usefulness of the documentation. Previously, the PHPDoc for this method contained incorrect information, which could lead to confusion or misuse of the method.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/39246>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/39241>
* _AC-13348_: [Issue] Removes some code for PHP versions we no longer support.
  * _Fix note_: Removal of code for PHP versions that no longer getting supported in Magento
  * _GitHub issue_: <https://github.com/magento/magento2/issues/39361>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/39202>
* _AC-13417_: [Issue] Make ImageMagick Adapter compatible with php8 (Implicit conversion from float to int)
  * _Fix note_: The system now ensures compatibility with PHP8 by correctly handling float numbers when calculating image dimensions, preventing any errors due to implicit conversion from float to int. Previously, the calculation of image dimensions could result in float numbers, which when implicitly rounded, would cause an error.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/39402>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/37362>
* _AC-13537_: [Issue] [PHPDOC] Fix bad phpdoc Magento\Framework\App\Config\ScopeConfigInterface
  * _Fix note_: This update corrects the PHPDoc annotations in the Magento\Framework\App\Config\ScopeConfigInterface to accurately reflect the type of the $scopeCode argument for the getValue and isSetFlag methods.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/39492>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/39199>
* _AC-13725_: Magento\Framework\Filesystem\Driver\Http depends on reason phrase OK
  * _Fix note_: Removed &quot;OK&quot; phrase check from Magento\Framework\Filesystem\Driver\Http::isExists
  * _GitHub issue_: <https://github.com/magento/magento2/issues/39546>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/39558>
* _AC-13810_: Customer Grid indexer does not work properly in Update by Schedule mode
  * _Fix note_: Earlier Customer grid was updated instantly but after the fix Customer grid is updated after cron run but not reflect instantly.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/1da9ba6f>
* _AC-6754_: typo error on a js file.
  * _Fix note_: The system now correctly uses the term &quot;subscribers&quot; in the JavaScript file, ensuring proper functionality of the related features. Previously, a typographical error in the JavaScript file resulted in the incorrect use of the term &quot;subsctibers&quot;.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/36163>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/36171>
* _AC-8353_: [Issue] Remove forbidden `@author` tag
  * _Fix note_: The system now adheres to coding standards by removing the forbidden `@author` tag from certain modules, ensuring cleaner and more standardized code. Previously, the `@author` tag was present in some modules, which was against the established coding standards.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/37253>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/37003>
* _AC-8356_: [Issue] Remove forbidden `@author` tag from `Magento_Customer` (part 2)
  * _Fix note_: The system now adheres to the coding standard by removing the forbidden `@author` tag from certain modules, ensuring cleaner and more standardized code. Previously, the `@author` tag was present in some modules, which was against the established coding standards.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/37250>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/37000>
* _AC-8659_: Space in editorconfig syntax breaks rule for [{composer,auth}.json]
  * _Fix note_: The system now correctly applies a 4-space indent to the composer and auth.json files, following a fix to a syntax error in the editorconfig. Previously, due to a space in the editorconfig syntax, these files were incorrectly formatted with a 2-space indent.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/37394>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/37395>
* _AC-8662_: [Issue] Improve cron error logging
  * _Fix note_: The system now captures and logs both STDERR and STDOUT for cron processes, providing valuable diagnostic information in scenarios where cron processes fail. Previously, any error messages within cron processes were not recorded, and STDERR and STDOUT for cron groups running in separate processes were lost.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/37453>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/32690>
* _AC-8984_: [Issue] Adds some more colors to the output of certain setup cli commands
  * _Fix note_: The system now adds more colors to the output of certain setup command line interface (CLI) commands, enhancing readability and user experience. Previously, the output of these commands was harder to read due to lack of color differentiation.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/29335>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/29298>
* _AC-9630_: Upgrading Magento resets general/region/state_required when new country with required state/region is added.
  * _Fix note_: The system now only adds the modified country to the &apos;general/region/state_required&apos; configuration when a new country with required states is added, preventing any disruption to custom code that assumes the region is disabled. Previously, adding a new country with required states would reset the &apos;general/region/state_required&apos; configuration to default countries with a required state, potentially breaking the shop.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/37796>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/38076>
* _AC-9712_: Difference in less compilation between php & nodejs library (grunt) with complicated `calc` expressions
  * _Fix note_: Fix the difference in less compilation between php &amp; nodejs library (grunt) after update wikimedia/less.php:^5.x
  * _GitHub issue_: <https://github.com/magento/magento2/issues/37841>
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/b34c0a75>
* _ACP2E-2692_: "Base table or view not found" error occurs when partial indexing is executed
  * _Fix note_: Partial reindex now works correctly with big changelog in case of secondary db connection
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/ba25af8a>
* _ACP2E-2844_: Issues after upgrading MariaDB to 10.5.1 or higher
  * _Fix note_: Fixed the issue when datetime values in a DB would be converted to  0000-00-00 00:00:00 after Mysql upgrade
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/a12063bd>
* _ACP2E-2855_: Type Mismatch in Data Comparison when checking if data has changes
  * _Fix note_: Previously, the save object was called every time without any data changes (for any numeric data field - like int/float/double). It triggers the flag _hasDataChanges to be true and calls the save function. After this fix applies, the save function will call only if the data is changed. The data value for int/float/double-check with the value passing to the function and does strict type matching.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/57a32313>
* _ACP2E-2959_: [Cloud] import cannot be used with directory var
  * _Fix note_: Product can be imported successfully regardless of the file name.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/3a7c4d17>
* _ACP2E-2966_: In ipad mini the menu and header loads as mobile, instead they should load as desktop.
  * _Fix note_: The system now treats devices with a width of 768px as desktop, ensuring that the menu and header load correctly. Previously, devices with a width of 768px were treated as mobile, causing the menu and header to load in a mobile view.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/35b1b1da>, <https://github.com/magento/magento2-page-builder/commit/4d5db10a>
* _ACP2E-3230_: Modifying column length via db_schema.xml doesn't work in case of foreign keys
  * _Fix note_: modifying column with foreign key via declarative schema now doesn&apos;t rise errors with MariaDB
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/581b7ef1>
* _ACP2E-3361_: Some of the relations records are saved to DB when order record is saved
  * _Fix note_: Before the fix unnecessary UPDATE queries were being triggered that can have an impact performance wise. After the fix, the unnecessary UPDATE queries were eliminated.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/1366ae5e>
* _ACP2E-3375_: [CLOUD] In admin there are many javascript error in console
  * _Fix note_: Previously, In admin panel there are many javascript error in console. Now, In the admin panel, there will be no JavaScript errors in the console, and all the default JavaScript functions will execute successfully without any issues.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/d75cff27>
* _ACP2E-3387_: [Cloud] Magento: queue message has been deleted
  * _Fix note_: Queue messages are now properly being cleared out. Prior to the fix, given that SQL queue system was being used, new messages could have been deleted if the cleaning queue message was running at the same time.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/d50f6b5d>
* _ACP2E-3537_: Corresponding cache key entries are not available in cache tags, hence cache cleaning does not work correctly
  * _Fix note_: LUA mode is now enabled by default for Redis cache garbage collector to prevent race conditions
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/a52ff98f>
* _ACP2E-3681_: MAGENTO_DC_INDEXER__USE_APPLICATION_LOCK value is ignored
  * _Fix note_: After the fix, an ENV variable set to &quot;false&quot; will be treated as bool false, not as string &apos;false&apos;.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/982b1c42>

### Framework, GraphQL

* _AC-7976_: [Issue] Introduced support of custom scalar types for GraphQL schema
  * _Fix note_: The system now supports custom scalar types for GraphQL schema, allowing developers to define custom scalar types and implementations. This feature can be particularly useful for expressing values that may require validation, such as HTML, emails, URLs, dates, etc., and for more advanced cases like EAV attributes. Previously, the system did not support the processing of custom scalar types in GraphQL.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/36877>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/34651>, <https://github.com/magento/magento2/commit/0574ac23>

### Framework, UI Framework

* _ACP2E-3324_: Possibility to overwrite config value even if it's locked
  * _Fix note_: Previously to this fix, the design configuration could not be set through bin/magento config:set command and locked values could be changed by manipulation of the form displaying them. After the fix locked values set from cli with --lock-env or --lock-conf cannot be updated anymore.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/55615e61>

### GraphQL

* _AC-11729_: Magento_GraphQl execute headers processing even if the header value does not pass validation
  * _Fix note_: The system now ensures that header processing is only executed once and only if the header value passes validation, enhancing security and preventing potential vulnerabilities. Previously, header processing was executed even if the header value did not pass validation, leading to potential vulnerabilities and unexpected behavior due to double processing of header values.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/c8f87c25>
* _AC-8951_: Physical Giftcard options don't have the right sorting order
  * _Fix note_: The system now correctly sorts the options of physical gift card products when queried via GraphQL, ensuring consistent rendering with the Luma theme. Previously, the sort order was incorrect according to luma theme, leading to incorrect display and ordering of options such as sender name, recipient name, and amount.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/1bafc571>
* _AC-9157_: [GraphQL] Resolver Cache is Invalidated When Creating/Editing/Moving/Deleting a Staging Update
  * _Fix note_: The system now ensures that the resolver cache is not invalidated when creating, editing, moving, or deleting a staging update, but only when the staging update is applied to the entity. Previously, the resolver cache was invalidated prematurely, even before the staging update was applied, which led to unnecessary cache invalidations.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/0c53bbf7>
* _ACP2E-2642_: Fastly cache not cleared for content staging update
  * _Fix note_: Now GraphQL with PageBuilder contents response cache is invalidated, when the PageBuilder content related entities are updated.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/ba25af8a>
* _ACP2E-2653_: Disabling Layered Navetion - Does not remove aggregation from Graphql
  * _Fix note_: The issue has been fixed after applying the check while requesting a product search with category aggregations through a GraphQL query when the admin configuration setting of &quot;Catalog &gt; Layered Navigation &gt; Display Category Filter&quot;.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/12e071c3>
* _ACP2E-2928_: GraphQL Products call containing the price filter {from:"0"} returns no result
  * _Fix note_: Previously graphql products search with filter for zero prices did not return any results at all due to a thrown exception. Now the search returns results as expected.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/c971859e>
* _ACP2E-2974_: Translations for customer return attributes not reflected in GraphQL API for respective StoreView
  * _Fix note_: Translations for customer return attributes are reflected in GraphQL API for respective StoreView.
Previously customer Return attributes for respective StoreView were not reflected in GraphQL API.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/ec7e32a9>
* _ACP2E-3128_: [Cloud] Broken GraphQL call for getPurchaseOrder with node quote
  * _Fix note_: The Purchase Order GraphQL call will be able to execute the task without encountering any internal server errors.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/6f4805f8>
* _ACP2E-3184_: [Cloud] Configurable Products not shown in Production Site if Product is not enabled in "All Store Views"
  * _Fix note_: The system now correctly displays configurable products in the site even if the product is not enabled in &quot;All Store Views&quot;, but is enabled in specific store view scopes. 
Previously, if a product was disabled in &quot;All Store Views&quot; and enabled only in specific store view scopes, the product attributes would not be displayed correctly in the GraphQL response, leading to the product not being displayed properly.
  * _GitHub code contribution_: <https://github.com/magento/inventory/commit/3f300077>
* _ACP2E-3190_: [Cloud] Products graphql having error when same simple product has assigned to multiple configurable products
  * _Fix note_: Previously, with separate configurable products with the same simple product, grapQL returns an error. After this fix apply, different configurable products with the same simple product, grapQL returns result without no error.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/148c3ead>
* _ACP2E-3215_: [Cloud] Issue with User Authentication and Cross-Site Token Access in Multi-Site Setup
  * _Fix note_: GraphQl Customer Info and Cart queries in Multi-Site setup checks if the customer on non-default website exists.
Previously query worked without making sure the customer exists on non-default website in Multi-Site setup.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/581b7ef1>
* _ACP2E-3253_: GraphQL cart itemsV2 pagination is not working correctly
  * _Fix note_: The issue has been fixed by passing the correct value for the current page argument in the collection query. Previously, the wrong value was getting passed to set the current page, causing the issue.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/8459b17d>
* _ACP2E-3255_: [GRAPHQL] model value should be specified when getting customerCart
  * _Fix note_: The GraphQL &apos;customerCart&apos; query can now create an empty cart even when the quote is not available in the database. Previously, this operation failed due to country validation issues while creating the empty cart.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/fd5cf3af>
* _ACP2E-3380_: [GraphQl] Wishlist items are visible via GraphQl but not visible on storefront
  * _Fix note_: Wishlist products where not being properly listed when requested via GraphQL. Now, wishlist products are filtered based on provided store context.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/55615e61>
* _ACP2E-3404_: [GraphQL] Reset password email inconsistency between content and subject/link
  * _Fix note_: The issue has been resolved by simulating the correct store where the customer&apos;s account is registered when sending the password reset request, regardless of the website store.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/5184c067>
* _ACP2E-3419_: [Cloud] products GraphQL query returns related products not assigned to current website
  * _Fix note_: Previously, for graphQL query, multi-store related products do not show properly for product query. After this fix is applied, for products, graphQL query multi-store related products showing accordingly.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/078c387e>
* _ACP2E-3447_: Using the wrong Store ID in GraphQL header causes fatal memory error
  * _Fix note_: Sending wrong store code in GraphQL request no longer results in excessive memory consumption.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/d50f6b5d>
* _ACP2E-3467_: [Cloud] 500 response to empty Graphql response on 2.4.7
  * _Fix note_: After the fix, invalid graphql requests will not be logged into the exception.log file.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/1984c61c>
* _ACP2E-3492_: [Cloud] Problems with Graphql API
  * _Fix note_: Before the fix by using Graphql application server, customer address request did not return the most recent data.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/3f12d152>
* _ACP2E-3505_: Disabled product still appears in related, upsell, crosssell items in grpahQL query
  * _Fix note_: Graphql now provide correct response for disabled relared, upsell and cross-sell products
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/d4de4726>
* _ACP2E-3647_: [CLOUD]: GraphQl error Internal server error placeOrder mutation
  * _Fix note_: The &quot;placeOrder&quot; mutation with coupon code information in the request is no longer throwing an internal error exception, the order was placed successfully. Previously, it failed with &quot;Internal server error&quot;.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/982b1c42>
* _LYNX-426_: The discount_percentage is not calculated for bundle products with dynamic price
  * _Fix note_: Fix added for discount_percentage of product.price_details not showing the correct value for bundle products with dynamic price enabled and discount coupon applied.
* _LYNX-485_: Bundle products still shows "IN_STOCK" when one of its bundled product out of stock
  * _Fix note_: Resolved the issue where bundle products were still showing &quot;IN_STOCK&quot; even when one of their bundled products was out of stock.
* _LYNX-486_: not_available_message and only_x_left_in_stock doesn't show the same available stock
  * _Fix note_: Resolved the issue where the not_available_message and only_x_left_in_stock were showing inconsistent stock availability
* _LYNX-488_: original_row_total field returning wrong value
  * _Fix note_: Resolved the issue with the original_row_total field, which was returning incorrect values when custom options were selected
* _LYNX-503_: Grouped product thumbnail should be shown according to the configuration     .
  * _Fix note_: Resolved the issue to ensure the grouped product thumbnail is displayed according to the configuration settings
* _LYNX-512_: original_item_price is not including discounts
  * _Fix note_: Updated original_item_price to include discounts.
* _LYNX-530_: Not available message is not showing the available inventory quantity
  * _Fix note_: Resolved the error message and error code for the AddProductsToCart mutation to align with the &quot;not available&quot; message configuration
* _LYNX-532_: "OUT_OF_STOCK" status returns on Simple with custom options products with multi select options
  * _Fix note_: Updated the StockStatusProvider resolver in the inventory package to fix the stock_status for simple products with custom options.
* _LYNX-533_: Error (GQL): cart.itemsV2.items.product.custom_attributesV2 returns a server error
  * _Fix note_: Resolved the server error that occurred when a cart query included a product&apos;s custom attributes by adding a product without any custom attributes.
* _LYNX-536_: orders/date_of_first_order always returning null
  * _Fix note_: Resolved the issue where orders &gt; date_of_first_order was always returning null.
* _LYNX-544_: Customer must not be able to cancel a partially shipped order
  * _Fix note_: Validation has been added to restrict customers from canceling a partially shipped order.
* _LYNX-548_: Error codes for order cancellation based on the error message
  * _Fix note_: The error codes for order cancellation are now based on the specific error message.
* _LYNX-581_: Move back cookie-related properties from private to protected
  * _Fix note_: Reverts Magento\Framework\App\PageCache\Version class constructor properties visibility from private to protected
* _LYNX-600_: Increase max default GraphQL query complexity to 1000
  * _Fix note_: Increased the default maximum GraphQL query complexity from 300 to 1000.
* _LYNX-620_: GQL - itemsV2 > Original row total, price range prices is returned as $0.00 for downloadable product with file options which has separate prices.
  * _Fix note_: Resolved an issue where downloadable products with separate link purchase options enabled were returning $0 for itemsV2 &gt; Original row total, price range returned as $0.00 for products with file options having separate prices.
* _LYNX-772_: GraphQl Compatibility for PHP-8.4 Version
  * _Fix note_: Fixed GraphQL compatibility issues with PHP 8.4 across multiple resolvers, ensuring smooth functionality. Updated affected files in CatalogRule, Customer, GiftMessage, GiftCard, and GiftWrapping modules.

### GraphQL, Inventory / MSI

* _ACP2E-2607_: MergeCart mutation throws exception when source and destination carts have same bundle items
  * _Fix note_: &apos;-
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/c971859e>, <https://github.com/magento/inventory/commit/db0620da>

### GraphQL, Inventory / MSI, Performance

* _ACP2E-1716_: Site down after upgrade
  * _Fix note_: The performance of fetching bundle products through GraphQl is improved.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/ba25af8a>, <https://github.com/magento/inventory/commit/bdbf97ea>

### GraphQL, Performance

* _AC-9569_: [GraphQL Resolver] Customer Resolver Data is Not Invalidated From Import
  * _Fix note_: GraphQL customer resolver cache is now invalidated as expected when a customer is edited or deleted through imports. Previously, the cache was not invalidated, and customer data could be edited or deleted during import.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/0574ac23>

### GraphQL, Search

* _ACP2E-2809_: GraphQL product list sorting by multiple parameters doesn't work
  * _Fix note_: Product sorting by multiple fields in GraphQl now works as described in the documentation
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/c971859e>
* _ACP2E-948_: Product listing GraphQL query limited to total_count 10,000 products only
  * _Fix note_: After the fix, the search result is not limited to 10000 products, it becomes possible to get all products matching the search criteria even if the count is more than 10000.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/a4cf5e62>

### GraphQL, Test framework

* _ACP2E-3363_: Magento\GraphQl\App\GraphQlCustomerMutationsTest.php Integration Test failure
  * _Fix note_: &apos;-
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/a4cf5e62>

### Import / export

* _AC-12172_: Issue at product import when provided with custom options-type: file (Created Product does not contain price for custom-option and show only the first file type extension provided)
  * _Fix note_: The system now correctly imports product data with custom options of type &apos;file&apos;, ensuring that all provided file extensions are displayed and the price for the custom option is included. Previously, during product import, if a custom option of type &apos;file&apos; was provided with more than one file extension, only the first extension was displayed and the price for the custom option was missing.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38805>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/38926>
* _ACP2E-2710_: Wrong execution time for import operation in Import History grid
  * _Fix note_: Import report execution time shows correctly independent of admin locale.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/ea79f7dd>
* _ACP2E-2737_: Duplicate customers being created with same email address using import
  * _Fix note_: Importing the customer while Account Sharing set to Global, imported customer that exists in the system is updated.
Previously imported customer was duplicated.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/c971859e>
* _ACP2E-2902_: Add/Update Import on Products Duplicating Customizable Options
  * _Fix note_: The issue has been resolved by assigning the correct store to product options during product options CSV imports.
Previously, assigned to the admin store instead of their respective store.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/3a7c4d17>
* _ACP2E-2990_: Customer "created_at" date Not Converted to store time zone upon export
  * _Fix note_: A column &apos;created_at&apos; date value is converted to the proper date format based on the store timezone in the customer export CSV section.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/3056e9cb>
* _ACP2E-3165_: [Cloud] Getting error while checking the data in import data using CSV
  * _Fix note_: There is no error when checking the data during CSV import. Previously, the error message displayed was: &quot;We can&apos;t find a customer who matches this email and website code in row(s): 1&quot; when checking the data in the import section using CSV from the admin.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/8459b17d>
* _ACP2E-3172_: Import button missing
  * _Fix note_: Resolve the Import button missing issue after data checks with correct and incorrect records in the CSV. Previously the import button doesn&apos;t display after data checks with correct and incorrect records in the CSV.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/1819fe73>
* _ACP2E-3382_: Exported customer address cannot be imported
  * _Fix note_: Customer address import will proceed as expected. Previously, a customer address import file would not pass validation if Share Customer Accounts = Global, and there are two websites where the default website has a restricted country list, and the address that is being imported is for another website where allowed countries are different
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/ec7e32a9>
* _ACP2E-3448_: [Cloud] Wrong quantity in CSV file did not give error
  * _Fix note_: Now stock sources import will throw validation error for non numeric values in the quantity column. Previously, importing stock sources with non numeric value in the quantity column resulted in the quantity being set to 0.
  * _GitHub code contribution_: <https://github.com/magento/inventory/commit/5b21b7af>
* _ACP2E-3455_: Duplicated URL key error message generated when importing a product is not correct when the URL Key already belongs to a category
  * _Fix note_: Displaying the correct error message during product import check, when customer tried to import product when product&apos;s url key already belongs to a category.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/d4de4726>
* _ACP2E-3475_: Product export causes OOM even with 4G memory limit
  * _Fix note_: Previous to this fix, the product export failed if product attributes had thousands of option values even with 4G available memory. After this fix, the product export should finish exporting the csv file.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/1984c61c>
* _ACP2E-3527_: [Cloud] Import Processes Interfering with Each Other
  * _Fix note_: Correct messages are shown if the same admin user performs two or more import operations using the same user session.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/d4de4726>

### Import / export, Performance

* _ACP2E-3476_: [Cloud] Product import time has significantly increased
  * _Fix note_: Previous to the fix, catalog product import with over 10K entries had a significant time degradation. After the fix, the import of catalog product executes in a timely manner.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/87d012e5>

### Install & Administer

* _AC-13242_: Magento upgrade fails on MariaDB 11.4 + 2.4.8-beta1
  * _Fix note_: Upgrade should happened without any error.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/7b336d0a>
* _ACP2E-2102_: No Export VCL for Varnish 7 button in admin panel
  * _Fix note_: &quot;Export VCL for Varnish 7&quot; button was added to the Admin panel.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/a4fbf702>

### Inventory / MSI

* _AC-10750_: Inventory update of Configurable Product fails when database uses prefixes
  * _Fix note_: The system now correctly updates the inventory of configurable products when the database uses prefixes, preventing any error messages and ensuring the correct quantity is saved. Previously, an error would occur when trying to save the inventory quantity for simple products within a configurable product if the database was using prefixes.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38045>
* _AC-11593_: Google google API key is not working while adding Map with attributes
  * _Fix note_: The system now supports the latest Google Maps API version 3.56, allowing users to successfully add a Map content block from the PageBuilder menu to the stage without encountering any errors. Previously, users were unable to add a Map content block due to compatibility issues with the Google Maps API version, resulting in a &quot;something went wrong&quot; error message.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/0574ac23>
* _AC-13922_: Unable to create shipment for order item with multiple sources and corrupted SKU
  * _Fix note_: Earlier when spaces  was mistakenly added  in sku  through database leads to error in shipment page which is now fixed and automatic trim is considered as human friendly error and no impact was found .Therefore shipment was successfully created.
  * _GitHub code contribution_: <https://github.com/magento/inventory/commit/c18eb5fa>
* _ACP2E-1411_: [Test] Bundle products with 0 inventory showing on store front
  * _Fix note_: The bundle product does not display on the additional websites using additional stock.
* _ACP2E-2794_: [Cloud] Critical Issue with Product Listing with Empty Spaces
  * _Fix note_: The system now correctly displays product listings without empty spaces when products are set to &apos;Out of Stock&apos;, ensuring a consistent and accurate display of available products. Previously, setting a product to &apos;Out of Stock&apos; would result in an empty space appearing in the product listing, disrupting the layout and potentially confusing customers.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/ea79f7dd>, <https://github.com/magento/inventory/commit/b59e48ca>
* _ACP2E-3335_: Unable to ship the order when MSI pick up store is enabled
  * _Fix note_: Improved inventory performance of create shipping in case of many sources with in-store pickup
  * _GitHub code contribution_: <https://github.com/magento/inventory/commit/9f3e63d1>
* _ACP2E-3355_: Cron reindex fails to update product availability on the frontend
  * _Fix note_: Previously, Products remained out of stock on the frontend after updating the backorder status through the REST API. Now, after updating the backorder status via the REST API, products are shown as in stock.
  * _GitHub code contribution_: <https://github.com/magento/inventory/commit/e6fe0aa7>
* _ACP2E-3357_: Adding images to configurable not working when MSI is enabled.
  * _Fix note_: Image upload for configurable product will now work as expected when inventory module is used. Previously the image upload didn&apos;t work
  * _GitHub code contribution_: <https://github.com/magento/inventory/commit/fdf409aa>
* _ACP2E-3470_: Issue with Bundle Product + MSI in Clean M2.4.7-p3
  * _Fix note_: Previously, for inventory bundle products after duplication with the same simple product, the simple product can not be saved. After this fix is applied, the simple product can be saved successfully without any exceptions.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/39358>
  * _GitHub code contribution_: <https://github.com/magento/inventory/commit/0208e433>

### Inventory / MSI, Search

* _ACP2E-3413_: All products are indexed with [is_out_of_stock] = 1 when the SKU is not set as a searchable attribute
  * _Fix note_: After the fix, the &quot;is_out_of_stock&quot; in catalog search index is correct, even when sku is not searchable.
  * _GitHub code contribution_: <https://github.com/magento/inventory/commit/5b21b7af>

### Order

* _AC-10828_: Backend order overview screen: Backordered quantity not visible on order item level
  * _Fix note_: The system now displays the number of backordered items in the quantity column on the backend order overview screen. This ensures that users can accurately track the status of all items in an order. Previously, the quantity column only showed the number of items that were ordered, invoiced, and shipped, but did not display the number of backordered items.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38252>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/38320>
* _AC-10994_: [Issue] Wrong store ID used in Order Address Renderer
  * _Fix note_: The system now correctly uses the store ID associated with an order when rendering the order address, ensuring that addresses are formatted correctly according to their respective store ID. Previously, the system was incorrectly using the current store ID, which could lead to incorrect address formatting in cases where multiple order emails from different stores needed to be sent.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38412>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/37932>
* _AC-11690_: JoinProcessor caching issue
  * _Fix note_: The system now correctly applies the JoinProcessor for each iteration, even with consecutive calls, ensuring accurate data retrieval. Previously, the JoinProcessor was incorrectly marked as already applied in consecutive iterations, leading to errors in data retrieval.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/27504>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/37550>
* _AC-11798_: [Issue] Shipping price showing diffrent in printed pdf
  * _Fix note_: The system now correctly displays shipping prices in printed PDFs according to the tax configuration settings, ensuring consistency between the sales order invoice view page and the printed invoice. Previously, the shipping price displayed in the printed PDF was excluding tax, regardless of the tax configuration settings.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38608>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/38595>, <https://github.com/magento/magento2/commit/1bafc571>
* _AC-13839_: Reorder with a deleted parent configurable product
  * _Fix note_: Now while reordering with the deleted product the system will not show the reorder button to reorder
  * _GitHub issue_: <https://github.com/magento/magento2/issues/39568>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/39601>
* _AC-13924_: [Issue] Fix bad \Magento\Sales\Model\Order\Email\Container\Template::$id property
  * _Fix note_: This fixes the bad phpdoc for \Magento\Sales\Model\Order\Email\Container\Template::$id, actually $id is type int but in reality is string.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/39151>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/39150>
* _ACP2E-2622_: Unable to save changes to phone number in existing order details
  * _Fix note_: Now the user can add the international prefix 00 in the telephone field of order address
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38201>
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/12e071c3>
* _ACP2E-2734_: Emails are failing to send
  * _Fix note_: The system now includes a configuration option async_sending_attempts to specify the number of attempts to send an email before stopping, improving the handling of failed email sends when &quot;Asynchronous sending&quot; is enabled. Previously, if an email failed to send, the system would continuously attempt to resend it, resulting in an endless loop of error messages in the system log.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/b2286ecf>
* _ACP2E-2756_: [Cloud] Order Status changed to complete when partially refund of a partially shipped order
  * _Fix note_: When issuing a credit memo, the order status is no longer changed to &quot;completed&quot; if there are items that haven&apos;t been shipped yet.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/7e0e5582>
* _ACP2E-3002_: [CLOUD] Cannot Disable Send Emails from Admin UI as Dev Docs shows
  * _Fix note_: The system now correctly prevents sales emails from being sent when email communication is disabled. These emails will no longer be sent when email communication is re-enabled. Previously, sales emails initiated while email communication was disabled would still be sent once email communication was re-enabled.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/c8931218>
* _ACP2E-3045_: Order closed without fully refunded
  * _Fix note_: The system now correctly maintains the order status as &apos;Processing&apos; and the invoice status as &apos;Pending&apos; when an order with an uncaptured payment has a shipment created. This ensures that orders are only marked as &apos;Closed&apos; after being fully refunded. Previously, creating a shipment for an order with a pending invoice would incorrectly change the order status to &apos;Closed&apos;.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/6a185204>
* _ACP2E-3311_: [Cloud] Cannot create order in admin on one store if only the Default Billing Address was not set up
  * _Fix note_: Now relevant error message &quot;A customer with the same email address already exists in an associated website.&quot; is displayed if a customer doesn&apos;t have a Default Billing Address and tries to create an order on another store.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/d75cff27>
* _ACP2E-3416_: Admin duplicated place order requests sent
  * _Fix note_: Previously, the &quot;Submit Order&quot; button in the admin panel could be clicked multiple times or activated by repeatedly pressing the &quot;Enter&quot; key, causing duplicate or order submissions with error. Now, preventing additional actions until the order is fully processed, ensuring that only one order is submitted.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/5184c067>
* _ACP2E-3425_: Admin can still place order even without payment method
  * _Fix note_: Previously selected payment method is now retained when the payment method reappears in the list of available payments.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/d50f6b5d>

### Order, Payments

* _ACP2E-3233_: Admin can still place order even without payment method
  * _Fix note_: Previously, the merchant could place orders from the admin panel without selecting a payment method. Now, the merchant is required a payment method to proceed with placing an order.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/fd5cf3af>

### Order, Returns

* _ACP2E-2982_: Order refund results in duplicate credit memo
  * _Fix note_: Issuing the refund over REST API when two identical requests were executed simultaneously will no longer create duplicate Credit Memos.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/a4fbf702>

### Order, Tax

* _ACP2E-3003_: [CLOUD] Incorrect base_row_total in RESTFUL order API when enabling cross-border transactions and applying coupon discounts
  * _Fix note_: Now correct base_row_total is returned from RESTFUL order API when cross-border transaction is enabled and coupon discount is applied.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/9af794a4>

### Other

* _LYNX-339_: private_content_version cookie returned in GQL queries
  * _Fix note_: Fixed an issue where the private_content_version cookie was returned in GraphQL queries, even when the session cookie was disabled. The cookie is no longer included in GraphQL responses when the session is disabled, as expected.
* _LYNX-380_: is_available attribute in CartItemInterface returns always false for configurable products
  * _Fix note_: Fixed an issue where the is_available attribute in CartItemInterface always returned false for in-stock configurable products. Now, it correctly reflects availability as true when applicable.
* _LYNX-382_: is_available attribute in CartItemInterface returns true even when salable stock is lower than the quantity of the product
  * _Fix note_: Fixed the issue where the is_available attribute in the CartItemInterface incorrectly returned true even when the cart item quantity exceeded the salable stock.
* _LYNX-399_: Placeholder thumbnail returns when a simple product added to cart within a grouped product
  * _Fix note_: Fixed an issue where adding a simple product (part of a grouped product) to the cart returned a placeholder thumbnail image, even when the product had an assigned image.
Fix Details:
 • The product thumbnail now correctly displays the assigned image if available.
 • The thumbnail selection respects the admin configuration under:
Stores &gt; Configuration &gt; Sales &gt; Checkout &gt; Shopping Cart &gt; Grouped Product Image.
This ensures consistent thumbnail behavior for grouped products based on store settings.
* _LYNX-400_: Customer's custom option attributes not working with integer values
  * _Fix note_: Fixed an issue where customer’s custom option attributes did not work when the returned value was an integer. Custom options now correctly handle and return integer values as expected.
* _LYNX-402_: Internal server error when trying to get priceDetails for Bundle products with dynamic price
  * _Fix note_: Resolved an issue where querying price_details for bundle products with dynamic pricing via GraphQL resulted in an internal server error. This enhancement ensures stable cart queries when working with bundle products configured with dynamic pricing.
* _LYNX-403_: only_x_left_in_stock always returns 0 for configurable products
  * _Fix note_: Resolved an issue where the only_x_left_in_stock attribute always returned 0 for configurable products when added using the parent SKU with options.
Fix Details:
 • The only_x_left_in_stock value now accurately reflects the stock of the selected child variant instead of the parent SKU.
 • This ensures that stock levels are correctly displayed for configurable product variations in the cart and product pages.
* _LYNX-411_: GraphQL query not returning correct calculated regular price for customizable products
  * _Fix note_: Fixed an issue where GraphQL did not return the correct calculated regular price for customizable products. The query now correctly includes the calculated regular price with customizable values applied (e.g., $125) in the prices property, reflecting both the base price and any additional customization costs.
* _LYNX-412_: AppliedTaxes via EstimatedTotals persist with updated mutations
  * _Fix note_: Fixed an issue with the EstimatedTotals mutation where applied taxes persisted on a cart even after updating the region or postcode. The mutation now correctly updates the applied taxes when changing between region and postcode values, ensuring that only the correct tax rule is applied based on the current cart data.
* _LYNX-420_: is_available attribute in CartItemInterface returns true even when salable stock is lower than the quantity of the product
  * _Fix note_: Fixed an issue where the is_available attribute in CartItemInterface incorrectly returned true even when the salable stock was lower than the requested product quantity. The is_available field now correctly returns false when the product’s quantity exceeds the available stock.
* _LYNX-425_: Product regular price with 12 decimals and wrong value
  * _Fix note_: Fixed an issue where the regular_price value in the product.price_range.maximum_price and minimum_price GraphQL paths did not match the catalog price when multiple tax rates were applied. The regular_price now consistently reflects the catalog price across all tax configurations, ensuring accurate unit pricing, total row cost calculations, and discount checks in the Cart Summary.
* _LYNX-430_: GraphQL server error on cart with out of stock bundled product
  * _Fix note_: Fixed an issue where GraphQL returned an internal server error when fetching a cart containing a bundled product with an out-of-stock item, specifically when the query included the itemsV2 property. GraphQL now correctly returns a list of items with relevant error messages attached to the bundled product item entry, as expected.
* _LYNX-441_: It is not possible to create an address with custom attributes
  * _Fix note_: Fixed an issue with the createCustomerAddress mutation that prevented the creation of addresses with required custom attributes. The mutation now correctly handles custom address attributes when the appropriate payload is provided.
* _LYNX-447_: GraphQL server error on cart with only_x_left_in_stock on bundled product
  * _Fix note_: Fixed an issue where fetching a cart containing a bundled product with the only_x_left_in_stock field in the GraphQL query resulted in an internal server error. GraphQL now correctly returns a float or null for the only_x_left_in_stock field without errors.
* _LYNX-464_: GraphQL error when removing other products with insufficient configurable product in cart
  * _Fix note_: Fixed an issue where attempting to remove in-stock products from the cart resulted in a “The requested qty is not available” GraphQL error if the cart also contained configurable products with insufficient stock. The removal now works as expected without triggering errors.
* _LYNX-469_: Cannot add products due to SKU in mutation being case sensitive
  * _Fix note_: Resolved an issue where the addProductsToCart mutation returned a “PRODUCT_NOT_FOUND” error when using SKUs with different casing. The mutation now handles SKUs case-insensitively, ensuring consistency with Catalog Service queries and PDP behavior.
* _LYNX-603_: Product attribute > trademark short form ™ is returned as &trade;
  * _Fix note_: Resolved character encoding issue with the product name for the GraphQL API
* _LYNX-619_: updateCustomerEmail mutation issue
  * _Fix note_: Resolved an issue with the updateCustomerEmail mutation where customers without required custom attributes (added after account creation) were unable to update their email.
* _LYNX-626_: Mutation setShippingAddressesOnCart throws error when using pickup_location_code
  * _Fix note_: Fixed an issue where the setShippingAddressesOnCart mutation returned an error when using pickup_location_code without specifying customer_address_id or address. The mutation now correctly allows setting a shipping address with just the pickup_location_code.
* _LYNX-637_: Storefront Compatibility - Update logic to get table name with prefix and other minor improvements
  * _Fix note_: Updated logic to retrieve the table name with the prefix (related to SCP changes).
* _LYNX-643_: save in address book does not work when using setBillingAddressOnCart GQL's same_as_shipping field
  * _Fix note_: Fixed an issue where the shipping address was not saved to the customer’s address book when using the setBillingAddressOnCart GraphQL mutation with the same_as_shipping field set to true. Now, the shipping address is correctly stored as expected.
* _LYNX-650_: Standarize the order_id in mutations
  * _Fix note_: Standardized the order_id input in mutations and updated the order cancel confirmation email template to expose increment id instead of order id.
* _LYNX-651_: CustomerOrder is not displaying the order comments
  * _Fix note_: Resolved an issue with CustomerOrder to include order comments in guest and customer order GraphQL queries.
* _LYNX-652_: original_item_price must not include any discount
  * _Fix note_: Updated the logic for original_item_price in GraphQL Cart Item prices to exclude discounts.
* _LYNX-681_: Bundle products still shows "IN_STOCK" when one of its bundled product out of stock
  * _Fix note_: Resolved an issue where product.stock_status for bundle products still showed &quot;IN_STOCK&quot; even when one of the bundled items was out of stock.
* _LYNX-686_: customer query returns Internal Server Error if value for deleted custom attribute exists for a customer
  * _Fix note_: Fixed the issue where the customer query returned an internal server error when a deleted custom attribute still had a stored value. Now, a proper error message is returned if a non-existing attribute is requested. Necessary cache is invalidated upon deleing customer custom attribute.
* _LYNX-687_: Action parameter for return and cancel confirmation links
  * _Fix note_: Action parameter added for return and cancel confirmation email related links
* _LYNX-689_: Guest user confirmation url is redirected to order status page as it is missing orderRef
  * _Fix note_: Added orderRef parameter to the link in guest order cancellation confirmation email
* _LYNX-699_: Cannot return null for non-nullable field "TaxItem.title" on placeOrder GQL
  * _Fix note_: Fixed an issue where the placeOrder mutation failed with an internal server error due to a null value for the non-nullable field TaxItem.title. Now, the field always returns a valid value, ensuring successful order placement.
* _LYNX-702_: EstimateTotals: Discounts is null for virtual product types
  * _Fix note_: Resolved the issue with the estimateTotals mutation returning null for discounts when a discount code is applied to a cart containing virtual products.
* _LYNX-703_: Bundle product does not return the correct discount percentage and amount
  * _Fix note_: New properties &quot;catalog_discount&quot; and &quot;row_catalog_discount&quot; have been introduced for catalog item prices to display the correct discount amounts and percentages at both the row and single item levels.
* _LYNX-714_: Gift message configuration on product level
  * _Fix note_: Fixed an issue where gift messages were not applied at the product level when globally disabled. Now, if gift messages are enabled for a specific product, they can be successfully added using the updateCartItems mutation and will be correctly saved and reflected.
* _LYNX-757_: cart.rules query return error instead of empty array in case no active cart rules are applied
  * _Fix note_: Fixed the cart.rules query to return an empty array instead of an error when no active cart rules are applied.
* _LYNX-778_: GraphQL calls with OPTIONS method are returning 500 response code when adobe-commerce/storefront-compatibility package installed
  * _Fix note_: Fixed an issue where GraphQL calls using the OPTIONS method returned a 500 Internal Server Error when the adobe-commerce/storefront-compatibility package was installed. The endpoint now correctly returns a 200/204 response as expected.

### Other Developer Tools

* _AC-10658_: [Issue] Fix HTML syntax error in visual.phtml
  * _Fix note_: The system now correctly closes the start tag in the visual.phtml file, ensuring proper HTML syntax. Previously, the start tag was not closed properly, causing an HTML syntax error.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38247>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/37457>
* _AC-11474_: [Issue] Changed "active" to "enabled" in bin/magento maintenance:status command
  * _Fix note_: The system now provides more accurate status messages for the maintenance mode command, changing the status from &quot;active&quot; to &quot;enabled&quot; and from &quot;not active&quot; to &quot;disabled&quot;. Previously, the status message for the maintenance mode command was displayed as &quot;active&quot; or &quot;not active&quot;, which could lead to confusion.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38486>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/38410>
* _AC-12571_: Navigating in the categories tree leads to errors in Redis: "Redis session exceeded concurrent connections"
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38851>
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/0611e750>
* _AC-12731_: CSP issues combined with dev/css/use_css_critical_path
  * _Fix note_: The system now correctly loads CSS files asynchronously on checkout pages, even when the &apos;dev/css/use_css_critical_path&apos; setting is enabled, ensuring that these pages are rendered with the proper CSS styles. Previously, a restricted Content Security Policy (CSP) prevented inline JavaScript from executing, which resulted in CSS files not being loaded as expected.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/39020>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/39040>
* _AC-13398_: Using virtual type to configure plugin, interceptor method cannot be generated correctly in setup:di:compile command
  * _Fix note_: The system now correctly generates interceptor methods when using a virtual type to configure a plugin, ensuring consistent results whether precompiled or runtime compiled. Previously, the system would generate incorrect results when precompiled compared to runtime compilation.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/33980>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/38141>
* _ACP2E-3631_: Adobe Commerce 2.4.7-p3 unit tests are failing
  * _Fix note_: No release notes are required.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/982b1c42>

### Payment/ Payment Methods, Order

* _AC-13699_: Papal payflow Credit card details saved for later use are not showing up on stored payment method page
  * _Fix note_: Earlier Papal payflow Credit card details saved for later use was not showing up on stored payment method page which is now fixed credit card details are showing up on stored payment method page.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/96dec499>

### Payments

* _AC-13414_: Credit Card(Payflow Link) payment is not working
  * _Fix note_: Earlier Getting error (Payment got Declined) while placing order with Credit Card after the fix Order placed successfully.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/a68324bc>
* _ACP2E-2841_: Payflow creates new transaction each time we click on fetch button on the view transaction screen
  * _Fix note_: The system now correctly fetches transaction information without creating a new payment transaction each time the fetch button is clicked on the view transaction screen. Previously, clicking the fetch button would incorrectly create a new payment transaction for an order that had already been paid.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/b2286ecf>
* _ACP2E-3028_: Paylater message not showing in PDP for Canadian paypal merchant account
  * _Fix note_: The system now correctly displays the PayLater message for Canadian PayPal merchant accounts on the Product Detail Page (PDP) when the buyer&apos;s country can be determined from the account billing address or shipment. Previously, the PayLater message was not displayed due to a missing parameter, resulting in an error in the browser console.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/6a185204>
* _ACP2E-3143_: PayPal order refund results in duplicate credit memo
  * _Fix note_: Fixed concurrency issue of IPN-created credit memos for PayPal payment service.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/d01ee51e>
* _ACP2E-3163_: Cart price rule not working for Paypal
  * _Fix note_: Correct amount is shown on PayPal side when discount is applied by payment method
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/7377de59>
* _ACP2E-3208_: [Cloud] Users with a specific role cannot login
  * _Fix note_: admin user with role that contain only PayPal Section access now can login without errors
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/66dea0de>

### Performance

* _AC-11932_: Default Product Attribute Settings Issue
  * _Fix note_: The system now allows users to deselect a default option for a product attribute, ensuring that the attribute does not always have a default set. Previously, once a default was set for a product attribute, there was no way to deselect it, resulting in the attribute always having a default set.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38703>
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/7d5e3906>
* _AC-12000_: [Issue] Code cleanup and add new critical head block and move critical css before assets
  * _Fix note_: The system now includes a new critical head block and moves critical CSS before assets, allowing for more customization and performance optimization in the frontend. Previously, the critical CSS was not positioned before the assets, limiting customization and optimization opportunities.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38748>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/35580>
* _AC-12176_: Theme compilation breaks when mysql host contains port information
  * _Fix note_: The system now correctly handles MySQL host configuration that includes port information, ensuring successful theme compilation. Previously, theme compilation would fail if the MySQL host configuration in the database connection included port information.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38799>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/38842>
* _AC-13471_: Support for Symfony's CommandLoaderInterface in Magento CLI
  * _Fix note_: This change reduces initialization time of the Magento CLI app by allowing deferred initialization of commands until they&apos;re needed.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/29266>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/29355>
* _ACP2E-2494_: Performance issue when loading product attributes in cart rules
  * _Fix note_: Improved query performance for sales rules - from around 150ms to single digit ms.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/ba25af8a>
* _ACP2E-2673_: Price partial indexing performance
  * _Fix note_: The price partial indexing performance has been improved by optimizing some of the delete queries used within the indexing process.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/ba25af8a>
* _ACP2E-2850_: Order gets rejected on multi-store setup when using Async-order processing + Terms and Conditions
  * _Fix note_: The orders placed from non default websites with terms and conditions enabled are now processed.
Before they were automatically rejected.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/57a32313>
* _ACP2E-2910_: Order Rest API call is taking a long time to execute
  * _Fix note_: The system now executes the Order Rest API call within a reasonable timeframe, improving the performance when fetching a large number of orders. Previously, the Order Rest API call was taking a long time to execute, causing delays when retrieving a large number of orders.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/001e5188>

### Pricing

* _AC-11810_: Magento2.4.6-p4 Order API Simple Item missing price
  * _Fix note_: The system now correctly displays the price of simple products when queried through the Order API, ensuring accurate data representation. Previously, the price of simple products was incorrectly displayed as zero in the API response.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38603>
* _AC-13855_: Penny rounding error in catalog rule
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/276e0acd>

### Product

* _AC-10535_: Special characters in configurable associate product name are  being Converted to HTML Entities.
  * _Fix note_: The system now correctly retains special characters in the names of associated products when editing a configurable product, preventing them from being converted into HTML entities. Previously, special characters in associated product names were converted into HTML entities when the configurable product was edited.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38146>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/38447>
* _AC-10947_: ProductRepository function GetById does not create the correct cache key
  * _Fix note_: The system now correctly creates a cache key in the ProductRepository&apos;s function GetById, regardless of whether the store ID is passed as a string or an integer. This ensures that the product is retrieved from memory on subsequent calls, improving performance. Previously, the system would retrieve the product from the database each time the function was called, even with the same parameters, due to incorrect cache key creation.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38384>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/38433>
* _AC-11992_: [Issue] [MFTF] Added AdminClickAddOptionForBundleItemsActionGroup
  * _Fix note_: The system now includes the AdminClickAddOptionForBundleItemsActionGroup, enhancing the functionality of the admin panel. Previously, this action group was not available.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/30857>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/30838>
* _AC-13173_: [Issue] Fix typo in PHPDoc block
  * _Fix note_: The system now correctly removes an unknown referenced variable in PHPDoc for the $helper variable declaration, enhancing code clarity and accuracy. Previously, this unknown referenced variable in PHPDoc was causing confusion and potential inaccuracies in the code.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38961>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/38940>
* _AC-13423_: [Issue] Fixed broken Bundle and Downloadable product pages layout in Magento >= 2.4.7
  * _Fix note_: The layout for bundle and downloadable product pages has been fixed, ensuring a consistent and correct display across all devices. Previously, these pages experienced layout issues due to a rearrangement of the product info media block.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/39403>
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/6cfb9b6b>
* _AC-5969_: AlertProcessor - Argument #2 ($storeId) must be of type int, string given
  * _Fix note_: The system now correctly triggers product alert emails by ensuring the store identifier is of the correct data type. Previously, product alert emails were not being sent due to a type mismatch in the store identifier.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/35602>
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/0574ac23>
* _ACP2E-2944_: [Cloud] addFilterToMap function is not working for certain columns
  * _Fix note_: Now, the custom module can be used in the order grid. Previously errors occurred while using a custom module.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/3a7c4d17>

### Promotion

* _ACP2E-2602_: Customer attribute not visible when creating account from invitation
  * _Fix note_: Customer attributes are available while creating account from invitation.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/39d54c2d>
* _ACP2E-2627_: Coupon code with Uses per Coupon limit is not getting released for payment failed with order cancel
  * _Fix note_: The system now immediately updates coupon usages when an order is created or cancelled, and adds rule usages to a queue to prevent potential deadlocks. This ensures that a coupon code with a &quot;Uses per Coupon&quot; limit is released and can be reused if an order is cancelled due to a failed payment. Previously, the system did not release the coupon code for reuse in such cases, resulting in an error message stating that the coupon code was not valid.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/c971859e>
* _ACP2E-2811_: [Cloud] Reindexing Catalog Rule Product Indexer throws SQLSTATE[HY000]: General error: 2006 MySQL server has gone away.
  * _Fix note_: The system now correctly handles custom &quot;batchCount&quot; value in the di.xml for the &quot;Magento\CatalogRule\Model\Indexer\IndexBuilder&quot;, preventing SQL errors such as &quot;General error: 2006 MySQL server has gone away&quot; during the reindexing of the Catalog Rule Product Indexer due to the incorrect batch size on large catalogs
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/b2286ecf>
* _ACP2E-3139_: Sales Rule with Discount Qty Step (Buy X) attribute causes other rules to not be applied
  * _Fix note_: Cart price rule does not cancel previously applied rules if quantity of the product in the cart is not enough for rule to be applied.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/d01ee51e>
* _ACP2E-3332_: Issue sales rules with Fixed amount discount and "Maximum Qty Discount is Applied To"
  * _Fix note_: Fixed issue with cart rules discount, when fixed amount discount is configured to be applied for a limited qty of products is the cart. Previously, the &quot;Maximum Qty Discount is Applied To&quot; value was used to calculate current item&apos;s price in the cart, not only for calculation the rule&apos;s discount.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/581b7ef1>
* _ACP2E-3349_: Cart rules "Fixed amount discount for whole cart"  Action applies discounts incorrectly
  * _Fix note_: Coupon codes will be validated properly regardless of upper case or lowercase, when used in order creation from the admin area. Before, the coupon code was not validated if it did not match the exact letter case of the configured cart rule code.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/581b7ef1>
* _ACP2E-3374_: In Backend, default store values for product attributes (instead of expected admin values)
  * _Fix note_: Now In Backend, admin values are used instead of default store values for product attributes.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/5184c067>
* _ACP2E-3377_: Cart rules "Fixed amount discount for whole cart"  action applies discounts incorrectly when adding bundle products
  * _Fix note_: Fixed amount cart rules were not being applied properly for bundle products. Now, when calculating the total discount amount, bundle child products are taken into consideration, resulting in proper discount calculation.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/1366ae5e>
* _ACP2E-3403_: Cart Price Rules Miscalculating Discount
  * _Fix note_: Fixed amount discounts are now being properly calculated. Prior to the fix, fixed amount discounts were not totalled properly for bundle products.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/0b488dd1>
* _ACP2E-3406_: Nested categories in rule conditions not showing
  * _Fix note_: Fixed issue when nested categories under level 3 category are not shown in marketing rules for category condition
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/88660e79>
* _ACP2E-3432_: usage_limit and uses_per_customer not updating in salesrule_coupon Table
  * _Fix note_: Updating Uses per Coupon and Uses per Customer in cart price rule will now affect existing autogenerated coupons. Previously the new values affected only new coupons
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/88660e79>
* _ACP2E-3456_: Cart price rule doesn't consider parent category when it is using "equals or greater than" condition.
  * _Fix note_: Cart Price Rules now consider parent category correctly when it is used in advanced conditions
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/93359343>
* _ACP2E-3463_: Invalid discount calculation with priority
  * _Fix note_: In the case of fixed amount appllied for the whole cart discount type, the amount was not being calculated properly for cart items that were already discounted by a previous promotion. Now, discounts are properly summed up.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/078c387e>
* _ACP2E-3472_: [CLOUD] Shipping calculation is not considering the shopping cart rule
  * _Fix note_: Prior to the fix, a cart rule with region condition was not being applied consistently. After the fix, cart rules with region conditions are being applied properly.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/d4de4726>
* _ACP2E-3491_: Cart rule sku condition is failing for invoice.
  * _Fix note_: Discount on Bundle product with dynamic price is now correctly reflected in the invoice. Previously, the discount was not reflected on the invoice.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/3f12d152>
* _ACP2E-3498_: Incorrect discount value when multiple cart price rules are applied simultaneously with discounted/special priced products
  * _Fix note_: Prior to the fix, fixed amount for whole cart rules were not being applied properly if more than one was being applied. Now, fixed amount discount cart rules are being applied properly.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/1984c61c>

### SEO

* _AC-11907_: Adding URL rewrites with an accent causes infinite loading
  * _Fix note_: The system now successfully creates and functions URL rewrites with accents, preventing infinite loading during the saving process. Previously, adding a URL rewrite with an accent caused an infinite loading issue.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38692>
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/44cef3a9>
* _ACP2E-2641_: Multi Store Wrong category url-rewrite for third level category
  * _Fix note_: Generate correct url rewrites for children with parent with custom scoped url key
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/ea79f7dd>
* _ACP2E-2770_: Double-byte characters (special characters) in Product Name field blocks product creation in backend
  * _Fix note_: A new setting has been added that allows you to apply transliteration to product URL or not. Setting is available here: Stores &gt; Configuration &gt; Catalog &gt; Catalog &gt; Search Engine Optimization: &quot;Apply transliteration for product URL&quot;
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/b2286ecf>
* _ACP2E-3383_: Incorrect url_rewrite entries creation with multiple stores in one store group
  * _Fix note_: Prior to the fix, you could only generate URL rewrites on a website level when editing a product. With the fix, a new setting was introduced (Stores &gt; Configuration &gt; Catalog &gt; Catalog &gt; Search Engine Optimization, &quot;Product URL Rewrite Scope&quot; with options &quot;Store view&quot;, &quot;Website&quot;) that allows you to generate URL rewrites at the store view or website level.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/2d627301>

### Search

* _AC-13053_: Getting "Enter a search term and try again." error on advanced search page in storefront in 2.4.8-beta1
  * _Fix note_: The system now correctly displays search results on the Advanced Search page when a product attribute is set to &quot;No&quot;. Previously, setting a product attribute to &quot;No&quot; and performing a search would result in an error message, &quot;Enter a search term and try again.&quot;
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/3ea26621>
* _AC-13721_: magento/module-open-search depends on on nonexistent opensearch-php branch
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/05dc0bbf>
* _ACP2E-3362_: search_query table when of huge size, has large impact on load time frontend
  * _Fix note_: Improved search listing page load time. Prior to the fix, the search listing page was being delayed because of an unoptimized query.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/55615e61>

### Security

* _AC-11855_: [Issue] Missing Font CSP Paylater Popup
  * _Fix note_: The system now allows the loading of the font &apos;https://www.paypalobjects.com/webstatic/mktg/2014design/font/PP-Sans/PayPalSansBig-Medium.woff&apos; without violating the Content Security Policy directive, ensuring the correct display of the Paylater Popup. Previously, the font was refused to load due to a violation of the Content Security Policy directive, causing display issues with the Paylater Popup.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38624>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/37401>
* _AC-12035_: [Issue] Update js.js DOM text reinterpreted as HTML
  * _Fix note_: By using innerText, it will avoid the risk of HTML injection, as these properties automatically escape any HTML special characters in the provided text. This fix, helps prevent cross-site scripting (XSS) vulnerabilities by treating the input as plain text rather than interpreted HTML.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38767>
* _ACP2E-3273_: ReCaptcha V2 shows incorrectly on checkout for German language
  * _Fix note_: Previously the recaptcha from under email address from checkout appear unstyled for languages with long words, like german. After this the recaptcha looks the same as all recaptcha elements from the rest of the areas.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/7377de59>
* _ACP2E-3300_: Captcha on admin login does not require interaction for some users
  * _Fix note_: ReCaptcha for admin login is validated as expected
  * _GitHub code contribution_: <https://github.com/magento/security-package/commit/8f64ab3c>

### Shipping

* _AC-10757_: [Issue] Fixed typo in tracking.phtml - renamed JS-functions "currier" to "carrier"
  * _Fix note_: The system now correctly uses the term &quot;carrier&quot; instead of the misspelled &quot;currier&quot; in the JavaScript handler functions used in the order tracking template, ensuring proper function naming and code clarity. Previously, the misspelled term &quot;currier&quot; was used, leading to potential confusion and inconsistency in the codebase.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/34523>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/33414>
* _AC-11938_: UPS REST "A shipment cannot have a KGS/IN or LBS/CM or OZS/CM as its unit of measurements"
  * _Fix note_: Ensure to UPS rates should visible in checkout and cart.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38618>
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/493e01f5>
* _AC-13172_: [Issue] Correct spelling of variables for customer address
  * _Fix note_: The system now correctly spells variables for customer addresses, ensuring accurate display in the account area of the front end. Previously, incorrect spelling of these variables could lead to errors during local code reviews.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/32817>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/32815>
* _ACP2E-2738_: Tracking Window showing wrong Expected Delivery Date
  * _Fix note_: Display correct Delivery Date for Fedex Carrier.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/57a32313>
* _ACP2E-2763_: Table Rates Still Showing Even Though Free Shipping Is Applied
  * _Fix note_: Table Rate shipping method now is shown even if Free Shipping becomes available after coupon applying
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/b2286ecf>
* _ACP2E-2765_: MFTF test AdminCreatingShippingLabelTest failing due to credentials not added in Jenkins environment
  * _Fix note_: mftf test fix
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/ea79f7dd>
* _ACP2E-3340_: FedEx Track API not working with REST credentials
  * _Fix note_: Previously FedEx integration didn&apos;t require additional API keys for Tracking API. Now new configuration was added to support Tracking API keys.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/ec7e32a9>
* _ACP2E-3354_: [Cloud] FedEx Negotiated Rates not returned on REST
  * _Fix note_: Previous to the fix,FedEx account specific rates where not sent on the response, even through according to FedEx documentation they should have been sent. After the fix, the account specific rates are sent on the response by changing the request from our side.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/55615e61>

### Staging & Preview

* _ACP2E-3453_: Unable to Update Scheduled Update When Using Unique Custom Category Attribute
  * _Fix note_: Fixed an issue where updating a scheduled update for a category was not possible if the category had a unique attribute
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/078c387e>

### Targeting

* _AC-9432_: [Issue] Allow use of CIDR ranges in maintenance allow list
  * _Fix note_: The system now supports the use of CIDR ranges in the maintenance mode allow IP list, enabling a range of IP addresses to bypass maintenance mode. Previously, the maintenance mode allow IP list only permitted individual IP addresses to bypass maintenance mode.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/37943>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/30699>

### Tax

* _AC-13295_: [Issue] Feature/php8.1 constructor property promotion wee graph ql
  * _Fix note_: Replace allmost all properties with constructor property promotion in module wee graph ql:
  * _GitHub issue_: <https://github.com/magento/magento2/issues/39309>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/36975>
* _ACP2E-3193_: Fixed Product Tax (FPT) is not working with configurable products
  * _Fix note_: FPT for configurable product variations working properly.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/ec7e32a9>

### Test framework

* _AC-11654_: Integration test failing testDbSchemaUpToDate due to JSON column type
  * _Fix note_: The system now correctly recognizes JSON column types in the database schema during integration tests, preventing test failures due to a mismatch between the database schema and the declarative schema. Previously, the system incorrectly identified JSON column types as LONGTEXT in MariaDB, causing integration tests to fail.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/ef81f5a2>
* _AC-13362_: [Issue] PHPDoc correction spelling
  * _Fix note_: The system now correctly recognizes deprecated methods in IDEs due to a spelling correction in the PHPDoc. Previously, a spelling error in the PHPDoc caused IDEs to not recognize certain methods as deprecated.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/31399>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/31398>
* _AC-13478_: MAGETWO-95118: Checking behaviour with the persistent shopping cart after the session is expired
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/7d5e3906>
* _AC-13848_: Fix static tests to enable usage by 3d-party extensions
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/9e383b4d>
* _ACP2E-3334_: [Internal] Fixture apply failure is not shown during execution or in logs
  * _Fix note_: &apos;-
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/d4de4726>
* _ACP2E-3458_: [MFTF] StorefrontCheckoutProcessForQuoteWithoutNegotiatedPricesTest
  * _Fix note_: Fixed mftfs
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/078c387e>

### UI Framework

* _AC-12128_: Prototype.js security vulnerability fix CVE-2020-27511
  * _Fix note_: The system has been updated to address the security vulnerability CVE-2020-27511 in Prototype.js 1.7.3, enhancing the overall security of the system. Prior to this update, the system was susceptible to a Regular Expression Denial of Service (ReDOS) through stripping crafted HTML tags.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/de4dfb8e>
* _AC-12189_: Grunt Less uses pub/ prefix for sourcemaps
  * _Fix note_: The system now generates less/css sourcemaps without the /pub prefix for paths when using grunt, eliminating the need for a workaround in the webserver configuration. Previously, the use of the /pub prefix in sourcemaps paths required a specific configuration in the webserver to function correctly.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38837>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/38840>
* _AC-12432_: Ui Component File Field
  * _Fix note_: The system now correctly validates the file field in a UI component form, allowing the form to be submitted without error when a file is selected. Previously, the validation would fail even when a file was selected, preventing the form from being submitted.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38908>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/39004>
* _AC-12645_: [Issue] Improved date format in js console: switch from 12 hour to 24 hour fo…
  * _Fix note_: Improved date format in js console: switch from 12 hour to 24 hour
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38983>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/38972>
* _AC-12650_: [Issue] add sourceMap generation for less files in developer mode
  * _Fix note_: The system now generates source maps for less files when in developer mode, making it easier to identify the source of a style. Previously, identifying the source of a style was challenging when running the system in developer mode with server-side less compilation.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38982>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/38977>
* _AC-1306_: Static content is deploying for disabled modules
  * _Fix note_: The system now excludes CSS related to disabled modules from the final CSS output files, ensuring that unnecessary styles are not loaded. Previously, CSS related to disabled modules was included in the final CSS output files, leading to the loading of extra, unnecessary styles.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/24666>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/32922>
* _AC-13459_: Inconsistent Behavior in "Out of Stock" Sorting with Minimum Stock Threshold
  * _Fix note_: The system now correctly sorts products in the catalog based on stock levels, adhering to the set Minimum Stock Threshold and moving out-of-stock items to the bottom of the list consistently. Previously, the sorting behavior was inconsistent, with items not always appearing in the correct order based on their stock levels, and changes in sorting could occur unpredictably after saving, refreshing, or modifying the category hierarchy.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/47b448e2>
* _AC-13472_: Suggestion for improved error reporting for require.js loading problems
  * _Fix note_: This PR improves the error message when requirejs fails to load a component.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/36761>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/38971>
* _AC-14004_: PHP 8.4 Deprecation Errors Causing Build Failures in 2.4-develop
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/1da9ba6f>
* _AC-9007_: [Issue] Do not load backend block context on frontend
  * _Fix note_: The system now ensures that backend block context is not loaded on the frontend, preventing the creation of unnecessary backend sessions and potential session locks. Previously, the system was incorrectly loading the backend block context on the frontend, leading to the creation of backend sessions and potential session locks.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/37617>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/36368>
* _AC-9168_: [Issue] Remove unnecessary scripts review summary
  * _Fix note_: The system now optimizes page load time by removing unnecessary JavaScript scripts from the rating section, instead using inline CSS styles for a more efficient and readable code. Previously, the use of JavaScript scripts for the rating section could potentially slow down page load time.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/37776>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/34643>
* _ACP2E-2529_: Exception when checking a gift card balance when Recaptcha is enabled
  * _Fix note_: Users will be able to fetch gift card balance in the view and edit cart screen. Previously these details were not shown while reCAPTCHA enabled.
  * _GitHub code contribution_: <https://github.com/magento/magento2-page-builder/commit/4a2795ea>
* _ACP2E-2729_: [CLARIFICATION] Feature Request ADA Compliance
  * _Fix note_: The system now ensures ADA compliance by removing unsupported CSS properties and replacing them with supported ones in the print.css file. Previously, the use of unsupported CSS properties led to browser compatibility issues.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/57a32313>
* _ACP2E-3061_: [Cloud] Confusion library code in effect-drop.js of AC 2.4.4-p8
  * _Fix note_: The system now correctly implements the effect-drop.js library, ensuring the proper functioning of jQuery UI effects. Previously, the effect-drop.js library was mistakenly overwritten with the effect-clip.js library, causing potential issues with jQuery UI effects.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/35b1b1da>
* _ACP2E-3367_: Site Header | Special Characters Breaking the Customer Welcome section
  * _Fix note_: After the fix, special characters are shown correctly in the customer welcome section.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/1366ae5e>
* _ACP2E-3561_: Customer Segment edition fails with daterange
  * _Fix note_: It is possible to save customer segment with date range condition, when only one of dates was edited.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/a52ff98f>
