# Adobe Commerce fixed issues (v2.4.8-beta2)

## Fixed issues in v2.4.8-beta2

We have fixed 185 issues in the Adobe Commerce 2.4.8 core code. A subset of the fixed issues included in this release is described below.

### APIs

* _ACP2E-3236_: Async operation fails when the SKU is missing from the payload
  * _Fix note_: Async and sync operations previously failed due to product save errors if sku is missing from payload. After the fix, the async and sync product save rest api operations fail with relevant exception message.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/66dea0de>
* _ACP2E-3376_: [CLOUD] Unable to update the Base-prices using REST API (The value of 'value_id' in 'catalog_product_entity_decimal' is not incremented correctly.)
  * _Fix note_: Previously to this fix, when rest api /rest/default/V1/products/base-prices was called, the increment id was increased wrongly leaving a gap between values. After the fix the increment id is increased as expected, incrementaly. Also the value_id field range was increased.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/d50f6b5d>
* _ACP2E-3486_: Default values are not set for date and time attributes with products RestAPI
  * _Fix note_: Default values now sets properly for date and date and time attributes via RestAPI
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/1984c61c>

### APIs, Cart & Checkout

* _ACP2E-3343_: Critical 500 Error: Magento\Framework\Webapi\Exception Related to Accept HTTP Header
  * _Fix note_: After the fix, there is no issue with specifying the "Accept" header.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/1366ae5e>

### APIs, GraphQL

* _ACP2E-3348_: no graphQl available for subscribing Reward Points updates for customer
  * _Fix note_: Previously to the fix, customer attribute reward_warning_notification could not be updated through GraphQL mutation and Rest API call. Now can be updated the same as customer attribute reward_update_notification.

### Account

* _AC-10886_: admin Password update.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38352>
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/4bca5dfe>
* _AC-11718_: Redirect loop when URL have uppercase
  * _Fix note_: The system now automatically converts uppercase characters in URLs to lowercase, preventing a redirect loop when accessing the homepage. Previously, having uppercase characters in the Secure Base URL would cause a continuous redirect loop when trying to access the homepage.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38538>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/38539>
* _AC-13000_: Login as customer opt-in checkbox not translatable
  * _Fix note_: The system now allows the "Login as Customer opt-in checkbox" and "Login as Customer checkbox tooltip" fields to be set at the "Store view" scope, enabling translations for different store views. Previously, these fields were only set at the "Website" scope, preventing translations for individual store views.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/32329>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/32359>
* _ACP2E-3329_: After logging in, the products added to the compare list as a guest user are not visible.
  * _Fix note_: Products that were added to product compare list before logging in as a customer now are preserved after logging in.
Previously, after logging in, the products added to the compare list as a guest user were not visible.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/078c387e>
* _ACP2E-3433_: Allow Countries configuration causes issues in customer address configurations
  * _Fix note_: Now selecting Allow Countries configuration doesn't influence countries shown for outside the given scope. Previously Allow Countries configuration influenced customer address attribute outside given scope
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/078c387e>
* _ACP2E-3445_: Shared Gift Registry shows the event date as 1 day earlier
  * _Fix note_: Gift Registry date is shown correctly now on Storefront

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
  * _Fix note_: The system now includes a permission check for the "Reload Data" button, ensuring that it is only displayed and accessible to users with the appropriate permissions. Previously, the "Reload Data" button was visible and clickable for all users, leading to a "not permitted" page when clicked by users without the necessary permissions.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38283>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/38279>
* _AC-13131_: [Issue] Fix Warning: Undefined array key "filters"
  * _Fix note_: The system now handles scenarios where a new user has not interacted with bookmarks yet, preventing an undefined array key "filters" warning from being logged. Previously, this warning would be logged when a fresh user had not interacted with bookmarks.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/39013>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/38996>
* _AC-13529_: Product import csv file with special characters fails due to code changes in Validate.php file
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/6cfb9b6b>
* _AC-7962_: No link to shipping when in payments in checkout in mobile phone view
  * _Fix note_: The system now ensures that the checkout titles/links "Shipping" and "Review & Payments" are always visible on top of the page in mobile view, allowing users to easily navigate between steps and make necessary corrections. Previously, these titles/links were hidden in mobile view, making it difficult for users to know their current step or go back to previous steps.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/36856>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/36982>
* _AC-8109_: customer Orders query shipment comments created_at is returned in +0 timezone not in store configured timezone
  * _Fix note_: The system now correctly displays the 'created_at' field from shipment comments in the customer's configured timezone when using the customer Orders query. Previously, the 'created_at' field was displayed in the +0 timezone, regardless of the customer's configured timezone.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/36947>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/37642>
* _ACP2E-3294_: The shipping address state is not auto updating
  * _Fix note_: Prior to the fix, the shipping address region (or region id) was not in sync with the address billing information. Now, both shipping address region and region id are properly updated when billing address information is changed.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/581b7ef1>
* _ACP2E-3364_: Reset button doesn't work on Add/Edit admin user
  * _Fix note_: Previously, the Reset button did not function on the Add/Edit Admin User page. Now, in the Admin panel under System -> Permissions -> All Users, the Reset button will work correctly on the Add/Edit Admin User page.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/5184c067>
* _ACP2E-3373_: [Cloud] Admin Panel exposed to the public - Custom Admin URL not effective
  * _Fix note_: After the fix, if the custom admin domain is a subdomain of the main domain, the admin is accessible only from the configured subdomain.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/37663>
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/55615e61>
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
  * _Fix note_: '-
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/d50f6b5d>

### Admin UI, Catalog

* _ACP2E-3389_: Adobe Commerce backend loads categories very slowly
  * _Fix note_: Improved performance of admin category page in case of large number of anchor categories
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/55615e61>

### Admin UI, Payment/ Payment Methods, Order

* _AC-13520_: Transaction Authorization Not Displayed in Transaction Tab After PayPal Smart Button Order
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/6cfb9b6b>

### Admin UI, Staging & Preview

* _ACP2E-3424_: [Cloud] Removing template with missing images causes pub/media to be deleted
  * _Fix note_: Previously to this fix, if the preview image name was missing for a pagebuilder template, the pub/media folder was deleted. After the fix, only the template will be deleted and the preview image if found.
  * _GitHub code contribution_: <https://github.com/magento/magento2-page-builder/commit/0986853b>

### Analytics / Reporting

* _AC-9922_: Google Analytics CSP Error https://region1.analytics.google.com
  * _Fix note_: The system now correctly allows connections to 'https://region1.analytics.google.com' when Google Analytics is enabled, preventing Content Security Policy (CSP) errors. Previously, enabling Google Analytics and viewing the website from the EU would result in CSP console errors due to a refusal to connect to 'https://region1.analytics.google.com'.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/37750>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/38991>
* _ACP2E-3146_: GTM missing addToCart event in dataLayer for configurable product with custom option
  * _Fix note_: Previously, the addToCart event was not being triggered for configurable products. Now, the event is properly added to the GTM dataLayer variable.
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
  * _Fix note_: The sales total in the coupon report grid is now accurately calculated by incorporating both the "Discount Tax Compensation Amount" and the "Shipping Discount Tax Compensation Amount." Previously, these amounts were missing from the calculation, leading to discrepancies between the sales total and the sales order data.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/d75cff27>
* _ACP2E-3339_: Issues with shared "<project_id>/var/tmp"
  * _Fix note_: Analytics DataExport temporary files will use the sys tmp directory, which is more suitable for frequent access and changes. To avoid collisions in case multiple instances are running on the same server, the tmp path was updated to use an instance's unique id
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/a4cf5e62>

### Analytics / Reporting, Cloud

* _ACP2E-3187_: Metric in NR might be misleading for background transactions- Follow up of ACP2E-3067
  * _Fix note_: Background transactions (cron) will use New Relic app name defined in the config settings
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/ec7e32a9>

### B2B

* _AC-13501_: 2.4.8-beta102 package Enterprise edition is failing with application exceptions
* _ACP2E-2139_: Products assigned to shared catalog are not reflect on the front end when partial index is executed
  * _Fix note_: Products assigned to shared catalog via REST API are now immediately visible on storefront after partial indexing is complete. Previously, Products were visible only after a full re-indexation.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/7377de59>
* _ACP2E-3247_: sales_clean_quotes cron deletes quotes from to yet approved purchase orders
  * _Fix note_: Quotes used in purchase orders now will not be deleted by sales_clean_quotes cron job
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/581b7ef1>
* _ACP2E-3465_: Place order button disappears in Purchase Order details
  * _Fix note_: Fixed an issue where Place order button was hidden for approved purchase orders when a product variation had minimum number in card specified
* _ACP2E-3474_: [CLOUD] No such entity with id = 0 with b2b module
  * _Fix note_: Logged in user is able to add product to cart when Shared Catalog features are enabled.
Previously adding product to cart resulted in Error 'no such entity with id = 0'

### B2B, GraphQL

* _ACP2E-3391_: [Cloud] Unable to set custom_attributes while comany creation over the graphql call
  * _Fix note_: After the fix, it's possible to set the "custom_attributes" attribute for the company admin during company creation using graphql request.

### Bundle

* _AC-10826_: Storefront Bundle Checkbox Validation Error message count more than 1
  * _Fix note_: The system now displays only one validation error message when the 'Add to Cart' button is clicked without selecting any checkbox options for a bundled product. Previously, the system was displaying multiple validation error messages for each unselected checkbox.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/3ea26621>
* _AC-13321_: Magento Exception thrown in some order related test cases
  * _Fix note_: The system now correctly handles the 'sendGuestPaymentInformation' step in various test cases, preventing Magento exceptions from being thrown. Previously, these exceptions were occurring due to a null payment method, causing failures in several test cases.

### Cart & Checkout

* _AC-11914_: [Issue] Sales rule CartFixed calculation : incorrect discount amount
  * _Fix note_: The system now correctly calculates the discount amount for sales rules with cart fixed amounts, ensuring accurate discounts are applied regardless of changes in cart items. Previously, the discount amount could vary incorrectly when cart items changed, sometimes resulting in significantly larger discounts than expected.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38694>
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/581b7ef1>
* _AC-12479_: Terms and conditions checkbox is not allowing HTML on storefront
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/6cfb9b6b>
* _AC-12541_: Cart price rule created for logged in user incorrectly gets applied for not logged in user
  * _Fix note_: The system now correctly removes the cart price rule for logged-in users when they are automatically logged out due to cookie expiration, ensuring that the discount is not applied to non-logged-in users. Previously, the cart price rule was still applied even when the user was logged out, resulting in an incorrect discount being applied to non-logged-in users.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38944>
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/7d5e3906>
* _AC-13302_: [Issue] [FEATURE] Performance optimisation large shopping carts by preventing…
  * _Fix note_: The system now optimizes performance for large shopping carts by preventing duplicate getActions calls, enhancing the speed and efficiency of shopping cart operations. Previously, for a shopping cart with multiple items, the getActions function was called multiple times, slowing down the system's performance.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/39292>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/39290>
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
* _ACP2E-3405_: [CLOUD] Checkout does not retain the selected billing address when Address Search is enabled
  * _Fix note_: Checkout payment page will now retain the selected billing address when address search is enabled. Previously if "Number of Customer Addresses Limit" is configured to 1, and customer has more than one address, the selected billing address would disappear after reloading the page.
* _ACP2E-3407_: Gift Card Product | Cart Merge is merging Gift Cards
  * _Fix note_: Giftcard products now merged correctly in the cart
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/88660e79>
* _ACP2E-3488_: Existing quote data is not update / not visible, instead create a new quote record when trigger_recollect = 1
  * _Fix note_: Customer's shopping cart items no longer disappear as result of a product being deleted after it was added to the shopping cart.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/1984c61c>

### Catalog

* _AC-11970_: Imposible to reorder configurable products with one checkbox selected custom option
  * _Fix note_: The system now correctly processes the reordering of configurable products with a single selected checkbox custom option, allowing for successful basket creation. Previously, attempting to reorder such products resulted in an error and prevented items from being added to the shopping cart.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38736>
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/1d144bce>
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
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/6cfb9b6b>
* _ACP2E-3103_: New Products RSS feed is not updated with new products due to cache
  * _Fix note_: The Rss feed for New Products is now updated when a product is set as new and saved
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/d01ee51e>
* _ACP2E-3198_: [cloud] Two-finger zoom and move issue on the real mobile device
  * _Fix note_: The system now ensures consistent image zoom functionality on mobile devices, providing a smooth and predictable user experience. Previously, the image zoom feature was inconsistent and would suddenly zoom out after a certain point when viewed on a mobile device.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/1366ae5e>
* _ACP2E-3282_: When we unassign products from the shared catalog, the wishlist products are not being cleared
  * _Fix note_: Now, no items are visible in the wishlist if a product is not available in the shared catalog. Previously, the wishlist page incorrectly displayed a count of "1 Item" even when no items were actually available in the wishlist.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/5184c067>
* _ACP2E-3286_: Related products Select All/Unselect All Issue
  * _Fix note_: Previously, the "Select All"/"Unselect All" buttons for related products didn't work correctly if a product was manually selected. After the fix, these buttons now function consistently, even after manual selection, ensuring that all products are properly selected or unselected.
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
* _ACP2E-3516_: Indexers Temporary tables are not cleaned up if the process is terminated
  * _Fix note_: CatalogRule indexer temporary tables are now cleaned up if the indexer process is terminated
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/1984c61c>
* _ACP2E-3520_: [QUANS] Core unit test failures in 2.4.7-p3
  * _Fix note_: Release notes for this test is not needed since it is a Unit-test improvement.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/1984c61c>

### Catalog, Content

* _ACP2E-3063_: [Cloud] Cache is not getting invalidated.
  * _Fix note_: Previously, when saving a CMS page with an updated design layout, it did not reflect appropriately on the front end. After this fix is applied, the appropriate design layout will be visible at the front end when we change the design layout and save the CMS page.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/66dea0de>
* _ACP2E-3131_: [Cloud] Anchor/Non-Anchor Categories Reversed in Content Widget
  * _Fix note_: Previously, when we selected Display On -> Anchor Categories, it showed all the categories that did not reflect the parent-child relation between the anchor and non-anchor. After this fix is applied, the  Display On -> Anchor Categories only displays Anchor Categories (selectable), and  Display On -> Non Anchor Categories displays Non-Anchor Categories (selectable)
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/7377de59>
* _ACP2E-3152_: Categories not working with widgets
  * _Fix note_: Previously, if we saved the CMS block for different anchor/non-anchor categories, it did not work for the child categories when it showed on the front end. After this fix has been applied, the block is shown at the front end for different categories.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/d01ee51e>

### Catalog, GraphQL

* _ACP2E-3312_: Tier Prices return wrong value in products GraphQL (compared to Storefront)
  * _Fix note_: After the fix, product's tier prices returned for graphql requests have price per one item.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/1366ae5e>
* _ACP2E-3385_: [CLOUD] B2B: category issue via GraphQL
  * _Fix note_: After the fix, the categories graphql query returns categories with allow permission even if the root category doesn't have allow permission.

### Catalog, Product

* _AC-12124_: [Random Bug] Fotorama lib isn't loaded
  * _Fix note_: The system now ensures that the Fotorama library is properly loaded, allowing all attached images to be displayed in the image gallery as expected. Previously, only the first image was visible due to an issue with the Fotorama library not loading correctly.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/7d5e3906>

### Catalog, Search

* _ACP2E-3345_: Type Error occurred when creating object: Magento\CatalogSearch\Model\Indexer\Fulltext\Interceptor Exception
  * _Fix note_: After the fix, an instance of Magento\CatalogSearch\Model\Indexer\Fulltext class can be created without specifying $data.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/1366ae5e>
* _ACP2E-3521_: [CLOUD] Issue with Products are Not Visible in Frontend After Saving in Magento Admin
  * _Fix note_: After the fix configurable products that have child products with long names will not be missed in the storefront.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/1984c61c>

### Catalog, Shipping

* _ACP2E-3195_: Shipping address empty while placing an order for a gift registry item
  * _Fix note_: Previously, for guest user gift-registry items, when returned from the email function, generated an empty blank address, which is incorrect for placing an order. After this fix is applied, the gift registry checks logged-in user/guest users and assigned addresses if they exist.

### Content

* _AC-12692_: Widget category tree is not rendered correctly
  * _GitHub issue_: <https://github.com/magento/magento2/issues/39008>
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/58e40ceb>
* _AC-13054_: Unable to see "Using Default value" message when changing the theme in design configuration page
  * _Fix note_: The system now includes a separate column to display the "Using Default value" message depending on the selected theme in the design configuration page. This ensures clarity and visibility of the default value status. Previously, the "Using Default value" message was not displayed, leading to confusion about the status of the selected theme.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/47b448e2>
* _AC-13569_: [Issue] Restores backwards compatibility with TinyMCE plugins again (after it…
  * _Fix note_: The system now restores backward compatibility with TinyMCE plugins, allowing functions defined inside the plugin to be called when using the widget from another location. Previously, due to a change in the TinyMCE version, the plugins were not returning the widgets as an object, resulting in an error when trying to call certain functions on the widget instance.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/39262>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/39258>
* _ACP2E-3122_: [CLOUD] Upload image button doesn't work
  * _Fix note_: Before the Upload Image button for Banner and Slider from PageBuilder didn't work as expected, and now when pressing it opens the local file manager to select the wanted image to upload.
  * _GitHub code contribution_: <https://github.com/magento/magento2-page-builder/commit/476ef8ea>
* _ACP2E-3275_: [Cloud] - CMS Slider not reflecting the latest changes
  * _Fix note_: The issue has been fixed by ensuring the slider list gets refreshed while the save event is triggered on the edit slide screen. Previously, it was triggering and causing the issue.
  * _GitHub code contribution_: <https://github.com/magento/magento2-page-builder/commit/ae2cdeb0>
* _ACP2E-3285_: CMS Page Hierarchy tab issue
  * _Fix note_: Previously, before this fix was applied, the CMS page hierarchy tab did not show a proper tree when editing a CMS page with the corresponding hierarchy. After this fix is applied, the CMS page hierarchy tree display properly in CMS page.
* _ACP2E-3326_: An error occurs in CSM page when CMS blocks are inserted using page builder in certain order
  * _Fix note_: Previously on some versions of PHP and OS (Linux), the rendering of blocks that referenced other cms blocks through PageBuilder would have failed with an "An unknown error occurred. Please try again.". Now the content of the cms blocks is rendered correctly inside a PageBuilder controlled content.
  * _GitHub code contribution_: <https://github.com/magento/magento2-page-builder/commit/ae2cdeb0>
* _ACP2E-3388_: [Cloud] Dynamic blocks will not function properly
  * _Fix note_: Logged-in customer segments are now cleared after logout preventing the guest session from inheriting previously logged-in segments
* _ACP2E-3430_: Latest security updates with TinyMCE 7 missing font size
  * _Fix note_: Font size and font family selectors are now available in WYSIWYG editor. Prior to this fix, with TinyMCE 7 these were not available in the editor interface.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/d50f6b5d>, <https://github.com/magento/magento2-page-builder/commit/2c2f7a0e>

### Customer/ Customers

* _AC-13060_: Customer Segment > Condition > Product History* > "product was viewed" does not work
  * _Fix note_: The system now correctly displays matched registered customers in the "Product was viewed" condition under Customer Segments, when the condition is met. Previously, even when the condition was met, the count of matched registered customers remained at zero.
* _AC-8499_: Region text field is not reset when country dropdown is changed
  * _Fix note_: The system now resets the region text field when the country is changed in the dropdown menu, ensuring that previous values do not persist. Previously, changing the country from the dropdown list did not reset the region field, causing the last saved value to be preserved.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/3ea26621>
* _AC-9240_: Deleting Customer Does Not Clean All Browser Session Data on Storefront for Logged in & Deleted Customer
  * _Fix note_: Deleting a customer now cleans all browser session data from the storefront for logged-in and deleted customers as expected. The shopper can continue shopping, and their browser treats their session as a guest session. Previously, when the customer account for a logged-in shopper was deleted from the Admin, then the shopper’s browser threw JavaScript errors.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/7d5e3906>

### Framework

* _AC-10738_: Varnish configuration does not exclude all marketing parameters
  * _Fix note_: The system now correctly excludes all common marketing parameters in the Varnish configuration, ensuring accurate tracking and analytics. Previously, certain marketing parameters such as gad_source, srsltid, and msclkid were not excluded, leading to potential inaccuracies in data collection.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38298>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/39188>
* _AC-11592_: [Issue] Allow only valid preferences during setup:di:compile
  * _Fix note_: The system now throws an error during the setup:di:compile command if a preference is created for a class that does not exist or is specifically excluded, ensuring that only valid preferences are allowed. Previously, these scenarios would fail silently, potentially rendering any plugins associated with the original classes useless.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38517>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/33161>
* _AC-11809_: [Issue] Pass custom attributes to current link via XML
  * _Fix note_: The system now allows custom attributes to be passed to the current link via XML, ensuring that these attributes are correctly displayed even when the link is the current page. Previously, custom attributes were not displayed for the current page link due to the getAttributesHtml() method not being used for the current link.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38500>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/30070>
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
* _AC-12857_: PHP 8.2.15 removed FTP extension
  * _Fix note_: The system now includes the FTP extension as a dependency in the composer.json file, ensuring the successful configuration of CSV imports via FTP. Previously, an error was thrown when attempting to configure CSV imports via FTP due to the FTP extension being missing in the PHP package.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/39083>
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/47b448e2>
* _AC-12964_: Ability to define Area for dev:di:info CLI command
  * _Fix note_: The system now allows developers to define an area for the dev:di:info CLI command, enhancing the development and debugging process. Previously, this command could only display information for the GLOBAL area.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38758>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/38759>
* _AC-13247_: setup:upgrade is failing with MariaDB 11.4 version due to charset & collation changes
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
* _AC-8662_: [Issue] Improve cron error logging
  * _Fix note_: The system now captures and logs both STDERR and STDOUT for cron processes, providing valuable diagnostic information in scenarios where cron processes fail. Previously, any error messages within cron processes were not recorded, and STDERR and STDOUT for cron groups running in separate processes were lost.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/37453>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/32690>
* _ACP2E-3230_: Modifying column length via db_schema.xml doesn't work in case of foreign keys
  * _Fix note_: modifying column with foreign key via declarative schema now doesn't rise errors with MariaDB
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

### Framework, UI Framework

* _ACP2E-3324_: Possibility to overwrite config value even if it's locked
  * _Fix note_: Previously to this fix, the design configuration could not be set through bin/magento config:set command and locked values could be changed by manipulation of the form displaying them. After the fix locked values set from cli with --lock-env or --lock-conf cannot be updated anymore.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/55615e61>

### GraphQL

* _ACP2E-2974_: Translations for customer return attributes not reflected in GraphQL API for respective StoreView
  * _Fix note_: Translations for customer return attributes are reflected in GraphQL API for respective StoreView.
Previously customer Return attributes for respective StoreView were not reflected in GraphQL API.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/ec7e32a9>
* _ACP2E-3215_: [Cloud] Issue with User Authentication and Cross-Site Token Access in Multi-Site Setup
  * _Fix note_: GraphQl Customer Info and Cart queries in Multi-Site setup checks if the customer on non-default website exists.
Previously query worked without making sure the customer exists on non-default website in Multi-Site setup.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/581b7ef1>
* _ACP2E-3255_: [GRAPHQL] model value should be specified when getting customerCart
  * _Fix note_: The GraphQL 'customerCart' query can now create an empty cart even when the quote is not available in the database. Previously, this operation failed due to country validation issues while creating the empty cart.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/fd5cf3af>
* _ACP2E-3380_: [GraphQl] Wishlist items are visible via GraphQl but not visible on storefront
  * _Fix note_: Wishlist products where not being properly listed when requested via GraphQL. Now, wishlist products are filtered based on provided store context.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/55615e61>
* _ACP2E-3404_: [GraphQL] Reset password email inconsistency between content and subject/link
  * _Fix note_: The issue has been resolved by simulating the correct store where the customer's account is registered when sending the password reset request, regardless of the website store.
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

### GraphQL, Search

* _ACP2E-948_: Product listing GraphQL query limited to total_count 10,000 products only
  * _Fix note_: After the fix, the search result is not limited to 10000 products, it becomes possible to get all products matching the search criteria even if the count is more than 10000.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/a4cf5e62>

### GraphQL, Test framework

* _ACP2E-3363_: Magento\GraphQl\App\GraphQlCustomerMutationsTest.php Integration Test failure
  * _Fix note_: '-
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/a4cf5e62>

### Import / export

* _ACP2E-3172_: Import button missing
  * _Fix note_: Resolve the Import button missing issue after data checks with correct and incorrect records in the CSV. Previously the import button doesn't display after data checks with correct and incorrect records in the CSV.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/1819fe73>
* _ACP2E-3382_: Exported customer address cannot be imported
  * _Fix note_: Customer address import will proceed as expected. Previously, a customer address import file would not pass validation if Share Customer Accounts = Global, and there are two websites where the default website has a restricted country list, and the address that is being imported is for another website where allowed countries are different
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/ec7e32a9>
* _ACP2E-3448_: [Cloud] Wrong quantity in CSV file did not give error
  * _Fix note_: Now stock sources import will throw validation error for non numeric values in the quantity column. Previously, importing stock sources with non numeric value in the quantity column resulted in the quantity being set to 0.
  * _GitHub code contribution_: <https://github.com/magento/inventory/commit/5b21b7af>
* _ACP2E-3475_: Product export causes OOM even with 4G memory limit
  * _Fix note_: Previous to this fix, the product export failed if product attributes had thousands of option values even with 4G available memory. After this fix, the product export should finish exporting the csv file.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/1984c61c>

### Install & Administer

* _AC-13242_: Magento upgrade fails on MariaDB 11.4 + 2.4.8-beta1
  * _Fix note_: Upgrade should happened without any error.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/7b336d0a>

### Inventory / MSI

* _ACP2E-3335_: Unable to ship the order when MSI pick up store is enabled
  * _Fix note_: Improved inventory performance of create shipping in case of many sources with in-store pickup
  * _GitHub code contribution_: <https://github.com/magento/inventory/commit/9f3e63d1>
* _ACP2E-3355_: Cron reindex fails to update product availability on the frontend
  * _Fix note_: Previously, Products remained out of stock on the frontend after updating the backorder status through the REST API. Now, after updating the backorder status via the REST API, products are shown as in stock.
  * _GitHub code contribution_: <https://github.com/magento/inventory/commit/e6fe0aa7>
* _ACP2E-3357_: Adding images to configurable not working when MSI is enabled.
  * _Fix note_: Image upload for configurable product will now work as expected when inventory module is used. Previously the image upload didn't work
  * _GitHub code contribution_: <https://github.com/magento/inventory/commit/fdf409aa>

### Inventory / MSI, Search

* _ACP2E-3413_: All products are indexed with [is_out_of_stock] = 1 when the SKU is not set as a searchable attribute
  * _Fix note_: After the fix, the "is_out_of_stock" in catalog search index is correct, even when sku is not searchable.
  * _GitHub code contribution_: <https://github.com/magento/inventory/commit/5b21b7af>

### Order

* _ACP2E-3311_: [Cloud] Cannot create order in admin on one store if only the Default Billing Address was not set up
  * _Fix note_: Now relevant error message "A customer with the same email address already exists in an associated website." is displayed if a customer doesn't have a Default Billing Address and tries to create an order on another store.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/d75cff27>
* _ACP2E-3416_: Admin duplicated place order requests sent
  * _Fix note_: Previously, the "Submit Order" button in the admin panel could be clicked multiple times or activated by repeatedly pressing the "Enter" key, causing duplicate or order submissions with error. Now, preventing additional actions until the order is fully processed, ensuring that only one order is submitted.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/5184c067>
* _ACP2E-3425_: Admin can still place order even without payment method
  * _Fix note_: Previously selected payment method is now retained when the payment method reappears in the list of available payments.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/d50f6b5d>

### Order, Payments

* _ACP2E-3233_: Admin can still place order even without payment method
  * _Fix note_: Previously, the merchant could place orders from the admin panel without selecting a payment method. Now, the merchant is required a payment method to proceed with placing an order.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/fd5cf3af>

### Other

* _LYNX-581_: Move back cookie-related properties from private to protected

### Other Developer Tools

* _AC-12731_: CSP issues combined with dev/css/use_css_critical_path
  * _Fix note_: The system now correctly loads CSS files asynchronously on checkout pages, even when the 'dev/css/use_css_critical_path' setting is enabled, ensuring that these pages are rendered with the proper CSS styles. Previously, a restricted Content Security Policy (CSP) prevented inline JavaScript from executing, which resulted in CSS files not being loaded as expected.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/39020>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/39040>
* _AC-13398_: Using virtual type to configure plugin, interceptor method cannot be generated correctly in setup:di:compile command
  * _Fix note_: The system now correctly generates interceptor methods when using a virtual type to configure a plugin, ensuring consistent results whether precompiled or runtime compiled. Previously, the system would generate incorrect results when precompiled compared to runtime compilation.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/33980>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/38141>
* _ACP2E-3441_: Unable to download files from Data Collector
  * _Fix note_: Downloading backup no longer shows blank page instead of downloading the file.

### Payments

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
* _AC-13471_: Support for Symfony's CommandLoaderInterface in Magento CLI
  * _Fix note_: This change reduces initialization time of the Magento CLI app by allowing deferred initialization of commands until they're needed.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/29266>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/29355>

### Product

* _AC-13173_: [Issue] Fix typo in PHPDoc block
  * _Fix note_: The system now correctly removes an unknown referenced variable in PHPDoc for the $helper variable declaration, enhancing code clarity and accuracy. Previously, this unknown referenced variable in PHPDoc was causing confusion and potential inaccuracies in the code.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/38961>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/38940>
* _AC-13423_: [Issue] Fixed broken Bundle and Downloadable product pages layout in Magento >= 2.4.7
  * _GitHub issue_: <https://github.com/magento/magento2/issues/39403>
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/6cfb9b6b>
* _ACP2E-3471_: [Cloud] Products in Category - Add Products - Assign - Select All
  * _Fix note_: Users can now select or deselect products using the toggle.

### Promotion

* _ACP2E-3139_: Sales Rule with Discount Qty Step (Buy X) attribute causes other rules to not be applied
  * _Fix note_: Cart price rule does not cancel previously applied rules if quantity of the product in the cart is not enough for rule to be applied.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/d01ee51e>
* _ACP2E-3331_: Performance issue on Cart price rule - Advance Sales Rule module
  * _Fix note_: Added missing DB indexes for AdvancedSalesRule filters
* _ACP2E-3332_: Issue sales rules with Fixed amount discount and "Maximum Qty Discount is Applied To"
  * _Fix note_: Fixed issue with cart rules discount, when fixed amount discount is configured to be applied for a limited qty of products is the cart. Previously, the "Maximum Qty Discount is Applied To" value was used to calculate current item's price in the cart, not only for calculation the rule's discount.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/581b7ef1>
* _ACP2E-3342_: [CLOUD] Magento upgrade caused coupons to become case-sensitive
  * _Fix note_: Before the fix you were required to type in the coupon code exactly as it was configured taking into consideration uppercase or lowercase. Now, the coupon will be validated in the backend regardless of uppercase or lowercase code configuration.
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
* _ACP2E-3498_: Incorrect discount value when multiple cart price rules are applied simultaneously with discounted/special priced products
  * _Fix note_: Prior to the fix, fixed amount for whole cart rules were not being applied properly if more than one was being applied. Now, fixed amount discount cart rules are being applied properly.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/1984c61c>

### Returns

* _ACP2E-3330_: [CLOUD] Restricted admin users can see the return menu and buttons
  * _Fix note_: Restricted Admin users now don't have access to RMA related controls (menu and buttons).
Previously restricted admin users could see the return menu and buttons.
* _ACP2E-3443_: Return Screen is messed up when refresh the screen
  * _Fix note_: The user can refresh the page without experiencing screen distortion.

### Search

* _AC-13053_: Getting "Enter a search term and try again." error on advanced search page in storefront in 2.4.8-beta1
  * _Fix note_: The system now correctly displays search results on the Advanced Search page when a product attribute is set to "No". Previously, setting a product attribute to "No" and performing a search would result in an error message, "Enter a search term and try again."
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/3ea26621>
* _ACP2E-3362_: search_query table when of huge size, has large impact on load time frontend
  * _Fix note_: Improved search listing page load time. Prior to the fix, the search listing page was being delayed because of an unoptimized query.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/55615e61>

### Security

* _ACP2E-3273_: ReCaptcha V2 shows incorrectly on checkout for German language
  * _Fix note_: Previously the recaptcha from under email address from checkout appear unstyled for languages with long words, like german. After this the recaptcha looks the same as all recaptcha elements from the rest of the areas.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/7377de59>
* _ACP2E-3300_: Captcha on admin login does not require interaction for some users
  * _Fix note_: ReCaptcha for admin login is validated as expected

### Shipping

* _AC-12938_: UPS REST "sandbox" and "prod" setup instruction updates in devdoc
* _ACP2E-3340_: FedEx Track API not working with REST credentials
  * _Fix note_: Previously FedEx integration didn't require additional API keys for Tracking API. Now new configuration was added to support Tracking API keys.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/ec7e32a9>
* _ACP2E-3354_: [Cloud] FedEx Negotiated Rates not returned on REST
  * _Fix note_: Previous to the fix,FedEx account specific rates where not sent on the response, even through according to FedEx documentation they should have been sent. After the fix, the account specific rates are sent on the response by changing the request from our side.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/55615e61>

### Staging & Preview

* _ACP2E-3453_: Unable to Update Scheduled Update When Using Unique Custom Category Attribute
  * _Fix note_: Fixed an issue where updating a scheduled update for a category was not possible if the category had a unique attribute
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/078c387e>

### Tax

* _ACP2E-3193_: Fixed Product Tax (FPT) is not working with configurable products
  * _Fix note_: FPT for configurable product variations working properly.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/ec7e32a9>

### Test framework

* _AC-13362_: [Issue] PHPDoc correction spelling
  * _Fix note_: The system now correctly recognizes deprecated methods in IDEs due to a spelling correction in the PHPDoc. Previously, a spelling error in the PHPDoc caused IDEs to not recognize certain methods as deprecated.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/31399>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/31398>
* _AC-13478_: MAGETWO-95118: Checking behaviour with the persistent shopping cart after the session is expired
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/7d5e3906>
* _ACP2E-3458_: [MFTF] StorefrontCheckoutProcessForQuoteWithoutNegotiatedPricesTest
  * _Fix note_: Fixed mftfs
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/078c387e>

### UI Framework

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
* _AC-13459_: Inconsistent Behavior in "Out of Stock" Sorting with Minimum Stock Threshold
  * _Fix note_: The system now correctly sorts products in the catalog based on stock levels, adhering to the set Minimum Stock Threshold and moving out-of-stock items to the bottom of the list consistently. Previously, the sorting behavior was inconsistent, with items not always appearing in the correct order based on their stock levels, and changes in sorting could occur unpredictably after saving, refreshing, or modifying the category hierarchy.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/47b448e2>
* _AC-13472_: Suggestion for improved error reporting for require.js loading problems
  * _Fix note_: This PR improves the error message when requirejs fails to load a component.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/36761>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/38971>
* _AC-9168_: [Issue] Remove unnecessary scripts review summary
  * _Fix note_: The system now optimizes page load time by removing unnecessary JavaScript scripts from the rating section, instead using inline CSS styles for a more efficient and readable code. Previously, the use of JavaScript scripts for the rating section could potentially slow down page load time.
  * _GitHub issue_: <https://github.com/magento/magento2/issues/37776>
  * _GitHub code contribution_: <https://github.com/magento/magento2/pull/34643>
* _ACP2E-3367_: Site Header | Special Characters Breaking the Customer Welcome section
  * _Fix note_: After the fix, special characters are shown correctly in the customer welcome section.
  * _GitHub code contribution_: <https://github.com/magento/magento2/commit/1366ae5e>
