# Magento Open Source release notes (v2.4.8)

## Fixed issues in v2.4.8

We have fixed 327 issues in the Magento Open Source 2.4.8 core code. A subset of the fixed issues included in this release is described below.

### APIs

* _AC-11878_: The system now correctly handles integer values in the GetCustomSelectedOptionAttributes function when executing a GraphQL query, preventing any type-related errors. Previously, launching a GraphQL query that used GetCustomSelectedOptionAttributes with an integer argument resulted in a type error.
  * _Fix note_: <https://github.com/magento/magento2/pull/38663>>
  * _GitHub issue_: <[Graphql] Type issue in 2.4.7>
  * _GitHub code contribution_: https://github.com/magento/magento2/issues/38662
* _AC-3223_: Special characters in category url_key (when created via REST API)
  * _Fix note_: Earlier In category_url_key special character is not there after the fix it  is showing special character in category_url_key
  * _GitHub issue_: <https://github.com/magento/magento2/issues/35577>
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/c699c206>>
* _ACP2E-3236_: Async operation fails when the SKU is missing from the payload
  * _Fix note_: Async and sync operations previously failed due to product save errors if sku is missing from payload. After the fix, the async and sync product save rest api operations fail with relevant exception message.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/66dea0de>>
* _ACP2E-3376_: [CLOUD] Unable to update the Base-prices using REST API (The value of 'value_id' in 'catalog_product_entity_decimal' is not incremented correctly.)
  * _Fix note_: Previously to this fix, when rest api /rest/default/V1/products/base-prices was called, the increment id was increased wrongly leaving a gap between values. After the fix the increment id is increased as expected, incrementaly. Also the value_id field range was increased.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/d50f6b5d>>
* _ACP2E-3460_: Order items are not visible in credit memo emails for the API POST V1/order/:orderId/refund
  * _Fix note_: Previously, before this fix, when a customer creates a credit memo from an API request notifying send_email, it does not contain the product details grid. After this fix apply the customer sends a credit memo API request, and will find the product item details appearing in the email.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/3f12d152>>
* _ACP2E-3486_: Default values are not set for date and time attributes with products RestAPI
  * _Fix note_: Default values now sets properly for date and date and time attributes via RestAPI
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/1984c61c>>

### APIs, Cart & Checkout

* _ACP2E-3343_: Critical 500 Error: Magento\Framework\Webapi\Exception Related to Accept HTTP Header
  * _Fix note_: After the fix, there is no issue with specifying the "Accept" header.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/1366ae5e>>

### Account

* _AC-10782_: The system now validates the input in the First Name and Last Name fields in the customer address form, preventing the use of random code. Previously, the system allowed the use of random code in these fields without throwing an error.
  * _Fix note_: <https://github.com/magento/magento2/pull/38345>>
  * _GitHub issue_: <Customer address form allows random code in the name fields>
  * _GitHub code contribution_: https://github.com/magento/magento2/issues/38331
* _AC-10886_: admin Password update.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38352>
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/4bca5dfe>>
* _AC-10990_: The system now correctly saves customer addresses even when the region field is not displayed, preventing a crash during the save process. Previously, attempting to add or edit an address without a displayed region field would result in an exception error.
  * _Fix note_: <https://github.com/magento/magento2/pull/38407>>
  * _GitHub issue_: <my account add address crash on save>
  * _GitHub code contribution_: https://github.com/magento/magento2/issues/38406
* _AC-11718_: Redirect loop when URL have uppercase
  * _Fix note_: The system now automatically converts uppercase characters in URLs to lowercase, preventing a redirect loop when accessing the homepage. Previously, having uppercase characters in the Secure Base URL would cause a continuous redirect loop when trying to access the homepage.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38538>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/38539>>
* _AC-11755_: middlename('s) not saved for guest accounts
  * _Fix note_: The system now correctly saves the middle name for guest accounts during checkout, making it accessible in the email template. Previously, the middle name was not saved in the quote table and was not accessible in the email template for guest accounts.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38593>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/39067>>
* _AC-11919_: The system now correctly aligns the Page Actions Buttons to the right side of the sticky header in the admin panel, enhancing the professional look and feel. Previously, these buttons were incorrectly floating to the left side of the sticky header.
  * _Fix note_: <https://github.com/magento/magento2/commit/44cef3a9>>
  * _GitHub issue_: <Admin: Page Actions Buttons floating left instead of right>
  * _GitHub code contribution_: https://github.com/magento/magento2/issues/38701
* _AC-11999_: The system now correctly displays constructor parameters when executing the dev:di:info command, preventing any errors from occurring. Previously, executing this command resulted in an error due to a type mismatch in the argument.
  * _Fix note_: <https://github.com/magento/magento2/commit/0c53bbf7>>
  * _GitHub issue_: <dev:di:info error in magento 2.4.7>
  * _GitHub code contribution_: https://github.com/magento/magento2/issues/38740
* _AC-13000_: Login as customer opt-in checkbox not translatable
  * _Fix note_: The system now allows the "Login as Customer opt-in checkbox" and "Login as Customer checkbox tooltip" fields to be set at the "Store view" scope, enabling translations for different store views. Previously, these fields were only set at the "Website" scope, preventing translations for individual store views.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/32329>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/32359>>
* _AC-6071_: The storefront customer dashboard page now loads as expected when a customer logs in. Previously, customers could log in, but this page showed a 404 error. [GitHub-35838](https://github.com/magento/magento2/issues/35838)
  * _Fix note_: <https://github.com/magento/magento2/pull/36263>>
  * _GitHub issue_: <Customer is logged in but showing 404 error in frontend.>
  * _GitHub code contribution_: https://github.com/magento/magento2/issues/35838
* _ACP2E-3329_: After logging in, the products added to the compare list as a guest user are not visible.
  * _Fix note_: Products that were added to product compare list before logging in as a customer now are preserved after logging in.
Previously, after logging in, the products added to the compare list as a guest user were not visible.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/078c387e>>
* _ACP2E-3433_: Allow Countries configuration causes issues in customer address configurations
  * _Fix note_: Now selecting Allow Countries configuration doesn't influence countries shown for outside the given scope. Previously Allow Countries configuration influenced customer address attribute outside given scope
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/078c387e>>
* _ACP2E-3501_: VAPT: Business Logic Error - future date as customer date of birth
  * _Fix note_: Customer's date of birth can not be set later than today
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/d4de4726>>

### Account, APIs, GraphQL

* _ACP2E-3246_: Customer API - Login Failures Number Not Able To Reset To 0 After Successful Login
  * _Fix note_: Now failure number is reset to zero in customer entity table after customer successful login through API endpoints.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/ec7e32a9>>

### Account, Admin UI, B2B

* _ACP2E-3038_: Restricted admin users can't always see custom shared catalogs
  * _Fix note_: Restricted admin users can now consistently view and manage customers and all shared catalogs to which the products are assigned, provided they have access to the specific store. Previously, a restricted admin user with access to a particular store could not always see all shared catalogs to which the products were assigned or could see customers that could not save, leading to inconsistencies in the system.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/7377de59>>

### Admin UI

* _AC-10705_: [Issue] add permission check for "reload data" data button
  * _Fix note_: The system now includes a permission check for the "Reload Data" button, ensuring that it is only displayed and accessible to users with the appropriate permissions. Previously, the "Reload Data" button was visible and clickable for all users, leading to a "not permitted" page when clicked by users without the necessary permissions.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38283>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/38279>>
* _AC-11427_: [Issue] Inconsistent labels for attributes in marketing rules
  * _Fix note_: The system now correctly populate the labels consistently for category and attribute options in cart price rule
  * _GitHub issue_: <https://github.com/magento/magento2/issues/31232>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/31231>>
* _AC-12167_: The system now accepts product image uploads with capital letter file extensions, ensuring a smooth product creation process. Previously, image uploads with capital letter file extensions were refused, forcing users to change the file extension to lowercase.
  * _Fix note_: <https://github.com/magento/magento2/commit/c8f87c25>>
  * _GitHub issue_: <[Bug] Magento 2.4.7 doesn't allow product photo's with capital letter file extension.>
  * _GitHub code contribution_: https://github.com/magento/magento2/issues/38831
* _AC-12319_: Hidden dropdown in grids with select action (e.g. Content > Elements > Pages)
  * _Fix note_: Now the system has been fixed all similar dropdown for all the grids.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38891>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/39371>>
* _AC-13131_: [Issue] Fix Warning: Undefined array key "filters"
  * _Fix note_: The system now handles scenarios where a new user has not interacted with bookmarks yet, preventing an undefined array key "filters" warning from being logged. Previously, this warning would be logged when a fresh user had not interacted with bookmarks.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/39013>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/38996>>
* _AC-13529_: Product import csv file with special characters fails due to code changes in Validate.php file
  * _Fix note_: The system now correctly validates and imports product CSV files containing special characters, allowing for successful data transfer. Previously, attempting to import a product CSV file with special characters would result in an error, preventing the import process.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/6cfb9b6b>>
* _AC-13850_: There is no red asterisk for mandatory phone number field
  * _Fix note_: Earlier red asterisk was not showing for phone number but  phone number was mandatory. Which is now fixed red asterisk can be seen on phone number as a mandatory filed.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/c699c206>>
* _AC-6975_: All new indexers are by default in **[!UICONTROL Update by Schedule]** mode.  Previously, the default mode was **[!UICONTROL Update on Save]**. Existing indexers are not affected. [GitHub-36419](https://github.com/magento/magento2/issues/36419)
  * _Fix note_: <https://github.com/magento/magento2/commit/0b410856>>
  * _GitHub issue_: <[Issue] Set default indexer mode to 'schedule'>
  * _GitHub code contribution_: https://github.com/magento/magento2/issues/36419
* _AC-7700_: The system now automatically removes unused changelog tables when an index is switched from 'update on schedule' to 'update on save', marking the index as invalid to ensure no entries are missed. Previously, switching an index to 'update on save' would leave unused changelog tables in the system and mark all changed indexes as 'valid'.
  * _Fix note_: <https://github.com/magento/magento2/pull/25859>>
  * _GitHub issue_: <[Issue] Drop indexer changelog tables on mview unsubscribe>
  * _GitHub code contribution_: https://github.com/magento/magento2/issues/29789
* _AC-7962_: No link to shipping when in payments in checkout in mobile phone view
  * _Fix note_: The system now ensures that the checkout titles/links "Shipping" and "Review & Payments" are always visible on top of the page in mobile view, allowing users to easily navigate between steps and make necessary corrections. Previously, these titles/links were hidden in mobile view, making it difficult for users to know their current step or go back to previous steps.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/36856>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/36982>>
* _AC-8109_: customer Orders query shipment comments created_at is returned in +0 timezone not in store configured timezone
  * _Fix note_: The system now correctly displays the 'created_at' field from shipment comments in the customer's configured timezone when using the customer Orders query. Previously, the 'created_at' field was displayed in the +0 timezone, regardless of the customer's configured timezone.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/36947>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/37642>>
* _ACP2E-2787_: The grid's store view filters now properly display apostrophes
  * _Fix note_: <https://github.com/magento/magento2/commit/39d54c2d>>
  * _GitHub issue_: <Apostrophe in store view name is replaced by &#039;>
  * _GitHub code contribution_: https://github.com/magento/magento2/issues/38395
* _ACP2E-3178_: '
We can now update custom-created order statuses, whereas previously, the status could only be changed if the current status was either "processing" or "fraud."
  * _Fix note_: <https://github.com/magento/magento2/commit/8459b17d>>
  * _GitHub issue_: <Cannot update Custom created Order status>
  * _GitHub code contribution_: https://github.com/magento/magento2/issues/38659
* _ACP2E-3294_: The shipping address state is not auto updating
  * _Fix note_: Prior to the fix, the shipping address region (or region id) was not in sync with the address billing information. Now, both shipping address region and region id are properly updated when billing address information is changed.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/581b7ef1>>
* _ACP2E-3364_: Reset button doesn't work on Add/Edit admin user
  * _Fix note_: Previously, the Reset button did not function on the Add/Edit Admin User page. Now, in the Admin panel under System -> Permissions -> All Users, the Reset button will work correctly on the Add/Edit Admin User page.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/5184c067>>
* _ACP2E-3373_: Magento admin URL routing wrong detection and CORS errors
  * _Fix note_: After the fix, if the custom admin domain is a subdomain of the main domain, the admin is accessible only from the configured subdomain.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/37663>
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/3f12d152>>
* _ACP2E-3392_: Broken validation for “Maximum Qty Allowed in Shopping Cart”
  * _Fix note_: Previously, when we put `Maximum Qty Allowed in Shopping Cart` empty, it did not throw any exception, though an empty value is not accepted here. After this fix applies, putting an empty string will throw exceptions and will not allow saving the product.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/d50f6b5d>>
* _ACP2E-3408_: [Pagebuilder Preview UI Issue] The buttons in the Page Builder column aren't lining up correctly
  * _Fix note_: The buttons in the Page Builder columns are now correctly aligned. Previously, they were misaligned within the Page Builder columns.
  * _GitHub code contribution_: <https://github.com/magento/magento2-page-builder/commit/1a52ef4c>>
* _ACP2E-3431_: Products Ordered report is not exporting. 404 error instead.
  * _Fix note_: Products Ordered report excport to CSV and XML now works as expected
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/88660e79>>
* _ACP2E-3457_: TinyMCE JS Error in console after Js minification enable with production mode
  * _Fix note_: Previously, enabling JavaScript minification in production mode within the admin panel caused JavaScript errors related to TinyMCE 7 to appear in the browser console, affecting the functionality and user experience. Now, This issue has been resolved, ensuring that TinyMCE 7 operates smoothly without generating any errors, even when JS minification is enabled.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/56463d5e>>
* _ACP2E-3459_: Request for additional changes to fully complete the ACP2E-3375 fix
  * _Fix note_: '-
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/d50f6b5d>>
* _ACP2E-3503_: Automatic enabling of new ACL permissions
  * _Fix note_: New permissions added to custom modules will no longer automatically grant access to all existing user roles unless explicitly configured.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/3f12d152>>
* _ACP2E-3509_: Admin Actions Log User Report doesnt show details for adminhtml_user_delete
  * _Fix note_: The adminhtml_user_delete now correctly logs important details. Previously, logs were not generated for user deletions.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/4de008a9>>
* _ACP2E-3536_: Cart Rule with shipping condition not applying when placing order from admin
  * _Fix note_: Previously, if the cart price rule has a shipping method discount with the coupon, it can not be applied through Admin UI. After this fix is applied, the cart price rule discount with a coupon for a specific shipping method will be applied from Admin UI successfully.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/a52ff98f>,>, <https://github.com/magento/inventory/commit/11ce816b>>
* _ACP2E-3559_: [FRESH] HEX code is not updating correctly in SWATCH
  * _Fix note_: HEX code that is manually entered by user in the Visual Swatch color picker is no longer altered by the system. Previously, certain HEX codes experienced slight adjustments due to conversion errors between color models.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/344fce23>,>, <https://github.com/magento/inventory/commit/1ef984c0>>

### Admin UI, B2B

* _AC-13628_: B2B Login as Customer header still has Magento branding
  * _Fix note_: Earlier the storefront header shows "You are now connected as <customer name> on <store name>" with Magento branding. Which is now fixed and the header shows with ADOBE branding.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/96dec499>>

### Admin UI, Payment/ Payment Methods, Order

* _AC-13520_: Transaction Authorization Not Displayed in Transaction Tab After PayPal Smart Button Order
  * _Fix note_: The system now correctly displays the transaction authorization in the Transaction tab after an order is placed using the PayPal Smart Button. Previously, the authorization transaction was not appearing in the Transaction tab after clicking the "Authorize" button, and no new transaction of type "Authorization" was created.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/6cfb9b6b>>

### Admin UI, Staging & Preview

* _ACP2E-3424_: [Cloud] Removing template with missing images causes pub/media to be deleted
  * _Fix note_: Previously to this fix, if the preview image name was missing for a pagebuilder template, the pub/media folder was deleted. After the fix, only the template will be deleted and the preview image if found.
  * _GitHub code contribution_: <https://github.com/magento/magento2-page-builder/commit/0986853b>>

### Analytics / Reporting

* _AC-9922_: Google Analytics CSP Error https://region1.analytics.google.com
  * _Fix note_: The system now correctly allows connections to 'https://region1.analytics.google.com' when Google Analytics is enabled, preventing Content Security Policy (CSP) errors. Previously, enabling Google Analytics and viewing the website from the EU would result in CSP console errors due to a refusal to connect to 'https://region1.analytics.google.com'.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/37750>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/38991>>
* _ACP2E-3096_: The system now correctly formats curl headers, allowing the newrelic:create:deploy-marker command to successfully create a deployment marker in New Relic. Previously, incorrect curl headers prevented the creation of a deployment marker in New Relic.
  * _Fix note_: <https://github.com/magento/magento2/commit/6a185204>>
  * _GitHub issue_: <Incorrect curl headers making newrelic:create:deploy-marker not working>
  * _GitHub code contribution_: https://github.com/magento/magento2/issues/37641
* _ACP2E-3183_: NewRelic browser monitoring inlineJS  script causes CSP errors
  * _Fix note_: NewRelic Browser Monitoring scripts are now injected by the application instead of the APM agent for compliance with CSP (Content Security Policy). Previously, NewRelic Browser Monitoring scripts injected by APM agent were not compliant with CSP and caused the scripts to not be executed.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/66dea0de>>
* _ACP2E-3189_: INSERT queries to the sales_bestsellers_aggregated_daily table become slow on project with large sales order volume
  * _Fix note_: Previously the bestsellers aggregated daily report would take a lot of time to generate for large volume of placed orders. Now the report is generated in a timely manner.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/7377de59>>
* _ACP2E-3276_: Order reports showing the wrong currency symbol
  * _Fix note_: The currency symbol for order amounts in the Order Report was incorrectly taken from currency/options/base. It has now been corrected to use currency/options/default for accurate reporting.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/fd5cf3af>>
* _ACP2E-3302_: [Cloud] Incorrect Calculations in Coupon Usage Report
  * _Fix note_: The sales total in the coupon report grid is now accurately calculated by incorporating both the "Discount Tax Compensation Amount" and the "Shipping Discount Tax Compensation Amount." Previously, these amounts were missing from the calculation, leading to discrepancies between the sales total and the sales order data.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/d75cff27>>
* _ACP2E-3339_: Issues with shared "<project_id>/var/tmp"
  * _Fix note_: Analytics DataExport temporary files will use the sys tmp directory, which is more suitable for frequent access and changes. To avoid collisions in case multiple instances are running on the same server, the tmp path was updated to use an instance's unique id
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/a4cf5e62>>

### Analytics / Reporting, Cloud

* _ACP2E-3187_: Metric in NR might be misleading for background transactions- Follow up of ACP2E-3067
  * _Fix note_: Background transactions (cron) will use New Relic app name defined in the config settings
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/ec7e32a9>>

### B2B

* _ACP2E-2139_: Products assigned to shared catalog are not reflect on the front end when partial index is executed
  * _Fix note_: Products assigned to shared catalog via REST API are now immediately visible on storefront after partial indexing is complete. Previously, Products were visible only after a full re-indexation.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/7377de59>>
* _ACP2E-3247_: sales_clean_quotes cron deletes quotes from to yet approved purchase orders
  * _Fix note_: Quotes used in purchase orders now will not be deleted by sales_clean_quotes cron job
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/581b7ef1>>

### Bundle

* _AC-10826_: Storefront Bundle Checkbox Validation Error message count more than 1
  * _Fix note_: The system now displays only one validation error message when the 'Add to Cart' button is clicked without selecting any checkbox options for a bundled product. Previously, the system was displaying multiple validation error messages for each unselected checkbox.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/3ea26621>>

### Cart & Checkout

* _AC-10660_: The system now properly handles exceptions when adding a product to the cart from the compare product page, displaying a message manager message in the controller. Previously, an exception would result in a JSON encoded page being returned instead of being properly caught and handled.
  * _Fix note_: <https://github.com/magento/magento2/pull/38257>,>, <https://github.com/magento/magento2/commit/0c53bbf7>>
  * _GitHub issue_: <Exception is not getting handled properly while adding a product to cart in the compare product page>
  * _GitHub code contribution_: https://github.com/magento/magento2/issues/38200
* _AC-10698_: The system now correctly sends transaction prices and totals to Google Tag when GTag is enabled, ensuring accurate tracking of ecommerce data. Previously, the currency was incorrectly being sent as part of the "all" orders, rather than being associated with the individual order.
  * _Fix note_: <https://github.com/magento/magento2/pull/37504>,>, <https://github.com/magento/magento2/pull/37349>>
  * _GitHub issue_: <GTag not send transaction prices and totals.>
  * _GitHub code contribution_: https://github.com/magento/magento2/issues/37348
* _AC-11641_: The system now correctly omits the shipping address and shipping method from the failed payment email template for virtual products, ensuring only relevant information is included in the email. Previously, the failed payment email for virtual products incorrectly included the shipping address and shipping method.
  * _Fix note_: <https://github.com/magento/magento2/pull/32511>>
  * _GitHub issue_: <[Issue] [Checkout] Depend directives updated in failed payment email template>
  * _GitHub code contribution_: https://github.com/magento/magento2/issues/32781
* _AC-11717_: Magento 2 login inside the checkout with existing customer give console error in Firefox browser
  * _Fix note_: The system now allows users to log in during the checkout process without encountering any console errors in the Firefox browser. Previously, attempting to log in as an existing customer during checkout would result in a console error in Firefox.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38557>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/39509>>
* _AC-11876_: The system now correctly validates sales rules, preventing the application of a coupon code to a cart when the product condition does not match any product name. Previously, a sales rule could be applied and a discount given on the shipping amount even when the product condition did not match any product name.
  * _Fix note_: <https://github.com/magento/magento2/commit/0574ac23>>
  * _GitHub issue_: <[Issue] Sales Rules regression in 2.4.7>
  * _GitHub code contribution_: https://github.com/magento/magento2/issues/38671
* _AC-11914_: [Issue] Sales rule CartFixed calculation : incorrect discount amount
  * _Fix note_: The system now correctly calculates the discount amount for sales rules with cart fixed amounts, ensuring accurate discounts are applied regardless of changes in cart items. Previously, the discount amount could vary incorrectly when cart items changed, sometimes resulting in significantly larger discounts than expected.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38694>
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/581b7ef1>>
* _AC-11993_: The system now correctly handles custom shipping methods without shipping rates validation rules, ensuring that the loader does not block the shipping methods after the postcode is changed in the shipping address during checkout. Previously, changing the postcode in the shipping address during checkout would cause the loader to block the shipping methods and not disappear when custom shipping methods without shipping rates validation rules were used.
  * _Fix note_: <https://github.com/magento/magento2/commit/1bafc571>>
  * _GitHub issue_: <[Issue] The loader blocks the shipping methods after the postcode is changed, shipping rates validation rules>
  * _GitHub code contribution_: https://github.com/magento/magento2/issues/38742
* _AC-12170_: The system now enables the discount code/coupon input field on the checkout page for virtual and downloadable products, allowing users to apply discount codes as expected. Previously, the discount code/coupon input was disabled, and the button title text displayed as "Cancel coupon", preventing users from applying discount codes.
  * _Fix note_: <https://github.com/magento/magento2/commit/1bafc571>>
  * _GitHub issue_: <Coupon code feature is not working properly in the checkout page on Magento 2.4.7>
  * _GitHub code contribution_: https://github.com/magento/magento2/issues/38826
* _AC-12479_: Terms and conditions checkbox is not allowing HTML on storefront
  * _Fix note_: The system now supports HTML formatting in the "Terms and Conditions" checkbox text on the storefront, allowing for enhanced customization and readability. Previously, the checkbox text was displayed in plain text format, ignoring any HTML tags used.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/6cfb9b6b>>
* _AC-12541_: Cart price rule created for logged in user incorrectly gets applied for not logged in user
  * _Fix note_: The system now correctly removes the cart price rule for logged-in users when they are automatically logged out due to cookie expiration, ensuring that the discount is not applied to non-logged-in users. Previously, the cart price rule was still applied even when the user was logged out, resulting in an incorrect discount being applied to non-logged-in users.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38944>
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/7d5e3906>>
* _AC-13302_: [Issue] [FEATURE] Performance optimisation large shopping carts by preventing…
  * _Fix note_: The system now optimizes performance for large shopping carts by preventing duplicate getActions calls, enhancing the speed and efficiency of shopping cart operations. Previously, for a shopping cart with multiple items, the getActions function was called multiple times, slowing down the system's performance.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/39292>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/39290>>
* _AC-8103_: The system now allows for the translation of the text "VAT", "T", "F" in the address renderers, enabling users to translate these terms to the specific language of the store. Previously, these terms were not translatable, forcing users to employ a workaround.
  * _Fix note_: <https://github.com/magento/magento2/pull/36943>>
  * _GitHub issue_: <Translation VAT in address renderer>
  * _GitHub code contribution_: https://github.com/magento/magento2/issues/36942
* _ACP2E-2676_: The issue preventing the successful purchase of a product from a gift registry has been resolved, allowing orders to be placed and the gift registry to be updated appropriately. Previously, an error occurred when attempting to place an order from a gift registry, preventing the completion of the purchase.
  * _GitHub issue_: <Issue with Ordering from Gift Registry Magento 2.4.4 Enterprise/Commerce>
  * _GitHub code contribution_: https://github.com/magento/magento2/issues/35432
* _ACP2E-3176_: [Cloud] quick order large amount of SKU performance
  * _Fix note_: Checkout performance has been improved when attributes used in cart price rules conditions are not present for all products and when MAP (Minimum advertised price) feature is enabled.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/66dea0de>>
* _ACP2E-3211_: Duplicated items in cart
  * _Fix note_: The system now correctly processes multiple parallel requests to add the same product to the cart into a single line item, preventing the creation of separate line items for the same SKU. Previously, making parallel requests to add the same product to the cart on Storefront would result in multiple line items for the same SKU.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/66dea0de>>
* _ACP2E-3296_: Checkout order email confirmation is sent to emails entered in First/Last name
  * _Fix note_: The checkout order email confirmation, which was previously sent when an email-like pattern was entered in the First and Last Name fields, is no longer being sent.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/5184c067>>
* _ACP2E-3402_: Checkout shipping address form get update with wrong address
  * _Fix note_: shippingAddressFromData is now saved into the local storage per website. Previously, an address from the wrong website could be auto-populated into the shipping address form during checkout if a store code was used in the URL and checkout was initiated from multiple websites during the same guest session.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/078c387e>>
* _ACP2E-3407_: Gift Card Product | Cart Merge is merging Gift Cards
  * _Fix note_: Giftcard products now merged correctly in the cart
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/88660e79>>
* _ACP2E-3415_: Cart persistence is not being respected upon logout
  * _Fix note_: Added missing functionality Remember Me from customer login to authentication popup and checkout sign ins.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/344fce23>>
* _ACP2E-3488_: Existing quote data is not update / not visible, instead create a new quote record when trigger_recollect = 1
  * _Fix note_: Customer's shopping cart items no longer disappear as result of a product being deleted after it was added to the shopping cart.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/1984c61c>>
* _ACP2E-3618_: [CLOUD] Re-order button functionality
  * _Fix note_: Re-orderind an order from the administrator area will now add products with stock to the quote even though there are some products in the original order that do not have stock anymore. Prior to the fix no products were being added to the new quote if product with no stock were in the original order.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/a52ff98f>>
* _ACP2E-3622_: Search stores are not working by zip code
  * _Fix note_: Searching pickup locations by zip code was not working properly for Dutch localisations. After the fix, the pickup location search will provide results based on zip code.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/344fce23>>

### Cart & Checkout, Shipping

* _AC-12119_: The Instant Purchase feature incorrectly selected the more expensive In-Store Delivery option for configurable products instead of the cheapest Flat Rate method. This fix ensures that the correct shipping method is chosen based on the actual price."
  * _Fix note_: <https://github.com/magento/magento2/pull/38819>,>, <https://github.com/magento/magento2/commit/29fe9097>>
  * _GitHub issue_: <Instant purchase "cheapest shipping" broken for configurable products>
  * _GitHub code contribution_: https://github.com/magento/magento2/issues/38811

### Catalog

* _AC-10910_: The system now automatically cleans up the cron_schedule database table, removing entries for jobs that no longer exist in the system. This ensures optimal performance by maintaining a minimal number of rows in the table. Previously, entries for jobs from inactive or removed modules were not cleaned up, leading to unnecessary data accumulation in the cron_schedule table.
  * _Fix note_: <https://github.com/magento/magento2/pull/38693>>
  * _GitHub issue_: <Cleanup of cron_schedule database table doesn't cleanup non-existing jobs>
  * _GitHub code contribution_: https://github.com/magento/magento2/issues/38217
* _AC-10953_: The system now correctly removes the tier price of a product when it is converted from a simple product to a configurable product, ensuring accurate price display on the frontend. Previously, the tier price of a configurable product was not deleted when a product was converted from a simple product to a configurable product, leading to a mismatch in the displayed price.
  * _Fix note_: <https://github.com/magento/magento2/pull/38427>>
  * _GitHub issue_: <Tier Price is not being deleted from Configurable Product>
  * _GitHub code contribution_: https://github.com/magento/magento2/issues/38390
* _AC-11804_: The system now correctly saves and displays the category description in the WYSIWYG editor when editing a category on the store view level. Previously, the WYSIWYG editor would appear empty after saving a category description on the store view level.
  * _Fix note_: <https://github.com/magento/magento2/pull/38623>>
  * _GitHub issue_: <Category description WYSIWYG is empty on non default storeview>
  * _GitHub code contribution_: https://github.com/magento/magento2/issues/38622
* _AC-11970_: Imposible to reorder configurable products with one checkbox selected custom option
  * _Fix note_: The system now correctly processes the reordering of configurable products with a single selected checkbox custom option, allowing for successful basket creation. Previously, attempting to reorder such products resulted in an error and prevented items from being added to the shopping cart.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38736>
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/1d144bce>>
* _AC-12076_: The system now correctly uses the words "item" and "items" in the layered navigation filter item, enhancing the clarity and accuracy of the filter descriptions. Previously, these words were used incorrectly, leading to potential confusion for users navigating the filter options.
  * _Fix note_: <https://github.com/magento/magento2/pull/37852>>
  * _GitHub issue_: <[Issue] Fix wording of filter item on layered navigation>
  * _GitHub code contribution_: https://github.com/magento/magento2/issues/38789
* _AC-12164_: The system now correctly applies the configured date format to product custom options of type Date, ensuring that the date format is displayed correctly on the front-end. Previously, changes to the date format configuration did not reflect on the front-end for product custom options of type Date.
  * _Fix note_: <https://github.com/magento/magento2/pull/38925>>
  * _GitHub issue_: <Date and Time Format for Custom Option Not Working>
  * _GitHub code contribution_: https://github.com/magento/magento2/issues/32990
* _AC-13068_: Dropdown options missing
  * _Fix note_: The system now correctly displays all values in the dropdown when creating a new attribute with more than 20 values. Previously, only the first 20 values or another selected page values were displayed, causing the remaining values to be missing.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/47b448e2>>
* _AC-13296_: [Issue] Use current sore id for category runtime cache
  * _Fix note_: The system now correctly uses the current store ID for category runtime cache, preventing data override when emulation is used or custom code saves the category in different stores. Previously, the object stored in runtime might have been from the wrong store, leading to data override.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/39310>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/36394>>
* _AC-13324_: bin/magento sampledata:deploy --no-update throws an exception
  * _Fix note_: The system now correctly accepts a boolean value when using the --no-update option in the sampledata:deploy command, preventing any errors during sample data deployment. Previously, an error was thrown when using this command as the system was incorrectly expecting an integer value.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/39344>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/39345>>
* _AC-13355_: [Issue] Fix usage of EAV cache type
  * _Fix note_: The system now correctly uses the EAV cache type in all relevant places, ensuring consistent and efficient data caching. Previously, the EAV cache type was not used consistently, leading to potential inefficiencies and inconsistencies in data caching.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/32322>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/31264>>
* _AC-13596_: Catalog Advanced Search with empty data goes to search result page[2.4.dev branch]
  * _Fix note_: The system now correctly retains users on the Advanced Search page and displays an error message when they attempt to perform a search without entering any data. Previously, performing an empty search would redirect users to the Catalog Advanced Search page with a message prompting them to modify their search.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/6cfb9b6b>>
* _AC-13622_: [Issue] Product layout based on attribute_set
  * _Fix note_: The system now allows the adjustment of product layout based on the attribute set, providing a more practical and efficient way to manage product display in the frontend store. Previously, the layout could only be adjusted by SKU or by product types, which was not always practical for many products or specific articles.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38790>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/36244>>
* _AC-6738_: The system now includes a unique key on the 'option_id' and 'store_id' columns in the 'eav_attribute_option_value' table, preventing the possibility of an option having multiple values for the same store view. Previously, faulty code could result in an option having multiple values for the same store view, causing issues when editing products or attributes.
  * _Fix note_: <https://github.com/magento/magento2/pull/28796>>
  * _GitHub issue_: <Missing unique key on eav_attribute_option_value table>
  * _GitHub code contribution_: https://github.com/magento/magento2/issues/24718
* _AC-8297_: The system now uses the visibility class for the category product indexer instead of hardcoded values, enhancing modularity. Previously, hardcoded values were used in the category product indexer, limiting flexibility and adaptability.
  * _Fix note_: <https://github.com/magento/magento2/pull/37199>>
  * _GitHub issue_: <[Issue] Use visibility class for category product indexer, instead of hardcoded values>
  * _GitHub code contribution_: https://github.com/magento/magento2/issues/37200
* _AC-9375_: The system now correctly updates the currency code in the New Product widget when the currency is changed in the frontend, ensuring consistency in currency display across the site. Previously, changing the currency in the frontend did not affect the currency code displayed in the New Product widget.
  * _Fix note_: <https://github.com/magento/magento2/pull/37899>>
  * _GitHub issue_: <Currency code not change in New product widget>
  * _GitHub code contribution_: https://github.com/magento/magento2/issues/37898
* _ACP2E-2679_: Now datetime attributes will have time part in exported data. It will be also possible to update the time for such attributes using import. Also if "Fields Enclosure" is enabled, attribute values in "additional_attributes" column will be enclosed within double quotes.
  * _Fix note_: <https://github.com/magento/magento2/commit/ea79f7dd>>
  * _GitHub issue_: <Updating time of Date and Time type product attributes via CSV import>
  * _GitHub code contribution_: https://github.com/magento/magento2/issues/38306
* _ACP2E-2799_: Previously when calculating certain percentage discounts rounded up to 2 decimal points will generate different final prices for the cart and product listing page/product details page. After this fix is applied, the final price for the bundle product is the same as in the product details page, product listing page, and mini cart page.
  * _Fix note_: <https://github.com/magento/magento2/commit/b2286ecf>>
  * _GitHub issue_: <[Cloud] Wrong bundle product price when used with tier prices>
  * _GitHub code contribution_: https://github.com/magento/magento2/issues/38091
* _ACP2E-2805_: The quantity_and_stock_status attribute will now be taken into account by the catalog promotion rule, which was not previously taken into account when generating new product from the admin side.
  * _Fix note_: <https://github.com/magento/inventory/commit/cf34971d>>
  * _GitHub issue_: <Catalog Promotions Rule not working with quantity_and_stock_status attribute>
  * _GitHub code contribution_: https://github.com/magento/magento2/issues/35627
* _ACP2E-2840_: The system now correctly enforces the unique value constraint for unique product attributes during product import, preventing from having duplicate values for that such attribute. Previously, it was possible to set non-unique values for product attributes that were configured to have unique values via product import.
  * _Fix note_: <https://github.com/magento/magento2/commit/7e0e5582>>
  * _GitHub issue_: <It's possible to set non-unique values via product import>
  * _GitHub code contribution_: https://github.com/magento/magento2/issues/38445
* _ACP2E-2905_: Previously, multi-website architecture with different currencies and customer groups could not correctly apply discounts to the store. After this fix is implemented, multi-website architecture with different customer group price discounts will apply successfully to different stores.
  * _Fix note_: <https://github.com/magento/magento2/commit/a4fbf702>>
  * _GitHub issue_: <[Cloud] Issue of Quote in multi-website architecture>
  * _GitHub code contribution_: https://github.com/magento/magento2/issues/38506
* _ACP2E-2909_: There is no javascript error in browser console while deleting option from bundle product.
  * _Fix note_: <https://github.com/magento/magento2/commit/93d50f8d>>
  * _GitHub issue_: <dynamic-rows.js:658 Uncaught TypeError: dataRecord.slice while editing bundle products>
  * _GitHub code contribution_: https://github.com/magento/magento2/issues/38505
* _ACP2E-3103_: New Products RSS feed is not updated with new products due to cache
  * _Fix note_: The Rss feed for New Products is now updated when a product is set as new and saved
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/d01ee51e>>
* _ACP2E-3126_: The system now correctly sorts items in the media gallery by position in the GraphQL response, ensuring accurate display order. Previously, items in the media gallery were not sorted by position, leading to an incorrect display order.
  * _Fix note_: <https://github.com/magento/magento2/commit/b21e5d91>>
  * _GitHub issue_: <[Cloud] Product Media Gallery GQL response is not sorted by image position>
  * _GitHub code contribution_: https://github.com/magento/magento2/issues/37671
* _ACP2E-3198_: [cloud] Two-finger zoom and move issue on the real mobile device
  * _Fix note_: The system now ensures consistent image zoom functionality on mobile devices, providing a smooth and predictable user experience. Previously, the image zoom feature was inconsistent and would suddenly zoom out after a certain point when viewed on a mobile device.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/1366ae5e>>
* _ACP2E-3282_: When we unassign products from the shared catalog, the wishlist products are not being cleared
  * _Fix note_: Now, no items are visible in the wishlist if a product is not available in the shared catalog. Previously, the wishlist page incorrectly displayed a count of "1 Item" even when no items were actually available in the wishlist.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/5184c067>>
* _ACP2E-3286_: Related products Select All/Unselect All Issue
  * _Fix note_: Previously, the "Select All"/"Unselect All" buttons for related products didn't work correctly if a product was manually selected. After the fix, these buttons now function consistently, even after manual selection, ensuring that all products are properly selected or unselected.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/fd5cf3af>>
* _ACP2E-3336_: [Cloud] Stock alert email translation to the wrong language
  * _Fix note_: When sending Stock/Price Alerts for a website with multiple store views using different languages, the language for the store view where the alert was created will be used on the email.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/a4cf5e62>,>, <https://github.com/magento/inventory/commit/9f3e63d1>>
* _ACP2E-3350_: Disabled Categories are no longer have their names grayed out in the category tree
  * _Fix note_: Previously, disabled categories were not grayed out in the category tree. Now, they are displayed with a gray-out effect.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/d75cff27>>
* _ACP2E-3410_: Configurable product edit form load causes timeout and memory exhaustion
  * _Fix note_: Prior to the fix configurable product variations were constructed based on all possible attribute option combinations. In cases where attributes had a lot of options this resulted in a lengthy and resource consuming operation. Now, configurable product variations are constructed based on existing child product attributes. This results in far less calculations - thus an improved usage of resources.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/078c387e>>
* _ACP2E-3454_: Fotorama doesn't load video correctly when using Swatches and option is pre-selected via URL
  * _Fix note_: Product videos will now render properly on configurable product details page, if the URL contains selected options.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/078c387e>>
* _ACP2E-3461_: PageBuilder Carousel Widget shows products that doesn't match conditions
  * _Fix note_: Product list used in widgets now respects category condition
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/078c387e>>
* _ACP2E-3469_: Validation Error Triggered for All Products in Group When One Has Invalid Quantity
  * _Fix note_: Now, the validation error is correctly triggered for all products in the group when one product has an invalid quantity, which was not happening previously.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/56463d5e>>
* _ACP2E-3513_: [CLOUD] Special price not showing in Configurable product
  * _Fix note_: After the fix, changing the "Used in Product Listing" value for the special price attribute will not affect showing the special price for configurable products.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/d4de4726>>
* _ACP2E-3516_: Indexers Temporary tables are not cleaned up if the process is terminated
  * _Fix note_: CatalogRule indexer temporary tables are now cleaned up if the indexer process is terminated
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/1984c61c>>
* _ACP2E-3520_: [QUANS] Core unit test failures in 2.4.7-p3
  * _Fix note_: Release notes for this test is not needed since it is a Unit-test improvement.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/1984c61c>>
* _ACP2E-3533_: Performance Issue in Stock Quantity Retrieval for Grouped Products with Multiple Sources
  * _Fix note_: Grouped product and bundle product edit page is now optimized when assigned products have large number of inventory sources.
  * _GitHub code contribution_: <https://github.com/magento/inventory/commit/0208e433>>
* _ACP2E-3641_: Refix https://jira.corp.adobe.com/browse/ACP2E-3389
  * _Fix note_: Improved performance of admin category page in case of large number of anchor categories
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/982b1c42>>

### Catalog, Content

* _ACP2E-3063_: [Cloud] Cache is not getting invalidated.
  * _Fix note_: Previously, when saving a CMS page with an updated design layout, it did not reflect appropriately on the front end. After this fix is applied, the appropriate design layout will be visible at the front end when we change the design layout and save the CMS page.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/66dea0de>>
* _ACP2E-3131_: [Cloud] Anchor/Non-Anchor Categories Reversed in Content Widget
  * _Fix note_: Previously, when we selected Display On -> Anchor Categories, it showed all the categories that did not reflect the parent-child relation between the anchor and non-anchor. After this fix is applied, the  Display On -> Anchor Categories only displays Anchor Categories (selectable), and  Display On -> Non Anchor Categories displays Non-Anchor Categories (selectable)
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/7377de59>>
* _ACP2E-3152_: Categories not working with widgets
  * _Fix note_: Previously, if we saved the CMS block for different anchor/non-anchor categories, it did not work for the child categories when it showed on the front end. After this fix has been applied, the block is shown at the front end for different categories.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/d01ee51e>>

### Catalog, Framework

* _AC-9111_: Order get(Shipments|Creditmemos|Invoice)Collection - Collection should not be loaded
  * _Fix note_: The system now ensures that the collections for shipments and credit memos are not pre-loaded when retrieved from an order, allowing for additional filters or orders to be applied to these collections. Previously, these collections were automatically loaded, preventing any further modifications.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/37561>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/37562>>

### Catalog, GraphQL

* _ACP2E-3312_: Tier Prices return wrong value in products GraphQL (compared to Storefront)
  * _Fix note_: After the fix, product's tier prices returned for graphql requests have price per one item.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/1366ae5e>>

### Catalog, Product

* _AC-7050_: The system now correctly displays the category selection tree in the product edit section in the same order as set in Catalog->Categories, making product administration easier in large catalogues. Previously, the category tree in the product edit section was displayed in the order of category creation, regardless of the display order set in Catalog->Categories.
  * _Fix note_: <https://github.com/magento/magento2/pull/36104>>
  * _GitHub issue_: <Category selection tree in edit product is not in the same order as set in Catalog->Categories>
  * _GitHub code contribution_: https://github.com/magento/magento2/issues/36101

### Catalog, SEO

* _ACP2E-3653_: Incorrect canonical URL for category when page > 1
  * _Fix note_: Previously, the canonical URL for multi-page content did not function correctly, consistently displaying the base URL. However, after the fix was implemented, the canonical URL for multi-page content now correctly displays the URL with the page ID.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/982b1c42>>

### Catalog, Search

* _ACP2E-3345_: Type Error occurred when creating object: Magento\CatalogSearch\Model\Indexer\Fulltext\Interceptor Exception
  * _Fix note_: After the fix, an instance of Magento\CatalogSearch\Model\Indexer\Fulltext class can be created without specifying $data.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/1366ae5e>>
* _ACP2E-3521_: [CLOUD] Issue with Products are Not Visible in Frontend After Saving in Magento Admin
  * _Fix note_: After the fix configurable products that have child products with long names will not be missed in the storefront.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/1984c61c>>

### Cloud

* _ACP2E-3532_: Sitemap Generation Warnings
  * _Fix note_: After the fix, the sitemap is generated in the system tmp directory and copied to the final destination.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/d4de4726>>

### Content

* _AC-10539_: The system now correctly displays the price of out-of-stock simple products in the "Recently Viewed Product" widget, ensuring consistency across all widgets and product list pages. Previously, the price of out-of-stock simple products was not displayed in the "Recently Viewed Product" widget due to a condition in the price loading templates.
  * _Fix note_: <https://github.com/magento/magento2/pull/38159>>
  * _GitHub issue_: <[Issue]  issue with the price display in the Recently Viewed widget>
  * _GitHub code contribution_: https://github.com/magento/magento2/issues/38167
* _AC-10596_: The system now corrects a typo and grammar error in the acl.xsd file, enhancing the clarity and accuracy of the documentation. Previously, the acl.xsd file contained a typo and incorrect grammar which could potentially cause confusion.
  * _Fix note_: <https://github.com/magento/magento2/pull/38046>>
  * _GitHub issue_: <[Issue] Correct typo and grammar in acl.xsd file>
  * _GitHub code contribution_: https://github.com/magento/magento2/issues/38061
* _AC-12283_: The system now successfully completes the static content deployment process when the Magento_CSP module is enabled and "dev/js/translate_strategy" is set to "embedded", without triggering the "Area code not set" error. Previously, under these conditions, the static content deployment process would fail with an "Area code not set" error.
  * _Fix note_: <https://github.com/magento/magento2/pull/38922>>
  * _GitHub issue_: <"Area code not set" after update to 2.4.5-p8>
  * _GitHub code contribution_: https://github.com/magento/magento2/issues/38845
* _AC-12692_: Widget category tree is not rendered correctly
  * _GitHub issue_: <https://github.com/magento/magento2/issues/39008>
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/58e40ceb>>
* _AC-13054_: Unable to see "Using Default value" message when changing the theme in design configuration page
  * _Fix note_: The system now includes a separate column to display the "Using Default value" message depending on the selected theme in the design configuration page. This ensures clarity and visibility of the default value status. Previously, the "Using Default value" message was not displayed, leading to confusion about the status of the selected theme.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/47b448e2>>
* _AC-13569_: [Issue] Restores backwards compatibility with TinyMCE plugins again (after it…
  * _Fix note_: The system now restores backward compatibility with TinyMCE plugins, allowing functions defined inside the plugin to be called when using the widget from another location. Previously, due to a change in the TinyMCE version, the plugins were not returning the widgets as an object, resulting in an error when trying to call certain functions on the widget instance.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/39262>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/39258>>
* _AC-9638_: The system now correctly displays the folder tree and allows image uploads in the WYSIWYG editor on the product page, even after expanding the 'Image and Videos' tab first. Previously, expanding the 'Image and Videos' tab first resulted in the folder tree not being displayed and an error message when attempting to upload an image in the WYSIWYG editor.
  * _Fix note_: <https://github.com/magento/magento2/pull/38025>>
  * _GitHub issue_: <[Issue] file upload issue in WYSIWYG editor on product page>
  * _GitHub code contribution_: https://github.com/magento/magento2/issues/38026
* _ACP2E-3122_: [CLOUD] Upload image button doesn't work
  * _Fix note_: Before the Upload Image button for Banner and Slider from PageBuilder didn't work as expected, and now when pressing it opens the local file manager to select the wanted image to upload.
  * _GitHub code contribution_: <https://github.com/magento/magento2-page-builder/commit/476ef8ea>>
* _ACP2E-3275_: [Cloud] - CMS Slider not reflecting the latest changes
  * _Fix note_: The issue has been fixed by ensuring the slider list gets refreshed while the save event is triggered on the edit slide screen. Previously, it was triggering and causing the issue.
  * _GitHub code contribution_: <https://github.com/magento/magento2-page-builder/commit/ae2cdeb0>>
* _ACP2E-3326_: An error occurs in CSM page when CMS blocks are inserted using page builder in certain order
  * _Fix note_: Previously on some versions of PHP and OS (Linux), the rendering of blocks that referenced other cms blocks through PageBuilder would have failed with an "An unknown error occurred. Please try again.". Now the content of the cms blocks is rendered correctly inside a PageBuilder controlled content.
  * _GitHub code contribution_: <https://github.com/magento/magento2-page-builder/commit/ae2cdeb0>>
* _ACP2E-3428_: Pagebuilder's template preview failure for large content
  * _Fix note_: Large content was leading to canvas element overflowing the browser's limits, and returning incorrect value, which broke backend code (cannot properly decode the image). Fixed with limiting canvas size to the universal browser's limit.
  * _GitHub code contribution_: <https://github.com/magento/magento2-page-builder/commit/adfb1747>>
* _ACP2E-3430_: Latest security updates with TinyMCE 7 missing font size
  * _Fix note_: Font size and font family selectors are now available in WYSIWYG editor. Prior to this fix, with TinyMCE 7 these were not available in the editor interface.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/d50f6b5d>,>, <https://github.com/magento/magento2-page-builder/commit/2c2f7a0e>>
* _ACP2E-3483_: TinyMCE 7 editor font size in the admin in PT and not PX please clarify
  * _Fix note_: Prior to the fix you could not specify font size in px in WYSIWYG areas. Now you can set the font size in px instead of pt.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/3f12d152>,>, <https://github.com/magento/magento2-page-builder/commit/20aa5d7a>>
* _ACP2E-3490_: Product Content Type in Page Builder Gets Collapsed Without Correct Messages
  * _Fix note_: Prior to the fix the preview html was not being generated properly when there were no products in the widget. Now, the empty response is properly generated and products widget is being displayed fine in preview.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/3f12d152>,>, <https://github.com/magento/magento2-page-builder/commit/20aa5d7a>>
* _ACP2E-3534_: [page builder]Adding Product Listing to block results in errors
  * _Fix note_: Now adding Bundle Product Listing to block via page builder doesn't results in errors
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/344fce23>>

### Customer/ Customers

* _AC-8499_: Region text field is not reset when country dropdown is changed
  * _Fix note_: The system now resets the region text field when the country is changed in the dropdown menu, ensuring that previous values do not persist. Previously, changing the country from the dropdown list did not reset the region field, causing the last saved value to be preserved.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/3ea26621>>
* _AC-9240_: Deleting Customer Does Not Clean All Browser Session Data on Storefront for Logged in & Deleted Customer
  * _Fix note_: Deleting a customer now cleans all browser session data from the storefront for logged-in and deleted customers as expected. The shopper can continue shopping, and their browser treats their session as a guest session. Previously, when the customer account for a logged-in shopper was deleted from the Admin, then the shopper’s browser threw JavaScript errors.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/7d5e3906>>

### Framework

* _AC-10037_: [Question]Unused Type configuration in `app/code/Magento/Translation/etc/di.xml`
  * _Fix note_: The system now removes unused dependencies in the configuration, enhancing the overall code cleanliness and efficiency. Previously, there were unused dependencies in the configuration which were not contributing to any functionality.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38030>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/38064>>
* _AC-10654_: The system now adheres to the constraints set within the management GUI when processing password change requests via the API, preventing potential abuse of the password reset function. Previously, the API could process password change requests outside of the rules defined in the management GUI, potentially allowing for a constant stream of reset emails if valid emails were known.
  * _Fix note_: <https://github.com/magento/magento2/commit/0c53bbf7>>
  * _GitHub issue_: <V1/customers/password endpoint question/issue>
  * _GitHub code contribution_: https://github.com/magento/magento2/issues/38238
* _AC-10721_: Upgrade the league/flysystem Composer dependencies upgrading to latest version
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/91cb4d46>
* _AC-10738_: Varnish configuration does not exclude all marketing parameters
  * _Fix note_: The system now correctly excludes all common marketing parameters in the Varnish configuration, ensuring accurate tracking and analytics. Previously, certain marketing parameters such as gad_source, srsltid, and msclkid were not excluded, leading to potential inaccuracies in data collection.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38298>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/39188>>
* _AC-10838_: The system now successfully completes the re-index command without encountering any errors, regardless of the libxml version compiled with PHP. Previously, running the re-index command resulted in a "Catalog Search index process error during indexation process" error when PHP was compiled with certain versions of libxml.
  * _Fix note_: <https://github.com/magento/magento2/pull/38553>,>, <https://github.com/magento/magento2/commit/0574ac23>>
  * _GitHub issue_: <Catalog search index process error indexation process>
  * _GitHub code contribution_: https://github.com/magento/magento2/issues/38254
* _AC-10941_: The system now supports the use of created_at, status, and grand_total filters in customer Orders queries, and has resolved an issue where multiple filters were not being applied correctly. Previously, the system did not support these filters and would fail to apply all filters when more than one was used in a query.
  * _Fix note_: <https://github.com/magento/magento2/pull/36949>>
  * _GitHub issue_: <Added created_at, status and grand_total filters to customer Orders query and fixed multiple filters failure>
  * _GitHub code contribution_: https://github.com/magento/magento2/issues/38392
* _AC-10971_: PHP 8.2/8.3, only one dependency fails the php linter at the moment: league/flysystem
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38415>
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/672a2e61>
* _AC-10991_: The system now optimizes queries from related, upsell, and cross-sell blocks, improving the performance and preventing the site from going down due to excessive queries. Previously, the system could become overloaded with queries from these blocks, causing significant slowdowns and potentially bringing the site down.
  * _Fix note_: <https://github.com/magento/magento2/pull/38050>>
  * _GitHub issue_: <Randomly getting flooded with queries from related / upsell / crosssell blocks and price indexing>
  * _GitHub code contribution_: https://github.com/magento/magento2/issues/36667
* _AC-11423_: Commerce no longer logs the following exception in the exception.log whenever a shopper or merchant visits either the storefront or Admin: `main.CRITICAL: Exception: Warning: Trying to access array offset on value of type null in /vendor/magento/framework/View/Element/Html/Calendar.php on line 114 in /vendor/magento/framework/App/ErrorHandler.php:62`. [GitHub-38214](https://github.com/magento/magento2/issues/38214)
  * _Fix note_: <https://github.com/magento/magento2/pull/38364>>
  * _GitHub issue_: <Exception: Warning: Trying to access array offset in... -> Calendar.php since upgrade to ICU 74.1 (PHP Intl)>
  * _GitHub code contribution_: https://github.com/magento/magento2/issues/38214
* _AC-11476_: The system now correctly identifies the 'method' attribute in form submissions, even when an element named 'method' is present in the form. This ensures accurate processing of customer data. Previously, if a form element was named 'method', it would interfere with the identification of the 'method' attribute in form submissions, leading to potential issues with customer data handling.
  * _Fix note_: <https://github.com/magento/magento2/pull/38449>>
  * _GitHub issue_: <[Issue] Fix issues with Customer Data when form contains element with name `method`>
  * _GitHub code contribution_: https://github.com/magento/magento2/issues/38484
* _AC-11489_: The PHPDocs for the \Magento\Framework\Data\Collection::getItemById method have been updated to include null as a possible return type, addressing issues with static analysis tools. Previously, the method's PHPDocs did not specify null as a possible return type, leading to warnings or errors in static analysis when the method was used in conditional statements.
  * _Fix note_: <https://github.com/magento/magento2/pull/38439>>
  * _GitHub issue_: <[Issue] Fix PHPDocs for \Magento\Framework\Data\Collection::getItemById>
  * _GitHub code contribution_: https://github.com/magento/magento2/issues/38485
* _AC-11592_: [Issue] Allow only valid preferences during setup:di:compile
  * _Fix note_: The system now throws an error during the setup:di:compile command if a preference is created for a class that does not exist or is specifically excluded, ensuring that only valid preferences are allowed. Previously, these scenarios would fail silently, potentially rendering any plugins associated with the original classes useless.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38517>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/33161>>
* _AC-11651_: The system now allows the modification of previously read-only properties in the LoggerProxy's __wakeup method, ensuring smooth operation without forcing users to employ a workaround. Previously, an attempt to reassign the value of a read-only property in the LoggerProxy's __wakeup method would cause issues.
  * _Fix note_: <https://github.com/magento/magento2/commit/c8f87c25>>
  * _GitHub issue_: <Magento trying to modify read-only property in __wakeup method of LoggerProxy>
  * _GitHub code contribution_: https://github.com/magento/magento2/issues/38526
* _AC-11673_: Investigate php-amqplib/php-amqplib latest versions
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/de4dfb8e>
* _AC-11681_: Updated tinymce latest version in composer.json
  * _Fix note_: <https://github.com/magento/magento2/pull/36543>,>, <https://github.com/magento/magento2/commit/b34c0a75>>
  * _GitHub issue_: <[Issue] AC-2039 AC-1667 upgrade TinyMCE references>
  * _GitHub code contribution_: https://github.com/magento/magento2/issues/38533
* _AC-11696_: The system now supports process fork for MView indexation, preventing errors during indexer execution when operating on multiple threads. Previously, running the ChangelogBatchWalker on multiple threads would lead to the deletion of tables used by other threads, causing an error during indexer execution.
  * _Fix note_: <https://github.com/magento/magento2/pull/38248>>
  * _GitHub issue_: <ChangelogBatchWalker does not work in multiple threads>
  * _GitHub code contribution_: https://github.com/magento/magento2/issues/38246
* _AC-11781_: The system now correctly names the variable that contains the amount of money that can still be refunded, preventing confusion during debugging. Previously, this variable was incorrectly named as totalRefund, which could lead to misunderstandings for developers.
  * _Fix note_: <https://github.com/magento/magento2/pull/36205>>
  * _GitHub issue_: <[Issue] Rename wrongly named variable>
  * _GitHub code contribution_: https://github.com/magento/magento2/issues/38609
* _AC-11809_: [Issue] Pass custom attributes to current link via XML
  * _Fix note_: The system now allows custom attributes to be passed to the current link via XML, ensuring that these attributes are correctly displayed even when the link is the current page. Previously, custom attributes were not displayed for the current page link due to the getAttributesHtml() method not being used for the current link.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38500>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/30070>>
* _AC-11819_: The system now correctly caches pages when the MAGE_RUN_CODE parameter is set, ensuring optimal performance. Previously, pages were not being cached under these conditions, leading to potential performance issues.
  * _Fix note_: <https://github.com/magento/magento2/pull/38646>,>, <https://github.com/magento/magento2/commit/0c53bbf7>>
  * _GitHub issue_: <Built-in FPC cache is broken in 2.4.7 for some configurations>
  * _GitHub code contribution_: https://github.com/magento/magento2/issues/38626
* _AC-11829_: The system now consistently handles exceptions between developer and production modes, preventing unexpected redirection to the login page when an exception is thrown. Previously, an inconsistency in exception handling could cause a redirect to the login page in production mode instead of displaying the exception message.
  * _Fix note_: <https://github.com/magento/magento2/pull/37712>>
  * _GitHub issue_: <[Issue] Fix exception handling inconsistency between developer and production modes>
  * _GitHub code contribution_: https://github.com/magento/magento2/issues/38639
* _AC-11852_: The system now labels the section for tokenizable account payment methods as "Account" instead of "PayPal Account" in the Stored Payment Methods page, making it more representative of its function. Previously, this section was specifically labeled as "PayPal Account", which was misleading when other tokenizable account payment methods were added.
  * _Fix note_: <https://github.com/magento/magento2/pull/37959>>
  * _GitHub issue_: <Replace 'PayPal Account' translation in token_list.phtml>
  * _GitHub code contribution_: https://github.com/magento/magento2/issues/35622
* _AC-11874_: The ProductRepository class now maintains backward compatibility by restoring the Initialization Helper class as the second parameter, ensuring that modules extending from this class function as expected. Previously, the removal of the Initialization Helper from the constructor in the ProductRepository class resulted in a loss of backward compatibility, forcing users to employ a workaround.
  * _GitHub issue_: <Backward compatibility has been lost on Magento\Catalog\Model\ProductRepository class>
  * _GitHub code contribution_: https://github.com/magento/magento2/issues/38669
* _AC-11905_: The system now correctly handles empty LESS files during static content deployment, displaying an "LESS file is empty" error message. Previously, an incorrect type error was thrown when encountering an empty LESS file during deployment.
  * _Fix note_: <https://github.com/magento/magento2/pull/38683>>
  * _GitHub issue_: <[Issue] Static content deploy - Type error>
  * _GitHub code contribution_: https://github.com/magento/magento2/issues/38682
* _AC-11911_: jQuery/fileuploader css cleanup after migration to uppy library
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/7cabfb46>
* _AC-12002_: The system now ensures that there are no extra spaces in the link and script tags, providing cleaner and more efficient code. Previously, double spaces could be found between attributes in the link and script tags.
  * _Fix note_: <https://github.com/magento/magento2/pull/32919>>
  * _GitHub issue_: <[Issue] [View] Removed extra space in link and script tag>
  * _GitHub code contribution_: https://github.com/magento/magento2/issues/32920
* _AC-12015_: ExtJs folder cleanup after migration to jsTree library
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/7cabfb46>
* _AC-12022_: Upgrade monolog/monolog system dependency to the latest major version
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/edcd0dcc>
* _AC-12023_: Upgrade wikimedia/less.php dependency to the latest major version
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/edcd0dcc>
* _AC-12024_: Upgrade jquery/validate library dependency to the latest minor version
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/de4dfb8e>
* _AC-12025_: Upgrade moment.js system dependency to the latest minor version
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/de4dfb8e>
* _AC-12127_: [Issue] avoid a misconfiguration infinite loop
  * _Fix note_: The system now avoids an infinite loop by preventing self-referential mapping in virtual type configurations. This ensures the application does not get stuck in an endless loop when attempting to dereference a self-referential node. Previously, if a virtual type configuration was self-referential, it would cause the application to spin indefinitely.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38822>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/38794>>
* _AC-12267_: Support connection retries for Redis session and compatible with colinmollenhour/php-redis-session-abstract v2.0.0
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/672a2e61>
* _AC-12299_: Object Manager not used for Magento\Csp\Model\Mode\Data\ModeConfigured
  * _Fix note_: The system now correctly uses the Object Manager when creating the ModeConfigured object, allowing plugins to be used on this object. Previously, the Object Manager was not being used, preventing plugins from being applied to the ModeConfigured object.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38875>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/38886>>
* _AC-12540_: Inaccurate doc block comment in Product Stock and Price Alerts
  * _Fix note_: The doc block comment for the deleteCustomer method in the Product Stock and Price Alerts has been corrected to accurately reflect that the method deletes all stock product or price alerts associated with a given customer and website, not the customer from the website. Previously, the comment inaccurately stated that the method was for deleting a customer from the website.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38939>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/39001>>
* _AC-12594_: The system now uses the compiled configuration for generated data instead of the general configuration, reducing network transfer and overhead of data that depends on a certain version of code. This change prevents cache overriding in shared instances during container swapping, leading to improved stability and reduced downtime. Previously, certain core classes used shared config type, which could lead to cache overriding or application downtime due to differences in code versions across multiple servers.
  * _Fix note_: <https://github.com/magento/magento2/pull/29954>>
  * _GitHub issue_: <[Issue] Use compiled config for generated data instead of general config>
  * _GitHub code contribution_: https://github.com/magento/magento2/issues/38785
* _AC-12597_: The system now removes references to files from extjs which were previously removed, eliminating errors in the browser's console and the system log file. Previously, these references were causing errors due to the absence of the referenced files.
  * _Fix note_: <https://github.com/magento/magento2/pull/38951>>
  * _GitHub issue_: <[Issue] Remove references to files from extjs which got removed in e1ccdb…>
  * _GitHub code contribution_: https://github.com/magento/magento2/issues/38960
* _AC-12715_: Update laminas composer dependencies upgrading to latest version
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/b34c0a75>
* _AC-12778_: The system now correctly uses the sprintf function with the appropriate number of placeholders, enhancing code cleanliness and consistency. Previously, the sprintf function was incorrectly used with an extra argument, which did not cause any major issues but was not the correct usage.
  * _Fix note_: <https://github.com/magento/magento2/pull/38628>>
  * _GitHub issue_: <[Issue] Minor cleanup: fixed wrong usage of sprintf, it only takes 2 placeholders here and w…>
  * _GitHub code contribution_: https://github.com/magento/magento2/issues/39062
* _AC-12823_: Investigate the unit test failure due to phpunit patch update during component upgrade
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/b34c0a75>
* _AC-12857_: PHP 8.2.15 removed FTP extension
  * _Fix note_: The system now includes the FTP extension as a dependency in the composer.json file, ensuring the successful configuration of CSV imports via FTP. Previously, an error was thrown when attempting to configure CSV imports via FTP due to the FTP extension being missing in the PHP package.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/39083>
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/47b448e2>>
* _AC-12866_: Remove Deprecations- PhpUnit10 Integration Tests
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/edcd0dcc>
* _AC-12868_: Remove Deprecations- PhpUnit10 WebApi Tests
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/edcd0dcc>
* _AC-12869_: The system now correctly references classes in modules, ensuring smoother operation and preventing crashes due to non-existing classes. This includes a bugfix in the Indexer and Creditmemo modules, and the implementation of the HttpGetActionInterface in the PrintAction class. Previously, incorrect class references led to errors and potential system crashes, and certain functionalities, such as the filename for creditmemo PDF files and reindexing of stocks, were not working as expected.
  * _Fix note_: <https://github.com/magento/magento2/pull/37784>>
  * _GitHub issue_: <[Issue] Fixes incorrect classes being referenced in Magento modules.>
  * _GitHub code contribution_: https://github.com/magento/magento2/issues/39126
* _AC-12882_: Investigate the Integration build after component upgrade
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/b34c0a75>
* _AC-12964_: Ability to define Area for dev:di:info CLI command
  * _Fix note_: The system now allows developers to define an area for the dev:di:info CLI command, enhancing the development and debugging process. Previously, this command could only display information for the GLOBAL area.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38758>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/38759>>
* _AC-13149_: [Issue] add isMultipleFiles property to image form element template
  * _Fix note_: This fix, prevents the "Browse to find or drag image here" button to disappear when an image is added in a multiple files image form element.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/39219>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/36325>>
* _AC-13279_: [Issue] Remove all marketing get parameters to minimize the cache
  * _Fix note_: The system now removes all marketing get parameters to optimize cache utilization, mirroring the logic used when Varnish is in use. Previously, these parameters could lead to cache bloating and reduced performance.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/39266>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/39099>>
* _AC-13345_: [Issue] [PHPDOC] Fix bad phpdoc Magento\Directory\Model\AllowedCountries::getAllowedCountries()
  * _Fix note_: The PHPDoc for the AllowedCountries::getAllowedCountries() method has been corrected to provide accurate information, enhancing the clarity and usefulness of the documentation. Previously, the PHPDoc for this method contained incorrect information, which could lead to confusion or misuse of the method.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/39246>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/39241>>
* _AC-13348_: [Issue] Removes some code for PHP versions we no longer support.
  * _Fix note_: Removal of code for PHP versions that no longer getting supported in Magento
  * _GitHub issue_: <https://github.com/magento/magento2/issues/39361>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/39202>>
* _AC-13417_: [Issue] Make ImageMagick Adapter compatible with php8 (Implicit conversion from float to int)
  * _Fix note_: The system now ensures compatibility with PHP8 by correctly handling float numbers when calculating image dimensions, preventing any errors due to implicit conversion from float to int. Previously, the calculation of image dimensions could result in float numbers, which when implicitly rounded, would cause an error.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/39402>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/37362>>
* _AC-13537_: [Issue] [PHPDOC] Fix bad phpdoc Magento\Framework\App\Config\ScopeConfigInterface
  * _Fix note_: This update corrects the PHPDoc annotations in the Magento\Framework\App\Config\ScopeConfigInterface to accurately reflect the type of the $scopeCode argument for the getValue and isSetFlag methods.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/39492>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/39199>>
* _AC-13725_: Magento\Framework\Filesystem\Driver\Http depends on reason phrase OK
  * _Fix note_: Removed "OK" phrase check from Magento\Framework\Filesystem\Driver\Http::isExists
  * _GitHub issue_: <https://github.com/magento/magento2/issues/39546>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/39558>>
* _AC-13810_: Customer Grid indexer does not work properly in Update by Schedule mode
  * _Fix note_: Earlier Customer grid was updated instantly but after the fix Customer grid is updated after cron run but not reflect instantly.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/1da9ba6f>>
* _AC-6754_: The system now correctly uses the term "subscribers" in the JavaScript file, ensuring proper functionality of the related features. Previously, a typographical error in the JavaScript file resulted in the incorrect use of the term "subsctibers".
  * _Fix note_: <https://github.com/magento/magento2/pull/36171>>
  * _GitHub issue_: <typo error on a js file.>
  * _GitHub code contribution_: https://github.com/magento/magento2/issues/36163
* _AC-8353_: The system now adheres to coding standards by removing the forbidden `@author` tag from certain modules, ensuring cleaner and more standardized code. Previously, the `@author` tag was present in some modules, which was against the established coding standards.
  * _Fix note_: <https://github.com/magento/magento2/pull/37003>>
  * _GitHub issue_: <[Issue] Remove forbidden `@author` tag>
  * _GitHub code contribution_: https://github.com/magento/magento2/issues/37253
* _AC-8356_: The system now adheres to the coding standard by removing the forbidden `@author` tag from certain modules, ensuring cleaner and more standardized code. Previously, the `@author` tag was present in some modules, which was against the established coding standards.
  * _Fix note_: <https://github.com/magento/magento2/pull/37000>>
  * _GitHub issue_: <[Issue] Remove forbidden `@author` tag from `Magento_Customer` (part 2)>
  * _GitHub code contribution_: https://github.com/magento/magento2/issues/37250
* _AC-8659_: The system now correctly applies a 4-space indent to the composer and auth.json files, following a fix to a syntax error in the editorconfig. Previously, due to a space in the editorconfig syntax, these files were incorrectly formatted with a 2-space indent.
  * _Fix note_: <https://github.com/magento/magento2/pull/37395>>
  * _GitHub issue_: <Space in editorconfig syntax breaks rule for [{composer,auth}.json]>
  * _GitHub code contribution_: https://github.com/magento/magento2/issues/37394
* _AC-8662_: [Issue] Improve cron error logging
  * _Fix note_: The system now captures and logs both STDERR and STDOUT for cron processes, providing valuable diagnostic information in scenarios where cron processes fail. Previously, any error messages within cron processes were not recorded, and STDERR and STDOUT for cron groups running in separate processes were lost.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/37453>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/32690>>
* _AC-8984_: The system now adds more colors to the output of certain setup command line interface (CLI) commands, enhancing readability and user experience. Previously, the output of these commands was harder to read due to lack of color differentiation.
  * _Fix note_: <https://github.com/magento/magento2/pull/29298>>
  * _GitHub issue_: <[Issue] Adds some more colors to the output of certain setup cli commands>
  * _GitHub code contribution_: https://github.com/magento/magento2/issues/29335
* _AC-9630_: The system now only adds the modified country to the 'general/region/state_required' configuration when a new country with required states is added, preventing any disruption to custom code that assumes the region is disabled. Previously, adding a new country with required states would reset the 'general/region/state_required' configuration to default countries with a required state, potentially breaking the shop.
  * _Fix note_: <https://github.com/magento/magento2/pull/38076>>
  * _GitHub issue_: <Upgrading Magento resets general/region/state_required when new country with required state/region is added.>
  * _GitHub code contribution_: https://github.com/magento/magento2/issues/37796
* _AC-9712_: Fix the difference in less compilation between php & nodejs library (grunt) after update wikimedia/less.php:^5.x
  * _Fix note_: <https://github.com/magento/magento2/commit/b34c0a75>>
  * _GitHub issue_: <Difference in less compilation between php & nodejs library (grunt) with complicated `calc` expressions>
  * _GitHub code contribution_: https://github.com/magento/magento2/issues/37841
* _ACP2E-3230_: Modifying column length via db_schema.xml doesn't work in case of foreign keys
  * _Fix note_: modifying column with foreign key via declarative schema now doesn't rise errors with MariaDB
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/581b7ef1>>
* _ACP2E-3361_: Some of the relations records are saved to DB when order record is saved
  * _Fix note_: Before the fix unnecessary UPDATE queries were being triggered that can have an impact performance wise. After the fix, the unnecessary UPDATE queries were eliminated.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/1366ae5e>>
* _ACP2E-3375_: [CLOUD] In admin there are many javascript error in console
  * _Fix note_: Previously, In admin panel there are many javascript error in console. Now, In the admin panel, there will be no JavaScript errors in the console, and all the default JavaScript functions will execute successfully without any issues.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/d75cff27>>
* _ACP2E-3387_: [Cloud] Magento: queue message has been deleted
  * _Fix note_: Queue messages are now properly being cleared out. Prior to the fix, given that SQL queue system was being used, new messages could have been deleted if the cleaning queue message was running at the same time.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/d50f6b5d>>
* _ACP2E-3537_: Corresponding cache key entries are not available in cache tags, hence cache cleaning does not work correctly
  * _Fix note_: LUA mode is now enabled by default for Redis cache garbage collector to prevent race conditions
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/a52ff98f>>
* _ACP2E-3681_: MAGENTO_DC_INDEXER__USE_APPLICATION_LOCK value is ignored
  * _Fix note_: After the fix, an ENV variable set to "false" will be treated as bool false, not as string 'false'.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/982b1c42>>

### Framework, GraphQL

* _AC-7976_: The system now supports custom scalar types for GraphQL schema, allowing developers to define custom scalar types and implementations. This feature can be particularly useful for expressing values that may require validation, such as HTML, emails, URLs, dates, etc., and for more advanced cases like EAV attributes. Previously, the system did not support the processing of custom scalar types in GraphQL.
  * _Fix note_: <https://github.com/magento/magento2/pull/34651>,>, <https://github.com/magento/magento2/commit/0574ac23>>
  * _GitHub issue_: <[Issue] Introduced support of custom scalar types for GraphQL schema>
  * _GitHub code contribution_: https://github.com/magento/magento2/issues/36877

### Framework, UI Framework

* _ACP2E-3324_: Possibility to overwrite config value even if it's locked
  * _Fix note_: Previously to this fix, the design configuration could not be set through bin/magento config:set command and locked values could be changed by manipulation of the form displaying them. After the fix locked values set from cli with --lock-env or --lock-conf cannot be updated anymore.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/55615e61>>

### GraphQL

* _ACP2E-2974_: Translations for customer return attributes not reflected in GraphQL API for respective StoreView
  * _Fix note_: Translations for customer return attributes are reflected in GraphQL API for respective StoreView.
Previously customer Return attributes for respective StoreView were not reflected in GraphQL API.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/ec7e32a9>>
* _ACP2E-3215_: [Cloud] Issue with User Authentication and Cross-Site Token Access in Multi-Site Setup
  * _Fix note_: GraphQl Customer Info and Cart queries in Multi-Site setup checks if the customer on non-default website exists.
Previously query worked without making sure the customer exists on non-default website in Multi-Site setup.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/581b7ef1>>
* _ACP2E-3255_: [GRAPHQL] model value should be specified when getting customerCart
  * _Fix note_: The GraphQL 'customerCart' query can now create an empty cart even when the quote is not available in the database. Previously, this operation failed due to country validation issues while creating the empty cart.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/fd5cf3af>>
* _ACP2E-3380_: [GraphQl] Wishlist items are visible via GraphQl but not visible on storefront
  * _Fix note_: Wishlist products where not being properly listed when requested via GraphQL. Now, wishlist products are filtered based on provided store context.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/55615e61>>
* _ACP2E-3404_: [GraphQL] Reset password email inconsistency between content and subject/link
  * _Fix note_: The issue has been resolved by simulating the correct store where the customer's account is registered when sending the password reset request, regardless of the website store.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/5184c067>>
* _ACP2E-3419_: [Cloud] products GraphQL query returns related products not assigned to current website
  * _Fix note_: Previously, for graphQL query, multi-store related products do not show properly for product query. After this fix is applied, for products, graphQL query multi-store related products showing accordingly.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/078c387e>>
* _ACP2E-3447_: Using the wrong Store ID in GraphQL header causes fatal memory error
  * _Fix note_: Sending wrong store code in GraphQL request no longer results in excessive memory consumption.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/d50f6b5d>>
* _ACP2E-3467_: [Cloud] 500 response to empty Graphql response on 2.4.7
  * _Fix note_: After the fix, invalid graphql requests will not be logged into the exception.log file.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/1984c61c>>
* _ACP2E-3492_: [Cloud] Problems with Graphql API
  * _Fix note_: Before the fix by using Graphql application server, customer address request did not return the most recent data.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/3f12d152>>
* _ACP2E-3505_: Disabled product still appears in related, upsell, crosssell items in grpahQL query
  * _Fix note_: Graphql now provide correct response for disabled relared, upsell and cross-sell products
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/d4de4726>>
* _ACP2E-3647_: [CLOUD]: GraphQl error Internal server error placeOrder mutation
  * _Fix note_: The "placeOrder" mutation with coupon code information in the request is no longer throwing an internal error exception, the order was placed successfully. Previously, it failed with "Internal server error".
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/982b1c42>>

### GraphQL, Search

* _ACP2E-948_: Product listing GraphQL query limited to total_count 10,000 products only
  * _Fix note_: After the fix, the search result is not limited to 10000 products, it becomes possible to get all products matching the search criteria even if the count is more than 10000.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/a4cf5e62>>

### GraphQL, Test framework

* _ACP2E-3363_: Magento\GraphQl\App\GraphQlCustomerMutationsTest.php Integration Test failure
  * _Fix note_: '-
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/a4cf5e62>>

### Import / export

* _AC-12172_: The system now correctly imports product data with custom options of type 'file', ensuring that all provided file extensions are displayed and the price for the custom option is included. Previously, during product import, if a custom option of type 'file' was provided with more than one file extension, only the first extension was displayed and the price for the custom option was missing.
  * _Fix note_: <https://github.com/magento/magento2/pull/38926>>
  * _GitHub issue_: <Issue at product import when provided with custom options-type: file (Created Product does not contain price for custom-option and show only the first file type extension provided)>
  * _GitHub code contribution_: https://github.com/magento/magento2/issues/38805
* _ACP2E-3172_: Import button missing
  * _Fix note_: Resolve the Import button missing issue after data checks with correct and incorrect records in the CSV. Previously the import button doesn't display after data checks with correct and incorrect records in the CSV.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/1819fe73>>
* _ACP2E-3382_: Exported customer address cannot be imported
  * _Fix note_: Customer address import will proceed as expected. Previously, a customer address import file would not pass validation if Share Customer Accounts = Global, and there are two websites where the default website has a restricted country list, and the address that is being imported is for another website where allowed countries are different
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/ec7e32a9>>
* _ACP2E-3448_: [Cloud] Wrong quantity in CSV file did not give error
  * _Fix note_: Now stock sources import will throw validation error for non numeric values in the quantity column. Previously, importing stock sources with non numeric value in the quantity column resulted in the quantity being set to 0.
  * _GitHub code contribution_: <https://github.com/magento/inventory/commit/5b21b7af>>
* _ACP2E-3455_: Duplicated URL key error message generated when importing a product is not correct when the URL Key already belongs to a category
  * _Fix note_: Displaying the correct error message during product import check, when customer tried to import product when product's url key already belongs to a category.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/d4de4726>>
* _ACP2E-3475_: Product export causes OOM even with 4G memory limit
  * _Fix note_: Previous to this fix, the product export failed if product attributes had thousands of option values even with 4G available memory. After this fix, the product export should finish exporting the csv file.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/1984c61c>>
* _ACP2E-3527_: [Cloud] Import Processes Interfering with Each Other
  * _Fix note_: Correct messages are shown if the same admin user performs two or more import operations using the same user session.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/d4de4726>>

### Import / export, Performance

* _ACP2E-3476_: [Cloud] Product import time has significantly increased
  * _Fix note_: Previous to the fix, catalog product import with over 10K entries had a significant time degradation. After the fix, the import of catalog product executes in a timely manner.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/87d012e5>>

### Install & Administer

* _AC-13242_: Magento upgrade fails on MariaDB 11.4 + 2.4.8-beta1
  * _Fix note_: Upgrade should happened without any error.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/7b336d0a>>

### Inventory / MSI

* _AC-10750_: The system now correctly updates the inventory of configurable products when the database uses prefixes, preventing any error messages and ensuring the correct quantity is saved. Previously, an error would occur when trying to save the inventory quantity for simple products within a configurable product if the database was using prefixes.
  * _GitHub issue_: <Inventory update of Configurable Product fails when database uses prefixes>
  * _GitHub code contribution_: https://github.com/magento/magento2/issues/38045
* _AC-13922_: Unable to create shipment for order item with multiple sources and corrupted SKU
  * _Fix note_: Earlier when spaces  was mistakenly added  in sku  through database leads to error in shipment page which is now fixed and automatic trim is considered as human friendly error and no impact was found .Therefore shipment was successfully created.
  * _GitHub code contribution_: <https://github.com/magento/inventory/commit/c18eb5fa>>
* _ACP2E-3335_: Unable to ship the order when MSI pick up store is enabled
  * _Fix note_: Improved inventory performance of create shipping in case of many sources with in-store pickup
  * _GitHub code contribution_: <https://github.com/magento/inventory/commit/9f3e63d1>>
* _ACP2E-3355_: Cron reindex fails to update product availability on the frontend
  * _Fix note_: Previously, Products remained out of stock on the frontend after updating the backorder status through the REST API. Now, after updating the backorder status via the REST API, products are shown as in stock.
  * _GitHub code contribution_: <https://github.com/magento/inventory/commit/e6fe0aa7>>
* _ACP2E-3357_: Adding images to configurable not working when MSI is enabled.
  * _Fix note_: Image upload for configurable product will now work as expected when inventory module is used. Previously the image upload didn't work
  * _GitHub code contribution_: <https://github.com/magento/inventory/commit/fdf409aa>>
* _ACP2E-3470_: Issue with Bundle Product + MSI in Clean M2.4.7-p3
  * _Fix note_: Previously, for inventory bundle products after duplication with the same simple product, the simple product can not be saved. After this fix is applied, the simple product can be saved successfully without any exceptions.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/39358>
  * _GitHub code contribution_: <https://github.com/magento/inventory/commit/0208e433>>

### Inventory / MSI, Search

* _ACP2E-3413_: All products are indexed with [is_out_of_stock] = 1 when the SKU is not set as a searchable attribute
  * _Fix note_: After the fix, the "is_out_of_stock" in catalog search index is correct, even when sku is not searchable.
  * _GitHub code contribution_: <https://github.com/magento/inventory/commit/5b21b7af>>

### Order

* _AC-10828_: The system now displays the number of backordered items in the quantity column on the backend order overview screen. This ensures that users can accurately track the status of all items in an order. Previously, the quantity column only showed the number of items that were ordered, invoiced, and shipped, but did not display the number of backordered items.
  * _Fix note_: <https://github.com/magento/magento2/pull/38320>>
  * _GitHub issue_: <Backend order overview screen: Backordered quantity not visible on order item level>
  * _GitHub code contribution_: https://github.com/magento/magento2/issues/38252
* _AC-10994_: The system now correctly uses the store ID associated with an order when rendering the order address, ensuring that addresses are formatted correctly according to their respective store ID. Previously, the system was incorrectly using the current store ID, which could lead to incorrect address formatting in cases where multiple order emails from different stores needed to be sent.
  * _Fix note_: <https://github.com/magento/magento2/pull/37932>>
  * _GitHub issue_: <[Issue] Wrong store ID used in Order Address Renderer>
  * _GitHub code contribution_: https://github.com/magento/magento2/issues/38412
* _AC-11690_: JoinProcessor caching issue
  * _Fix note_: The system now correctly applies the JoinProcessor for each iteration, even with consecutive calls, ensuring accurate data retrieval. Previously, the JoinProcessor was incorrectly marked as already applied in consecutive iterations, leading to errors in data retrieval.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/27504>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/37550>>
* _AC-11798_: The system now correctly displays shipping prices in printed PDFs according to the tax configuration settings, ensuring consistency between the sales order invoice view page and the printed invoice. Previously, the shipping price displayed in the printed PDF was excluding tax, regardless of the tax configuration settings.
  * _Fix note_: <https://github.com/magento/magento2/pull/38595>,>, <https://github.com/magento/magento2/commit/1bafc571>>
  * _GitHub issue_: <[Issue] Shipping price showing diffrent in printed pdf>
  * _GitHub code contribution_: https://github.com/magento/magento2/issues/38608
* _AC-13839_: Reorder with a deleted parent configurable product
  * _Fix note_: Now while reordering with the deleted product the system will not show the reorder button to reorder
  * _GitHub issue_: <https://github.com/magento/magento2/issues/39568>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/39601>>
* _AC-13924_: [Issue] Fix bad \Magento\Sales\Model\Order\Email\Container\Template::$id property
  * _Fix note_: This fixes the bad phpdoc for \Magento\Sales\Model\Order\Email\Container\Template::$id, actually $id is type int but in reality is string.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/39151>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/39150>>
* _ACP2E-2622_: Now the user can add the international prefix 00 in the telephone field of order address
  * _Fix note_: <https://github.com/magento/magento2/commit/12e071c3>>
  * _GitHub issue_: <Unable to save changes to phone number in existing order details>
  * _GitHub code contribution_: https://github.com/magento/magento2/issues/38201
* _ACP2E-3311_: [Cloud] Cannot create order in admin on one store if only the Default Billing Address was not set up
  * _Fix note_: Now relevant error message "A customer with the same email address already exists in an associated website." is displayed if a customer doesn't have a Default Billing Address and tries to create an order on another store.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/d75cff27>>
* _ACP2E-3416_: Admin duplicated place order requests sent
  * _Fix note_: Previously, the "Submit Order" button in the admin panel could be clicked multiple times or activated by repeatedly pressing the "Enter" key, causing duplicate or order submissions with error. Now, preventing additional actions until the order is fully processed, ensuring that only one order is submitted.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/5184c067>>
* _ACP2E-3425_: Admin can still place order even without payment method
  * _Fix note_: Previously selected payment method is now retained when the payment method reappears in the list of available payments.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/d50f6b5d>>

### Order, Payments

* _ACP2E-3233_: Admin can still place order even without payment method
  * _Fix note_: Previously, the merchant could place orders from the admin panel without selecting a payment method. Now, the merchant is required a payment method to proceed with placing an order.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/fd5cf3af>>

### Other

* _BUNDLE-3422_: [Braintree] [Cloud]Braintree SSL Certificate expire by June 30
  * _GitHub code contribution_: <https://github.com/magento/ext-braintree/pull/211>,>, <https://github.com/magento/ext-braintree/pull/212>,>, <https://github.com/magento/ext-braintree/pull/213>,>, <https://github.com/magento/ext-braintree/pull/215>>

### Other Developer Tools

* _AC-10658_: The system now correctly closes the start tag in the visual.phtml file, ensuring proper HTML syntax. Previously, the start tag was not closed properly, causing an HTML syntax error.
  * _Fix note_: <https://github.com/magento/magento2/pull/37457>>
  * _GitHub issue_: <[Issue] Fix HTML syntax error in visual.phtml>
  * _GitHub code contribution_: https://github.com/magento/magento2/issues/38247
* _AC-11474_: The system now provides more accurate status messages for the maintenance mode command, changing the status from "active" to "enabled" and from "not active" to "disabled". Previously, the status message for the maintenance mode command was displayed as "active" or "not active", which could lead to confusion.
  * _Fix note_: <https://github.com/magento/magento2/pull/38410>>
  * _GitHub issue_: <[Issue] Changed "active" to "enabled" in bin/magento maintenance:status command>
  * _GitHub code contribution_: https://github.com/magento/magento2/issues/38486
* _AC-12571_: 
  * _Fix note_: <https://github.com/magento/magento2/commit/0611e750>>
  * _GitHub issue_: <Navigating in the categories tree leads to errors in Redis: "Redis session exceeded concurrent connections">
  * _GitHub code contribution_: https://github.com/magento/magento2/issues/38851
* _AC-12731_: CSP issues combined with dev/css/use_css_critical_path
  * _Fix note_: The system now correctly loads CSS files asynchronously on checkout pages, even when the 'dev/css/use_css_critical_path' setting is enabled, ensuring that these pages are rendered with the proper CSS styles. Previously, a restricted Content Security Policy (CSP) prevented inline JavaScript from executing, which resulted in CSS files not being loaded as expected.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/39020>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/39040>>
* _AC-13398_: Using virtual type to configure plugin, interceptor method cannot be generated correctly in setup:di:compile command
  * _Fix note_: The system now correctly generates interceptor methods when using a virtual type to configure a plugin, ensuring consistent results whether precompiled or runtime compiled. Previously, the system would generate incorrect results when precompiled compared to runtime compilation.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/33980>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/38141>>
* _ACP2E-3631_: Adobe Commerce 2.4.7-p3 unit tests are failing
  * _Fix note_: No release notes are required.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/982b1c42>>

### Payment/ Payment Methods, Order

* _AC-13699_: Papal payflow Credit card details saved for later use are not showing up on stored payment method page
  * _Fix note_: Earlier Papal payflow Credit card details saved for later use was not showing up on stored payment method page which is now fixed credit card details are showing up on stored payment method page.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/96dec499>>

### Payments

* _AC-13414_: Credit Card(Payflow Link) payment is not working
  * _Fix note_: Earlier Getting error (Payment got Declined) while placing order with Credit Card after the fix Order placed successfully.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/a68324bc>>
* _ACP2E-3143_: PayPal order refund results in duplicate credit memo
  * _Fix note_: Fixed concurrency issue of IPN-created credit memos for PayPal payment service.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/d01ee51e>>
* _ACP2E-3163_: Cart price rule not working for Paypal
  * _Fix note_: Correct amount is shown on PayPal side when discount is applied by payment method
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/7377de59>>
* _ACP2E-3208_: [Cloud] Users with a specific role cannot login
  * _Fix note_: admin user with role that contain only PayPal Section access now can login without errors
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/66dea0de>>

### Performance

* _AC-11932_: Default Product Attribute Settings Issue
  * _Fix note_: The system now allows users to deselect a default option for a product attribute, ensuring that the attribute does not always have a default set. Previously, once a default was set for a product attribute, there was no way to deselect it, resulting in the attribute always having a default set.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38703>
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/7d5e3906>>
* _AC-12000_: The system now includes a new critical head block and moves critical CSS before assets, allowing for more customization and performance optimization in the frontend. Previously, the critical CSS was not positioned before the assets, limiting customization and optimization opportunities.
  * _Fix note_: <https://github.com/magento/magento2/pull/35580>>
  * _GitHub issue_: <[Issue] Code cleanup and add new critical head block and move critical css before assets>
  * _GitHub code contribution_: https://github.com/magento/magento2/issues/38748
* _AC-12176_: The system now correctly handles MySQL host configuration that includes port information, ensuring successful theme compilation. Previously, theme compilation would fail if the MySQL host configuration in the database connection included port information.
  * _Fix note_: <https://github.com/magento/magento2/pull/38842>>
  * _GitHub issue_: <Theme compilation breaks when mysql host contains port information>
  * _GitHub code contribution_: https://github.com/magento/magento2/issues/38799
* _AC-13471_: Support for Symfony's CommandLoaderInterface in Magento CLI
  * _Fix note_: This change reduces initialization time of the Magento CLI app by allowing deferred initialization of commands until they're needed.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/29266>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/29355>>

### Pricing

* _AC-11810_: The system now correctly displays the price of simple products when queried through the Order API, ensuring accurate data representation. Previously, the price of simple products was incorrectly displayed as zero in the API response.
  * _GitHub issue_: <Magento2.4.6-p4 Order API Simple Item missing price>
  * _GitHub code contribution_: https://github.com/magento/magento2/issues/38603

### Product

* _AC-10535_: The system now correctly retains special characters in the names of associated products when editing a configurable product, preventing them from being converted into HTML entities. Previously, special characters in associated product names were converted into HTML entities when the configurable product was edited.
  * _Fix note_: <https://github.com/magento/magento2/pull/38447>>
  * _GitHub issue_: <Special characters in configurable associate product name are  being Converted to HTML Entities.>
  * _GitHub code contribution_: https://github.com/magento/magento2/issues/38146
* _AC-10947_: The system now correctly creates a cache key in the ProductRepository's function GetById, regardless of whether the store ID is passed as a string or an integer. This ensures that the product is retrieved from memory on subsequent calls, improving performance. Previously, the system would retrieve the product from the database each time the function was called, even with the same parameters, due to incorrect cache key creation.
  * _Fix note_: <https://github.com/magento/magento2/pull/38433>>
  * _GitHub issue_: <ProductRepository function GetById does not create the correct cache key>
  * _GitHub code contribution_: https://github.com/magento/magento2/issues/38384
* _AC-11992_: The system now includes the AdminClickAddOptionForBundleItemsActionGroup, enhancing the functionality of the admin panel. Previously, this action group was not available.
  * _Fix note_: <https://github.com/magento/magento2/pull/30838>>
  * _GitHub issue_: <[Issue] [MFTF] Added AdminClickAddOptionForBundleItemsActionGroup>
  * _GitHub code contribution_: https://github.com/magento/magento2/issues/30857
* _AC-13173_: [Issue] Fix typo in PHPDoc block
  * _Fix note_: The system now correctly removes an unknown referenced variable in PHPDoc for the $helper variable declaration, enhancing code clarity and accuracy. Previously, this unknown referenced variable in PHPDoc was causing confusion and potential inaccuracies in the code.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38961>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/38940>>
* _AC-13423_: [Issue] Fixed broken Bundle and Downloadable product pages layout in Magento >= 2.4.7
  * _Fix note_: The layout for bundle and downloadable product pages has been fixed, ensuring a consistent and correct display across all devices. Previously, these pages experienced layout issues due to a rearrangement of the product info media block.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/39403>
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/6cfb9b6b>>
* _AC-5969_: The system now correctly triggers product alert emails by ensuring the store identifier is of the correct data type. Previously, product alert emails were not being sent due to a type mismatch in the store identifier.
  * _Fix note_: <https://github.com/magento/magento2/commit/0574ac23>>
  * _GitHub issue_: <AlertProcessor - Argument #2 ($storeId) must be of type int, string given>
  * _GitHub code contribution_: https://github.com/magento/magento2/issues/35602

### Promotion

* _ACP2E-3139_: Sales Rule with Discount Qty Step (Buy X) attribute causes other rules to not be applied
  * _Fix note_: Cart price rule does not cancel previously applied rules if quantity of the product in the cart is not enough for rule to be applied.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/d01ee51e>>
* _ACP2E-3332_: Issue sales rules with Fixed amount discount and "Maximum Qty Discount is Applied To"
  * _Fix note_: Fixed issue with cart rules discount, when fixed amount discount is configured to be applied for a limited qty of products is the cart. Previously, the "Maximum Qty Discount is Applied To" value was used to calculate current item's price in the cart, not only for calculation the rule's discount.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/581b7ef1>>
* _ACP2E-3349_: Cart rules "Fixed amount discount for whole cart"  Action applies discounts incorrectly
  * _Fix note_: Coupon codes will be validated properly regardless of upper case or lowercase, when used in order creation from the admin area. Before, the coupon code was not validated if it did not match the exact letter case of the configured cart rule code.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/581b7ef1>>
* _ACP2E-3374_: In Backend, default store values for product attributes (instead of expected admin values)
  * _Fix note_: Now In Backend, admin values are used instead of default store values for product attributes.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/5184c067>>
* _ACP2E-3377_: Cart rules "Fixed amount discount for whole cart"  action applies discounts incorrectly when adding bundle products
  * _Fix note_: Fixed amount cart rules were not being applied properly for bundle products. Now, when calculating the total discount amount, bundle child products are taken into consideration, resulting in proper discount calculation.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/1366ae5e>>
* _ACP2E-3403_: Cart Price Rules Miscalculating Discount
  * _Fix note_: Fixed amount discounts are now being properly calculated. Prior to the fix, fixed amount discounts were not totalled properly for bundle products.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/0b488dd1>>
* _ACP2E-3406_: Nested categories in rule conditions not showing
  * _Fix note_: Fixed issue when nested categories under level 3 category are not shown in marketing rules for category condition
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/88660e79>>
* _ACP2E-3432_: usage_limit and uses_per_customer not updating in salesrule_coupon Table
  * _Fix note_: Updating Uses per Coupon and Uses per Customer in cart price rule will now affect existing autogenerated coupons. Previously the new values affected only new coupons
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/88660e79>>
* _ACP2E-3456_: Cart price rule doesn't consider parent category when it is using "equals or greater than" condition.
  * _Fix note_: Cart Price Rules now consider parent category correctly when it is used in advanced conditions
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/93359343>>
* _ACP2E-3463_: Invalid discount calculation with priority
  * _Fix note_: In the case of fixed amount appllied for the whole cart discount type, the amount was not being calculated properly for cart items that were already discounted by a previous promotion. Now, discounts are properly summed up.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/078c387e>>
* _ACP2E-3472_: [CLOUD] Shipping calculation is not considering the shopping cart rule
  * _Fix note_: Prior to the fix, a cart rule with region condition was not being applied consistently. After the fix, cart rules with region conditions are being applied properly.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/d4de4726>>
* _ACP2E-3491_: Cart rule sku condition is failing for invoice.
  * _Fix note_: Discount on Bundle product with dynamic price is now correctly reflected in the invoice. Previously, the discount was not reflected on the invoice.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/3f12d152>>
* _ACP2E-3498_: Incorrect discount value when multiple cart price rules are applied simultaneously with discounted/special priced products
  * _Fix note_: Prior to the fix, fixed amount for whole cart rules were not being applied properly if more than one was being applied. Now, fixed amount discount cart rules are being applied properly.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/1984c61c>>

### SEO

* _AC-11907_: The system now successfully creates and functions URL rewrites with accents, preventing infinite loading during the saving process. Previously, adding a URL rewrite with an accent caused an infinite loading issue.
  * _Fix note_: <https://github.com/magento/magento2/commit/44cef3a9>>
  * _GitHub issue_: <Adding URL rewrites with an accent causes infinite loading>
  * _GitHub code contribution_: https://github.com/magento/magento2/issues/38692
* _ACP2E-3383_: Incorrect url_rewrite entries creation with multiple stores in one store group
  * _Fix note_: Prior to the fix, you could only generate URL rewrites on a website level when editing a product. With the fix, a new setting was introduced (Stores > Configuration > Catalog > Catalog > Search Engine Optimization, "Product URL Rewrite Scope" with options "Store view", "Website") that allows you to generate URL rewrites at the store view or website level.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/2d627301>>

### Search

* _AC-13053_: Getting "Enter a search term and try again." error on advanced search page in storefront in 2.4.8-beta1
  * _Fix note_: The system now correctly displays search results on the Advanced Search page when a product attribute is set to "No". Previously, setting a product attribute to "No" and performing a search would result in an error message, "Enter a search term and try again."
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/3ea26621>>
* _AC-13721_: magento/module-open-search depends on on nonexistent opensearch-php branch
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/05dc0bbf>>
* _ACP2E-3362_: search_query table when of huge size, has large impact on load time frontend
  * _Fix note_: Improved search listing page load time. Prior to the fix, the search listing page was being delayed because of an unoptimized query.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/55615e61>>

### Security

* _AC-11855_: The system now allows the loading of the font 'https://www.paypalobjects.com/webstatic/mktg/2014design/font/PP-Sans/PayPalSansBig-Medium.woff' without violating the Content Security Policy directive, ensuring the correct display of the Paylater Popup. Previously, the font was refused to load due to a violation of the Content Security Policy directive, causing display issues with the Paylater Popup.
  * _Fix note_: <https://github.com/magento/magento2/pull/37401>>
  * _GitHub issue_: <[Issue] Missing Font CSP Paylater Popup>
  * _GitHub code contribution_: https://github.com/magento/magento2/issues/38624
* _ACP2E-3273_: ReCaptcha V2 shows incorrectly on checkout for German language
  * _Fix note_: Previously the recaptcha from under email address from checkout appear unstyled for languages with long words, like german. After this the recaptcha looks the same as all recaptcha elements from the rest of the areas.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/7377de59>>

### Shipping

* _AC-10757_: The system now correctly uses the term "carrier" instead of the misspelled "currier" in the JavaScript handler functions used in the order tracking template, ensuring proper function naming and code clarity. Previously, the misspelled term "currier" was used, leading to potential confusion and inconsistency in the codebase.
  * _Fix note_: <https://github.com/magento/magento2/pull/33414>>
  * _GitHub issue_: <[Issue] Fixed typo in tracking.phtml - renamed JS-functions "currier" to "carrier">
  * _GitHub code contribution_: https://github.com/magento/magento2/issues/34523
* _AC-11811_: UPS REST "A shipment cannot have a KGS/IN or LBS/CM or OZS/CM as its unit of measurements"
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/9b1713d8>
* _AC-11938_: Ensure to UPS rates should visible in checkout and cart.
  * _Fix note_: <https://github.com/magento/magento2/commit/493e01f5>>
  * _GitHub issue_: <UPS REST "A shipment cannot have a KGS/IN or LBS/CM or OZS/CM as its unit of measurements">
  * _GitHub code contribution_: https://github.com/magento/magento2/issues/38618
* _AC-13172_: [Issue] Correct spelling of variables for customer address
  * _Fix note_: The system now correctly spells variables for customer addresses, ensuring accurate display in the account area of the front end. Previously, incorrect spelling of these variables could lead to errors during local code reviews.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/32817>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/32815>>
* _ACP2E-3340_: FedEx Track API not working with REST credentials
  * _Fix note_: Previously FedEx integration didn't require additional API keys for Tracking API. Now new configuration was added to support Tracking API keys.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/ec7e32a9>>
* _ACP2E-3354_: [Cloud] FedEx Negotiated Rates not returned on REST
  * _Fix note_: Previous to the fix,FedEx account specific rates where not sent on the response, even through according to FedEx documentation they should have been sent. After the fix, the account specific rates are sent on the response by changing the request from our side.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/55615e61>>

### Staging & Preview

* _ACP2E-3453_: Unable to Update Scheduled Update When Using Unique Custom Category Attribute
  * _Fix note_: Fixed an issue where updating a scheduled update for a category was not possible if the category had a unique attribute
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/078c387e>>

### Targeting

* _AC-9432_: The system now supports the use of CIDR ranges in the maintenance mode allow IP list, enabling a range of IP addresses to bypass maintenance mode. Previously, the maintenance mode allow IP list only permitted individual IP addresses to bypass maintenance mode.
  * _Fix note_: <https://github.com/magento/magento2/pull/30699>>
  * _GitHub issue_: <[Issue] Allow use of CIDR ranges in maintenance allow list>
  * _GitHub code contribution_: https://github.com/magento/magento2/issues/37943

### Tax

* _AC-13295_: [Issue] Feature/php8.1 constructor property promotion wee graph ql
  * _Fix note_: Replace allmost all properties with constructor property promotion in module wee graph ql:
  * _GitHub issue_: <https://github.com/magento/magento2/issues/39309>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/36975>>
* _ACP2E-3193_: Fixed Product Tax (FPT) is not working with configurable products
  * _Fix note_: FPT for configurable product variations working properly.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/ec7e32a9>>

### Test framework

* _AC-11491_: [Skip] Need to be Un-skip again Integration test
  * _Fix note_: <https://github.com/magento/magento2/commit/1227768a>
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/493e01f5>
* _AC-13362_: [Issue] PHPDoc correction spelling
  * _Fix note_: The system now correctly recognizes deprecated methods in IDEs due to a spelling correction in the PHPDoc. Previously, a spelling error in the PHPDoc caused IDEs to not recognize certain methods as deprecated.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/31399>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/31398>>
* _AC-13478_: MAGETWO-95118: Checking behaviour with the persistent shopping cart after the session is expired
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/7d5e3906>>
* _AC-13848_: Fix static tests to enable usage by 3d-party extensions
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/9e383b4d>>
* _ACP2E-3334_: [Internal] Fixture apply failure is not shown during execution or in logs
  * _Fix note_: '-
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/d4de4726>>
* _ACP2E-3458_: [MFTF] StorefrontCheckoutProcessForQuoteWithoutNegotiatedPricesTest
  * _Fix note_: Fixed mftfs
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/078c387e>>

### UI Framework

* _AC-12189_: The system now generates less/css sourcemaps without the /pub prefix for paths when using grunt, eliminating the need for a workaround in the webserver configuration. Previously, the use of the /pub prefix in sourcemaps paths required a specific configuration in the webserver to function correctly.
  * _Fix note_: <https://github.com/magento/magento2/pull/38840>>
  * _GitHub issue_: <Grunt Less uses pub/ prefix for sourcemaps>
  * _GitHub code contribution_: https://github.com/magento/magento2/issues/38837
* _AC-12432_: Ui Component File Field
  * _Fix note_: The system now correctly validates the file field in a UI component form, allowing the form to be submitted without error when a file is selected. Previously, the validation would fail even when a file was selected, preventing the form from being submitted.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38908>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/39004>>
* _AC-12645_: [Issue] Improved date format in js console: switch from 12 hour to 24 hour fo…
  * _Fix note_: Improved date format in js console: switch from 12 hour to 24 hour
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38983>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/38972>>
* _AC-12650_: [Issue] add sourceMap generation for less files in developer mode
  * _Fix note_: The system now generates source maps for less files when in developer mode, making it easier to identify the source of a style. Previously, identifying the source of a style was challenging when running the system in developer mode with server-side less compilation.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38982>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/38977>>
* _AC-1306_: The system now excludes CSS related to disabled modules from the final CSS output files, ensuring that unnecessary styles are not loaded. Previously, CSS related to disabled modules was included in the final CSS output files, leading to the loading of extra, unnecessary styles.
  * _Fix note_: <https://github.com/magento/magento2/pull/32922>>
  * _GitHub issue_: <Static content is deploying for disabled modules>
  * _GitHub code contribution_: https://github.com/magento/magento2/issues/24666
* _AC-13459_: Inconsistent Behavior in "Out of Stock" Sorting with Minimum Stock Threshold
  * _Fix note_: The system now correctly sorts products in the catalog based on stock levels, adhering to the set Minimum Stock Threshold and moving out-of-stock items to the bottom of the list consistently. Previously, the sorting behavior was inconsistent, with items not always appearing in the correct order based on their stock levels, and changes in sorting could occur unpredictably after saving, refreshing, or modifying the category hierarchy.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/47b448e2>>
* _AC-13472_: Suggestion for improved error reporting for require.js loading problems
  * _Fix note_: This PR improves the error message when requirejs fails to load a component.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/36761>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/38971>>
* _AC-14004_: PHP 8.4 Deprecation Errors Causing Build Failures in 2.4-develop
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/1da9ba6f>>
* _AC-9007_: The system now ensures that backend block context is not loaded on the frontend, preventing the creation of unnecessary backend sessions and potential session locks. Previously, the system was incorrectly loading the backend block context on the frontend, leading to the creation of backend sessions and potential session locks.
  * _Fix note_: <https://github.com/magento/magento2/pull/36368>>
  * _GitHub issue_: <[Issue] Do not load backend block context on frontend>
  * _GitHub code contribution_: https://github.com/magento/magento2/issues/37617
* _AC-9168_: [Issue] Remove unnecessary scripts review summary
  * _Fix note_: The system now optimizes page load time by removing unnecessary JavaScript scripts from the rating section, instead using inline CSS styles for a more efficient and readable code. Previously, the use of JavaScript scripts for the rating section could potentially slow down page load time.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/37776>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/34643>>
* _ACP2E-3367_: Site Header | Special Characters Breaking the Customer Welcome section
  * _Fix note_: After the fix, special characters are shown correctly in the customer welcome section.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/1366ae5e>>
* _ACP2E-3561_: Customer Segment edition fails with daterange
  * _Fix note_: It is possible to save customer segment with date range condition, when only one of dates was edited.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/a52ff98f>>
