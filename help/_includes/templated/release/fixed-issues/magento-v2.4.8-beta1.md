# Magento Open Source fixed issues (v2.4.8-beta1)

## Fixed issues

We have fixed 221 issues in the Magento Open Source 2.4.8 core code. A subset of the fixed issues included in this release is described below.

### APIs

* _AC-10042_: /V1/transactions REST API returns error when parent_txn_id = txn_id
  * _Fix note_: The system now correctly handles the parent and child concept transactions where the parent transaction ID is the same as the transaction ID, preventing an infinite loop when querying the /V1/transactions REST API endpoint. Previously, this scenario would result in a fatal error due to maximum execution time being exceeded.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/1bafc571>
* _ACP2E-2927_: [REST API]: Use Default value in store view does not stay checked after adding configurations for a configurable product
  * _Fix note_: The issue has been fixed by ensuring correct database entries for the customizable options for a non-default store. The checkbox for the custom store in the "admin > Catalogue > Product Edit > Customizable Options" section was previously unchecked owing to inaccurate database entries, even if the option title for the custom store stayed the same as the default store.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/3056e9cb>
* _ACP2E-3091_: [Cloud] Creating the Duplicate website group price customer group in Tier Prices Api.
  * _Fix note_: Now Tier Price Rest Api doesn't allow to create the Duplicate website group price customer group.
Previously it was possible to create the Duplicate website group price customer group in Tier Prices Api that would not pass validation in Admin during product save.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/148c3ead>
* _AC-11878_: [Graphql] Type issue in 2.4.7
  * _Fix note_: The system now correctly handles integer values in the GetCustomSelectedOptionAttributes function when executing a GraphQL query, preventing any type-related errors. Previously, launching a GraphQL query that used GetCustomSelectedOptionAttributes with an integer argument resulted in a type error.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38662>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/38663>
* _ACP2E-3130_: Can't add order comment with status via REST API
  * _Fix note_: The issue has been resolved by allowing the change in order status if it is from the current state only. Previously, it was not honouring the order state and preventing changes in any order status, even if it was from the same state.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/93d50f8d>
* _ACP2E-3079_: Customer address update failing when updating through REST API if "validateDefaultAddress" enabled
  * _Fix note_: The API endpoint is now functioning as intended after the problem with the ID key missing from the API payload has been resolved.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/9af794a4>
* _ACP2E-2969_: REST API unable to make requests with slash (/) in SKU when using Oauth1
  * _Fix note_: Prior to the fix, you were not able to make a successful API call for a product that had "/" in its SKU. Now, you can issue a successful API get request for product details even though its SKU has a forward slash in it.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/b21e5d91>

### Account

* _AC-10782_: Customer address form allows random code in the name fields
  * _Fix note_: The system now validates the input in the First Name and Last Name fields in the customer address form, preventing the use of random code. Previously, the system allowed the use of random code in these fields without throwing an error.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38331>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/38345>
* _AC-11999_: dev:di:info error in magento 2.4.7
  * _Fix note_: The system now correctly displays constructor parameters when executing the dev:di:info command, preventing any errors from occurring. Previously, executing this command resulted in an error due to a type mismatch in the argument.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38740>
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/0c53bbf7>
* _AC-6071_: Customer is logged in but showing 404 error in frontend.
  * _Fix note_: The storefront customer dashboard page now loads as expected when a customer logs in. Previously, customers could log in, but this page showed a 404 error. [GitHub-35838](https://github.com/magento/magento2/issues/35838)
  * _GitHub issue_: <https://github.com/magento/magento2/issues/35838>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/36263>
* _AC-11919_: Admin: Page Actions Buttons floating left instead of right
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38701>
  * _GitHub code contribution_: <https://github.com/magento/magento2/ (Internal, Unmerged)>
* _AC-10990_: my account add address crash on save
  * _Fix note_: The system now correctly saves customer addresses even when the region field is not displayed, preventing a crash during the save process. Previously, attempting to add or edit an address without a displayed region field would result in an exception error.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38406>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/38407>
* _ACP2E-2791_: Not able to Save Customer attribute information in Admin Edit customer section;
  * _Fix note_: The store ID of the customer is now implemented properly per website scope for the admin customer edit form.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/488c1034>

### Admin UI

* _ACP2E-3171_: COD is not available for allowed specific countries
  * _Fix note_: Now Cash on delivery is available for allowed specific countries whenever it is required and   AC-3216 is working as expected.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/6f4805f8>
* _AC-7700_: [Issue] Drop indexer changelog tables on mview unsubscribe
  * _Fix note_: The system now automatically removes unused changelog tables when an index is switched from 'update on schedule' to 'update on save', marking the index as invalid to ensure no entries are missed. Previously, switching an index to 'update on save' would leave unused changelog tables in the system and mark all changed indexes as 'valid'.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/29789>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/25859>
* _ACP2E-3033_: Unable to export more than 200 orders
  * _Fix note_: The server limits for the request size of previously submitted selected IDs have been neglected by altering the HTTP request from GET to POST in order to fix the issue. Previously, due to the server limitations for GET request size, the issue was encountered.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/93d50f8d>
* _ACP2E-2787_: Apostrophe in store view name is replaced by &#039;
  * _Fix note_: The grid's store view filters now properly display apostrophes
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38395>
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/39d54c2d>
* _ACP2E-2978_: Saving product by admin user with different role scope overwrites/deletes existing Related product information in the product
  * _Fix note_: Previously, before the fix, the related products were reset and became empty when the secondary admin user clicked on the save button without changing in related product. After this fix, the secondary admin user clicks on the save button and the product doesn't reset and is saved successfully.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/3056e9cb>
* _AC-9843_: i18n:collect-phrases breaks the translations integrity
  * _Fix note_: The `bin/magento i18n:collect-phrases -o` command  now correctly collects and adds new phrases from JavaScript and .phtml files, ensuring that translations are accurately reflected in the translation file. Previously, the system failed to include multiline translation phrases from JavaScript files and phrases from .phtml files in the translation file, leading to incomplete or incorrect translations.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/0c53bbf7>
* _ACP2E-2957_: Gallery in PageBuilder is showing old image thumbnail instead of newly uploaded image
  * _Fix note_: Regenerate image previews for images deleted and re-uploaded with same name through media gallery in page builder content.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/001e5188>, <https://github.com/magento/magento2-page-builder/commit/60140cd2>
* _AC-11588_: Data validation is success and Import button is present during Import products with Replace behavior
  * _Fix note_: The system now correctly validates data and hides the "Import" button during the product import process with "Replace" behavior, preventing any unintended data replacement. Previously, the system incorrectly validated the data and displayed the "Import" button, leading to potential data inconsistencies.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/0574ac23>
* _ACP2E-3125_: Password reset template issue with Admin user
  * _Fix note_: The issue has been resolved by using the correct key, which now includes the admin username in the email template and properly completes the subject. Previously, the problem stemmed from an outdated key that was being used.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/93d50f8d>
* _ACP2E-3037_: Checkout page Validation message incorrect.
  * _Fix note_: If any required field is left empty, such as "address," the server-side validation will not display the message. The client-side validation will ensure that the required field error notification appears, stating "This is a required field." Previously, the message "address is required" would appear if any required field was left empty, in addition to the client-side validation message.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/9af794a4>
* _ACP2E-2847_: Favicon upload fails to validate .ico files
  * _Fix note_: The file validation error has been updated to "File validation failed. Please verify the Image Processing Settings in the Store Configuration." Previously, it was simply "File validation failed."
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/39d54c2d>
* _AC-12167_: [Bug] Magento 2.4.7 doesn't allow product photo's with capital letter file extension.
  * _Fix note_: The system now accepts product image uploads with capital letter file extensions, ensuring a smooth product creation process. Previously, image uploads with capital letter file extensions were refused, forcing users to change the file extension to lowercase.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38831>
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/c8f87c25>

### Admin UI, Performance

* _ACP2E-3169_: After update to 2.4.5-p8 500 errors occur when creating order from admin
  * _Fix note_: Previously, when enabling HTML minification, an order from admin could not be placed. Now, with HTML minification enabled, the order from admin can be placed successfully.  
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/b21e5d91>

### Admin UI, Shipping

* _ACP2E-2519_: The coupon code count does not update in the   "Time Used" column in the Manage Coupon Codes tab if an order is placed with multi-shipping.
  * _Fix note_: Earlier, when an order was placed with multi-shipping, the coupon code count did not update in the "Time Used" column on the Manage Coupon Codes tab. Now, the correct count is displayed in both the "Time Used" reflecting the desired values with multi shipping.


  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/4745100c>

### Analytics / Reporting

* _ACP2E-2570_: Advance Report is not working
  * _Fix note_: The system now supports the generation of Advance Reporting data files for extra-large datasets by loading and writing reports in batches of 10,000. Previously, the Advance Reporting module was unable to generate data files for extra-large datasets, causing "MySQL server has gone away" errors during the execution of the analytics_collect_data cron job.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/a12063bd>
* _AC-9922_: Google Analytics CSP Error https://region1.analytics.google.com
  * _Fix note_: The system now correctly allows connections to 'https://region1.analytics.google.com' when Google Analytics is enabled, preventing Content Security Policy (CSP) errors. Previously, enabling Google Analytics and viewing the website from the EU would result in CSP console errors due to a refusal to connect to 'https://region1.analytics.google.com'.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/37750>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/38991>
* _ACP2E-3096_: Incorrect curl headers making newrelic:create:deploy-marker not working
  * _Fix note_: The system now correctly formats curl headers, allowing the newrelic:create:deploy-marker command to successfully create a deployment marker in New Relic. Previously, incorrect curl headers prevented the creation of a deployment marker in New Relic.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/37641>
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/6a185204>
* _ACP2E-3080_: Admin Ordered Products Report date range visibility issue.
  * _Fix note_: The user will be able to select any date from the ordered products report. Previously, after a table refresh, selecting 'FROM' date will reset 'TO' date.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/6f4805f8>

### Analytics / Reporting, B2B

* _ACP2E-2300_:  B2B - sitemap includes products/categories not assigned to Shared Catalog
  * _Fix note_: Restrict the sitemap generated categories and products to the categories and product assigned only to the public shared catalog and / or the catalog category permission setup.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/ea79f7dd>

### Analytics / Reporting, Cloud

* _ACP2E-3067_: Magento discards most New Relic cron transactions #34108
  * _Fix note_: AC is correctly reporting cron job related transactions to NewRelic. Previously, some cron job related transactions would be shown as "OtherTransaction/Action/unknown" in NR
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/35b1b1da>

### B2B

* _ACP2E-3044_: Unnecessary borders on the My Orders section
  * _Fix note_: Previously an additional container(order references) was created that applied additional CSS classes, which caused unnecessary border lines were appearing below the order number inside the My Orders section, which isn't visible now.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/9af794a4>

### B2B, Framework

* _AC-9607_: Filtering Company Grid & Then Attempting Grid CSV Export Will Fail & Throw Exception
  * _GitHub code contribution_: <https://github.com/magento/magento2/ (Internal, Unmerged)>

### Cart & Checkout

* _ACP2E-2664_: [Cloud] Production Parallel Requests to Add Same Product to Cart Result In Two Separate Items In The Cart rest API
  * _Fix note_: The system now correctly processes multiple parallel requests to add the same product to the cart into a single line item, preventing the creation of separate line items for the same SKU. Previously, making parallel requests to add the same product to the cart via the REST API would result in multiple line items for the same SKU.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/f89a447e>
* _ACP2E-2704_: Getting Unable to send the cookie. Size of 'mage-messages' while trying to Reorder
  * _Fix note_: The reordering processwill not generate its own errors now. It will rely on cart listing built-in item checks.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/ba25af8a>
* _AC-11876_: [Issue] Sales Rules regression in 2.4.7
  * _Fix note_: The system now correctly validates sales rules, preventing the application of a coupon code to a cart when the product condition does not match any product name. Previously, a sales rule could be applied and a discount given on the shipping amount even when the product condition did not match any product name.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38671>
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/0574ac23>
* _ACP2E-2798_: Default shipping address is not selected on checkout
  * _Fix note_: Default shipping address is now being selected event in context of enabled address search.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/7e0e5582>
* _ACP2E-2518_: Reorder adds non assigned product to cart
  * _Fix note_: Previously, for the different stores products can be reordered from the other store. After this fix is applied only the same store , same scope product can be reordered when the customer account share is enabled
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/f89a447e>
* _ACP2E-2923_: Multiple addresses added to the account when checkout as new customer
  * _Fix note_: The system now saves a new customer address only once if the order failed to be created, preventing the creation of multiple identical addresses in the event of order placement errors. Previously, the system would save a new address each time an order placement attempt was made, regardless of whether the order was successfully created or not.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/001e5188>, <https://github.com/magento/inventory/commit/2ebcef39>
* _ACP2E-2897_: [CLOUD] graphql addProductsToCart api issue with custom option
  * _Fix note_: GraphQL adds to cart correctly the same product with different custom options
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/c971859e>
* _ACP2E-2470_: Persistent shopping cart cleared during checkout step
  * _Fix note_: After the fix, selecting the payment method during checkout while not logged in doesn't terminate the persistent session.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/a4fbf702>
* _AC-11993_: [Issue] The loader blocks the shipping methods after the postcode is changed, shipping rates validation rules
  * _Fix note_: The system now correctly handles custom shipping methods without shipping rates validation rules, ensuring that the loader does not block the shipping methods after the postcode is changed in the shipping address during checkout. Previously, changing the postcode in the shipping address during checkout would cause the loader to block the shipping methods and not disappear when custom shipping methods without shipping rates validation rules were used.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38742>
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/1bafc571>
* _ACP2E-3025_: Admin User with limited Role Resources unable to view Shopping Carts
  * _Fix note_: Previously, the restricted admin could not see the abandoned shopping cart from the admin panel for an associated website. After this fix is applied, the restricted admin can see the abandoned shopping cart from the admin panel.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/d1f7dc95>
* _AC-11641_: [Issue] [Checkout] Depend directives updated in failed payment email template
  * _Fix note_: The system now correctly omits the shipping address and shipping method from the failed payment email template for virtual products, ensuring only relevant information is included in the email. Previously, the failed payment email for virtual products incorrectly included the shipping address and shipping method.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/32781>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/32511>
* _AC-10698_: GTag not send transaction prices and totals.
  * _Fix note_: The system now correctly sends transaction prices and totals to Google Tag when GTag is enabled, ensuring accurate tracking of ecommerce data. Previously, the currency was incorrectly being sent as part of the "all" orders, rather than being associated with the individual order.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/37348>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/37504>, <https://github.com/magento/magento2/pull/37349>
* _ACP2E-2646_: [Cloud] Sales Rule not applied to first order of Multi Shipping
  * _Fix note_: After the fix, the discount is shown correctly for each order of the same multi-shipping quote.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/f89a447e>
* _ACP2E-3004_: Reordering customer order via guest order form results an empty cart
  * _Fix note_: Previously, when placing a reorder through the Orders and Returns page, the customer was redirected to the login page. After this fix is applied, the registered customer is correctly redirected to the View Cart page when placing a reorder. The flow works the same as like as guest customers.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/6a185204>
* _ACP2E-2055_: Duplicate orders with same Quote Id at same time with few time difference
  * _Fix note_: Fixed the issue when Adobe Commerce customers encountered duplicate orders placed with the same QuoteID 
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/f89a447e>
* _ACP2E-2620_: In admin, the "Shopping Cart" on left side doesn't get updated when selecting the items and "Move to Shopping Cart" from the right side
  * _Fix note_: The "Shopping cart" on the left side gets updated when selecting the items and "Move to shopping cart" from the right side in the admin side. Previously this functionality was not working because the transformed cart items were not getting empty from the session.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/39d54c2d>
* _AC-10660_: Exception is not getting handled properly while adding a product to cart in the compare product page
  * _Fix note_: The system now properly handles exceptions when adding a product to the cart from the compare product page, displaying a message manager message in the controller. Previously, an exception would result in a JSON encoded page being returned instead of being properly caught and handled.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38200>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/38257>, <https://github.com/magento/magento2/commit/0c53bbf7>
* _AC-12170_: Coupon code feature is not working properly in the checkout page on Magento 2.4.7
  * _Fix note_: The system now enables the discount code/coupon input field on the checkout page for virtual and downloadable products, allowing users to apply discount codes as expected. Previously, the discount code/coupon input was disabled, and the button title text displayed as "Cancel coupon", preventing users from applying discount codes.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38826>
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/1bafc571>

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
  * _Fix note_: The Instant Purchase feature incorrectly selected the more expensive In-Store Delivery option for configurable products instead of the cheapest Flat Rate method. This fix ensures that the correct shipping method is chosen based on the actual price."
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38811>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/38819>, <https://github.com/magento/magento2/commit/29fe9097>

### Catalog

* _ACP2E-2871_: [Cloud] The Merchant is facing issues with wishlist count
  * _Fix note_: Adding a product to the wishlist in one store no longer increases the wishlist count in other stores open in the same browser. Previously, if both stores were loaded in the same browser, the wishlist count would increase in the other store as well.




  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/3a7c4d17>
* _ACP2E-2843_: Products on the frontend use store specific data when Single-Store Mode is enabled
  * _Fix note_: Previously, when we enabled single store mode for the default store view, the changes were not migrated to the website-level scope. After this fix is applied, when we enable single store mode, the default store view-specific data will be synced with website-level-specific data and will resolve the possible conflicts for products and categories.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/c8931218>
* _ACP2E-2857_: Cannot set "Default Sort By" in a category using the rest API
  * _Fix note_: Update correctly default_sort_by on a category through REST / SOAP APi request
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/57a32313>
* _AC-10910_: Cleanup of cron_schedule database table doesn't cleanup non-existing jobs
  * _Fix note_: The system now automatically cleans up the cron_schedule database table, removing entries for jobs that no longer exist in the system. This ensures optimal performance by maintaining a minimal number of rows in the table. Previously, entries for jobs from inactive or removed modules were not cleaned up, leading to unnecessary data accumulation in the cron_schedule table.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38217>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/38693>
* _ACP2E-3136_: [Cloud] Sub Category items are not displayed on the widgets edit on the admin backend
  * _Fix note_: The category tree on the new widget page should no longer have issues loading Level 5+ categories. Previously, some categories were missing when loading the tree past Level 5 categories.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/148c3ead>
* _AC-10953_: Tier Price is not being deleted from Configurable Product
  * _Fix note_: The system now correctly removes the tier price of a product when it is converted from a simple product to a configurable product, ensuring accurate price display on the frontend. Previously, the tier price of a configurable product was not deleted when a product was converted from a simple product to a configurable product, leading to a mismatch in the displayed price.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38390>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/38427>
* _ACP2E-3126_: [Cloud] Product Media Gallery GQL response is not sorted by image position
  * _Fix note_: The system now correctly sorts items in the media gallery by position in the GraphQL response, ensuring accurate display order. Previously, items in the media gallery were not sorted by position, leading to an incorrect display order.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/37671>
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/b21e5d91>
* _ACP2E-3100_: [Cloud] Image File does not exist in New Relic Error Log
  * _Fix note_: The system now synchronizes custom placeholder images to local storage, ensuring that they render correctly when using remote storage such as AWS S3. Previously, custom placeholder images failed to render when using remote storage, resulting in a broken image display and error logs.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/d1f7dc95>
* _AC-11804_: Category description WYSIWYG is empty on non default storeview
  * _Fix note_: The system now correctly saves and displays the category description in the WYSIWYG editor when editing a category on the store view level. Previously, the WYSIWYG editor would appear empty after saving a category description on the store view level.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38622>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/38623>
* _AC-12076_: [Issue] Fix wording of filter item on layered navigation
  * _Fix note_: The system now correctly uses the words "item" and "items" in the layered navigation filter item, enhancing the clarity and accuracy of the filter descriptions. Previously, these words were used incorrectly, leading to potential confusion for users navigating the filter options.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38789>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/37852>
* _AC-12164_: Date and Time Format for Custom Option Not Working
  * _Fix note_: The system now correctly applies the configured date format to product custom options of type Date, ensuring that the date format is displayed correctly on the front-end. Previously, changes to the date format configuration did not reflect on the front-end for product custom options of type Date.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/32990>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/38925>
* _ACP2E-3076_: Error when deleting bundle options
  * _Fix note_: The system now correctly deletes bundle options without triggering an error or causing the page to become unresponsive. Previously, attempting to delete bundle options would result in a "Page Unresponsive" error and prevent the product from being saved.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/6a185204>
* _ACP2E-3069_: Customers see prices from other customer groups
  * _Fix note_: Fixed issue where customer group related information was saved in a wrong segment due to the old value of the X-Magento-Vary in request
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/d1f7dc95>
* _ACP2E-3058_: Missing label in LayeredNavigation with option name 0
  * _Fix note_: The issue has been resolved by skipping an empty value checker for attribute value 0. Previously, it was considered empty and was causing the issue.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/3a7c4d17>
* _AC-6738_: Missing unique key on eav_attribute_option_value table
  * _Fix note_: The system now includes a unique key on the 'option_id' and 'store_id' columns in the 'eav_attribute_option_value' table, preventing the possibility of an option having multiple values for the same store view. Previously, faulty code could result in an option having multiple values for the same store view, causing issues when editing products or attributes.
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
* _ACP2E-3029_: [Cloud] Mobile Issue Only not able to pinch on the PDP image
  * _Fix note_: The system now supports pinch-to-zoom functionality on product detail page images in mobile view on Chrome, enhancing the mobile user experience. Previously, double-tapping on the image in mobile view on Chrome did not zoom in on the image as expected.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/148c3ead>
* _ACP2E-2224_: Regular Price does not show on PLP for Configurable Product 
  * _Fix note_: Regular price is now being displayed on product listing pages for configurable products that have children products with special price.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/a4fbf702>
* _ACP2E-2478_: Stock information not showing right on Visual Merchandising grid
  * _Fix note_: Stock is now displayed according to selected store.
  * _GitHub code contribution_: <https://github.com/magento/inventory/commit/bdbf97ea>
* _ACP2E-3009_: async.operations.all executed and created an error.
  * _Fix note_: Incorrect product link data in REST API calls no longer cause critical errors.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/a4fbf702>
* _ACP2E-2621_: Widget content is not updating on cms page
  * _Fix note_: The system now updates the widget content on a CMS page when a product is set as new and saved, ensuring that the page displays the updated product collection. Previously, the page was not updated to show the new product due to the incorrect cache identities used for the widget in the cache.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/f89a447e>
* _ACP2E-2630_: Issues saving advanced pricing on bundle products
  * _Fix note_: Bundle product saving performance improvement.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/b2286ecf>
* _ACP2E-2652_: [On-Premise] Re-index process is inefficient when creating Catalog Price Rules
  * _Fix note_: Now saving catalog price rule will not invalidate indexers, instead it will reindex affected products only
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/f89a447e>
* _ACP2E-2964_: [Cloud] URL update only for store_id=0
  * _Fix note_: The "URL Path" is now stored with the correct store ID. Previously, the store ID was incorrect, resulting in incorrect URL paths remaining in the database when moving categories.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/9af794a4>
* _ACP2E-2679_: Updating time of Date and Time type product attributes via CSV import
  * _Fix note_: Now datetime attributes will have time part in exported data. It will be also possible to update the time for such attributes using import. Also if "Fields Enclosure" is enabled, attribute values in "additional_attributes" column will be enclosed within double quotes.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38306>
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/ea79f7dd>
* _ACP2E-2689_: No Appropriate error message when website id is wrong in the request
  * _Fix note_: Now the appropriate error message was added to display when the website id is wrong in the request. Previously there was no validation when the website id was wrong in the request.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/39d54c2d>
* _ACP2E-2956_: YouTube Video Adding Bug
  * _Fix note_: Product images and videos are configured in global scope. Given that you can't have a product video in one scope and not in another, Youtube API key setting has been set to global scope.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/a4fbf702>
* _ACP2E-2950_: [Cloud] Bundle Product wrong pricing in order confirmation
  * _Fix note_: Correct amount is displayed for bundle options in order on Storefront when currency other than base one was used.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/a4fbf702>
* _ACP2E-2909_: dynamic-rows.js:658 Uncaught TypeError: dataRecord.slice while editing bundle products 
  * _Fix note_: There is no javascript error in browser console while deleting option from bundle product.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38505>
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/93d50f8d>
* _ACP2E-2905_: [Cloud] Issue of Quote in multi-website architecture
  * _Fix note_: Previously, multi-website architecture with different currencies and customer groups could not correctly apply discounts to the store. After this fix is implemented, multi-website architecture with different customer group price discounts will apply successfully to different stores.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38506>
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/a4fbf702>
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
* _ACP2E-2874_: Category Page at frontend shows empty slots when using bundle product
  * _Fix note_: Bundle products that are not salable in current store context are not indexed anymore.
  * _GitHub code contribution_: <https://github.com/magento/inventory/commit/bc37ec76>
* _ACP2E-2837_: Product entity updated_at column values not updating while updating price through REST API
  * _Fix note_: The product 'last updated at' column from the admin is updated the proper date time while updating the existing products through the REST API. Previously the column 'last updated at' is not updated properly.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/39d54c2d>
* _ACP2E-2840_: It's possible to set non-unique values via product import
  * _Fix note_: The system now correctly enforces the unique value constraint for unique product attributes during product import, preventing from having duplicate values for that such attribute. Previously, it was possible to set non-unique values for product attributes that were configured to have unique values via product import.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38445>
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/7e0e5582>

### Catalog, Framework

* _ACP2E-2949_: [Cloud]Follow-up: Mismatch in Data Comparison when checking if data has changes
  * _Fix note_: Previously, the save object was called every time without any data changes (for any numeric data field - like int/float/double). It triggers the flag _hasDataChanges to be true and calls the save function. It also does not check the floating numbers encapsulated by string. After this fix applies, the save function will call only if the data is changed. The data value for int/float/double-check with the value passing to the function and does strict type matching
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/c8931218>

### Catalog, GraphQL

* _ACP2E-3090_: Handling Category Filters in GraphQL: includeDirectChildrenOnly and category_uid
  * _Fix note_: Only the direct child categories are fetched while filtering by category_uid.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/93d50f8d>

### Catalog, Pricing, Staging & Preview

* _ACP2E-2672_: [Cloud] Special price API endpoint returns error when updating large numbers of products concurrently
  * _Fix note_: Now Special Price bulk update API will create a single campaign for each date range instead of multiple scheduled updates for each product and date range. Also, it will support concurrent API requests for faster processing of large number of SKUs.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/f89a447e>

### Catalog, Product

* _AC-7050_: Category selection tree in edit product is not in the same order as set in Catalog->Categories
  * _Fix note_: The system now correctly displays the category selection tree in the product edit section in the same order as set in Catalog->Categories, making product administration easier in large catalogues. Previously, the category tree in the product edit section was displayed in the order of category creation, regardless of the display order set in Catalog->Categories.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/36101>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/36104>

### Catalog, Search

* _ACP2E-3053_: [Cloud] Elastic search error on certain category pages
  * _Fix note_: Previously, with the configuration ticket mentioned, when we put price 0 for multiple products, it will throw an exception at the frontend category page. After this fix applied when multiple product price 0 and we load category page at frontend it wont throw any exception and will load category page successfully.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/c8931218>
* _ACP2E-2757_: Products not showing on category and search but direct links are working
  * _Fix note_: Previously, the Yes/No custom attribute with price_* attrbute_code does not work with indexing. After this fix, the Yes/No custom attribute works as expected.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/ba25af8a>

### Cloud

* _ACP2E-3010_: [Cloud] PHPSESSID is changing each POST Request
  * _Fix note_: PHPSESSID no longer regenerates on POST requests on frontend area for a logged-in customer if L2 Redis cache is enabled and the customer was updated from the backend
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/6a185204>

### Content

* _AC-9638_: [Issue] file upload issue in WYSIWYG editor on product page
  * _Fix note_: The system now correctly displays the folder tree and allows image uploads in the WYSIWYG editor on the product page, even after expanding the 'Image and Videos' tab first. Previously, expanding the 'Image and Videos' tab first resulted in the folder tree not being displayed and an error message when attempting to upload an image in the WYSIWYG editor.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38026>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/38025>
* _ACP2E-3064_: Error Page Builder when editing CMS Block
  * _Fix note_: The system now correctly saves changes made in the admin area using Page Builder, without throwing the error "Page Builder was rendering for 5 seconds without releasing locks." in the browser console. Previously, this error would occur when attempting to save changes, preventing the successful update of content.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/35b1b1da>, <https://github.com/magento/magento2-page-builder/commit/4d5db10a>
* _AC-12283_: "Area code not set" after update to 2.4.5-p8
  * _Fix note_: The system now successfully completes the static content deployment process when the Magento_CSP module is enabled and "dev/js/translate_strategy" is set to "embedded", without triggering the "Area code not set" error. Previously, under these conditions, the static content deployment process would fail with an "Area code not set" error.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38845>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/38922>
* _ACP2E-2392_: [On-PREM] Dynamic block issue
  * _Fix note_: Wdigets are now being properly rendered within dynamic blocks.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/a12063bd>
* _ACP2E-3092_: [CLOUD] No buttons of checkout or edit cart on the cart section
  * _Fix note_: Bundle product is now added to the cart via widgets without errors.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/b21e5d91>, <https://github.com/magento/magento2-page-builder/commit/4ebe3f1d>
* _AC-10845_: Pagebuilder banner image not visible in gallery
  * _Fix note_: The system now correctly displays banner images uploaded in newly created folders in the Pagebuilder gallery, eliminating previous console errors. Prior to this fix, banner images were not visible in the gallery if they were uploaded in a new folder, causing a console error.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/c8f87c25>
* _ACP2E-2970_: Old media gallery fails to render images when a 0-byte image is placed in the directory
  * _Fix note_: The system now handles 0-byte images in the media gallery without disrupting functionality, allowing other images in the directory to be displayed and selected as expected. Previously, the presence of a 0-byte image in the media gallery would prevent all images in the directory from being displayed or selected.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/35b1b1da>
* _ACP2E-2842_: Switching to single store mode - global content no longer appears
  * _Fix note_: The system now synchronizes store view design configurations with website design configurations when enabling single store mode, ensuring that content updates are visible on the frontend. Previously, switching to single store mode would prevent content updates from being reflected on the storefront.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/7e0e5582>
* _ACP2E-2836_: ACP2E-2836: [Cloud] Investigate exception found in the log: InvalidArgumentException: Class does not exist in vendor/magento/module-rule/Model/ConditionFactory.php
  * _Fix note_: Removing a condition on PageBuilder products content settings no longer causes an exception to be recorded in the log files. Previously, removing a condition on PageBuilder products content settings would cause a critical exception to be recorded in the logs, despite not causing any issues on the frontend.
  * _GitHub code contribution_: <https://github.com/magento/magento2-page-builder/commit/36c0f5df>
* _ACP2E-3127_: imagecreatetruecolor(): Argument #2 ($height) must be greater than 0. Can't upload specific image
  * _Fix note_: Resolved the issue causing errors in the admin when uploading images with a height of 0 via the media gallery, and successful the assets synchronization using the sync command. Previously can't upload the image via the media gallery and the sync command also fails when a specific image is in the gallery.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/6f4805f8>
* _ACP2E-3154_: Prototype.js Array.from in conflict with Google Maps API
  * _Fix note_: Google Maps now renders properly in PageBuilder editor. Previously, a Javascript error prevents Google Maps from rendering correctly.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/148c3ead>
* _ACP2E-2693_: [Cloud] Frontend not loading due to issue in newsletter template
  * _Fix note_: Adding blocks via CMS Page content section does not lead to exception anymore
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/ea79f7dd>
* _AC-10539_: [Issue]  issue with the price display in the Recently Viewed widget
  * _Fix note_: The system now correctly displays the price of out-of-stock simple products in the "Recently Viewed Product" widget, ensuring consistency across all widgets and product list pages. Previously, the price of out-of-stock simple products was not displayed in the "Recently Viewed Product" widget due to a condition in the price loading templates.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38167>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/38159>
* _AC-10596_: [Issue] Correct typo and grammar in acl.xsd file
  * _Fix note_: The system now corrects a typo and grammar error in the acl.xsd file, enhancing the clarity and accuracy of the documentation. Previously, the acl.xsd file contained a typo and incorrect grammar which could potentially cause confusion.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38061>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/38046>
* _ACP2E-2903_: Page Builder replaces image when trying to add link and other usability glitches. 
  * _Fix note_: Now clicking on an image, links in wysiwyg editor in Page Builder text element will load proper data in the image, link configuration dialog. Also adding a link to an image in the editor now works properly. Previously, the image was replaced with a link.
  * _GitHub code contribution_: <https://github.com/magento/magento2-page-builder/commit/4d5db10a>

### Customer/ Customers

* _AC-12162_: Front end - Date of birth validation is failing in Customer creation page
  * _Fix note_: Ensure all validation should work after upgrade moment.js system dependency to the latest minor version
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/de4dfb8e>

### Framework

* _ACP2E-2966_: In ipad mini the menu and header loads as mobile, instead they should load as desktop.
  * _Fix note_: The system now treats devices with a width of 768px as desktop, ensuring that the menu and header load correctly. Previously, devices with a width of 768px were treated as mobile, causing the menu and header to load in a mobile view.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/35b1b1da>, <https://github.com/magento/magento2-page-builder/commit/4d5db10a>
* _AC-10654_: V1/customers/password endpoint question/issue
  * _Fix note_: The system now adheres to the constraints set within the management GUI when processing password change requests via the API, preventing potential abuse of the password reset function. Previously, the API could process password change requests outside of the rules defined in the management GUI, potentially allowing for a constant stream of reset emails if valid emails were known.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38238>
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/0c53bbf7>
* _AC-11489_: [Issue] Fix PHPDocs for \Magento\Framework\Data\Collection::getItemById
  * _Fix note_: The PHPDocs for the \Magento\Framework\Data\Collection::getItemById method have been updated to include null as a possible return type, addressing issues with static analysis tools. Previously, the method's PHPDocs did not specify null as a possible return type, leading to warnings or errors in static analysis when the method was used in conditional statements.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38485>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/38439>
* _AC-9712_: Difference in less compilation between php & nodejs library (grunt) with complicated `calc` expressions
  * _Fix note_: Fix the difference in less compilation between php & nodejs library (grunt) 
  * _GitHub issue_: <https://github.com/magento/magento2/issues/37841>
  * _GitHub code contribution_: <https://github.com/magento/magento2/ (Internal, Unmerged)>
* _AC-11476_: [Issue] Fix issues with Customer Data when form contains element with name `method`
  * _Fix note_: The system now correctly identifies the 'method' attribute in form submissions, even when an element named 'method' is present in the form. This ensures accurate processing of customer data. Previously, if a form element was named 'method', it would interfere with the identification of the 'method' attribute in form submissions, leading to potential issues with customer data handling.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38484>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/38449>
* _ACP2E-2855_: Type Mismatch in Data Comparison when checking if data has changes
  * _Fix note_: Previously, the save object was called every time without any data changes (for any numeric data field - like int/float/double). It triggers the flag _hasDataChanges to be true and calls the save function. After this fix applies, the save function will call only if the data is changed. The data value for int/float/double-check with the value passing to the function and does strict type matching.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/57a32313>
* _AC-12002_: [Issue] [View] Removed extra space in link and script tag
  * _Fix note_: The system now ensures that there are no extra spaces in the link and script tags, providing cleaner and more efficient code. Previously, double spaces could be found between attributes in the link and script tags.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/32920>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/32919>
* _ACP2E-2844_: Issues after upgrading MariaDB to 10.5.1 or higher
  * _Fix note_: Fixed the issue when datetime values in a DB would be converted to  0000-00-00 00:00:00 after Mysql upgrade
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/a12063bd>
* _AC-10838_: Catalog search index process error indexation process
  * _Fix note_: The system now successfully completes the re-index command without encountering any errors, regardless of the libxml version compiled with PHP. Previously, running the re-index command resulted in a "Catalog Search index process error during indexation process" error when PHP was compiled with certain versions of libxml.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38254>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/38553>, <https://github.com/magento/magento2/commit/0574ac23>
* _AC-12778_: [Issue] Minor cleanup: fixed wrong usage of sprintf, it only takes 2 placeholders here and w…
  * _Fix note_: The system now correctly uses the sprintf function with the appropriate number of placeholders, enhancing code cleanliness and consistency. Previously, the sprintf function was incorrectly used with an extra argument, which did not cause any major issues but was not the correct usage.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/39062>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/38628>
* _ACP2E-2692_: "Base table or view not found" error occurs when partial indexing is executed
  * _Fix note_: Partial reindex now works correctly with big changelog in case of secondary db connection
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/ba25af8a>
* _AC-12597_: [Issue] Remove references to files from extjs which got removed in e1ccdb…
  * _Fix note_: The system now removes references to files from extjs which were previously removed, eliminating errors in the browser's console and the system log file. Previously, these references were causing errors due to the absence of the referenced files.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38960>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/38951>
* _AC-11423_: Exception: Warning: Trying to access array offset in... -> Calendar.php since upgrade to ICU 74.1 (PHP Intl)
  * _Fix note_: Commerce no longer logs the following exception in the exception.log whenever a shopper or merchant visits either the storefront or Admin: `main.CRITICAL: Exception: Warning: Trying to access array offset on value of type null in /vendor/magento/framework/View/Element/Html/Calendar.php on line 114 in /vendor/magento/framework/App/ErrorHandler.php:62`. [GitHub-38214](https://github.com/magento/magento2/issues/38214)
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38214>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/38364>
* _ACP2E-2959_: [Cloud] import cannot be used with directory var
  * _Fix note_: Product can be imported successfully regardless of the file name.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/3a7c4d17>
* _AC-11651_: Magento trying to modify read-only property in __wakeup method of LoggerProxy
  * _Fix note_: The system now allows the modification of previously read-only properties in the LoggerProxy's __wakeup method, ensuring smooth operation without forcing users to employ a workaround. Previously, an attempt to reassign the value of a read-only property in the LoggerProxy's __wakeup method would cause issues.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38526>
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/c8f87c25>
* _AC-9630_: Upgrading Magento resets general/region/state_required when new country with required state/region is added.
  * _Fix note_: The system now only adds the modified country to the 'general/region/state_required' configuration when a new country with required states is added, preventing any disruption to custom code that assumes the region is disabled. Previously, adding a new country with required states would reset the 'general/region/state_required' configuration to default countries with a required state, potentially breaking the shop.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/37796>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/38076>
* _AC-10991_: Randomly getting flooded with queries from related / upsell / crosssell blocks and price indexing 
  * _Fix note_: The system now optimizes queries from related, upsell, and cross-sell blocks, improving the performance and preventing the site from going down due to excessive queries. Previously, the system could become overloaded with queries from these blocks, causing significant slowdowns and potentially bringing the site down.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/36667>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/38050>
* _AC-8353_: [Issue] Remove forbidden `@author` tag
  * _Fix note_: The system now adheres to coding standards by removing the forbidden `@author` tag from certain modules, ensuring cleaner and more standardized code. Previously, the `@author` tag was present in some modules, which was against the established coding standards.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/37253>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/37003>
* _AC-8356_: [Issue] Remove forbidden `@author` tag from `Magento_Customer` (part 2)
  * _Fix note_: The system now adheres to the coding standard by removing the forbidden `@author` tag from certain modules, ensuring cleaner and more standardized code. Previously, the `@author` tag was present in some modules, which was against the established coding standards.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/37250>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/37000>
* _AC-8358_: [Issue] Remove forbidden `@author` tag
  * _Fix note_: The system now adheres to coding standards by removing the forbidden `@author` tag from certain modules, enhancing code quality and consistency. Previously, the presence of this tag in some modules was in violation of the established coding standards.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/37264>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/37014>
* _AC-8360_: [Issue] Remove forbidden `@author` tag
  * _Fix note_: The system now adheres to coding standards by removing the forbidden `@author` tag from certain modules, enhancing the overall code quality. Previously, the presence of this tag in some modules was in violation of the established coding standards.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/37261>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/37011>
* _AC-8361_: [Issue] Remove forbidden `@author` tag
  * _Fix note_: The system now adheres to the coding standards by removing the forbidden `@author` tag from certain modules, ensuring cleaner and more standardized code. Previously, the presence of this tag in some modules was in violation of the established coding standards.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/37260>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/37010>
* _AC-8400_: [Issue] Remove forbidden `@author` tag
  * _Fix note_: The system now adheres to the coding standards by removing the forbidden `@author` tag from certain modules, enhancing the overall code quality. Previously, the presence of this tag in some modules was in violation of the established coding standards.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/37254>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/37004>
* _AC-8659_: Space in editorconfig syntax breaks rule for [{composer,auth}.json]
  * _Fix note_: The system now correctly applies a 4-space indent to the composer and auth.json files, following a fix to a syntax error in the editorconfig. Previously, due to a space in the editorconfig syntax, these files were incorrectly formatted with a 2-space indent.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/37394>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/37395>
* _AC-8714_: Varnish 7.3 - Sub Categories links / options of Default category are not getting displayed on Store front Home page
  * _Fix note_: Storefront home pages now display default category subcategories as expected. Previously, shoppers could access subcategories by URL only.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/d1c335aa>, <https://github.com/magento/magento2/ (Internal, Unmerged)>
* _AC-12594_: [Issue] Use compiled config for generated data instead of general config
  * _Fix note_: The system now uses the compiled configuration for generated data instead of the general configuration, reducing network transfer and overhead of data that depends on a certain version of code. This change prevents cache overriding in shared instances during container swapping, leading to improved stability and reduced downtime. Previously, certain core classes used shared config type, which could lead to cache overriding or application downtime due to differences in code versions across multiple servers.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38785>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/29954>
* _AC-11905_: [Issue] Static content deploy - Type error
  * _Fix note_: The system now correctly handles empty LESS files during static content deployment, displaying an "LESS file is empty" error message. Previously, an incorrect type error was thrown when encountering an empty LESS file during deployment.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38682>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/38683>
* _AC-11852_: Replace 'PayPal Account' translation in token_list.phtml
  * _Fix note_: The system now labels the section for tokenizable account payment methods as "Account" instead of "PayPal Account" in the Stored Payment Methods page, making it more representative of its function. Previously, this section was specifically labeled as "PayPal Account", which was misleading when other tokenizable account payment methods were added.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/35622>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/37959>
* _AC-10941_: Added created_at, status and grand_total filters to customer Orders query and fixed multiple filters failure
  * _Fix note_: The system now supports the use of created_at, status, and grand_total filters in customer Orders queries, and has resolved an issue where multiple filters were not being applied correctly. Previously, the system did not support these filters and would fail to apply all filters when more than one was used in a query.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38392>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/36949>
* _AC-11829_: [Issue] Fix exception handling inconsistency between developer and production modes
  * _Fix note_: The system now consistently handles exceptions between developer and production modes, preventing unexpected redirection to the login page when an exception is thrown. Previously, an inconsistency in exception handling could cause a redirect to the login page in production mode instead of displaying the exception message.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38639>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/37712>
* _AC-11819_: Built-in FPC cache is broken in 2.4.7 for some configurations
  * _Fix note_: The system now correctly caches pages when the MAGE_RUN_CODE parameter is set, ensuring optimal performance. Previously, pages were not being cached under these conditions, leading to potential performance issues.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38626>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/38646>, <https://github.com/magento/magento2/commit/0c53bbf7>
* _AC-11781_: [Issue] Rename wrongly named variable
  * _Fix note_: The system now correctly names the variable that contains the amount of money that can still be refunded, preventing confusion during debugging. Previously, this variable was incorrectly named as totalRefund, which could lead to misunderstandings for developers.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38609>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/36205>
* _AC-11696_: ChangelogBatchWalker does not work in multiple threads
  * _Fix note_: The system now supports process fork for MView indexation, preventing errors during indexer execution when operating on multiple threads. Previously, running the ChangelogBatchWalker on multiple threads would lead to the deletion of tables used by other threads, causing an error during indexer execution.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38246>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/38248>
* _AC-8984_: [Issue] Adds some more colors to the output of certain setup cli commands
  * _Fix note_: The system now adds more colors to the output of certain setup command line interface (CLI) commands, enhancing readability and user experience. Previously, the output of these commands was harder to read due to lack of color differentiation.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/29335>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/29298>
* _AC-6754_: typo error on a js file.
  * _Fix note_: The system now correctly uses the term "subscribers" in the JavaScript file, ensuring proper functionality of the related features. Previously, a typographical error in the JavaScript file resulted in the incorrect use of the term "subsctibers".
  * _GitHub issue_: <https://github.com/magento/magento2/issues/36163>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/36171>

### Framework, GraphQL

* _AC-7976_: [Issue] Introduced support of custom scalar types for GraphQL schema
  * _Fix note_: The system now supports custom scalar types for GraphQL schema, allowing developers to define custom scalar types and implementations. This feature can be particularly useful for expressing values that may require validation, such as HTML, emails, URLs, dates, etc., and for more advanced cases like EAV attributes. Previously, the system did not support the processing of custom scalar types in GraphQL.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/36877>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/34651>, <https://github.com/magento/magento2/commit/0574ac23>

### GraphQL

* _ACP2E-3190_: [Cloud] Products graphql having error when same simple product has assigned to multiple configurable products
  * _Fix note_: Previously, with separate configurable products with the same simple product, grapQL returns an error. After this fix apply, different configurable products with the same simple product, grapQL returns result without no error.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/148c3ead>
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
  * _Fix note_: The issue has been fixed after applying the check while requesting a product search with category aggregations through a GraphQL query when the admin configuration setting of "Catalog > Layered Navigation > Display Category Filter".
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/12e071c3>
* _ACP2E-2928_: GraphQL Products call containing the price filter {from:"0"} returns no result
  * _Fix note_: Previously graphql products search with filter for zero prices did not return any results at all due to a thrown exception. Now the search returns results as expected.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/c971859e>
* _ACP2E-3128_: [Cloud] Broken GraphQL call for getPurchaseOrder with node quote
  * _Fix note_: The Purchase Order GraphQL call will be able to execute the task without encountering any internal server errors.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/6f4805f8>
* _ACP2E-3184_: [Cloud] Configurable Products not shown in Production Site if Product is not enabled in "All Store Views"
  * _Fix note_: The system now correctly displays configurable products in the site even if the product is not enabled in "All Store Views", but is enabled in specific store view scopes. 

Previously, if a product was disabled in "All Store Views" and enabled only in specific store view scopes, the product attributes would not be displayed correctly in the GraphQL response, leading to the product not being displayed properly.
  * _GitHub code contribution_: <https://github.com/magento/inventory/commit/3f300077>

### GraphQL, Inventory / MSI

* _ACP2E-2607_: MergeCart mutation throws exception when source and destination carts have same bundle items
  * _Fix note_: '-
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

### Import / export

* _ACP2E-2990_: Customer "created_at" date Not Converted to store time zone upon export
  * _Fix note_: A column 'created_at' date value is converted to the proper date format based on the store timezone in the customer export CSV section.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/3056e9cb>
* _ACP2E-2902_: Add/Update Import on Products Duplicating Customizable Options
  * _Fix note_: The issue has been resolved by assigning the correct store to product options during product options CSV imports.
Previously, assigned to the admin store instead of their respective store.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/3a7c4d17>
* _AC-12172_: Issue at product import when provided with custom options-type: file (Created Product does not contain price for custom-option and show only the first file type extension provided)
  * _Fix note_: The system now correctly imports product data with custom options of type 'file', ensuring that all provided file extensions are displayed and the price for the custom option is included. Previously, during product import, if a custom option of type 'file' was provided with more than one file extension, only the first extension was displayed and the price for the custom option was missing.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38805>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/38926>
* _ACP2E-2737_: Duplicate customers being created with same email address using import
  * _Fix note_: Importing the customer while Account Sharing set to Global, imported customer that exists in the system is updated.
Previously imported customer was duplicated.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/c971859e>
* _ACP2E-2710_: Wrong execution time for import operation in Import History grid
  * _Fix note_: Import report execution time shows correctly independent of admin locale.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/ea79f7dd>

### Install & Administer

* _ACP2E-2102_: No Export VCL for Varnish 7 button in admin panel
  * _Fix note_: "Export VCL for Varnish 7" button was added to the Admin panel.

  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/a4fbf702>

### Inventory / MSI

* _AC-11593_: Google google API key is not working while adding Map with attributes
  * _Fix note_: The system now supports the latest Google Maps API version 3.56, allowing users to successfully add a Map content block from the PageBuilder menu to the stage without encountering any errors. Previously, users were unable to add a Map content block due to compatibility issues with the Google Maps API version, resulting in a "something went wrong" error message.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/0574ac23>
* _ACP2E-2794_: [Cloud] Critical Issue with Product Listing with Empty Spaces
  * _Fix note_: The system now correctly displays product listings without empty spaces when products are set to 'Out of Stock', ensuring a consistent and accurate display of available products. Previously, setting a product to 'Out of Stock' would result in an empty space appearing in the product listing, disrupting the layout and potentially confusing customers.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/ea79f7dd>, <https://github.com/magento/inventory/commit/b59e48ca>

### Order

* _ACP2E-3002_: [CLOUD] Cannot Disable Send Emails from Admin UI as Dev Docs shows
  * _Fix note_: The system now correctly prevents sales emails from being sent when email communication is disabled. These emails will no longer be sent when email communication is re-enabled. Previously, sales emails initiated while email communication was disabled would still be sent once email communication was re-enabled.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/c8931218>
* _AC-12462_: Cannot change intermediate custom status in admin using add comment form
  * _Fix note_: The system now correctly updates the order status to "Ready for Pickup" when changed from the "Add Comment" form in the admin panel, ensuring accurate tracking of order progress. Previously, the order status remained as "Sent" even after attempting to change it to "Ready for Pickup" through the "Add Comment" form.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38917>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/38923>
* _AC-10828_: Backend order overview screen: Backordered quantity not visible on order item level
  * _Fix note_: The system now displays the number of backordered items in the quantity column on the backend order overview screen. This ensures that users can accurately track the status of all items in an order. Previously, the quantity column only showed the number of items that were ordered, invoiced, and shipped, but did not display the number of backordered items.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38252>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/38320>
* _ACP2E-2622_: Unable to save changes to phone number in existing order details
  * _Fix note_: Now the user can add the international prefix 00 in the telephone field of order address
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38201>
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/12e071c3>
* _AC-11798_: [Issue] Shipping price showing diffrent in printed pdf
  * _Fix note_: The system now correctly displays shipping prices in printed PDFs according to the tax configuration settings, ensuring consistency between the sales order invoice view page and the printed invoice. Previously, the shipping price displayed in the printed PDF was excluding tax, regardless of the tax configuration settings.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38608>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/38595>, <https://github.com/magento/magento2/commit/1bafc571>
* _ACP2E-2756_: [Cloud] Order Status changed to complete when partially refund of a partially shipped order
  * _Fix note_: When issuing a credit memo, the order status is no longer changed to "completed" if there are items that haven't been shipped yet.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/7e0e5582>
* _AC-10994_: [Issue] Wrong store ID used in Order Address Renderer
  * _Fix note_:  The system now correctly uses the store ID associated with an order when rendering the order address, ensuring that addresses are formatted correctly according to their respective store ID. Previously, the system was incorrectly using the current store ID, which could lead to incorrect address formatting in cases where multiple order emails from different stores needed to be sent.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38412>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/37932>
* _ACP2E-3045_: Order closed without fully refunded
  * _Fix note_: The system now correctly maintains the order status as 'Processing' and the invoice status as 'Pending' when an order with an uncaptured payment has a shipment created. This ensures that orders are only marked as 'Closed' after being fully refunded. Previously, creating a shipment for an order with a pending invoice would incorrectly change the order status to 'Closed'.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/6a185204>
* _ACP2E-2734_: Emails are failing to send
  * _Fix note_: The system now includes a configuration option async_sending_attempts to specify the number of attempts to send an email before stopping, improving the handling of failed email sends when "Asynchronous sending" is enabled. Previously, if an email failed to send, the system would continuously attempt to resend it, resulting in an endless loop of error messages in the system log.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/b2286ecf>

### Order, Returns

* _ACP2E-2982_: Order refund results in duplicate credit memo
  * _Fix note_: Issuing the refund over REST API when two identical requests were executed simultaneously will no longer create duplicate Credit Memos.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/a4fbf702>

### Order, Tax

* _ACP2E-3003_: [CLOUD] Incorrect base_row_total in RESTFUL order API when enabling cross-border transactions and applying coupon discounts
  * _Fix note_: Now correct base_row_total is returned from RESTFUL order API when cross-border transaction is enabled and coupon discount is applied.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/9af794a4>

### Other Developer Tools

* _AC-12571_: Navigating in the categories tree leads to errors in Redis: "Redis session exceeded concurrent connections"
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38851>
  * _GitHub code contribution_: <https://github.com/magento/magento2/ (Internal, Unmerged)>
* _AC-10658_: [Issue] Fix HTML syntax error in visual.phtml
  * _Fix note_: The system now correctly closes the start tag in the visual.phtml file, ensuring proper HTML syntax. Previously, the start tag was not closed properly, causing an HTML syntax error.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38247>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/37457>
* _AC-11474_: [Issue] Changed "active" to "enabled" in bin/magento maintenance:status command
  * _Fix note_: The system now provides more accurate status messages for the maintenance mode command, changing the status from "active" to "enabled" and from "not active" to "disabled". Previously, the status message for the maintenance mode command was displayed as "active" or "not active", which could lead to confusion.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38486>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/38410>

### Payments

* _ACP2E-2841_: Payflow creates new transaction each time we click on fetch button on the view transaction screen
  * _Fix note_: The system now correctly fetches transaction information without creating a new payment transaction each time the fetch button is clicked on the view transaction screen. Previously, clicking the fetch button would incorrectly create a new payment transaction for an order that had already been paid.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/b2286ecf>
* _ACP2E-3028_: Paylater message not showing in PDP for Canadian paypal merchant account
  * _Fix note_: The system now correctly displays the PayLater message for Canadian PayPal merchant accounts on the Product Detail Page (PDP) when the buyer's country can be determined from the account billing address or shipment. Previously, the PayLater message was not displayed due to a missing parameter, resulting in an error in the browser console.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/6a185204>

### Performance

* _ACP2E-2494_: Performance issue when loading product attributes in cart rules
  * _Fix note_: Improved query performance for sales rules - from around 150ms to single digit ms.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/ba25af8a>
* _ACP2E-2910_: Order Rest API call is taking a long time to execute
  * _Fix note_: The system now executes the Order Rest API call within a reasonable timeframe, improving the performance when fetching a large number of orders. Previously, the Order Rest API call was taking a long time to execute, causing delays when retrieving a large number of orders.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/001e5188>
* _ACP2E-2850_: Order gets rejected on multi-store setup when using Async-order processing + Terms and Conditions
  * _Fix note_: The orders placed from non default websites with terms and conditions enabled are now processed.
Before they were automatically rejected.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/57a32313>
* _AC-12000_: [Issue] Code cleanup and add new critical head block and move critical css before assets
  * _Fix note_: The system now includes a new critical head block and moves critical CSS before assets, allowing for more customization and performance optimization in the frontend. Previously, the critical CSS was not positioned before the assets, limiting customization and optimization opportunities.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38748>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/35580>
* _ACP2E-2673_: Price partial indexing performance
  * _Fix note_: The price partial indexing performance has been improved by optimizing some of the delete queries used within the indexing process.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/ba25af8a>
* _AC-12176_: Theme compilation breaks when mysql host contains port information
  * _Fix note_: The system now correctly handles MySQL host configuration that includes port information, ensuring successful theme compilation. Previously, theme compilation would fail if the MySQL host configuration in the database connection included port information.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38799>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/38842>

### Product

* _ACP2E-2944_: [Cloud] addFilterToMap function is not working for certain columns
  * _Fix note_: Now, the custom module can be used in the order grid. Previously errors occurred while using a custom module.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/3a7c4d17>
* _AC-10947_: ProductRepository function GetById does not create the correct cache key
  * _Fix note_: The system now correctly creates a cache key in the ProductRepository's function GetById, regardless of whether the store ID is passed as a string or an integer. This ensures that the product is retrieved from memory on subsequent calls, improving performance. Previously, the system would retrieve the product from the database each time the function was called, even with the same parameters, due to incorrect cache key creation.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38384>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/38433>
* _AC-10535_: Special characters in configurable associate product name are  being Converted to HTML Entities.
  * _Fix note_: The system now correctly retains special characters in the names of associated products when editing a configurable product, preventing them from being converted into HTML entities. Previously, special characters in associated product names were converted into HTML entities when the configurable product was edited.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38146>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/38447>
* _AC-5969_: AlertProcessor - Argument #2 ($storeId) must be of type int, string given
  * _Fix note_: The system now correctly triggers product alert emails by ensuring the store identifier is of the correct data type. Previously, product alert emails were not being sent due to a type mismatch in the store identifier.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/35602>
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/0574ac23>
* _AC-11992_: [Issue] [MFTF] Added AdminClickAddOptionForBundleItemsActionGroup
  * _Fix note_: The system now includes the AdminClickAddOptionForBundleItemsActionGroup, enhancing the functionality of the admin panel. Previously, this action group was not available.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/30857>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/30838>

### Promotion

* _ACP2E-2811_: [Cloud] Reindexing Catalog Rule Product Indexer throws SQLSTATE[HY000]: General error: 2006 MySQL server has gone away.
  * _Fix note_: The system now correctly handles custom "batchCount" value in the di.xml for the "Magento\CatalogRule\Model\Indexer\IndexBuilder", preventing SQL errors such as "General error: 2006 MySQL server has gone away" during the reindexing of the Catalog Rule Product Indexer due to the incorrect batch size on large catalogs
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/b2286ecf>
* _ACP2E-2602_: Customer attribute not visible when creating account from invitation
  * _Fix note_: Customer attributes are available while creating account from invitation.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/39d54c2d>
* _ACP2E-2627_: Coupon code with Uses per Coupon limit is not getting released for payment failed with order cancel
  * _Fix note_: The system now immediately updates coupon usages when an order is created or cancelled, and adds rule usages to a queue to prevent potential deadlocks. This ensures that a coupon code with a "Uses per Coupon" limit is released and can be reused if an order is cancelled due to a failed payment. Previously, the system did not release the coupon code for reuse in such cases, resulting in an error message stating that the coupon code was not valid.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/c971859e>

### SEO

* _ACP2E-2641_: Multi Store Wrong category url-rewrite for third level category
  * _Fix note_: Generate correct url rewrites for children with parent with custom scoped url key
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/ea79f7dd>
* _ACP2E-2770_: Double-byte characters (special characters) in Product Name field blocks product creation in backend
  * _Fix note_: A new setting has been added that allows you to apply transliteration to product URL or not. Setting is available here: Stores > Configuration > Catalog > Catalog > Search Engine Optimization: "Apply transliteration for product URL"
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/b2286ecf>
* _AC-11907_: Adding URL rewrites with an accent causes infinite loading
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38692>
  * _GitHub code contribution_: <https://github.com/magento/magento2/ (Internal, Unmerged)>

### Security

* _AC-11855_: [Issue] Missing Font CSP Paylater Popup
  * _Fix note_: The system now allows the loading of the font 'https://www.paypalobjects.com/webstatic/mktg/2014design/font/PP-Sans/PayPalSansBig-Medium.woff' without violating the Content Security Policy directive, ensuring the correct display of the Paylater Popup. Previously, the font was refused to load due to a violation of the Content Security Policy directive, causing display issues with the Paylater Popup.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38624>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/37401>

### Shipping

* _ACP2E-2765_: MFTF test AdminCreatingShippingLabelTest failing due to credentials not added in Jenkins environment
  * _Fix note_: mftf test fix
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/ea79f7dd>
* _AC-10757_: [Issue] Fixed typo in tracking.phtml - renamed JS-functions "currier" to "carrier"
  * _Fix note_: The system now correctly uses the term "carrier" instead of the misspelled "currier" in the JavaScript handler functions used in the order tracking template, ensuring proper function naming and code clarity. Previously, the misspelled term "currier" was used, leading to potential confusion and inconsistency in the codebase.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/34523>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/33414>
* _ACP2E-2763_: Table Rates Still Showing Even Though Free Shipping Is Applied
  * _Fix note_: Table Rate shipping method now is shown even if Free Shipping becomes available after coupon applying
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/b2286ecf>
* _ACP2E-2738_: Tracking Window showing wrong Expected Delivery Date
  * _Fix note_: Display correct Delivery Date for Fedex Carrier. 
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/57a32313>
* _AC-11938_: UPS REST "A shipment cannot have a KGS/IN or LBS/CM or OZS/CM as its unit of measurements"
  * _Fix note_: Ensure to UPS rates should visible in checkout and cart.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38618>
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/493e01f5>

### Targeting

* _AC-9432_: [Issue] Allow use of CIDR ranges in maintenance allow list
  * _Fix note_: The system now supports the use of CIDR ranges in the maintenance mode allow IP list, enabling a range of IP addresses to bypass maintenance mode. Previously, the maintenance mode allow IP list only permitted individual IP addresses to bypass maintenance mode.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/37943>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/30699>

### Test framework

* _AC-11654_: Integration test failing testDbSchemaUpToDate due to JSON column type
  * _Fix note_: The system now correctly recognizes JSON column types in the database schema during integration tests, preventing test failures due to a mismatch between the database schema and the declarative schema. Previously, the system incorrectly identified JSON column types as LONGTEXT in MariaDB, causing integration tests to fail.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/ef81f5a2>

### UI Framework

* _AC-12189_: Grunt Less uses pub/ prefix for sourcemaps
  * _Fix note_: The system now generates less/css sourcemaps without the /pub prefix for paths when using grunt, eliminating the need for a workaround in the webserver configuration. Previously, the use of the /pub prefix in sourcemaps paths required a specific configuration in the webserver to function correctly.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38837>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/38840>
* _ACP2E-3061_: [Cloud] Confusion library code in effect-drop.js of AC 2.4.4-p8
  * _Fix note_: The system now correctly implements the effect-drop.js library, ensuring the proper functioning of jQuery UI effects. Previously, the effect-drop.js library was mistakenly overwritten with the effect-clip.js library, causing potential issues with jQuery UI effects.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/35b1b1da>
* _AC-1306_: Static content is deploying for disabled modules
  * _Fix note_: The system now excludes CSS related to disabled modules from the final CSS output files, ensuring that unnecessary styles are not loaded. Previously, CSS related to disabled modules was included in the final CSS output files, leading to the loading of extra, unnecessary styles.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/24666>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/32922>
* _AC-9007_: [Issue] Do not load backend block context on frontend
  * _Fix note_: The system now ensures that backend block context is not loaded on the frontend, preventing the creation of unnecessary backend sessions and potential session locks. Previously, the system was incorrectly loading the backend block context on the frontend, leading to the creation of backend sessions and potential session locks.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/37617>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/36368>
* _ACP2E-2729_: [CLARIFICATION] Feature Request ADA Compliance
  * _Fix note_: The system now ensures ADA compliance by removing unsupported CSS properties and replacing them with supported ones in the print.css file. Previously, the use of unsupported CSS properties led to browser compatibility issues.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/57a32313>
* _ACP2E-2529_: Exception when checking a gift card balance when Recaptcha is enabled
  * _Fix note_: Users will be able to fetch gift card balance in the view and edit cart screen. Previously these details were not shown while reCAPTCHA enabled.
  * _GitHub code contribution_: <https://github.com/magento/magento2-page-builder/commit/4a2795ea>
* _AC-12128_: [Cloud] Prototype.js security vulnerability CVE-2020-27511
  * _Fix note_: Security vulnerability CVE-2020-27511 should be resolved
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/de4dfb8e>
