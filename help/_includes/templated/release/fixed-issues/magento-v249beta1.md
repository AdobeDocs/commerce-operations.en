# Magento Open Source fixed issues (v2.4.9-beta1)

## Fixed issues in v2.4.9-beta1

We have fixed 501 issues in the Magento Open Source 2.4.9-beta1 core code. A subset of the fixed issues included in this release is described below.

### APIs

#### Special Price To Date is wrongly validated on applySpecialPrice

The system is working fine regarding Special price and Product special price will be expire on date set by admin or 3rd party system by REST API

_AC-13130 - [GitHub issue](https://github.com/magento/magento2/issues/39169) - [GitHub code contribution](https://github.com/magento/magento2/pull/39690)_

#### [WebAPI] customer email confirmation via WebAPI paradox

Fixed an issue where customers could not activate their accounts via WebAPI due to an authorization paradox requiring a token before confirmation. The update allows unconfirmed customers to activate their accounts successfully through the API, ensuring a consistent and functional confirmation flow.

_AC-13281 - [GitHub issue](https://github.com/magento/magento2/issues/39255) - [GitHub code contribution](https://github.com/magento/magento2/commit/c95ed7d7)_

#### Missing Billing Address Error in Admin Dashboard When Creating Order via REST API with Only Payment Information

Fixed issue where orders could be created via API without a billing address, causing admin dashboard crashes.
Now, orders without a billing address are restricted and no longer created.

_AC-14049 - [GitHub issue](https://github.com/magento/magento2/issues/39651) - [GitHub code contribution](https://github.com/magento/magento2/commit/36d4d6fb)_

#### Product Add to Cart issue in Rest API

Fixed issue where products not assigned to a specific website could still be added to cart and purchased.
Now, an error message is shown: “Product that you are trying to add is not available.”

_AC-15054 - [GitHub issue](https://github.com/magento/magento2/issues/40029) - [GitHub code contribution](https://github.com/magento/magento2/commit/f5cc09fc)_

#### Attribute Option Label Gets Overwritten When Updating Store Labels

Fixed issue where updating a multiselect product attribute via REST API would overwrite all store_labels, removing existing store-specific labels.
Now, when updating the default store view label, Magento merges the provided labels with existing ones instead of fully overwriting them.
This ensures that store-specific labels for other store views remain intact after updates.

_AC-15208 - [GitHub issue](https://github.com/magento/magento2/issues/40093) - [GitHub code contribution](https://github.com/magento/magento2/commit/36d4d6fb)_

#### [Issue] Clarified Attribute Option already exists response

The System now Replaced the awkward phrase "Get new file name if the same is already exists" with a clearer and grammatically correct version: "Get a new file name if one already exists." This improves readability and user understanding.
Same for the attribute option response.

_AC-15473 - [GitHub issue](https://github.com/magento/magento2/issues/39943) - [GitHub code contribution](https://github.com/magento/magento2/pull/39941)_

#### Internal Server Error in /V1/products/special-price API Endpoint

Fixed issue where malformed requests to /V1/products/special-price and related pricing APIs returned a 500 Internal Server Error due to a null TypeError.
Now, the APIs properly validate input and return a 400 error for invalid payloads, improving error handling and API reliability.

_AC-6419 - [GitHub issue](https://github.com/magento/magento2/issues/35934) - [GitHub code contribution](https://github.com/magento/magento2/commit/a7ef6300)_

#### Internal Server Error in `/V1/order/{orderId}/ship` API Endpoint

The System now fixes Internal Server Error in `/V1/order/{orderId}/ship` API Endpoint and Returns a 400 error as the request is malformed.

_AC-6420 - [GitHub issue](https://github.com/magento/magento2/issues/35931) - [GitHub code contribution](https://github.com/magento/magento2/pull/38282)_

#### Internal Server Error in /V1/creditmemo API Endpoint

Fixed issue where malformed requests to the /V1/creditmemo API returned a 500 Internal Server Error.
Now, the API properly validates the request and returns a 400 error for invalid payloads, improving error handling and stability.

_AC-6422 - [GitHub issue](https://github.com/magento/magento2/issues/35924) - [GitHub code contribution](https://github.com/magento/magento2/commit/a7ef6300)_

#### Rest API and Magento backend use different validation methods for attribute_code when creating new attributes

Fixed inconsistency where the Magento Admin allowed uppercase letters in attribute_code, but the REST API rejected them during product attribute creation.
Now, both Admin and REST API follow the same validation, enabling successful creation of attributes with uppercase letters.

_AC-6660 - [GitHub issue](https://github.com/magento/magento2/issues/33138) - [GitHub code contribution](https://github.com/magento/magento2/commit/8670a2b4)_

#### Different validation between attribute creation and update via REST API

Fixed issue where inconsistent validation during attribute creation via REST API resulted in an incorrect backend_type being assigned.
Now, the system sets the correct backend type when valid, throws an exception for invalid values, or falls back appropriately if not provided, ensuring consistent attribute behavior.

_AC-6885 - [GitHub issue](https://github.com/magento/magento2/issues/36327) - [GitHub code contribution](https://github.com/magento/magento2/commit/64823f95)_

#### Malformed request body or parameters cause "Internal Server Error"

Malformed request bodies or parameters now return a clear "400 Bad Request" response.
Previously, sending malformed request bodies or parameters to various REST API endpoints (such as /V1/carts/search, /V1/orders, /V1/products, etc.) resulted in a generic "Internal Server Error" (500), making it difficult to diagnose input issues.
Now, Adobe Commerce returns a "400 Bad Request" response, providing clearer feedback when requests are invalid.

_AC-746 - [GitHub issue](https://github.com/magento/magento2/issues/32784) - [GitHub code contribution](https://github.com/magento/magento2/commit/f1adb44e)_

#### `/orders`(or `/orders/:id`) endpoint missing "state" and "status" fields

Fixed issue where the `/orders` and `/orders/{id}` API responses omitted the state and status fields when database values were null.
Now, both fields are consistently returned in the response, ensuring compliance with API documentation and improving data reliability.

_AC-9244 - [GitHub issue](https://github.com/magento/magento2/issues/37807) - [GitHub code contribution](https://github.com/magento/magento2/commit/01cee3c3)_

#### Async Bulk Operation remains in open state for async.magento.configurableproduct.api.optionrepositoryinterface.save.post

Bulk API endpoints will now throw an error if the request body is not an Array, thus requiring bulk item keys to be consecutive numbers starting from 0. Previously, bulk item status was not updated due to the arbitrary item key submitted in the bulk request.

_ACP2E-3544 - [GitHub code contribution](https://github.com/magento/magento2/commit/9608ca21)_

#### [CLOUD] API REST bug on is_subscribed value not considering from the current store  using searchCriteria

API REST Customer query fetches the correct "is_subscribed" value from the correct store using searchCriteria
Previously the API REST Customer query did not consider store when fetching is_subscribed" value.

_ACP2E-3621 - [GitHub code contribution](https://github.com/magento/magento2/commit/9608ca21)_

#### async.operations.all can create multiple entries for 1 SKU

Concurrent requests to save and update the same product are now serialized to prevent race conditions  which may result in data inconsistency or duplicated products

_ACP2E-3744 - [GitHub code contribution](https://github.com/magento/magento2/commit/520f9e30)_

#### Order "base_row_total" and "row_total" show single item price in REST API response

REST api response for order details now contains correct values for "base_row_total" and "row_total" attributes in case when several same items were ordered

_ACP2E-3874 - [GitHub code contribution](https://github.com/magento/magento2/commit/4ca73607)_

#### REST API endpoint export-stock-salable-qty returns incorrect items total_count

Fixed pagination issue in inventory export stock salable quantity API where total_count was incorrectly limited to page size. Previously, when using the /rest/all/V1/inventory/export-stock-salable-qty/website/base endpoint with pagination parameters like page_size=5, the total_count field in the response would return 5 instead of the actual total number of products matching the search criteria. After this fix, the total_count field now correctly reflects the total number of products available regardless of the page_size parameter, ensuring consistent pagination behavior across all Magento REST API endpoints.

_ACP2E-4086 - [GitHub code contribution](https://github.com/magento/inventory/commit/5632fb5e)_

#### Validation issue with custom option IDs in cart item REST APIs.

REST APIs V1/guest-carts/&lt;cartId>/items/ and V1/carts/mine/items/ now validate "product_options.extension_attributes.custom_options.*.option_id" to ensure it references a valid option_id for the cart item SKU. Previously, this parameter was processed and saved in the database without validation.

_ACP2E-4138 - [GitHub code contribution](https://github.com/magento/magento2/commit/a1c57b2e)_

#### While fetching the product from cart and changing the store header language not changing

GraphQL customerCart query now returns product attribute values according to the store header value. Previously, changing the store header language while retrieving a product from the cart via GraphQL did not reflect the updated language, resulting in inconsistent localization.

_ACP2E-4227 - [GitHub code contribution](https://github.com/magento/magento2/commit/6e134409)_

#### REST API /media endpoint fails for Gift Card products - returns "The product can't be saved"

Prior to the fix you were allowed to create gift card products that did not include an amount in global scope. With the fix, a validation has been added that checks for amounts in global scope.

_ACP2E-4395 - [GitHub issue](https://mcstaging.panini.it/shp_ita_it/)_

### APIs, Cart & Checkout

#### For Shipping Information Server Side Validation is not Working using REST API

Fixed an issue in the REST API where shipping address information validation did not adhere to the attribute configuration defined in the Admin backend. The validation now properly follows the configured settings.

_ACP2E-4156 - [GitHub code contribution](https://github.com/magento/magento2/commit/45cbf9b6)_

### APIs, Catalog

#### Delete default website/store breaks tier prices API endpoint

Previously, deleting the default base website and using the secondary website as the default website resulted in an error when attempting to update the tier price for the secondary website. However, after applying this fix, the tier price can be successfully updated even if the base website is deleted or deactivated.

_ACP2E-4334 - [GitHub code contribution](https://github.com/magento/magento2/commit/0a3b7032)_

### APIs, Framework

#### RedisRequestLogger\RedisClient (rate limiter) exception on Application Server

After the fix, the Rate limiting feature can be used together with the GraphQL Application server in cases where the PHP redis extension is installed.

_ACP2E-4237 - [GitHub code contribution](https://github.com/magento/magento2/commit/e885088b)_

### APIs, Import / export

#### Async Invoice Refund API Creates Offline Refunds Instead of Online Refunds

Fixed async refund operations where refund requests with the `is_online` parameter were not being processed correctly.

_ACP2E-4394 - [GitHub code contribution](https://github.com/magento/magento2/commit/61c96348)_

### APIs, Order

#### [CLOUD] Order information issue with row total appearance for order 000075568

Fixes the issue where the row_total_incl_tax value in the order API response was returned as a near-zero residual value instead of 0.00 when an item was fully discounted.

_ACP2E-3950 - [GitHub code contribution](https://github.com/magento/magento2/commit/462ede94)_

### Account

#### [Issue] Fix typos in Catalog Widget template options

The System now fixes typos in Catalog Widget template options.

_AC-11576 - [GitHub issue](https://github.com/magento/magento2/issues/38185) - [GitHub code contribution](https://github.com/magento/magento2/pull/38178)_

#### [Issue] Removed unnecessary spacing on backend grid

The system now removes unnecessary spacing in backend grid When there are selected items

_AC-11579 - [GitHub issue](https://github.com/magento/magento2/issues/38502) - [GitHub code contribution](https://github.com/magento/magento2/pull/32622)_

#### Customer group code saved does not match the input when using multibyte characters

Fixed an issue where customer group codes using multibyte characters were truncated and did not match the entered value. The update ensures the full input is saved correctly, allowing accurate creation of customer groups with multibyte names.

_AC-13335 - [GitHub issue](https://github.com/magento/magento2/issues/39342) - [GitHub code contribution](https://github.com/magento/magento2/commit/a06a4a57)_

#### Issue when updating customer email in Admin Panel with ö and .swiss domain

Admin Panel now accepts customer emails with special characters and .swiss domains.
Previously, updating a customer email to an address like max@möstermann.swiss failed with errors about invalid hostnames and TLDs.
AC-13409

_AC-13409 - [GitHub issue](https://github.com/magento/magento2/issues/39394) - [GitHub code contribution](https://github.com/magento/magento2/commit/d3ea191d)_

#### Newsletter subscribe enabled switch not working per website/store

The System Correctly handles subscription with newsletter when we are having multiple websites/storeviews when it was disabled at global level

_AC-14283 - [GitHub issue](https://github.com/magento/magento2/issues/39751) - [GitHub code contribution](https://github.com/magento/magento2/pull/39752)_

#### [Issue] Removed email disclosure

The System now shows Display an error message indicating an incorrect email if the entered email is not required to confirm the account, regardless of whether the customer exists or not.

_AC-14561 - [GitHub issue](https://github.com/magento/magento2/issues/39574) - [GitHub code contribution](https://github.com/magento/magento2/pull/39570)_

#### Unable to clear wishlist item comment via `updateProductsInWishlist` GraphQL mutation

Fixed issue where wishlist comments were not updated through GraphQL mutations.
Now, comments update correctly and reflect in both the API response and storefront.

_AC-14682 - [GitHub issue](https://github.com/magento/magento2/issues/39911) - [GitHub code contribution](https://github.com/magento/magento2/commit/36d4d6fb)_

#### Product Removed on Mobile Still Appears in Web's Mini Compare Section Until Re-login

The system now removes product immediately disappear from all compare views on both mobile and web, including the mini compare section.

_AC-14703 - [GitHub issue](https://github.com/magento/magento2/issues/39905) - [GitHub code contribution](https://github.com/magento/magento2/pull/40023)_

#### Show prefix/suffix setting ignored when set to No

Fixed issue where customer name prefix/suffix continued to display in orders even when disabled in configuration.
Now, prefix/suffix values are stripped from order details based on the config setting.

_AC-15074 - [GitHub issue](https://github.com/magento/magento2/issues/40036) - [GitHub code contribution](https://github.com/magento/magento2/commit/a3b1abc2)_

#### Storefront customer account register: email address format getting converted with different domain format

This bug addressed an issue where customer emails with special characters in the domain (e.g., tec55241@adòbe.com) were being auto-converted into punycode format (tec55241@xn--adbe-mqa.com).
In Magento 2.4.9-alpha3, the fix ensures that such email IDs remain unchanged and valid, preventing delivery errors.

_AC-15177 - [GitHub code contribution](https://github.com/magento/magento2/commit/68a45d0a)_

#### Missing validation messages (mage-error) on register form

Fixed issue where required fields on the customer account creation page showed no validation messages when left empty.
Now, proper error messages are displayed for all empty or incorrect fields.

_AC-15185 - [GitHub issue](https://github.com/magento/magento2/issues/40076) - [GitHub code contribution](https://github.com/magento/magento2/commit/36d4d6fb)_

#### Order Cancellation Modal Title Missing Translation

The system now Fixes a missing translation in the order cancellation modal on the storefront. When a customer clicks the “Cancel” button from the My Account > My Orders page, a modal appears asking for a cancellation reason. However, the modal title was previously hardcoded and not translatable. This change ensures the modal title uses a proper translation method.

_AC-15260 - [GitHub issue](https://github.com/magento/magento2/issues/40098) - [GitHub code contribution](https://github.com/magento/magento2/pull/40100)_

#### Issue after login in magento 2.4.8-p1

Fixed issue on Magento 2.4.8-p1 where the “Create an Account” link was still visible on the homepage after login.
Now, the link is correctly hidden after login, consistent with other pages.

_AC-15292 - [GitHub issue](https://github.com/magento/magento2/issues/40120)_

#### [Issue] Set isSecureArea before deleting customer

The System is now working fine and this PR sets isSecureArea for the deletion process and customer can register again successfully.

_AC-15723 - [GitHub issue](https://github.com/magento/magento2/issues/40211) - [GitHub code contribution](https://github.com/magento/magento2/pull/38462)_

#### [Cloud] Delete operation is forbidden for current area error during customer account creation

After the fix saving a customer with an invalid address returns a message describing the reason for invalidity instead of irrelevant "Delete operation is forbidden for current area".

_ACP2E-3791 - [GitHub code contribution](https://github.com/magento/magento2/commit/6ea61121)_

#### [B2B] Webapi requests go infinite loop for logged-in customers when 'eav' cache disabled

After the fix, disabling the eav cache doesn't lead to an infinite loop during certain REST requests.

_ACP2E-4191 - [GitHub code contribution](https://github.com/magento/magento2/commit/45cbf9b6)_

#### Error loading some locale

Fixed an issue where creating a customer account failed when using the Arabic locale and the Date of Birth attribute was set to display on the storefront. The account can now be created successfully in this configuration.

_ACP2E-4311 - [GitHub code contribution](https://github.com/magento/magento2/commit/2687b487)_

#### Error Invalid date when updating account information

Customers can now update their account successfully when using the Arabic locale. Previously, attempts to save the account information, the date of birth failed due to an invalid date error.

_ACP2E-4344 - [GitHub code contribution](https://github.com/magento/magento2/commit/31258bf6)_

### Account, Admin UI

#### [Cloud] No such entity with cartId

Resolved an issue where using Login as Customer with two company admin accounts in the same session caused a “No such entity with cartId” error.

_ACP2E-4137 - [GitHub code contribution](https://github.com/magento/magento2/commit/e885088b)_

#### Customer create form error messages are not translated

Fixed an issue where customer validation error messages were not properly translated and formatted across different interfaces. Validation errors now display correctly translated messages in all areas of the application: storefront, adminhtml, rest api and graphql.

_ACP2E-4354 - [GitHub code contribution](https://github.com/magento/magento2/commit/31258bf6)_

### Admin UI

#### Category Products Grid > Status & Visibility Columns are empty when sorting by name

Fixed an issue where the Status and Visibility columns appeared empty in the Category Products grid when sorting by product name.
The grid now correctly displays all column data after sorting, ensuring accurate product information in the admin panel.

_AC-10659 - [GitHub issue](https://github.com/magento/magento2/issues/38233) - [GitHub code contribution](https://github.com/magento/magento2/commit/3cf1a106)_

#### Email template store-switcher

Fixed an issue where the store switcher in the newsletter email template preview did not open when clicked due to deprecated jQuery code. Updating the load event restored proper functionality, allowing users to access the store switcher as expected.

_AC-12334 - [GitHub issue](https://github.com/magento/magento2/issues/38892) - [GitHub code contribution](https://github.com/magento/magento2/commit/8670a2b4)_

#### FPT value in cart page and product page are different for same configurations for simple product

FPT values are now consistent between cart and product pages for simple products.
Previously, Fixed Product Tax (FPT) values could differ in decimal places between the cart and product pages, even when the same configurations were applied.
AC-13066

_AC-13066 - [GitHub code contribution](https://github.com/magento/magento2/commit/8953613e)_

#### Multiselect/select attribute options can not be saved when Swatches modules disabled

Multiselect/select attribute options can now be saved when Swatches modules are disabled.
Previously, disabling Swatches modules caused exceptions when creating new multiselect/select attribute options.
AC-13071

_AC-13071 - [GitHub code contribution](https://github.com/magento/magento2/commit/8953613e)_

#### FPT value in cart page and product page are different for same configurations for a dynamic product

FPT values are now consistent between cart and product pages for dynamic products.
Previously, FPT (Fixed Product Tax) values could differ in decimal places between the cart and product pages for the same configurations.
AC-13075

_AC-13075 - [GitHub code contribution](https://github.com/magento/magento2/commit/8953613e)_

#### Date format not respected in date ui component

Resolved an issue where the Date UI component ignored the configured format and displayed incorrect values. The fix ensures the date field now respects the specified format (e.g., Y-m-d) for both display and input.

_AC-13174 - [GitHub issue](https://github.com/magento/magento2/issues/39218) - [GitHub code contribution](https://github.com/magento/magento2/commit/913bf1a6)_

#### No Option available to delete sources

Added a delete option for inventory sources in the Admin UI, allowing admins to remove extra sources instead of only enabling or disabling them. This enhancement improves inventory management by providing better control over unused sources.

_AC-13354 - [GitHub issue](https://github.com/magento/magento2/issues/32362) - [GitHub code contribution](https://github.com/magento/inventory/commit/1b6c8a3e)_

#### Category tree in admin is not expanded to show all selected nested categories from level 3

Fixed an issue where the admin category tree did not expand to display selected nested categories beyond level 3. After the fix, all selected categories are automatically expanded, improving visibility and usability across category-related conditions.

_AC-13363 - [GitHub code contribution](https://github.com/magento/magento2/commit/913bf1a6)_

#### [Issue] Improve user experience with roles tree

This pull request adds buttons to collapse all, expand all, and expand branches with selected items. This functionality is similar to that provided in the category tree (Catalog -> Inventory -> Categories)

_AC-14020 - [GitHub issue](https://github.com/magento/magento2/issues/39654) - [GitHub code contribution](https://github.com/magento/magento2/pull/36511)_

#### Import/Export action logs are not created in System > Action Logs > Report grid

Implemented logging for Import/Export admin actions so they now appear in System > Action Logs > Report. This ensures better audit tracking by recording import activities that were previously missing.

_AC-14266 - [GitHub code contribution](https://github.com/magento/magento2/commit/b5e99d20)_

#### Symfony\Component\Mime\Exception\LogicException: The "Sender" header must be an instance of "Symfony\Component\Mime\Header\MailboxHeader" (got "Symfony\Component\Mime\Header\MailboxListHeader")

Adobe Commerce now successfully sends registration emails when a custom return-path address is configured for SMTP. Previously, on vanilla Adobe Commerce 2.4.8 with system/smtp/set_return_path set to 2 and system/smtp/return_path_email set to a custom address, customer registration completed but the registration email was not sent, and Adobe Commerce logged this error: Symfony\Component\Mime\Exception\LogicException: The "Sender" header must be an instance of "Symfony\Component\Mime\Header\MailboxHeader" (got "Symfony\Component\Mime\Header\MailboxListHeader").

_AC-14520 - [GitHub issue](https://github.com/magento/magento2/issues/39823) - [GitHub code contribution](https://github.com/magento/magento2/commit/1e14bd72) - [GitHub code contribution](https://github.com/magento/magento2/commit/1514117f)_

#### Refresh order doesn't get latest custom attribute data

Fixed an issue where refreshing the order page did not display the latest customer custom attribute data; after the fix, updated attribute values are now reflected without needing to cancel and recreate the order.

_AC-14690 - [GitHub issue](https://github.com/magento/magento2/issues/30301)_

#### [Issue] replace deprecated escaper

Removed the deprecated getEscaper() and added it via constructor injection.

_AC-15132 - [GitHub issue](https://github.com/magento/magento2/issues/40062) - [GitHub code contribution](https://github.com/magento/magento2/pull/38135)_

#### Welcome message overlapping product category in mobile view

Fixed UI issue where the welcome name overlapped with product categories in mobile view, blocking clicks.
Now, categories are fully visible and clickable without overlap issues.

_AC-15166 - [GitHub code contribution](https://github.com/magento/magento2/commit/1b1baf1d)_

#### Ui Form Reset button not working as expected

The system is now working fine when clicking on reset button without reloading entire page the form data will be reset.

_AC-15204 - [GitHub issue](https://github.com/magento/magento2/issues/40092) - [GitHub code contribution](https://github.com/magento/magento2/pull/40094)_

#### [Issue] PageCache/AccessList: Add CIDR support

The System now accepts purge requests within a network, it's easier to just supply a CIDR range.

_AC-15804 - [GitHub issue](https://github.com/magento/magento2/issues/39953) - [GitHub code contribution](https://github.com/magento/magento2/pull/37809)_

#### [Issue] Add explanatory titles to cache management buttons

The system now adds explanatory titles to cache management buttons when you move the cursor

_AC-16212 - [GitHub issue](https://github.com/magento/magento2/issues/38607) - [GitHub code contribution](https://github.com/magento/magento2/pull/38598)_

#### Provide a feature to mass-delete tax rates using the grid

Admin users can now simultaneously delete multiple tax rates from the Admin Tax Rates grid.  [GitHub-33399](https://github.com/magento/magento2/issues/33399)

_AC-2238 - [GitHub issue](https://github.com/magento/magento2/issues/33399) - [GitHub code contribution](https://github.com/magento/magento2/pull/33484) - [GitHub code contribution](https://github.com/magento/magento2/commit/5cd64dd0)_

#### Hover colour not applied on static grids in admin

Hover colors are now applied as expected on the rows of Admin static grids.[GitHub-35358](https://github.com/magento/magento2/issues/35358)

_AC-2916 - [GitHub issue](https://github.com/magento/magento2/issues/35358) - [GitHub code contribution](https://github.com/magento/magento2/pull/35384)_

#### "Can not resolve reCAPTCHA parameter" entries in exception.log for Google reCAPTCHA Admin Panel

A reCaptcha error in the `var/log/exception.log` file for the Google V3  reCAPTCHA Admin login has been resolved, and no error messages are logged. Previously, the following error was thrown every few seconds when an admin user configured their **Configuration**  >  **Security**  >  **Google reCAPTCHA Admin Panel** settings: `main.ERROR: Can not resolve reCAPTCHA parameter. {"exception":"[object] (Magento\Framework\Exception\InputException(code: 0): Can not resolve reCAPTCHA parameter. at /home/xxxxxxx/public_html/vendor/magento/module-re-captcha-ui/Model/CaptchaResponseResolver.php:25)"} []`.  [GitHub-34975](https://github.com/magento/magento2/issues/34975)

_AC-3179 - [GitHub issue](https://github.com/magento/magento2/issues/34975) - [GitHub code contribution](https://github.com/magento/magento2/commit/4f7e5983) - [GitHub code contribution](https://github.com/magento/security-package/commit/804dbc2a)_

#### Cart price rule with condition SKU doesn't take into account the "leading zeros" in the SKU (sku: 01234 is the same as 1234)

The System now correctly handles Cart price rule with condition SKU take into account the "leading zeros" in the SKU

_AC-9428 - [GitHub issue](https://github.com/magento/magento2/issues/37919) - [GitHub code contribution](https://github.com/magento/magento2/pull/39525)_

#### Issue with Default Attribute Option Value Behavior for Multiselect

Prior to the fix default values for multiple options attribute were not being saved properly. Now, after the fix, the values are properly stored in the database.

_ACP2E-3523 - [GitHub code contribution](https://github.com/magento/magento2/commit/9608ca21)_

#### Issue while moving the product qty to back to shopping cart from the admin

When creating an order from the admin, products in the customer cart on the sidebar will not disappear when added to the order.

_ACP2E-3563 - [GitHub code contribution](https://github.com/magento/magento2/commit/c8ba4ab1)_

#### [Staging2] Stored cards are not visible on Admin panel

Fixes the issue where the "Stored Card" payment option no longer appeared in the backend order placement form after an upgrade.

_ACP2E-3830 - [GitHub code contribution](https://github.com/magento/magento2/commit/7accebfa)_

#### Restricted admin user can save/update default configurations despite Store-Specific Permissions

Fixes the issue where restricted admin users were able to see and attempt to update the "Default Config" scope despite being assigned only to specific website scopes, which could cause confusion.

_ACP2E-4011 - [GitHub code contribution](https://github.com/magento/magento2/commit/2a1e1e55)_

#### Configurable product price saved under DB for any store view scope, causing issues in the Products in Category sorting feature where the saved price has no relevance in frontend

Removed the "Use Default Value" checkbox for a configurable product when price is configured per website and a store view is selected on the admin UI configurable product edit page.

_ACP2E-4036 - [GitHub code contribution](https://github.com/magento/magento2/commit/fab20b00)_

#### [QUANS]Admin Password Policy Does Not Meet PCI DSS 4.0 Compliance (Minimum 12 Characters)

Administrators can now configure the minimum password length requirement for admin users through Stores > Configuration > Advanced > Admin > Security. This enhancement provides greater security flexibility while maintaining existing password policies. The validation is enforced both during admin user creation/modification and configuration saves, with real-time frontend validation for improved user experience.

_ACP2E-4044 - [GitHub code contribution](https://github.com/magento/magento2/commit/47721be6)_

#### Date filter issue when admin interface language is Japanese

Birthday filter and column will use the unified format M/d/y, same as "Customer Since" filter/column

_ACP2E-4052 - [GitHub issue](https://stg1.navi-online.kakuyasu.co.jp/adminCgWN7zCh/admin/system_account/index/key/d6fdbee50ff25178d1fef981ec823c5e82e8cee6959717790031bb900c4d6633/) - [GitHub code contribution](https://github.com/magento/magento2/commit/52f46328)_

#### White Blocks Appearing on Both Sides of Admin Grid Header

Fixed visual alignment issue in admin grids. Previously, when scrolling horizontally through product grids in the admin panel, white blocks would appear misaligned on the left and right sides of the grid header. The grid header elements now maintain proper vertical alignment when scrolling, providing a cleaner visual experience for administrators managing large product catalogs.

_ACP2E-4104 - [GitHub issue](https://mcprod.pap-store.acer.com/index.html)_

#### Ui component fileUploader not working correctly on 2.4.8-p1/ 2.4-develop

Improved file upload for custom ui component with multiple select to allow upload on upload area click.

_ACP2E-4162 - [GitHub code contribution](https://github.com/magento/magento2/commit/ee918f0d)_

#### [On Prem] Newly Created Orders/Companies/ Customers Automatically Included in "Select All" Scope During select Process

Fixed the issue where manually selecting all records on a stale admin grid page would unintentionally delete all records when performing mass actions. Previously, the grid would automatically switch to "select all" mode internally when the number of selected items matched the total count, causing mass actions to affect all records instead of just the explicitly selected ones.

_ACP2E-4202 - [GitHub code contribution](https://github.com/magento/magento2/commit/6e134409)_

#### Solution from ACP2E-3362 works slowly on MariaDB 10.6

Improved performance of the frontend search page in case of large number historical search requests.

_ACP2E-4225 - [GitHub code contribution](https://github.com/magento/magento2/commit/ab891304)_

#### Date Filter not working according to store timezone on Credit Memos grid

Prior to the fix filtering lists by date attributes were causing missing items because of timezone differences between selected date and stored dates Now, after the fix date filters are properly applied.

_ACP2E-4239 - [GitHub code contribution](https://github.com/magento/magento2/commit/0a8c9a9a)_

#### File uploader dialog opens twice when pagebuilder is installed

Before the fix custom component Upload button would trigger twice. After the fix the Upload button works as expected.

_ACP2E-4241 - [GitHub code contribution](https://github.com/magento/magento2-page-builder/commit/5c4ae802)_

#### Validation errors on deleted customer attributes when changing customer data.

Before the fix, saving the customer and customer address failed if they included multiple attribute options that had been deleted. After the fix, both can be saved successfully even when multiple attribute options are still present.

_ACP2E-4281 - [GitHub code contribution](https://github.com/magento/magento2/commit/0a8c9a9a)_

#### JS warning in the admin dashboard: "Expected to start loader but did not find one in the dom"

Fixed the JavaScript warning that appeared in the browser console when Charts were enabled for the admin dashboard. Previously, when accessing the admin dashboard with charts enabled, an obsolete debug check would incorrectly warn "Expected to start loader but did not find one in the dom" even though the functionality was working correctly.

_ACP2E-4336 - [GitHub code contribution](https://github.com/magento/magento2/commit/2687b487)_

#### [CLOUD] Configuration With Dependency Config Editable When Use Default Checked in Store Configuration

Fixed the issue when System Configuration fields could render enabled after page load, despite “Use Default/Website” being checked.

_ACP2E-4337 - [GitHub issue](https://mcstaging.pap-store.acer.com) - [GitHub code contribution](https://github.com/magento/magento2/commit/31258bf6)_

#### Admin dashboard order graph animates into final size

The admin dashboard order graph will now display immediately without the need for an unnecessary resizing animation.

_ACP2E-4398 - [GitHub issue](https://github.com/magento/magento2/issues/38860) - [GitHub code contribution](https://github.com/magento/magento2/commit/f7bbcb4e)_

#### Page Builder Fails to Save Content in Mobile View Due to JS Error (TypeError: Cannot read properties of undefined)

Fixed an issue that prevented saving pages in Page Builder when adding banners in mobile view.

_ACP2E-4399 - [GitHub issue](https://github.com/magento/magento2/issues/38565) - [GitHub code contribution](https://github.com/magento/magento2-page-builder/commit/bdac5bca)_

### Admin UI, B2B

#### B2B Login as Customer header still has Magento branding

Earlier the storefront header shows "You are now connected as &lt;customer name> on &lt;store name>" with Magento branding. Which is now fixed and the header shows with ADOBE branding.

_AC-14361 - [GitHub code contribution](https://github.com/magento/magento2/commit/fadcfa8b)_

### Admin UI, Catalog

#### Product save fails when Catalog Rule active and Realtime mode enabled

Fixed an issue where catalog rule indexing could fail with a DDL transaction error during product save operations by decoupling Catalog Rule indexing from the product transaction.

_ACP2E-4378 - [GitHub code contribution](https://github.com/magento/magento2/commit/f7bbcb4e)_

### Admin UI, Content

#### Exception "Cannot create rendition for media asset paths" during image insertion

After removing the values of the Maximum Width and Maximum Height of the Media Gallery Image Optimization configuration, the error is not occurred any more during the image optimization process.

_ACP2E-3781 - [GitHub code contribution](https://github.com/magento/magento2/commit/520f9e30)_

### Admin UI, Order

#### Admin Order Creation: Session Size Overflow When Adding 20+ Products (Session size exceeded 256KB limit)

Resolved a session size overflow during admin order creation by preventing large HTML responses from being stored in the session for JSON requests, ensuring bulk product additions work smoothly without logging out the admin.

_AC-15893_

### Admin UI, Security

#### Weak Password Management

The admin user cannot be saved when using the same password. Previously, it was saved successfully without a proper validation.

_ACP2E-3657 - [GitHub code contribution](https://github.com/magento/magento2/commit/df92debe)_

### Admin UI, Tax

#### Tax rate admin ui error

This ticket fixed a Tax Rate admin UI issue where switching the country (e.g., from US → UK) still displayed the previously selected US state, misleading users.
In 2.4.9-alpha3, the state field now resets to * when the selected country has no states.

_AC-8440 - [GitHub code contribution](https://github.com/magento/magento2/commit/a3b1abc2)_

### Analytics / Reporting

#### [Issue] Added the scp allowlist for Analytics if you only use Google Analytics

This PR adds a CSP whitelist to the Google Analytics module, enabling it to function independently without a Google Adwords dependency. Google Analytics now works correctly even when the Google Adwords module is disabled.

_AC-16311 - [GitHub issue](https://github.com/magento/magento2/issues/40051) - [GitHub code contribution](https://github.com/magento/magento2/pull/40032)_

#### Duplicate file headers in Advanced Report CSV files causing empty reports

After the fix, reports generated for the advanced reporting feature no longer contain duplicated header rows in cases when the row count exceeds the batch size.

_ACP2E-4187 - [GitHub code contribution](https://github.com/magento/magento2/commit/45cbf9b6)_

#### Abandoned cart report contains invalid characters

Abandoned Cart Report exported as CSV file now contains properly rendered characters for currency symbols like Indian Rupee when opened in MS Excel.

_ACP2E-4288 - [GitHub code contribution](https://github.com/magento/magento2/commit/0a8c9a9a)_

#### Update for MDVA-19640 for 2.4.8 compatibility

The fix moves the analytics cron job tasks from the default group into analytics group

_ACP2E-4309 - [GitHub code contribution](https://github.com/magento/magento2/commit/c135fc3a)_

#### Revenues are not Showing in Orders/Invoice Reports in Admin for Canada website/currency

Some of the order related reports were not applying store currency rates. After the fix, reports properly apply configured store rates.

_ACP2E-4361 - [GitHub code contribution](https://github.com/magento/magento2/commit/31258bf6)_

### B2B

#### company field validation fails for guest checkout

Guest checkout now correctly validates the company field.
Previously, when the company attribute was required, guest checkout failed with the error: "Company is a required value," even when the field was filled.
AC-14987

_AC-14987 - [GitHub issue](https://github.com/magento/magento2/issues/40011) - [GitHub code contribution](https://github.com/magento/magento2/commit/f1adb44e)_

#### Rest API products-render-info return wrong final price for logged in customer

The ticket has a fix for Rest API products-render-info return wrong final price for logged in customer

_AC-5979 - [GitHub issue](https://github.com/magento/magento2/issues/35757)_

### B2B, Cart & Checkout

#### No such entity with cartId = X error is shown on Storefront when login B2B company user from admin feature  "Login as Customer"

Now "No such entity with cartId = X" error is no longer visible after successfully login from admin backend when using "Login as Customer" feature.

_ACP2E-3994 - [GitHub code contribution](https://github.com/magento/magento2/commit/2a1e1e55)_

#### Missing billing address prevents order placing with "In store Delivery" shipping method

Resolved an issue where the billing address was not automatically populated during checkout when In-Store Pickup was selected as the delivery method. Without a billing address, checkout could not be completed.

_ACP2E-4030 - [GitHub code contribution](https://github.com/magento/inventory/commit/42d23211)_

### Cart & Checkout

#### Magento 2.4.7 update (mini)cart no decimal qty allowed

Now Magento correctly handles when we are updating qty with decimals from mini cart when the locale was NL(Dutch)

_AC-13238 - [GitHub issue](https://github.com/magento/magento2/issues/39236) - [GitHub code contribution](https://github.com/magento/magento2/pull/39669)_

#### [Issue] Add EventPrefix and EventObject to checkout agreement model

The system now includes EventPrefix and EventObject for the checkout agreement model, allowing events to be triggered with an event prefix. This enhancement provides more flexibility for developers when working with checkout agreement events. Previously, the checkout agreement model did not support EventPrefix and EventObject, limiting the ability to customize event handling.

_AC-13252 - [GitHub issue](https://github.com/magento/magento2/issues/32510) - [GitHub code contribution](https://github.com/magento/magento2/pull/32451)_

#### [Issue] Developer Experience: Quote AbstractItem code style (SwiftOtter's SOP-348)

This Pull Request fixes misleading method declarations for Abstract Item methods.

_AC-13334 - [GitHub issue](https://github.com/magento/magento2/issues/39340)_

#### Grouped Product Frontend Quantity Validations are Missing

The system is now working fine and displaying validation error when we are trying to add negative qty and max qty

_AC-13524 - [GitHub issue](https://github.com/magento/magento2/issues/39479) - [GitHub code contribution](https://github.com/magento/magento2/pull/39480)_

#### [Issue] Update subtotal.phtml

The System updates the subtotal.phtml with the correct spacing

_AC-13907 - [GitHub issue](https://github.com/magento/magento2/issues/39619) - [GitHub code contribution](https://github.com/magento/magento2/pull/39612)_

#### Not able to place the order with the guest

Adobe Commerce now allows guest shoppers to successfully place orders when the middle name field is configured as required in the Admin. Previously, in Adobe Commerce 2.4.8-beta1 (PHP 8.3/8.4), configuring middle name as required and checking out as a guest prevented order placement even when a middle name was provided, blocking completion of the checkout. AC-14241

_AC-14241 - [GitHub code contribution](https://github.com/magento/magento2/commit/27217d0e)_

#### [Graphql] Cannot return null for non-nullable field "SelectedCustomizableOption.label"

The system now will not throw internal server error with message when the selected option that no longer exists

_AC-14256 - [GitHub issue](https://github.com/magento/magento2/issues/39729) - [GitHub code contribution](https://github.com/magento/magento2/pull/39888)_

#### GraphQL addWishlistItemsToCart Fails to Update Quantity for Existing Cart Items When One Wishlist Item Is Invalid (Magento 2.4.7-p3)

Fixed an issue where the GraphQL addWishlistItemsToCart mutation stopped processing when an invalid configurable product was encountered. After the fix, valid wishlist items are added to the cart and quantities are updated, while invalid items are skipped with appropriate errors returned.

_AC-14464 - [GitHub issue](https://github.com/magento/magento2/issues/39820) - [GitHub code contribution](https://github.com/magento/magento2/commit/3cf1a106)_

#### [2.4.8] Cannot place orders where City has digits 0-9, Ampersand, full stop or parenthesis in the City Name

Fixed issue where checkout failed for city names containing special characters like . , &, or parentheses.
Now, orders with such city names are placed successfully without validation errors.

_AC-14495 - [GitHub issue](https://github.com/magento/magento2/issues/39854) - [GitHub code contribution](https://github.com/magento/magento2/commit/b9f5d6f7)_

#### Guest Prefix Not Saved to Quote Address 2.4.8

Guest customer prefix (Mr/Mrs) is now saved during checkout.
Previously, salutations selected by guest customers were lost before reaching the final order, while all other address fields transferred correctly.
AC-14705

_AC-14705 - [GitHub issue](https://github.com/magento/magento2/issues/39915) - [GitHub code contribution](https://github.com/magento/magento2/commit/f1adb44e)_

#### Salesrule Subselect with Quantity condition Fail to apply

Fixed issue where cart price rules with product subselection conditions were not applying at checkout.
Now, discounts are successfully applied as per the configured rules.

_AC-14884 - [GitHub issue](https://github.com/magento/magento2/issues/39965) - [GitHub code contribution](https://github.com/magento/magento2/commit/fe72c407)_

#### [Issue] Remove space in class attribute

The System now removes an extra space in the class attribute

_AC-14939 - [GitHub issue](https://github.com/magento/magento2/issues/39977) - [GitHub code contribution](https://github.com/magento/magento2/pull/39970)_

#### Graphql - Merge cart not working correctly when Backorder is enabled

Fixed issue where guest cart items were not merged with customer cart during cart merge via GraphQL.
Now, customer cart correctly reflects the combined quantity from both guest and customer carts.

_AC-15148 - [GitHub issue](https://github.com/magento/magento2/issues/40064) - [GitHub code contribution](https://github.com/magento/magento2/commit/a3b1abc2)_

#### [Integration] [Checkout] Depend directives updated in failed payment email template

Failed payment email template updated to handle depend directives correctly.
Fix ensures shipping address and shipping method display properly when applicable.
Previously, these fields were missing in failed payment emails.

_AC-15363 - [GitHub code contribution](https://github.com/magento/magento2/commit/36d4d6fb)_

#### [Cart] Shopping cart page is not loading when Fixed product Tax is enable

Fixed an issue where the shopping cart page entered infinite loading when Fixed Product Tax (FPT) was enabled. The problem was caused by incorrect subtotal calculations due to tax being included in the same HTML element as the item price, leading to a mismatch between central and summary subtotals. After the fix, the cart loads correctly and displays accurate totals.

_AC-16096 - [GitHub code contribution](https://github.com/magento/magento2/commit/01cee3c3)_

#### Cart price rule Action "Price in cart" condition, applying when It should not

Fixed issue where cart price rules with the “Price in Cart less than” condition were incorrectly applied to ineligible products.
Now, coupons are properly validated and rejected when cart item prices do not meet the configured rule conditions.

_AC-6997 - [GitHub issue](https://github.com/magento/magento2/issues/36433) - [GitHub code contribution](https://github.com/magento/magento2/commit/01cee3c3)_

#### [Issue] Set price on quote item instead of base_price

The system correctly handles quote item's price set to the base_price instead of the price if you have multiple currencies in one website on the frontend

_AC-9985 - [GitHub issue](https://github.com/magento/magento2/issues/38094) - [GitHub code contribution](https://github.com/magento/magento2/pull/36878)_

#### Expired persistent quotes are not cleaned up by a cron job sales_clean_quotes

The expired persistent quotes are now cleared when the 'persistent_clear_expired' cron job runs. Previously, the expired persistent quotes where not cleared by any other cron job.

_ACP2E-3493 - [GitHub code contribution](https://github.com/magento/magento2/commit/11be3dff)_

#### "Something went wrong" error on checkout for inactive company

Prior to the fix, the logout action was not being completed properly on the cart page, if the longged in user company was no longer enabled. Now, if the company is no longer available, the logout is performed properly.

_ACP2E-3541 - [GitHub code contribution](https://github.com/magento/magento2/commit/df92debe)_

#### Addresses selection is not saved when we "Check Out with Multiple Addresses"

Prior to the fix when cancelling the multishipping option, the address was not preselected when reverting back to multshipping. Now, the default address is replaced with one of the selections made within the multishipping screen.

_ACP2E-3646 - [GitHub code contribution](https://github.com/magento/magento2/commit/6ea61121)_

#### [Cloud] Recent Orders not appearing in other store view if the orders are created on one store view

Resolved an issue where the "My Account" page did not display recent orders from other Store Views within the same Store. The order retrieval logic has been updated to ensure consistent order visibility across all Store Views, aligning with the behavior of the "My Orders" page.

_ACP2E-3807 - [GitHub code contribution](https://github.com/magento/magento2/commit/a20a6ff2)_

#### qty showing as  0 in the admin customer shopping cart section while adding BUNDLE products  

The Shopping Cart section in Customer Activities now displays the correct quantity. Previously, the quantity was shown as 0.

_ACP2E-3872 - [GitHub code contribution](https://github.com/magento/magento2/commit/3ad96f6a)_

#### [Cloud] Free Shipping discount not correctly removed when cart no longer meets requirements

The Subtotal (Excl. Tax) in cart price rule will now incorporate discounts from preceding rules.

_ACP2E-3973 - [GitHub code contribution](https://github.com/magento/magento2/commit/6dd3fa99)_

#### Duplicate order found for same customer in Multishipping

Concurrent requests to place order with multiple shipping addresses no longer result in duplicated orders for same customer

_ACP2E-4117 - [GitHub code contribution](https://github.com/magento/magento2/commit/a1c57b2e)_

#### [Cloud] Stock limit exceeded notification message is displayed twice when Out-of-Stock Threshold is hit

Fixed the issue where cart updates could show duplicate error banners. Previously, after an AJAX validation error the backend added the same message again during form submission, so shoppers would see two identical alerts. Now we skip adding the extra backend message, keeping the cart page to a single clear error banner.

_ACP2E-4192 - [GitHub code contribution](https://github.com/magento/magento2/commit/e885088b)_

#### For Billing Information Server Side Validation is not Working using shipping-information REST API

Customer address data validation has been improved to be more consistent between REST and GraphQl for checkout.

_ACP2E-4223 - [GitHub code contribution](https://github.com/magento/magento2/commit/0a8c9a9a)_

#### [Cloud] Bundle product price issue on cart page

Fixed the Bundle product price issue on the cart page for multiple-currency stores

_ACP2E-4245 - [GitHub issue](https://www.techbuyer.com/) - [GitHub code contribution](https://github.com/magento/magento2/commit/cbca0396)_

#### Manage Shopping Cart store scope issues

Now, shopping cart errors will be displayed to the admin user when managing the shopping cart for a customer assigned to a non-default website. Previously, errors were not displayed.

_ACP2E-4348 - [GitHub code contribution](https://github.com/magento/magento2/commit/31258bf6)_

#### Coupon times_used resets after partial invoice cancellation

Coupon times_used count is now updated correctly when an order is partially canceled.

_ACP2E-4365 - [GitHub code contribution](https://github.com/magento/magento2/commit/61c96348)_

### Cart & Checkout, GraphQL

#### Error in mapping message to error code when placing order via GraphQL

GraphQL calls to place an order for a nonexistent or inactive cart now correctly return CART_NOT_ACTIVE or CART_NOT_FOUND error codes in all store views, fixing an issue where translated error messages previously resulted in an UNDEFINED code.

_ACP2E-3942 - [GitHub code contribution](https://github.com/magento/magento2/commit/7accebfa)_

#### [GraphQl] cart query cart item discount issue on virtual quotes

Resolved an issue where the GraphQL cart query returned an incorrect discount amount for virtual quotes. Previously, discounts were incorrectly applied to certain virtual products that were not eligible.

_ACP2E-4248 - [GitHub code contribution](https://github.com/magento/magento2/commit/cbca0396)_

#### [Cloud] ACSD-68499_2.4.8-p2 creates another issue

When a graphQL request for an item with insufficient quantity was made, a proper error message with an error code was returned, and if the requested quantity is available, the cart update was successful.

_ACP2E-4404 - [GitHub code contribution](https://github.com/magento/magento2/commit/1c547060)_

### Cart & Checkout, GraphQL, Inventory / MSI

#### is_available attribute in CartItemInterface returns false even when salable stock is high

The is_available attribute returns true when salable stock is high. Previously, it always return false.

_ACP2E-3885 - [GitHub code contribution](https://github.com/magento/magento2/commit/3ad96f6a)_

### Cart & Checkout, Inventory / MSI

#### 414 Error on 'Search for Pickup Location' Endpoint with Large Cart Sizes

Selecting a store during checkout using "Pick in Store" no longer fails due to long URLs when many products are in the cart.
Previously, this triggered a 414 error caused by excessively long URLs generated during store selection, preventing customers from completing checkout.

_ACP2E-4266 - [GitHub issue](https://mcstaging.casamyers.com.mx/) - [GitHub code contribution](https://github.com/magento/inventory/commit/ae1f272f)_

### Cart & Checkout, Promotion

#### Display balance on Gift Card is not restricted by Website Scope

Restricted the Gift Card balance check with the assigned Website Scope.

_ACP2E-4379 - [GitHub issue](https://www.panini.it)_

### Cart & Checkout, Security

#### [CLOUD] Getting 404 for JS file on checkout page on first attempt after implementing sri patch

Previous to the fix mixins would not have loaded in cart and checkout when minify and bundling enabled. After the fix, all mixins should load as expected.

_ACP2E-4128 - [GitHub issue](https://ansg.integration-5ojmyuq-f46gejjrfa7be.ap-3.magentosite.cloud/) - [GitHub code contribution](https://github.com/magento/magento2/commit/e457c5e2)_

### Cart & Checkout, Shipping

#### [Mainline] Cart Price rule is not respecting Multishipping

Prior to the implementation of this correction, the cart price rule for multi-shipping products did not apply correctly when sub-select conditions were applied and free shipping was enabled. However, since the correction was applied, the cart price rule for multi-shipping carts now functions as intended.

_ACP2E-3666 - [GitHub code contribution](https://github.com/magento/magento2/commit/b12ffe36)_

### Catalog

#### Duplicate cache fpc for same page with same query

The system now correctly identifies and uses the same Full Page Cache (FPC) for pages with the same query parameters, regardless of their order or trailing characters. This prevents unnecessary increase in the page cache folder size. Previously, the system would create a different FPC identifier for the same page if the order of the query parameters was different or if there were trailing characters, leading to an increase in the page cache folder size.

_AC-10722 - [GitHub issue](https://github.com/magento/magento2/issues/38269) - [GitHub code contribution](https://github.com/magento/magento2/pull/38270)_

#### Missing indexing of required columns in catalog_product_entity_int table

Added the missing indexing of required columns in catalog_product_entity_int table

_AC-10844 - [GitHub issue](https://github.com/magento/magento2/issues/38315) - [GitHub code contribution](https://github.com/magento/magento2/pull/38316)_

#### Scope bug in Catalog URL resource (_getCategories)

This PR adds a fallback to default scope if there is no value defined on the store scope in category URL resource.

_AC-11011 - [GitHub issue](https://github.com/magento/magento2/issues/38393) - [GitHub code contribution](https://github.com/magento/magento2/pull/38394)_

#### [Issue] Check if OpenGraph can show price

The system is working fine when we use plugin which hides the price and with this change price is not visible in the OG tag.

_AC-11635 - [GitHub issue](https://github.com/magento/magento2/issues/38512) - [GitHub code contribution](https://github.com/magento/magento2/pull/38510)_

#### Rounding problem on prices when adding tax to display prices

The System now fixes Rounding problem on prices when adding tax to display prices

_AC-11725 - [GitHub issue](https://github.com/magento/magento2/issues/18025) - [GitHub code contribution](https://github.com/magento/magento2/pull/35730)_

#### [Issue] Allow custom catalog rule conditions

Resolved an issue that prevented custom catalog rule conditions from being used due to strict type checking. The fix replaces the class equality check with instanceof, allowing custom condition classes to function correctly and enabling successful rule validation and indexing.

_AC-13338 - [GitHub issue](https://github.com/magento/magento2/issues/39339) - [GitHub code contribution](https://github.com/magento/magento2/commit/913bf1a6)_

#### Configurable product lose options when added to wishlist

Fixed an issue where configurable product options were lost after adding the product to the wishlist. Now, the selected options are retained, allowing the product to be added to the cart smoothly without prompting users to reselect options.

_AC-13373 - [GitHub issue](https://github.com/magento/magento2/issues/39363) - [GitHub code contribution](https://github.com/magento/magento2/commit/cc0ec250)_

#### Special price is not showing correctly for Configurable product's child product (simple product)

Fixed an issue where the special price for a configurable product’s child (simple) product was not displayed correctly on the product listing page when “Used in Product Listing” was set to No. Now, the special price is shown properly along with the regular price, ensuring consistent pricing display across product types.

_AC-13594 - [GitHub code contribution](https://github.com/magento/magento2/commit/3cf1a106)_

#### [Bug] REST API: Update special prices does not set values for all store views

REST API now updates special prices for all store views in a website.
Previously, updating special prices via REST API only affected the specified store view, not all store views in the website.
AC-13671

_AC-13671 - [GitHub issue](https://github.com/magento/magento2/issues/39521) - [GitHub code contribution](https://github.com/magento/magento2/commit/7bdafaa2)_

#### Problems with price scope and config.php

In Magento 2.4.2, changing the price scope via config.php does not properly update the is_global value in catalog_eav_attribute for the price attribute.
As a result, product prices remain global and cannot be saved per website, even when the price scope is set to website.
The workaround requires manually updating the is_global column in the database, which is not ideal for production environments.
This behavior is consistent with Magento’s default design, where price scope is either Global or Website, but not per store view.

_AC-13857 - [GitHub issue](https://github.com/magento/magento2/issues/33559)_

#### [\Magento\ConfigurableProduct\Model\Product\Type\Configurable] PHP error unoticed

Changed a loop variable name to correctly add the "_cache_instance_product_ids" data on the given product to be used on subsequent calls.

_AC-14159 - [GitHub issue](https://github.com/magento/magento2/issues/39641) - [GitHub code contribution](https://github.com/magento/magento2/pull/39642)_

#### Elastic Search interferes with the default sort order of products (changing newest first to oldest first)

The Sytem now sorts The newest products in the database (the one with the highest entity_id) are shown first

_AC-14411 - [GitHub issue](https://github.com/magento/magento2/issues/31043) - [GitHub code contribution](https://github.com/magento/magento2/pull/36900)_

#### After store switch page comes from cache(Store switcher not working) in 2.4.8

Fixed issue where switching store views from the storefront header did not work until cache was manually cleared.
Now, store view switching works correctly without requiring a cache clean.

_AC-14426 - [GitHub issue](https://github.com/magento/magento2/issues/39806)_

#### Ignored .less styles with min-width: (@screen__l)

Fixed issue where only three products were displayed per row on category pages.
Now, four products are displayed per row as expected.

_AC-14463 - [GitHub issue](https://github.com/magento/magento2/issues/39817) - [GitHub code contribution](https://github.com/magento/magento2/commit/b9f5d6f7)_

#### Wishlist count not displayed on homepage/other pages except wishlist page in customer menu

Fixed issue where the wishlist count appeared as empty parentheses on non-wishlist pages.
Now, the correct wishlist item count is displayed next to “My Wish List” across all pages.

_AC-14607 - [GitHub issue](https://github.com/magento/magento2/issues/39892) - [GitHub code contribution](https://github.com/magento/magento2/commit/a3b1abc2) - [GitHub code contribution](https://github.com/magento/magento2/commit/b3774fbe)_

#### catalog_product_save_before observer throws date-related error when using REST API without store-level values (getFinalPrice() issue)

This PR adjusts the processing of SpecialFromDate to ensure proper formatting when the date is provided as a DateTimeInterface instance. This prevents errors arising during getFinalPrice() execution under certain scenarios.

_AC-14847 - [GitHub issue](https://github.com/magento/magento2/issues/39959) - [GitHub code contribution](https://github.com/magento/magento2/pull/40003)_

#### URGENT - Cannot add product to bundle when the product to add has customizable options

Fixed issue where products with customizable options could not be added to bundle products.
Previously, such products were excluded from the “Add Products to Option” list in bundle creation.
Now, products with customizable options can be added to bundles without including their custom options, allowing proper stock management.
This enables bundle creation without duplicating products or affecting inventory levels.

_AC-14958 - [GitHub issue](https://github.com/magento/magento2/issues/39993)_

#### Negative `?p=` query string causes ElasticSearch exception

The System now addresses the negative ?p= value in the Category pagination, that currently results in exception and is considered a valid request

_AC-15191 - [GitHub issue](https://github.com/magento/magento2/issues/40079) - [GitHub code contribution](https://github.com/magento/magento2/pull/40080)_

#### 'As low as' price label is shown for configurable products with single option

Fixed issue where configurable products displayed the price with an incorrect “As low as” label on PDP/PLP.
Now, the product shows the correct price ($500) without any misleading labels.

_AC-15237 - [GitHub issue](https://github.com/magento/magento2/issues/40104) - [GitHub code contribution](https://github.com/magento/magento2/commit/a3b1abc2)_

#### Wrong method called for Add To Compare button

Corrected the method used in \Magento\Catalog\Ui\DataProvider\Product\Listing\Collector\Url::collect().
Previously, getAddToCartButton() was incorrectly called instead of getAddToCompareButton().
This change ensures the correct behavior for rendering the “Add to Compare” button in product listings.
No functional behavior changes are introduced; the update improves developer experience and code correctness.

_AC-15323 - [GitHub issue](https://github.com/magento/magento2/issues/39754) - [GitHub code contribution](https://github.com/magento/magento2/commit/a3b1abc2)_

#### Wrong product price is displayed on the shopping cart with different currencies in different store views

Fixed an issue where incorrect product pricing was displayed in the shopping cart when using different currencies across store views. After the fix, the cart now shows the correct converted price based on the configured currency, ensuring consistency between the product page and cart.

_AC-15385 - [GitHub code contribution](https://github.com/magento/magento2/commit/a8cf637b)_

#### Wrong "As low as" price display for configurable products when FPT is enabled

Confirmed that the incorrect “As low as” price for configurable products when FPT was enabled was caused by tax being applied twice; the fix ensures the final price calculation respects tax configuration and now displays the correct price.

_AC-15718 - [GitHub issue](https://github.com/magento/magento2/issues/40171) - [GitHub code contribution](https://github.com/magento/magento2/commit/a06a4a57)_

#### Time complexity of _loadAttributes in Eav\Model\Entity\Collection\AbstractCollection increases with number of products in cart and attributes

This PR optimized _loadAttributes in Eav\Model\Entity\Collection\AbstractCollection by replacing nested loops with array union (+) and reducing calls to _setItemAttributeValue, improving performance for large product carts.

_AC-15833 - [GitHub issue](https://github.com/magento/magento2/issues/40216) - [GitHub code contribution](https://github.com/magento/magento2/pull/40217)_

#### Bugged Interaction Between Collection Cache and Configurable Products Gallery

Resolved a caching issue with configurable product galleries by adding a defensive type check to ensure media_gallery_images is always treated as a collection, preventing fatal errors caused by corrupted cache data.

_AC-16066 - [GitHub issue](https://github.com/magento/magento2/issues/33965) - [GitHub code contribution](https://github.com/magento/magento2/commit/3b5ac075)_

#### Product page gives error because of url rewrites

Now the Product Page is loaded successfully when we have URL rewrites

_AC-2950 - [GitHub issue](https://github.com/magento/magento2/issues/35371) - [GitHub code contribution](https://github.com/magento/magento2/pull/39670)_

#### indexer_update_all_views cron error with MAGE_INDEXER_THREADS_COUNT

Fixed issue for MAGE_INDEXER_THREADS_COUNT > 2 with Customer Segment indexer

_ACP2E-3538 - [GitHub code contribution](https://github.com/magento/magento2/commit/9608ca21)_

#### Exception while adding "Conditions Combination" in Page Builder Products widget condition

The issue has been fixed by adding a check to skip missing or incomplete conditions. Previously, this caused error logs to be generated due to the handling of incomplete conditions in the system.

_ACP2E-3545 - [GitHub code contribution](https://github.com/magento/magento2/commit/11be3dff)_

#### Browser crash when loading attribute set

Browser no longer crashes on attribute set edit page if there are more than 4k product attributes

_ACP2E-3633 - [GitHub issue](https://github.com/magento/magento2/issues/38810) - [GitHub code contribution](https://github.com/magento/magento2/commit/b12ffe36)_

#### [CLOUD] Product URL Rewrites Not Created for New Store: Go Live Blocker

Product URL Rewrites for New Store is successfully created. 
Previously operation ended with memory leak or with timeout.

_ACP2E-3669 - [GitHub code contribution](https://github.com/magento/magento2/commit/df92debe)_

#### Attribute Default Value for Options Not Working

Previously, when we changed the default value of a product select attribute, it appeared as an array element with the previous values. After this fix is applied, when we update a product attribute value it will save as a single element at eav_attribute table.

_ACP2E-3688 - [GitHub code contribution](https://github.com/magento/magento2/commit/520f9e30)_

#### [Mainline] [CLOUD] Image Resizing consumes over 400GB of disk space

After the fix, the `catalog:images:resize` command used with `--skip_hidden_images` flag will not generate image caches for websites where images are not present.

_ACP2E-3869 - [GitHub code contribution](https://github.com/magento/magento2/commit/9ad7d277)_

#### Dynamic image generation generate large number of images

After the fix, images will be generated only for the websites to which the product is assigned.

_ACP2E-3927 - [GitHub code contribution](https://github.com/magento/magento2/commit/fab20b00)_

#### Provided CountryID Does not Exist - Ireland (IE)

After the fix, Ireland postcodes are available to search for pickup locations.

_ACP2E-3932 - [GitHub code contribution](https://github.com/magento/magento2/commit/4ca73607) - [GitHub code contribution](https://github.com/magento/inventory/commit/d2f1d6c6)_

#### 500 error occurs on frontend, due to incorrect layout structure is cached in layout

Fixed an issue when a page would return a 500 error code, due to an incorrect layout structure being cached in the layout

_ACP2E-4040 - [GitHub code contribution](https://github.com/magento/magento2/commit/47721be6)_

#### Product Views Report Incorrect - Lower Count Compared to GA

Fixed a bug where report_viewed_product_index table wasn't showing the correct number of product page views.

_ACP2E-4045 - [GitHub code contribution](https://github.com/magento/magento2/commit/6e134409)_

#### Validation error for Catalog Price rule discount amount field in Scheduled Update

Previously, before fixing this issue, for the schedule update for the catalog price rule, if the discount amount is by_fixed then it was not validated properly because of the validation-number-range rule. After this fix has been applied, the validation works properly for fixed price catalog price rule.

_ACP2E-4054 - [GitHub code contribution](https://github.com/magento/magento2/commit/6dd3fa99)_

#### VAT Validation fails because of VAT API rate limiter - triggers false positive customer group change

Optimized the requests to Europa Vat validation tool, that results in less "rate limiter" error

_ACP2E-4072 - [GitHub code contribution](https://github.com/magento/magento2/commit/ee918f0d)_

#### Bulk Deletion in Core Indexer Triggering Maximum Writeset Size Error on Production

Optimizes catalog rule product index cleanup by implementing two deletion strategies based on data volume.

_ACP2E-4085 - [GitHub code contribution](https://github.com/magento/magento2/commit/0a3b7032)_

#### Products displays as out of stock after disabling

After the fix, disabled products are not present in the products widget.

_ACP2E-4136 - [GitHub code contribution](https://github.com/magento/magento2/commit/a1c57b2e)_

#### [Cloud] Errors with duplicate entries (temp_category_descendants_%)

Fixed issue with duplicate entries during creation scheduled updates for enviroments with high number of nested categories

_ACP2E-4159 - [GitHub code contribution](https://github.com/magento/magento2/commit/a1c57b2e)_

#### [CLOUD] Compare Products Count missmatch Issue for different stores

Compare product list now works correctly after switching to another storeview

_ACP2E-4249 - [GitHub code contribution](https://github.com/magento/magento2/commit/98f028ab)_

#### No option to 'use default' on 'Images and Videos' for Image Role Assignment

The "Use Default Value" options have been added into the product images and videos section, enabling the inheritance of settings from the default scope.

_ACP2E-4280 - [GitHub code contribution](https://github.com/magento/magento2/commit/61c96348)_

#### Restricted Category Products Still Counted in Wishlist After Customer Group Update

Prior to the fix, category permissions were not being applied properly to customer wishlist items. Now, after the fix, wishlist items are properly displayed and paginated in both web and GraphQL.

_ACP2E-4294 - [GitHub code contribution](https://github.com/magento/magento2/commit/c135fc3a)_

#### [Cloud] Bundle product price issue on PDP and PLP

Price for Bundle Product with regular price is shown correctly on PDP/PLP for non default currency

_ACP2E-4298 - [GitHub code contribution](https://github.com/magento/magento2/commit/0a3b7032)_

#### Customer can place order for inaccessible product after customer group change

Previously, when changing the customer group from admin, the frontend catalog and cart did not reflect the changes in catalog permissions. However, after applying this fix, the frontend quote now changes according to the updated catalog permissions when the customer group is changed from admin.

_ACP2E-4300 - [GitHub code contribution](https://github.com/magento/magento2/commit/f7bbcb4e)_

#### Reindexing stuck due to high memory usage

Fixed the issue where the catalog rule indexer consumed excessive memory and failed to complete, causing instability and out-of-memory errors.

_ACP2E-4303 - [GitHub code contribution](https://github.com/magento/magento2/commit/c135fc3a)_

#### [CMS] Scheduled Update Preview Link redirects to Maintenance Page

Scheduled Update Preview of Home Page Link with Configurable Products correctly displays list of products. Previously it redirected users to Maintenance Page

_ACP2E-4401 - [GitHub code contribution](https://github.com/magento/magento2/commit/1c547060)_

### Catalog, GraphQL

#### GraphQl invalid discount calculation

GraphQL now correctly displays discount percentages and base prices when catalog prices are configured to include tax. Previously, rounding errors occurred, such as displaying 19.99% instead of 20%.

_ACP2E-3993 - [GitHub code contribution](https://github.com/magento/magento2/commit/e457c5e2)_

#### GetCart GraphQL Media Gallery Field Returns Empty Data after cache flush

After the fix, product's media_gallery is returned as expected in the GraphQL response for the cart request.

_ACP2E-4185 - [GitHub code contribution](https://github.com/magento/magento2/commit/45cbf9b6)_

### Catalog, GraphQL, Search

#### Products graphql returned disabled categories in the category aggregations

After the fix disabled categories aren't returned for the products GraphQl request.

_ACP2E-2885 - [GitHub code contribution](https://github.com/magento/magento2/commit/b12ffe36)_

### Catalog, Performance

#### Categories in admin are loading very slow

The category loading performance has a significant improved. Previously, it took so long to load the category that caused a timeout issue.

_ACP2E-3891 - [GitHub code contribution](https://github.com/magento/magento2/commit/4ca73607)_

### Catalog, Pricing

#### Wrong catalog price rule discount applied to the child product

Fixes the issue where the catalog price rule for the variation is overridden by the parent configurable product, in case where both rules have the same priority.

_ACP2E-3693 - [GitHub code contribution](https://github.com/magento/magento2/commit/a20a6ff2)_

#### [Cloud] Bundle product price issue

Price for Bundle Product with special price is shown correctly on PDP/PLP for non default currency

_ACP2E-4110 - [GitHub code contribution](https://github.com/magento/magento2/commit/6e134409)_

### Catalog, Product

#### [Random Bug] Fotorama lib isn't loaded

The system now ensures that the Fotorama library is properly loaded, allowing all attached images to be displayed in the image gallery as expected. Previously, only the first image was visible due to an issue with the Fotorama library not loading correctly.

_AC-12124 - [GitHub code contribution](https://github.com/magento/magento2/commit/45b51c9c) - [GitHub code contribution](https://github.com/magento/magento2/commit/27217d0e)_

#### "Add Products Manually" link should always be visible

Fixed an issue where the “Add Products Manually” link was not visible when creating a configurable product without existing configurations. The link is now always displayed, allowing admins to associate simple products easily without creating dummy configurations.

_AC-13866 - [GitHub issue](https://github.com/magento/magento2/issues/39595) - [GitHub code contribution](https://github.com/magento/magento2/commit/ef666cd9)_

#### Editing A Product in the backend Removes extra decimal places from product option pricing

Fixed an issue where editing a product in the admin truncated product option pricing to two decimal places. The system now preserves pricing with higher decimal precision, ensuring accurate values are retained after saving.

_AC-14050 - [GitHub issue](https://github.com/magento/magento2/issues/39655) - [GitHub code contribution](https://github.com/magento/magento2/commit/3b5ac075)_

### Catalog, Search

#### RestApi request '/rest/default/V1/categories?searchCriteria%5Bpage_size%5D=1' fails with timeout error

Category REST API requests no longer fail with timeout errors.
Previously, requests to /rest/default/V1/categories?searchCriteria[page_size]=1 could fail with a timeout after certain code changes.
AC-13358

_AC-13358 - [GitHub code contribution](https://github.com/magento/magento2/commit/7bdafaa2)_

### Content

#### graphql (magento 2.4.6-p4 ) - error when try to get cms page with not active status

Fixed issue where GraphQL query for a disabled CMS page returned an internal server error.
Now, the query fetches a proper response without errors.

_AC-12302 - [GitHub issue](https://github.com/magento/magento2/issues/38877) - [GitHub code contribution](https://github.com/magento/magento2/commit/1b1baf1d)_

#### Wishlist sharing form allows random code in the name fields

Fixed a critical Server-Side Template Injection (SSTI) vulnerability in the wishlist sharing form where malicious code could be entered in the message field and sent via email. The update adds input validation to block template directives and unsafe patterns, now showing an error message when invalid content is detected.

_AC-12730 - [GitHub issue](https://github.com/magento/magento2/issues/39024) - [GitHub code contribution](https://github.com/magento/magento2/commit/01cee3c3)_

#### Putting csp_whitelist.xml in theme does not work and creates intermittent issue

Implemented caching of CSP whitelist per website area.

_AC-13069 - [GitHub issue](https://github.com/magento/magento2/issues/38933) - [GitHub code contribution](https://github.com/magento/magento2/pull/39672)_

#### After upgrade to magento 2.4.7 p2 can't see newly uploaded files media gallery

Newly uploaded files now appear in the Media Gallery after upgrade.
Previously, after upgrading to Magento 2.4.7 p2, newly uploaded images did not appear in the Media Gallery until a manual sync was performed.
AC-13262

_AC-13262 - [GitHub issue](https://github.com/magento/magento2/issues/39275)_

#### Media gallery displays incorrect images from directories with identical names but different case

The System now addresses an issue where files uploaded to a specific directory in the Media Gallery are also visible in directories with similar names but different case.

_AC-13489 - [GitHub issue](https://github.com/magento/magento2/issues/39382) - [GitHub code contribution](https://github.com/magento/magento2/pull/39502)_

#### Completely removing a gallery-image from be keeps scope roles/types set (base/small/thumbnail) and after re-adding "old" roles/types appear

The system is working as expected in the store scopes the images inherit the roles/types of the new added image as per the default scope

_AC-13556 - [GitHub issue](https://github.com/magento/magento2/issues/39481) - [GitHub code contribution](https://github.com/magento/magento2/pull/39680)_

#### [Small Bug] Filter of Admin Panel `listing component` cannot hit when field value contains `\`

The system is working fine when we are filtering page title having slash in it(eg: Magento\Store)

_AC-13661 - [GitHub issue](https://github.com/magento/magento2/issues/39513) - [GitHub code contribution](https://github.com/magento/magento2/pull/39535)_

#### Error: Script error for "Magento_Catalog/js/validate-product" for admin content pagebuilder with products load

This PR fixes the  Script error for catalogAddToCart when editing the pagebuilder with the products condition

_AC-13891 - [GitHub issue](https://github.com/magento/magento2/issues/39604) - [GitHub code contribution](https://github.com/magento/magento2/pull/39677)_

#### catalogAddToCart Script error when configuring the Product Widget.

Fixed a script error that occurred when configuring the Products widget with “Conditions Combination” in Page Builder. The issue was caused by missing frontend JS files, leading to console errors. After the fix, the widget loads correctly with no console errors.

_AC-13892 - [GitHub code contribution](https://github.com/magento/magento2/commit/528af81a)_

#### Block selection in widgets that have the same identifier

The System now correctly handles selecting block while creating widgets when we are having same identifier blocks

_AC-14132 - [GitHub issue](https://github.com/magento/magento2/issues/39692) - [GitHub code contribution](https://github.com/magento/magento2/pull/39722)_

#### "The CMS page with the "0" ID doesn't exist" log flood

The system is working as expected after creating admin user and when we creating a new page system.log does not have any error messages

_AC-14254 - [GitHub issue](https://github.com/magento/magento2/issues/39743) - [GitHub code contribution](https://github.com/magento/magento2/pull/39746)_

#### [GraphQl] Route query infinite loop

This ticket fixed the issue where a GraphQL route query with identical Request Path and Target Path caused an infinite loop and eventually timed out.
In 2.4.9-alpha3, the query now returns the correct error response instead of looping.

_AC-14269 - [GitHub issue](https://github.com/magento/magento2/issues/39707) - [GitHub code contribution](https://github.com/magento/magento2/commit/68a45d0a)_

#### Unexisting sitemap responds with product image

The System now fixes when we access Unexisting sitemap responds with product image with Response: 404 NOT FOUND

_AC-14295 - [GitHub issue](https://github.com/magento/magento2/issues/39756) - [GitHub code contribution](https://github.com/magento/magento2/pull/40135)_

#### Catalog link widgets uses incorrect URL

The System now correctly handles widgets after adding catalog product link and catalog category link and it shows correct urls in html source also

_AC-14437 - [GitHub issue](https://github.com/magento/magento2/issues/39464) - [GitHub code contribution](https://github.com/magento/magento2/pull/39710)_

#### Table prefix is not taken into account

Adobe Commerce now correctly respects database table prefixes when loading the Design > Configuration theme grid in the Admin. Previously, on Adobe Commerce 2.4.8 with a table prefix configured in app/etc/env.php, navigating to Content > Design > Configuration resulted in an error because the table prefix was not taken into account, and the grid of themes did not render.

_AC-14556 - [GitHub issue](https://github.com/magento/magento2/issues/39847) - [GitHub code contribution](https://github.com/magento/magento2/commit/1bc2d6d0)_

#### Change constant IMAGE_FILE_NAME_PATTERN to public visible, for more flexibility

The constant IMAGE_FILE_NAME_PATTERN in GenerateRenditions.php was made public to allow developers more flexibility when working with image renditions. The fix is included in Magento 2.4.9-alpha3 with full unit and integration test coverage.

_AC-15338 - [GitHub issue](https://github.com/magento/magento2/issues/39733) - [GitHub code contribution](https://github.com/magento/magento2/commit/68a45d0a)_

#### Incorrect Shipping Method is displayed in review order page for multi shipping

Fixed an issue in multi-shipping checkout where the review order page displayed an incorrect shipping cost (5 INR instead of 10 INR); the update ensures the correct shipping amount is shown for each address.

_AC-15664 - [GitHub code contribution](https://github.com/magento/magento2/commit/3cf1a106)_

#### bin/magento config:show(or set) design/theme/theme_id fails

Fixed issue where the CLI commands bin/magento config:show and config:set failed for the design/theme/theme_id path despite the configuration being present.
Now, the commands execute successfully and allow viewing and setting the theme ID without errors.

_AC-5915 - [GitHub issue](https://github.com/magento/magento2/issues/35751) - [GitHub code contribution](https://github.com/magento/magento2/commit/64823f95)_

#### Unable to upload image with relatively small width

The system no longer fails to resize image with relatively small width to its height.

_ACP2E-3558 - [GitHub code contribution](https://github.com/magento/magento2/commit/9608ca21)_

#### Page Builder's Product component doesn't work if the user doesn't have Widget permission

Prior to the fix, when accessing a widget without permissions, the page was throwing a generic error and displaying a "loading" GIF. Now, after the fix, a modal window is displayed with "Sorry, you need permissions to view this content." message.

_ACP2E-3664 - [GitHub code contribution](https://github.com/magento/magento2-page-builder/commit/bd9181b6)_

#### Incorrect config path for remote storage path style configuration

After the fix, setting the remote storage path style configuration will impact the actual AWS S3 path style configuration.

_ACP2E-3734 - [GitHub code contribution](https://github.com/magento/magento2/commit/df92debe)_

#### Page Builder Product Widget ordering not being applied in GraphQL

Fixes the issue where the GraphQL "route" query response did not return products in the correct sort order within a Page Builder Products content type.

_ACP2E-3898 - [GitHub code contribution](https://github.com/magento/magento2-page-builder/commit/bd9181b6)_

#### Pricing Display Issue on Non-English Storefronts Due to ICU Library Version

After the fix, the product price is displayed correctly in the Hebrew (Israel) locale.

_ACP2E-3938 - [GitHub code contribution](https://github.com/magento/magento2/commit/7accebfa)_

#### Updating Store Code Cleared Design Configuration

Fixes the issue where updating the store view code cleared the Design Configuration settings due to the configuration cache not being properly refreshed.

_ACP2E-3941 - [GitHub code contribution](https://github.com/magento/magento2/commit/462ede94)_

#### Page Builder - Product Condition Logic Issue (OR logic behaves incorrectly showing less products)

Page Builder Products Widget now returns correct result when an attribute with global scope is used in "Match Any" condition

_ACP2E-4096 - [GitHub code contribution](https://github.com/magento/magento2/commit/e457c5e2)_

#### Product carousel adds incorrect products to Page Builder

Prior to the fix, a configurable product would have been automatically included in PageBuilder product carousel listings if any of its child would have met the filtering conditions. Now, after the fix, the parent product will be included only if the child product is not visible on his own.

_ACP2E-4341 - [GitHub code contribution](https://github.com/magento/magento2/commit/61c96348)_

#### Products List widget returns incorrect result if multiple categories are listed in category condition

The “Catalog Products List” widget will now display accurate results when multiple categories listed in the condition "Category is one of". Previously, only the first category in the list was processed.

_ACP2E-4353 - [GitHub code contribution](https://github.com/magento/magento2/commit/0a3b7032) - [GitHub code contribution](https://github.com/magento/magento2-page-builder/commit/1c1b3419)_

#### [Cloud] Media Gallery folder creation requires delete_folder permission in New Media Gallery – roles with only create_folder cannot create folders

Previously, before this fix was implemented, an admin user with only content create folder permission could not create a folder in the CMS media gallery. However, after the fix, content creators in the media gallery can now create folders with only the create folder permission.

_ACP2E-4376 - [GitHub code contribution](https://github.com/magento/magento2/commit/61c96348)_

#### [QUANS] Duplicating a CMS page

Previous to this fix, duplication of a cms page with custom layout update would have failed. Now CMS pages with Custom Layout Updates can be duplicated without errors.

_ACP2E-4449 - [GitHub code contribution](https://github.com/magento/magento2/commit/f7bbcb4e)_

### Customer/ Customers

#### Exception on Storefront when Admin adds CustomerCustomAttribute block via CMS Page Content

Fixed an issue where adding the CustomerCustomAttribute block via CMS page content caused a storefront exception and prevented the page from loading.
Storefront now displays normally and shows a meaningful message when the content cannot be rendered, avoiding critical errors.

_AC-11004_

#### Customers Now Online Admin Grid Shows Duplicate Rows Every Time a User Logs In, Then Out, Then In

Fixed an issue where the Customers Now Online admin grid displayed duplicate rows when a customer logged out and logged back in.
The grid now updates the existing record with the latest activity instead of creating duplicate entries, ensuring accurate customer session tracking.

_AC-11511 - [GitHub code contribution](https://github.com/magento/magento2/commit/528af81a)_

#### Minimum and maximum value validation does not work for DOB attribute on Storefront

This bug fixed the issue where minimum and maximum date validation for the Date of Birth (DOB) attribute did not work on the storefront (though it worked in Admin).
In 2.4.9-alpha3, validation now correctly blocks saving customers with DOB outside the allowed range, showing an error message.

_AC-13535 - [GitHub code contribution](https://github.com/magento/magento2/commit/68a45d0a)_

#### Ajax 401 error load on Warning screen in admin panel while Login as Customer permission revoked

This bug fixed an issue where a revoked Login as Customer permission caused an Ajax 401 error with raw HTML to appear in the warning popup.
After the fix, the system now correctly displays a normal warning message instead of raw HTML.
The solution was delivered in Magento 2.4.9-alpha3

_AC-15336 - [GitHub code contribution](https://github.com/magento/magento2/commit/68a45d0a)_

### Framework

#### Compling code of disabled module.

This pull request escape disabled modules before code compilation.

_AC-10933 - [GitHub issue](https://github.com/magento/magento2/issues/38241) - [GitHub code contribution](https://github.com/magento/magento2/pull/39723)_

#### Error when run command setup:upgrade with custom DB trigger

Custom database triggers no longer cause errors during setup:upgrade.
Previously, running bin/magento setup:upgrade with a custom database trigger (e.g., AFTER INSERT on the store table) could result in the error:
"Warning: Trying to access array offset on value of type null in vendor/magento/framework/Mview/View/Subscription.php on line 357"
AC-11487

_AC-11487 - [GitHub issue](https://github.com/magento/magento2/issues/38481)_

#### [Issue] Make method signature consistent with interface

The method signature for getAttributes is now consistent with its interface, preventing any errors when overwriting the method. Previously, inconsistencies in the method signature caused errors when attempting to overwrite the getAttributes method.

_AC-11578 - [GitHub issue](https://github.com/magento/magento2/issues/38501) - [GitHub code contribution](https://github.com/magento/magento2/pull/31955)_

#### Website/Group/Store entity form can't be extended with multiple value form element for extension attributes

This PR allowes multivalue form elements to submit data to website/group/store form.

_AC-11657 - [GitHub issue](https://github.com/magento/magento2/issues/24070) - [GitHub code contribution](https://github.com/magento/magento2/pull/24094)_

#### [Issue] Fix validate-emails rule for ui component

The system now correctly validates multiple email addresses entered in UI components, ensuring that each email is properly trimmed and validated. Previously, the system was using an incorrect method for trimming email addresses, which could lead to validation errors.

_AC-11719 - [GitHub issue](https://github.com/magento/magento2/issues/38528) - [GitHub code contribution](https://github.com/magento/magento2/pull/33470)_

#### [Issue] Remove scope resolver usage

This PR resolves the Admin URL settings globally instead of the current store

_AC-11736 - [GitHub issue](https://github.com/magento/magento2/issues/38566) - [GitHub code contribution](https://github.com/magento/magento2/pull/38554)_

#### [Issue] Remove redundant methods

Code Quality: Removed redundant methods in AsynchronousOperations and Sales components that only called parent methods without adding functionality, improving code maintainability.

_AC-11915 - [GitHub issue](https://github.com/magento/magento2/issues/29748) - [GitHub code contribution](https://github.com/magento/magento2/pull/29147)_

#### Magento_Theme title.phtml template invalid for PHP 8.2

This pull request fixes an issue when CMS page created with the null heading as in Php 8.x passing null to trim() throws Exception: Deprecated Functionality: trim(): Passing null to parameter #1 ($string) of type string

_AC-12856 - [GitHub issue](https://github.com/magento/magento2/issues/39092) - [GitHub code contribution](https://github.com/magento/magento2/pull/39398)_

#### xsd validation fails on etc/adminhtml/system.xml files that contain comments below field items.

This PR fixes XML schema definitions in phpstorm for comment node

_AC-12945 - [GitHub issue](https://github.com/magento/magento2/issues/39148) - [GitHub code contribution](https://github.com/magento/magento2/pull/39867)_

#### Magento Version exposure via Setup route with default Nginx Configuration

The system is now working as expected and do not expose the exact version of Magento the site is running

_AC-13205 - [GitHub issue](https://github.com/magento/magento2/issues/39227) - [GitHub code contribution](https://github.com/magento/magento2/pull/39228)_

#### [Issue] Unpack object arguments as named parameters

The system now utilizes the PHP 8.1 feature of unpacking array with named parameters, which eliminates the need for array_values calls and potentially improves overall performance. Previously, the system required array_values calls for unpacking object arguments.

_AC-13210 - [GitHub issue](https://github.com/magento/magento2/issues/39233) - [GitHub code contribution](https://github.com/magento/magento2/pull/37411)_

#### [Issue] refactor quote address do validate method

This PR includes readability improvements to the doValidate method.

_AC-13214 - [GitHub issue](https://github.com/magento/magento2/issues/38230) - [GitHub code contribution](https://github.com/magento/magento2/pull/38219)_

#### Magento option --magento-init-params never used when running cli?

The --magento-init-params option is now used when running CLI commands.
Previously, passing --magento-init-params to CLI commands had no effect on parameters like MAGE_MODE.
AC-13231

_AC-13231 - [GitHub issue](https://github.com/magento/magento2/issues/39248) - [GitHub code contribution](https://github.com/magento/magento2/commit/132b9e68)_

#### getItemsByColumnValue wrong type declaration

The system now correctly defines the input parameter $value as a primitive type, not an array, in the getItemsByColumnValue function, ensuring that the function returns the expected collection. Previously, if an array with a single value was used as the input parameter, the function would return null and IDEs would mark it as an error.

_AC-13240 - [GitHub issue](https://github.com/magento/magento2/issues/33070) - [GitHub code contribution](https://github.com/magento/magento2/pull/33120)_

#### When using file storage for the lock provider, we get an ever growing directory of files without any cleanup happening

This pull request introduce a new cronjob that runs once per day and searches for lock files that haven't been modified in the last 24 hours and can thus be safely removed. This will keep the contents of the lock files directory under control.
This cronjob will only execute something when the lock provider is configured to use files, not when one of the others is used (database - the default, zookeeper or cache)

_AC-13367 - [GitHub issue](https://github.com/magento/magento2/issues/39369) - [GitHub code contribution](https://github.com/magento/magento2/pull/39372)_

#### [Issue] Cleanup: don't use void return value from method calls.

This PR does minor cleanup. Sometimes we called methods that didn't return anything (void) and then used that result value. Which is really not needed.

_AC-13664 - [GitHub issue](https://github.com/magento/magento2/issues/39524) - [GitHub code contribution](https://github.com/magento/magento2/pull/39516)_

#### Cache Keys associated with FPC on Magento 2.4.7 multi-store implementations

Fixed an issue where Full Page Cache (FPC) cache keys in multi-store setups did not include MAGE_RUN_CODE and MAGE_RUN_TYPE, causing inconsistent cache key behavior compared to earlier versions. Cache keys now correctly include store context, ensuring proper cache isolation across stores.

_AC-13719 - [GitHub issue](https://github.com/magento/magento2/issues/39456) - [GitHub code contribution](https://github.com/magento/magento2/commit/ae6f305b)_

#### [Issue] [PHPDOC] Fix bad phpdoc for Magento\Framework\Message\ManagerInterface

This PR fixes the bad phpdoc for \Magento\Framework\Message\ManagerInterface and remove all duplicate phpdoc in \Magento\Framework\Message\Manager (use inheritdoc syntaxe).

_AC-14312 - [GitHub issue](https://github.com/magento/magento2/issues/39593) - [GitHub code contribution](https://github.com/magento/magento2/pull/39153)_

#### Partial indexation stop working for customers with huge # of updates

Partial indexation now works for customers with a large number of updates.
Previously, reaching the maximum value for the version_id column in the changelog table caused index updates to stop.
AC-14424

_AC-14424 - [GitHub code contribution](https://github.com/magento/magento2/commit/7bdafaa2)_

#### Magento 2.4.8 uses dev packages that don't follow semantic versioning

Magento 2.4.8 requires dev versions of pdepend/pdepend and phpmd/phpmd (3.x-dev) for PHP 8.4 compatibility.
These dev versions conflict with third-party tools expecting SemVer-compliant packages, preventing some upgrades.
A temporary workaround is to alias the dev versions in composer.json (e.g., "3.x-dev as 3.99.0"), allowing compatibility while satisfying semantic versioning.
This ensures PHP 8.4 support and avoids conflicts until stable releases become available.

_AC-14519 - [GitHub issue](https://github.com/magento/magento2/issues/39796)_

#### MView mechanism silently ignores errors on trigger execution

MView mechanism now properly reports errors on trigger execution.
Previously, errors during trigger execution were silently ignored, which could result in missing index updates without any notification.
AC-14567

_AC-14567 - [GitHub code contribution](https://github.com/magento/magento2/commit/ae6f305b)_

#### [Issue] Avoid lots of uncessary exceptions during layout XML merge loading

This PR introduce a new function (for B/C compat we don't overwrite the protected _loadXmlString) to load and not throw an exception

_AC-14580 - [GitHub issue](https://github.com/magento/magento2/issues/39877) - [GitHub code contribution](https://github.com/magento/magento2/pull/37570)_

#### [Issue] Use constructor property promotion in module Vault graph Ql

This PR replace constructor properties with property promotion in VaultGraphQl module

_AC-14616 - [GitHub issue](https://github.com/magento/magento2/issues/39900) - [GitHub code contribution](https://github.com/magento/magento2/pull/36996)_

#### [Issue] Removed code redundancy for module frontend layouts.

This PR removes code redundancy to theme layouts for Magento_Msrp, Magento_LoginAsCustomerAssistance, Magento_Newsletter & Magento_Sitemap modules frontend layouts.

_AC-14625 - [GitHub issue](https://github.com/magento/magento2/issues/30673) - [GitHub code contribution](https://github.com/magento/magento2/pull/30644)_

#### [Issue] Include Constructor to be a part of `CommandListInterface` API, extend inline documentation

This PR update marks Magento\Framework\Console\CommandList as an API and introduces the constructor to the CommandListInterface for better extensibility. It also improves inline documentation to enhance clarity and maintainability for developers extending console commands.

_AC-14680 - [GitHub issue](https://github.com/magento/magento2/issues/31102) - [GitHub code contribution](https://github.com/magento/magento2/pull/37901)_

#### [Issue] Remove code related to Microsoft IIS

This PR clean up the code related to Mircrosoft IIS as per Magento System Requirement documentation which states that the Microsoft Windows OS is not supported

_AC-14702 - [GitHub issue](https://github.com/magento/magento2/issues/39910) - [GitHub code contribution](https://github.com/magento/magento2/pull/39894)_

#### Magnifier.js syntax error

The system Magnifier functionality should keep working the way it worked before and magnifierOptions should not be available in global scope

_AC-14722 - [GitHub issue](https://github.com/magento/magento2/issues/36200) - [GitHub code contribution](https://github.com/magento/magento2/pull/39321)_

#### Backport Verbose Mode in `setup:db:status` CLI command

The `setup:db:status` CLI command now supports verbose mode.
Previously, it was difficult to understand database changes required for upgrades. Now, running `bin/magento setup:db:status -v` provides detailed information about schema and data differences.
AC-14807

_AC-14807 - [GitHub code contribution](https://github.com/magento/magento2/commit/7bdafaa2)_

#### SMTP mail send with tls and 2.4.8

SMTP email sending with TLS now works as expected.
Previously, sending emails via SMTP with TLS resulted in the error: error:1408F10B:SSL routines:ssl3_get_record:wrong version number.
AC-14883

_AC-14883 - [GitHub issue](https://github.com/magento/magento2/issues/39947) - [GitHub code contribution](https://github.com/magento/magento2/commit/3717e6cb) - [GitHub code contribution](https://github.com/magento/magento2/commit/8b453942) - [GitHub code contribution](https://github.com/magento/magento2/commit/d3ea191d)_

#### [Issue] Fix concurrency issue in static content deploy

This PR fixes a bug in which multiple concurrent processes spin up to handle the same theme package, depending on how the themes are defined with their parents.

_AC-14944 - [GitHub issue](https://github.com/magento/magento2/issues/39990) - [GitHub code contribution](https://github.com/magento/magento2/pull/39954)_

#### [Issue] Remove legacy compatibility code for PHP versions &lt; 8.1

This pull request removes code that was designed to be ran on PHP &lt;8.1.
Also, removed checks for PHP_VERSION_ID contact availability, since it's available in all PHP versions

_AC-14971 - [GitHub issue](https://github.com/magento/magento2/issues/39891) - [GitHub code contribution](https://github.com/magento/magento2/pull/39882)_

#### FPC not work when login

Full Page Cache (FPC) now works correctly for logged-in customers.
Previously, after logging in, the homepage would not load from cache and the x-magento-cache-debug header showed MISS instead of HIT.
AC-14999

_AC-14999 - [GitHub issue](https://github.com/magento/magento2/issues/40007)_

#### Add generic types in certain php classes, for improved static analysis support

The system now use generic type definition to improve this significantly by having it interpreted as the exact class a method call returns

_AC-15013 - [GitHub issue](https://github.com/magento/magento2/issues/40017) - [GitHub code contribution](https://github.com/magento/magento2/pull/40119)_

#### [Issue] improve error handling SchemaBuilder

This PR improves the error message handling of db schema. It helps us to identify issue without heavy debugging.

_AC-15020 - [GitHub issue](https://github.com/magento/magento2/issues/39816) - [GitHub code contribution](https://github.com/magento/magento2/pull/39799)_

#### Rest API: Call to a member function getVideoProvider() on null

Fixed issue where calling the configurable product children API returned a 500 Internal Server Error if a child product had only a YouTube video and no other images.
The error was caused by a null reference in the ExternalVideoEntryConverter.
Now, the API correctly returns child products with media gallery entries, including external video data, without throwing errors.
This ensures proper retrieval of all media types for child products via REST API.

_AC-15046 - [GitHub issue](https://github.com/magento/magento2/issues/40021)_

#### [W3C] Remove text/javascript from cookie script tag declaration

This PR removed the unnecessary type="text/javascript" attribute from the cookie script tag for HTML5 compliance.

_AC-15061 - [GitHub issue](https://github.com/magento/magento2/issues/39982) - [GitHub code contribution](https://github.com/magento/magento2/pull/39983)_

#### [Issue] Fix a few typos in PHPDoc comments

This PR fixes the few typos in the phpdoc

_AC-15075 - [GitHub issue](https://github.com/magento/magento2/issues/40042) - [GitHub code contribution](https://github.com/magento/magento2/pull/38809)_

#### [Issue] Remove sprintf usage in phrase calls

This PR removes the usage of sprintf in the phrase function call in the Magento core.

_AC-15183 - [GitHub issue](https://github.com/magento/magento2/issues/40050) - [GitHub code contribution](https://github.com/magento/magento2/pull/40033)_

#### Cannot reindex all invalid on multi-thread indexers with active application lock

This issue fixed a multi-thread indexer failure when use_application_lock was enabled.
Earlier, DB locks were lost during parallel processing, causing indexers to remain in "working" state and throw SQL errors (table not found).
In Magento 2.4.9-alpha3, the fix ensures indexers reindex correctly with application lock enabled.

_AC-15270 - [GitHub issue](https://github.com/magento/magento2/issues/40102) - [GitHub code contribution](https://github.com/magento/magento2/commit/68a45d0a)_

#### Unclear/invalid return types in Magento\Framework\Escaper

The system will accept types for escaper methods When performing static analysis using phpstan on level 5

_AC-15272 - [GitHub issue](https://github.com/magento/magento2/issues/40012) - [GitHub code contribution](https://github.com/magento/magento2/pull/40114)_

#### [Issue] Allow queue-specific configuration to exceed the default max-messages value

The system now Allow queue-specific configuration to exceed the default max-messages value

_AC-15284 - [GitHub issue](https://github.com/magento/magento2/issues/40121) - [GitHub code contribution](https://github.com/magento/magento2/pull/40110)_

#### [Issue] Duplicate cache fpc for same page with same query when use varnish

This PR fixes duplicate full-page cache entries when using Varnish by normalizing query parameter order, ensuring consistent cache keys for identical requests.
Improves cache hit ratio and performance for URLs with the same parameters in different sequences.

_AC-15325 - [GitHub issue](https://github.com/magento/magento2/issues/39706) - [GitHub code contribution](https://github.com/magento/magento2/pull/39704)_

#### Community themes contain resources for Commerce edition modules

Removed Commerce-only styling resources from Community themes by relocating them to their respective module directories. This prevents unused CSS from being bundled in Community Edition, reducing unnecessary payload and eliminating dead style rules while ensuring proper styling when Commerce modules are enabled.

_AC-15347 - [GitHub issue](https://github.com/magento/magento2/issues/21446) - [GitHub code contribution](https://github.com/magento/magento2/commit/9bcd880a)_

#### [Issue] Add Store Code to Urls should be Global

This PR addresses the issue by ensuring that the "Add Store Code to Urls" setting is retrieved using the global scope in core code

_AC-15365 - [GitHub issue](https://github.com/magento/magento2/issues/40069) - [GitHub code contribution](https://github.com/magento/magento2/pull/40065)_

#### [Issue] Log undeclared plugin only if it is not disabled

This PR fixes and log the plugin who are actually undeclared and not used (enabled and missing instance).

_AC-15386 - [GitHub issue](https://github.com/magento/magento2/issues/40086) - [GitHub code contribution](https://github.com/magento/magento2/pull/40081)_

#### [Issue] Small cleanup, removed duplicated keys from array

The system now did small cleanup and  No error found related to Array has 2 duplicate keys with value 'Weight (and above)'

_AC-15414 - [GitHub issue](https://github.com/magento/magento2/issues/39851) - [GitHub code contribution](https://github.com/magento/magento2/pull/39844)_

#### Magento 2.4.8-p2, magento/framework version 103.0.8-p2: EmailMessage class calling a non-existent method

The EmailMessage class now correctly handles email body retrieval.
Previously, in Magento 2.4.8-p2 with magento/framework version 103.0.8-p2, the Magento\Framework\Mail\EmailMessage class attempted to call a non-existent method (getTextBody) on the Symfony mail message object. This caused errors when third-party modules or customizations relied on this method for email processing.
Now, the EmailMessage class no longer calls undefined methods, preventing these errors. AC-15446

_AC-15446 - [GitHub issue](https://github.com/magento/magento2/issues/40170) - [GitHub code contribution](https://github.com/magento/magento2/commit/059fd469) - [GitHub code contribution](https://github.com/magento/magento2/commit/e9412b24)_

#### [Magento 2.3.x] Data/Schema Patches getAliases() causes errors during `setup:upgrade`

getAliases() causes errors during setup:upgrade, this PR fixing the same

_AC-15559 - [GitHub issue](https://github.com/magento/magento2/issues/31396) - [GitHub code contribution](https://github.com/magento/magento2/pull/38239)_

#### Illegal mix of collations for operation

_AC-15614 - [GitHub issue](https://github.com/magento/magento2/issues/40138) - [GitHub code contribution](https://github.com/magento/magento2/commit/44329e9d)_

#### [Issue] [PHPDOC] Fix bad phpdoc Magento\Framework\DB\Adapter\AdapterInterface::quoteColumnAs()

This PR updates the PHPDoc for \Magento\Framework\DB\Adapter\AdapterInterface::quoteColumnAs() to correctly reflect that the $alias parameter can be null in addition to string. This resolves PHPStan issues at level 5+ and improves code quality tooling compatibility.

_AC-15626 - [GitHub issue](https://github.com/magento/magento2/issues/39598) - [GitHub code contribution](https://github.com/magento/magento2/pull/39581)_

#### Illegal mix of collations in urlrewrite module

_AC-15647 - [GitHub issue](https://github.com/magento/magento2/issues/40189) - [GitHub code contribution](https://github.com/magento/magento2/commit/44329e9d)_

#### Condition is never met in `\Magento\Framework\Escaper::escapeScriptIdentifiers`

Corrected an unreachable condition in \Magento\Framework\Escaper::escapeScriptIdentifiers by replacing the check for false with null, aligning it with preg_replace return values and improving code accuracy without impacting functionality.

_AC-15667 - [GitHub issue](https://github.com/magento/magento2/issues/40195) - [GitHub code contribution](https://github.com/magento/magento2/commit/cc0ec250)_

#### Varnish 7.3 (latest version)- Sub Categories links / options of Default category are not getting displayed on Store front Home page

Confirmed that missing subcategory links on the storefront home page when using Varnish 7.3 were caused by ESI request handling and server configuration rather than a Magento code defect; the issue is resolved through recommended Varnish configuration adjustments, with no core code changes required.

_AC-15674 - [GitHub code contribution](https://github.com/magento/magento2/commit/3cf1a106) - [GitHub code contribution](https://github.com/magento/magento2/commit/9a62604c)_

#### [Issue] Add extra debug data to `cache_invalidate` log

This PR enhanced the cache_invalidate log to include request context and stack trace for full cache purges, improving debugging and visibility.
This helps identify the source of unexpected full cache invalidations without changing existing functionality.

_AC-15719 - [GitHub issue](https://github.com/magento/magento2/issues/40204) - [GitHub code contribution](https://github.com/magento/magento2/pull/40196)_

#### [Issue] Improved composer's autoloader exclusion list a bit.

This PR Refines Composer autoloader exclusions to skip test classes, reducing unnecessary classmap entries and preventing PSR-4 warnings.

_AC-15743 - [GitHub issue](https://github.com/magento/magento2/issues/40109) - [GitHub code contribution](https://github.com/magento/magento2/pull/40107)_

#### [Issue] Prevent `db_schema.xml` declarations with `comment=""` from breaking zero downtime deployments

The system now prevents db_schema.xml declarations with comment="" from breaking zero downtime deployments

_AC-15980 - [GitHub issue](https://github.com/magento/magento2/issues/40254) - [GitHub code contribution](https://github.com/magento/magento2/pull/40242)_

#### Unable to clear `\Magento\Framework\Filesystem\Glob::glob(...)` cache

This PR update introduces a way to clear the internal static cache used by \Magento\Framework\Filesystem\Glob, ensuring fresh and accurate results when file structures change. It improves reliability and developer experience, especially in testing scenarios and long-running processes where glob results must stay up to date.

_AC-15989 - [GitHub issue](https://github.com/magento/magento2/issues/35741) - [GitHub code contribution](https://github.com/magento/magento2/pull/35742)_

#### ReadME Leaders link url has a permanent redirect

Updated the README Leaders link by replacing the permanently redirected and expired URL with correct working links, ensuring contributors and maintainers pages open properly.

_AC-16046 - [GitHub issue](https://github.com/magento/magento2/issues/40292) - [GitHub code contribution](https://github.com/magento/magento2/commit/913bf1a6)_

#### [Issue] [PHPDOC] Fix bad phpdoc Magento\Eav\Model\ResourceModel\Entity\Attribute\Collection

Corrected PHPDoc annotations for joinLeft() in the Attribute Collection to allow proper array definitions, enhancing code correctness and compatibility with tools like PHPStan.

_AC-16187 - [GitHub issue](https://github.com/magento/magento2/issues/40354) - [GitHub code contribution](https://github.com/magento/magento2/pull/39155)_

#### Ensure that a single command failure logs the error (file or stderr) without stopping the execution of subsequent CLI commands.

The system now Ensure that a single command failure logs the error (file or stderr) without stopping the execution of subsequent CLI commands

_AC-16244 - [GitHub issue](https://github.com/magento/magento2/issues/40006) - [GitHub code contribution](https://github.com/magento/magento2/pull/40063)_

#### [Issue] Add int type to $maxAge in the PageCache Kernel

This PR ensures the $maxAge parameter in the PageCache kernel is strictly typed as an integer to improve type safety and prevent PHPStan/static analysis errors in cache handling.

_AC-16313 - [GitHub issue](https://github.com/magento/magento2/issues/40438) - [GitHub code contribution](https://github.com/magento/magento2/pull/36600)_

#### Add to cart event : empty prices

Fixed issue where product prices were returned as null in the checkout_cart_product_add_after event observer during the add-to-cart process.
Now, the base price and related price values are correctly retrieved, ensuring accurate data is available for observers and custom implementations.

_AC-5966 - [GitHub issue](https://github.com/magento/magento2/issues/35638) - [GitHub code contribution](https://github.com/magento/magento2/commit/3b5ac075)_

#### PHP8.1 type bugfix

The associated products are now initialized to an empty array instead of false when the strict processing mode is not active or when product information is available. This change ensures that the subsequent logic handling associated products behaves consistently, improving stability and predictability in the product preparation process.

_AC-6017 - [GitHub issue](https://github.com/magento/magento2/issues/35808) - [GitHub code contribution](https://github.com/magento/magento2/pull/35842)_

#### Expected type 'Magento\Customer\Api\Data\GroupInterface'. Found 'Magento\Customer\Model\Group'.

Fixed issue where saving a customer group via GroupRepositoryInterface using GroupFactory caused a type error.
Previously, the repository expected GroupInterface, but Group model instances were passed, resulting in a fatal error.
Now, customer groups can be saved successfully through the repository by ensuring proper interface implementation.
This resolves IDE warnings and runtime errors when programmatically creating or updating customer groups.

_AC-6909 - [GitHub issue](https://github.com/magento/magento2/issues/36269)_

#### Fields validation on creditmemos

Fixed issue where field validation on the credit memo page prevented submission even after required custom fields were filled.
Now, validation works correctly and the submit button is enabled once all mandatory fields are completed.

_AC-8308 - [GitHub issue](https://github.com/magento/magento2/issues/37182) - [GitHub code contribution](https://github.com/magento/magento2/commit/64823f95)_

#### [Issue] Remove forbidden `@author` tag from framework (part 3)

The system now adheres to the coding standards by removing the forbidden `@author` tag from certain modules, enhancing the overall code quality. Previously, the presence of this tag in some modules was in violation of the established coding standards.

_AC-8343 - [GitHub issue](https://github.com/magento/magento2/issues/37270) - [GitHub code contribution](https://github.com/magento/magento2/pull/37020)_

#### [Issue] Use constructor property promotion in module send friend graph ql

The system now utilizes constructor property promotion in the 'send friend' GraphQL module, enhancing code readability and reducing complexity. Previously, the module used properties that occupied numerous lines, making the code more complex and less readable.

_AC-8346 - [GitHub issue](https://github.com/magento/magento2/issues/37235) - [GitHub code contribution](https://github.com/magento/magento2/pull/37197)_

#### [Issue] Remove forbidden `@author` tag

This PR removes `@author` tag from the codebase

_AC-8349 - [GitHub issue](https://github.com/magento/magento2/issues/37266) - [GitHub code contribution](https://github.com/magento/magento2/pull/37016)_

#### [Issue] Remove forbidden `@author` tag

This PR removes `@author` tag from the codebase

_AC-8350 - [GitHub issue](https://github.com/magento/magento2/issues/37265) - [GitHub code contribution](https://github.com/magento/magento2/pull/37015)_

#### [Issue] Remove forbidden `@author` tag from `Magento_Downloadable`

The system now adheres to the coding standards by removing the forbidden `@author` tag from certain modules, enhancing the overall code quality. Previously, the presence of this tag in some modules was in violation of the established coding standards.

_AC-8355 - [GitHub issue](https://github.com/magento/magento2/issues/37251) - [GitHub code contribution](https://github.com/magento/magento2/pull/37001)_

#### [Issue] Remove forbidden `@author` tag

The system now adheres to coding standards by removing the forbidden `@author` tag from certain modules, enhancing code quality and consistency. Previously, the presence of this tag in some modules was in violation of the established coding standards.

_AC-8358 - [GitHub issue](https://github.com/magento/magento2/issues/37264) - [GitHub code contribution](https://github.com/magento/magento2/pull/37014)_

#### [Issue] Remove forbidden `@author` tag

This PR removes `@author` tag from the codebase

_AC-8359 - [GitHub issue](https://github.com/magento/magento2/issues/37262) - [GitHub code contribution](https://github.com/magento/magento2/pull/37012)_

#### [Issue] Remove forbidden `@author` tag

The system now adheres to coding standards by removing the forbidden `@author` tag from certain modules, enhancing the overall code quality. Previously, the presence of this tag in some modules was in violation of the established coding standards.

_AC-8360 - [GitHub issue](https://github.com/magento/magento2/issues/37261) - [GitHub code contribution](https://github.com/magento/magento2/pull/37011)_

#### [Issue] Remove forbidden `@author` tag

The system now adheres to the coding standards by removing the forbidden `@author` tag from certain modules, ensuring cleaner and more standardized code. Previously, the presence of this tag in some modules was in violation of the established coding standards.

_AC-8361 - [GitHub issue](https://github.com/magento/magento2/issues/37260) - [GitHub code contribution](https://github.com/magento/magento2/pull/37010)_

#### [Issue] Remove forbidden `@author` tag

This PR removes `@author` tag from the codebase

_AC-8362 - [GitHub issue](https://github.com/magento/magento2/issues/37259) - [GitHub code contribution](https://github.com/magento/magento2/pull/37009)_

#### [Issue] Remove forbidden `@author` tag

The system now adheres to the coding standards by removing the forbidden `@author` tag from certain modules, enhancing the overall code quality. Previously, the presence of this tag in some modules was in violation of the established coding standards.

_AC-8363 - [GitHub issue](https://github.com/magento/magento2/issues/37258) - [GitHub code contribution](https://github.com/magento/magento2/pull/37008)_

#### [Issue] Remove forbidden `@author` tag from `Magento_Backup` and `Magento_Bundle`

This PR removes `@author` tag from the codebase

_AC-8367 - [GitHub issue](https://github.com/magento/magento2/issues/37244) - [GitHub code contribution](https://github.com/magento/magento2/pull/36979)_

#### [Issue] Remove forbidden `@author` tag

The system now adheres to the coding standards by removing the forbidden `@author` tag from certain modules, enhancing the overall code quality. Previously, the presence of this tag in some modules was in violation of the established coding standards.

_AC-8375 - [GitHub issue](https://github.com/magento/magento2/issues/37257) - [GitHub code contribution](https://github.com/magento/magento2/pull/37007)_

#### [Issue] Remove forbidden `@author` tag

The system now adheres to the coding standards by removing the forbidden `@author` tag from certain modules, enhancing the overall code quality. Previously, the presence of this tag in some modules was in violation of the established coding standards.

_AC-8376 - [GitHub issue](https://github.com/magento/magento2/issues/37256) - [GitHub code contribution](https://github.com/magento/magento2/pull/37006)_

#### [Issue] Remove forbidden `@author` tag

The system now adheres to the coding standards by removing the forbidden `@author` tag from certain modules, enhancing the overall code quality. Previously, the presence of this tag in some modules was in violation of the established coding standards.

_AC-8400 - [GitHub issue](https://github.com/magento/magento2/issues/37254) - [GitHub code contribution](https://github.com/magento/magento2/pull/37004)_

#### [Issue] Remove forbidden `@author` tag

The system now adheres to the coding standards by removing the forbidden `@author` tag from certain modules, enhancing the overall code quality. Previously, the presence of this tag in some modules was in violation of the established coding standards.

_AC-8401 - [GitHub issue](https://github.com/magento/magento2/issues/37255) - [GitHub code contribution](https://github.com/magento/magento2/pull/37005)_

#### [Issue] Improve Extensibility of Service URL Generation

The system now allows for customization of the Service URL Generation function via plugins, promoting a more maintainable approach to modifications. Previously, customization of this function was achieved through preferences, which may not have been as efficient or maintainable.

_AC-8813 - [GitHub issue](https://github.com/magento/magento2/issues/37404) - [GitHub code contribution](https://github.com/magento/magento2/pull/37403)_

#### [Issue] Fix variable name in catalogsearch

The system now correctly names variables in the search engine module, enhancing code clarity and maintainability. Previously, an irrelevant variable name, $defaultCountry, was used in the search engine module, causing confusion.

_AC-9215 - [GitHub issue](https://github.com/magento/magento2/issues/37810) - [GitHub code contribution](https://github.com/magento/magento2/pull/33533)_

#### allow_parallel_generation should be set through environment variable

After the fix, the "MAGENTO_DC_CACHE__ALLOW_PARALLEL_GENERATION" environment variable can be used to set the "allow_parallel_generation" configuration.

_ACP2E-3673 - [GitHub code contribution](https://github.com/magento/magento2/commit/b12ffe36)_

#### [Cloud] Changing table column type from Int to Decimal using db_schema.xml file In Magento 2 Results In Errors

Changing the column data type is not working correctly. Previously, it throws an error: The attribute 'identity' is not allowed.

_ACP2E-3709 - [GitHub code contribution](https://github.com/magento/magento2/commit/df92debe)_

#### New currency (XCG) support in Adobe

Caribbean Guilder (XCG) is added to the currencies list.

_ACP2E-3790 - [GitHub code contribution](https://github.com/magento/magento2/commit/520f9e30)_

#### Issue with upgrade 2.4.7-p5 due to added new validation

Fixed an issue in the SchemaBuilder class where an undefined array key "column" caused a crash during schema creation or updates. This occurred when processing table data that did not include a "column" key.

_ACP2E-3871 - [GitHub code contribution](https://github.com/magento/magento2/commit/9ad7d277)_

#### [QUANS]Server Issue Potentially Caused by Invalid S3 Access Key

Incorrect AWS S3 credentials no longer causes pages to load infinitely on storefront.

_ACP2E-3890 - [GitHub code contribution](https://github.com/magento/magento2/commit/2a1e1e55)_

#### [QUANS] [Cloud] Minify js not working

The following JS files are now fully and correctly minified when JS minification is enabled: mage/backend/tabs.min.j, jquery/jquery.validate.min.js and Magento_PageBuilder/js/form/element/validator-rules-mixin.min.js. As result, Page Builder CSS Class Field Validation works as expected.

_ACP2E-3925 - [GitHub code contribution](https://github.com/magento/magento2/commit/47721be6)_

#### PHP8.4 Deprecation Error: E_USER_ERROR after Upgrade to Adobe Commerce 2.4.8

*NO RELEASE NOTES ARE REQUIRED*
Customer-facing scenarios are not affected by the fix.

_ACP2E-3963 - [GitHub code contribution](https://github.com/magento/magento2/commit/7accebfa)_

#### Cron job not clearing the database table - causing outage due to Galera crash

Changelog tables cleanup is now running in batches to avoid heavy delete operations.

_ACP2E-3995 - [GitHub code contribution](https://github.com/magento/magento2/commit/52f46328)_

#### Not minified JS sometimes loads ignoring 'enable js minifications'

Prior to the fix, even if you had minification enabled some of the JS files were requested without the "min" prefix resulting in 404 status code. After the fix, when minification is enabled there are no non-minified JS resources requested.

_ACP2E-4058 - [GitHub code contribution](https://github.com/magento/magento2/commit/6dd3fa99)_

#### Date Attribute in custom Attribute Group Fails to Show Datepicker in Admin

Fixed issue where the calendar popup for date attributes appeared off-screen when assigned to custom attribute groups.

_ACP2E-4060 - [GitHub issue](https://integration-5ojmyuq-3ssteurpe3xzy.us-5.magentosite.cloud/) - [GitHub code contribution](https://github.com/magento/magento2/commit/6dd3fa99)_

#### Production ACL Permission Check caused Performance Degradation – populateAcl Method is the bottleneck

Optimized ACL rules processing

_ACP2E-4114 - [GitHub code contribution](https://github.com/magento/magento2/commit/98f028ab)_

#### Checkout not loading in latest version with AC-15867 + ACP2E-4296 and SCD compact

Prior to the fix, having custom javascripts loaded through the head section could have caused issues. After the introduction of the new setting, such scripts can be automatically defered, insuring greater compatibility with Magento 2 framework.

_ACP2E-4319 - [GitHub code contribution](https://github.com/magento/magento2/commit/1c547060)_

#### Deprecation warning: use moment.updateLocale(localeName, config) to change an existing locale. moment.defineLocale(localeName, config)

Prior to the fix a deprecated warning was being thrown in browser console. Now, after the fix, there is no such warning displayed anymore.

_ACP2E-4338 - [GitHub code contribution](https://github.com/magento/magento2/commit/2687b487)_

#### Incompatibility with MariaDB 10.11

Previously, installation of the latest Magento 2 version failed when using MariaDB 10.11, preventing completion of the setup process. This issue was resolved by updating database compatibility handling to support MariaDB 10.11.x during installation.

_ACP2E-4367 - [GitHub code contribution](https://github.com/magento/magento2/commit/31258bf6)_

### Framework, Search

#### Opensearch 2.19.1 illegal_argument_exception on one-priced categories

Opensearch is no longer throwing an illegal_argument_exception on the categories containing all products with the same price. Previously, it has this exception "[from] parameter cannot be negative".

_ACP2E-3896 - [GitHub code contribution](https://github.com/magento/magento2/commit/3ad96f6a)_

### GraphQL

#### Placing an order in GraphQL succeeds with an invalid shipping method

Fixed an issue where orders could be placed via GraphQL using a disabled or invalid shipping method.
Now, the system validates the selected shipping method and returns an error if it is unavailable, preventing the order from being created.

_AC-10472 - [GitHub code contribution](https://github.com/magento/magento2/pull/38268) - [GitHub code contribution](https://github.com/magento/magento2/commit/a8cf637b)_

#### Exception being thrown when running GraphQl query

Fixed an issue where a GraphQL query threw an exception due to an invalid sorting parameter; after the fix, the query executes successfully without generating errors or exception logs.

_AC-14835 - [GitHub code contribution](https://github.com/magento/magento2/commit/a8cf637b)_

#### Internal Server Error When Adding Gift Card product to Cart via AddProductsToCart Mutation including custom_attributesV2

Resolved an Internal Server Error triggered when adding gift card (and similar custom-option) products to the cart via GraphQL with custom_attributesV2; the fix properly handles complex attribute values, allowing products to be added without errors.

_AC-15856 - [GitHub code contribution](https://github.com/magento/magento2/commit/7fa400a7)_

#### Null fields in `Country` query

Fixed an issue where orders containing virtual, refunded, and shipped items remained in processing by ensuring virtual items are included in shipped quantity calculations, allowing the order state to correctly transition to complete.

_AC-7731 - [GitHub code contribution](https://github.com/magento/magento2/commit/ef666cd9)_

#### GraphQL query "customerOrders" with "number" attribute causes internal server error

Fixed issue where the GraphQL customerOrders query returned an internal server error when requesting the number field.
Now, the resolver correctly returns the order increment ID, allowing the query to execute successfully and retrieve the order number.

_AC-8949 - [GitHub code contribution](https://github.com/magento/magento2/commit/3b5ac075)_

#### GraphQL Response for Order placement does not include the exception message

Reverted previous change that was returning errors in a different format. Now potential errors are returned in a consistent manner, not breaking GraphQL schema. This should be added as known BIC, approved by PM here: https://jira.corp.adobe.com/browse/ACP2E-3399?focusedId=45248897&page=com.atlassian.jira.plugin.system.issuetabpanels:comment-tabpanel#comment-45248897

_ACP2E-3399 - [GitHub code contribution](https://github.com/magento/magento2/commit/9608ca21)_

#### GraphQL Response for Order placement is partially localised

Errors returned by placeOrder GraphQl mutation were not fully localized. Now, in a multilanguage context, errors are properly translated.

_ACP2E-3506 - [GitHub code contribution](https://github.com/magento/magento2/commit/9608ca21)_

#### Concurrent Calls to Reorder GraphQL API - Same Products Added to Different Rows

Fixes the issue where concurrent calls to the Reorder GraphQL API result in the same products being added as different rows, leading to data inconsistencies.

_ACP2E-3774 - [GitHub code contribution](https://github.com/magento/magento2/commit/c8ba4ab1)_

#### updateCustomerEmail GraphQL mutation(Change email Address) doesn't trigger the email Notification

Previously, email was not sent to customers after successfully updating their email addresses on their accounts. After the fix has been applied, customers now receive email notifications after successfully updating their email addresses.

_ACP2E-3785 - [GitHub code contribution](https://github.com/magento/magento2/commit/c8ba4ab1)_

#### Dynamic Attribute Not Updating in Gift Registry via updateGiftRegistry Mutation

Previously, before this fix through the updateGiftRegistry mutation, the custom attribute of the gift registry was not modified or updated through GraphQL mutations. After this fix has been applied, the dynamic attribute of the gift registry can successfully be updated through the updateGiftRegistry mutation.

_ACP2E-3805 - [GitHub issue](https://mcstaging.briscoes.co.nz/)_

#### Customer Order GraphQL : Retrieve product categories for the associated product is "not visible individually

Prior to the fix, if the order contained a hidden product its categories would display an empty array in the Customer Order GraphQl response.
Now, after the fix, the products categories are included in the response of a Customer Order GraphQl request even if the product is hidden.

_ACP2E-3945 - [GitHub code contribution](https://github.com/magento/magento2/commit/2a1e1e55)_

#### Wishlist items are not shared between stores views within one website in GraphQL request

Prior to the fix, wishlist items were filtered by store id. Now, after the fix, wishlist items are filtered by website.

_ACP2E-3987 - [GitHub code contribution](https://github.com/magento/magento2/commit/2a252ae6)_

#### [Cloud] getRemoteAddress return 127.0.0.1 on Production

Previous to this fix the remote address was not determined correctly when application server is used. After the fix the remote address is properly determined combined with proper header setup in nginx and header configuration.

_ACP2E-3991 - [GitHub code contribution](https://github.com/magento/magento2/commit/47721be6)_

#### [QUANS] Confirm GQL order placement exception handling behaviour reversion

Addressed backward incompatible change for placeOrder mutation.

_ACP2E-4031 - [GitHub code contribution](https://github.com/magento/magento2/commit/52f46328)_

#### Issue mapping translated message to error code when placing order via GraphQL

Fixed an issue when translated exception message was used to map the error code for GraphQL Requests, causing an unknown error codes for known errors.

_ACP2E-4033 - [GitHub code contribution](https://github.com/magento/magento2/commit/fab20b00)_

#### [CLOUD] Customer Order filter not working for Dates

After the fix, retrieving orders through GraphQL using a date range filter returns the correct result.

_ACP2E-4090 - [GitHub code contribution](https://github.com/magento/magento2/commit/a1c57b2e)_

#### Address issues raised in ACP2E-4031

Prior to the fix the error node position did not provide seamless compatibility with 2.4.7 and 2.4.9 versions. Now, after the fix, the error node is properly placed to accomodate both versions.

_ACP2E-4115 - [GitHub code contribution](https://github.com/magento/magento2/commit/e457c5e2)_

#### Bundle parent showing Out of stock even the child has instock in Graphql call

After the fix, requesting a product list using GraphQL returns the correct stock status for bundle products.

_ACP2E-4168 - [GitHub code contribution](https://github.com/magento/magento2/commit/a1c57b2e) - [GitHub code contribution](https://github.com/magento/inventory/commit/5632fb5e)_

#### GraphQL Exception in SWAT

After the fix, responses for GraphQL requests are aligned with the GraphQL over HTTP specs. A 4XX response code is returned when it's impossible to parse the request, the request is not authorized, or there is another general problem with the request. If the request is parsed and can be processed, a 200 response code will be returned.

_ACP2E-4194 - [GitHub code contribution](https://github.com/magento/magento2/commit/45cbf9b6)_

#### Product not being removed from the compare list after the list is assigned to the customer

After a guest user's compare list is assigned to a customer account, products added as a guest can now be removed by the customer.
Previously, removal operations failed because the guest-added items were not properly linked to the customer's account after assignment.

_ACP2E-4244 - [GitHub code contribution](https://github.com/magento/magento2/commit/c135fc3a)_

#### updateCartItems GraphQL incorrect error response

Previously, when a graphQL request for an item with insufficient quantity was made, a proper error message with an error code was returned, along with the requested quantity and price calculation, even if the item was not available. After this fix was applied, a proper error message with an error code is now returned, and the item’s quantity is set to its old value if it is not available in the response.

_ACP2E-4283 - [GitHub code contribution](https://github.com/magento/magento2/commit/cbca0396)_

#### Cross-Website Guest Order Assignment Bug in MergeGuestOrder Plugin

Prior to the fix, a guest order customer assignment was not considering account sharing options. Now, after the fix, an order is assigned to a customer if customer and order store match (given that the customer account sharing option is set to "Per website".

_ACP2E-4312 - [GitHub code contribution](https://github.com/magento/magento2/commit/c135fc3a)_

### GraphQL, Inventory / MSI

#### Issue with only_x_left_in_stock in Magento 2 GraphQL – Incorrect Calculation When Using Thresholds

Fixed an issue where the only_x_left_in_stock GraphQL field returned null due to incorrect double deduction of MinQty; the calculation was corrected so it now returns the accurate stock value based on thresholds.

_AC-15832 - [GitHub code contribution](https://github.com/magento/inventory/commit/35458c7f)_

#### GraphQL mergeCart mutation discrepancies

After the fix, the merge carts GraphQL request properly checks the product quantity, taking into account the stock configuration.

_ACP2E-4184 - [GitHub code contribution](https://github.com/magento/inventory/commit/5632fb5e)_

### GraphQL, Product

#### Product graphql missing media_type in MediaGalleryInterface

The MediaGallery GraphQL request now includes the "types" field for product image types. Previously, this "types" field did not exist in the MediaGallery GraphQL request.

_ACP2E-3880 - [GitHub code contribution](https://github.com/magento/magento2/commit/3ad96f6a)_

### GraphQL, Security

#### Customer password reset through GraphQL doesn't honour the restrictions

Resolved an issue where customer password reset requests made through GraphQL mutations did not comply with the password reset restrictions configured under Store > Configuration > Customers > Customer Configuration > Password Options. These settings are now correctly enforced.

_ACP2E-3992 - [GitHub code contribution](https://github.com/magento/magento2/commit/6dd3fa99)_

### Import / export

#### [Issue] Fix parameter type

Fixed a parameter type mismatch in the Import/Export module where a value previously defined as a string is now correctly set as an array. This aligns with the expected input from the export controller and prevents static analysis warnings.

_AC-11665 - [GitHub issue](https://github.com/magento/magento2/issues/38529) - [GitHub code contribution](https://github.com/magento/magento2/commit/64823f95)_

#### [Issue] Copyedit: change "coping" to "copying"

PR fixes the Minor copyedit to correct spelling of "copying"

_AC-13300 - [GitHub issue](https://github.com/magento/magento2/issues/39311) - [GitHub code contribution](https://github.com/magento/magento2/pull/39307)_

#### REST endpoint Product Import Json not validate the mandatory fields

Name field is now required when creating new products through the import process  (admin or API). Prior to the fix, you could have created new products without name, this would have broken the admin interface and created invalid products.

_ACP2E-3660 - [GitHub code contribution](https://github.com/magento/magento2/commit/df92debe)_

#### Missing Website Filter Option in Export Process

It is now possible to filter products by websites when creating products export.

_ACP2E-3720 - [GitHub code contribution](https://github.com/magento/magento2/commit/520f9e30)_

#### Duplicate of AC-13913 - Static attribute cleaning asynchronously.

After the fix, there is no 'Undefined array key "apply_to"' error when numerous instances of the \Magento\CatalogImportExport\Model\Import\Product\Type\AbstractType are created.

_ACP2E-3752 - [GitHub code contribution](https://github.com/magento/magento2/commit/520f9e30)_

#### Csv product import : Unable to unset a swatch image

Prior to the fix you were not able to update the swatch image of a product through product import. Now, after the fix, if you mark the product swatch image column with the configured empty marker, the image will be set to hidden.

_ACP2E-3972 - [GitHub code contribution](https://github.com/magento/magento2/commit/2a1e1e55)_

#### Product Import generates Empty URLs for Store Scope

Product URL key in store view will now inherit the value set in default scope if url_key has empty value in the import data source. Previously setting url_key to an empty value in import data source for a store view record would lead to url_key being overridden with empty value in that scope.

_ACP2E-4038 - [GitHub code contribution](https://github.com/magento/magento2/commit/52f46328)_

#### The product import process encounters an error if a multi-select attribute is configured as required

Resolved an issue where product imports failed if a required attribute of type multi-select was included. The data validation now correctly passes, allowing the product import process to complete successfully.

_ACP2E-4057 - [GitHub code contribution](https://github.com/magento/magento2/commit/a1c57b2e)_

#### [CLOUD] Products with No Backorders selected on manage stock still allowing customers to order over our stock levels when imported

After the fix, it is no longer possible to import an unacceptable value for the "allow_backorders" attribute of the product.

_ACP2E-4116 - [GitHub code contribution](https://github.com/magento/magento2/commit/a1c57b2e)_

#### Product import failing due to Description length exceeding 65,536 characters Validation

After the fix, it's possible to import product attributes with type text whose values exceed 65,536 characters.

_ACP2E-4119 - [GitHub code contribution](https://github.com/magento/magento2/commit/a1c57b2e)_

#### Export Filters for Product Yes-No Attributes Not Functioning as Expected

After the fix, exported products filtered by a Yes/No attribute contain the expected products that respect the applied filters.

_ACP2E-4160 - [GitHub code contribution](https://github.com/magento/magento2/commit/ee918f0d)_

#### Issue with Update bundle option price per website via Import

It is now possible to export and import bundle option selection prices per website

_ACP2E-4243 - [GitHub code contribution](https://github.com/magento/magento2/commit/98f028ab)_

#### Unable to import a customer with an uppercase email address

Fixed an undefined array key error when importing customers with uppercase emails when Account Sharing is set to Global. Email normalization is now consistent throughout the import process, ensuring customers can be imported regardless of email case. Website-level account sharing behavior remains unchanged.

_ACP2E-4373 - [GitHub code contribution](https://github.com/magento/magento2/commit/31258bf6)_

### Import / export, Customer/ Customers

#### Admin can import customer with date of birth greater than current date

Fixed an issue where admins could import customers with a date of birth set in the future. The system now validates the DOB during import, shows an error for invalid records, and prevents customers with future birth dates from being imported, ensuring accurate customer data.

_AC-13641 - [GitHub code contribution](https://github.com/magento/magento2/commit/8670a2b4)_

### Inventory / MSI

#### Store Pickup not respecting maximum search radius when address is changed at checkout

Now pre-selected store in "Pick in Store" will update if the shipping address changes. Previously, once a store was pre-selected, it did not change even if the new shipping address is not within the radius of the selected store

_ACP2E-3728 - [GitHub code contribution](https://github.com/magento/inventory/commit/07620383)_

#### No store is available after redirecting to home page and checkout

Previously selected store will now be pre-selected in the “Pick in Store” shipping if the customer navigates to the payment page, then returns to the home page, and finally returns to the checkout page. Previously, after repeatedly returning to the checkout page, the selected store in the “Pick in Store” would be cleared.

_ACP2E-3793 - [GitHub code contribution](https://github.com/magento/magento2/commit/a20a6ff2) - [GitHub code contribution](https://github.com/magento/inventory/commit/62c0d79b)_

#### Stock delete operation is not completing

After the fix, deleting a source item doesn't lead to a full reindex and updates only affected products increasing performance.

_ACP2E-3917 - [GitHub code contribution](https://github.com/magento/inventory/commit/ee0bf4ad)_

#### [MSI] No indication in admin if the customer was asynchronously notified about Order is Ready for Pickup

Added to order history notification about the customer was asynchronously notified about Order is Ready for Pickup

_ACP2E-3968 - [GitHub code contribution](https://github.com/magento/inventory/commit/29653b1d)_

#### Duplicated stock status queries on quote load

Fixed duplicate execution of cataloginventory_stock_status query when loading a quote on the storefront, causing redundant DB calls.

_ACP2E-4102 - [GitHub code contribution](https://github.com/magento/inventory/commit/fc15a9ae)_

#### Post-Patch ACP2E-4118: Stock Threshold Change in Admin Causes Negative Salable Quantities and Stock Status Mismatch

Inventory stock status is now automatically adjusted when global inventory configurations Quantity, Backorders and Out-of-Stock Threshold are updated via import.

_ACP2E-4142 - [GitHub code contribution](https://github.com/magento/magento2/commit/a1c57b2e) - [GitHub code contribution](https://github.com/magento/inventory/commit/5632fb5e)_

#### [CLOUD] Admin Report does not show details when inventory is updated

Product inventory source changes are now being logged by logging module. Prior to the fix, when saving a product and performing inventory related changes, details were not being logged.

_ACP2E-4167 - [GitHub code contribution](https://github.com/magento/magento2/commit/cbca0396) - [GitHub code contribution](https://github.com/magento/inventory/commit/76b88f7c)_

#### Bundle product being unable to add to cart while marked as in stock

Bundle product stock status now correctly reflects child product reservations and out-of-stock thresholds.
Previously, bundle products were marked as "in stock" even when one or more child products lacked sufficient salable quantity. This led to "Not enough items for sale" errors when adding the bundle to the cart.

_ACP2E-4220 - [GitHub code contribution](https://github.com/magento/magento2/commit/cbca0396) - [GitHub code contribution](https://github.com/magento/inventory/commit/76b88f7c)_

#### Grouped product incorrectly shows as Out of Stock on PDP after import from CSV when child is assigned to custom source/stock (fixed after manual reindex)

After the fix, creating a composite product using import automatically performs stock reindexation, making the product available without the need for manual reindex.

_ACP2E-4233 - [GitHub code contribution](https://github.com/magento/magento2/commit/98f028ab) - [GitHub code contribution](https://github.com/magento/inventory/commit/5704166a)_

#### [MSI] Failing MFTF tests related to latest mainline changes.

Before the fix guest customers choosing In-Store Pickup without a shipping address had their billing address auto-filled with the store’s address, which couldn’t be changed, leading to incorrect invoice details. After the fix billing address is now editable in this scenario, allowing guests to enter their own details. Registered users will see their saved billing address instead of the store’s.

_ACP2E-4260 - [GitHub code contribution](https://github.com/magento/magento2/commit/ab891304) - [GitHub code contribution](https://github.com/magento/inventory/commit/13e432a6)_

#### Incorrect inventory reservation created for virtual gift cards

Prior to the implementation of this fix, the quantity of a virtual gift card containing multiple items did not accurately reflect in the inventory reservation. However, after the fix was applied, the quantity of the inventory reservation and stocks became synchronized.

_ACP2E-4267 - [GitHub code contribution](https://github.com/magento/inventory/commit/5704166a)_

#### Inventory Reservation Compensation Command Fails with Null and Non-Existent Product References

Fixed issue when the Inventory reservation compensation CLI would throw an exception if the processed combination had a missing order ID

_ACP2E-4301 - [GitHub code contribution](https://github.com/magento/inventory/commit/76b88f7c)_

#### Product is out of stock after changing the SKU case

Modifying the SKU case no longer causes the product to be out-of-stock on the storefront.

_ACP2E-4375 - [GitHub code contribution](https://github.com/magento/inventory/commit/0836c2ed)_

#### Order by price/price facets with invalid data

Prior to the fix, bundle prices were not indexed properly when child products were having stock under custom sources. Now, after the fix, bundle prices are indexed properly regardles of child product stock assignment.

_ACP2E-4380 - [GitHub code contribution](https://github.com/magento/magento2/commit/1c547060) - [GitHub code contribution](https://github.com/magento/inventory/commit/1f83ed24)_

### Order

#### AbstractAddress setData('custom_attributes', AttributeValue[]) breaks customAttributes

Custom attributes on addresses are now handled correctly during checkout and API operations.
Previously, using $address->setCustomAttributes('custom_attributes', $attributes) could break custom attribute handling, causing attribute values to be incorrectly structured.
AC-10568

_AC-10568 - [GitHub issue](https://github.com/magento/magento2/issues/31644)_

#### When customer is set for quote order is still a guest order

_AC-11689 - [GitHub issue](https://github.com/magento/magento2/issues/38540)_

#### Order is not complete when mixing virtual, refunded and shipped items

Fixed an issue where orders containing virtual, refunded, and shipped items remained in processing by ensuring virtual items are included in shipped quantity calculations, allowing the order state to correctly transition to complete.

_AC-11691 - [GitHub issue](https://github.com/magento/magento2/issues/38547)_

#### v2.4.7-p1 Magento reorder -1 order numbers

The system is working as expected and after reorder from the backend the order number will be unique 8 digits

_AC-12854 - [GitHub issue](https://github.com/magento/magento2/issues/39089) - [GitHub code contribution](https://github.com/magento/magento2/pull/39399)_

#### Losing product custom option file upload when checking out with Adobe credit card payment method

Product custom option file uploads are now retained when checking out with Adobe credit card payment method.
Previously, file uploads were lost when using this payment method, but worked with others.
AC-14306

_AC-14306 - [GitHub issue](https://github.com/magento/magento2/issues/39647)_

#### Admin orders - unable to search for Will

Fixed an issue where searching for orders by customer name (e.g., “Will”) in the Admin orders grid returned no results. After the fix, relevant orders are displayed correctly when filtered by customer name.

_AC-14360 - [GitHub issue](https://github.com/magento/magento2/issues/36596) - [GitHub code contribution](https://github.com/magento/magento2/commit/a8cf637b)_

#### Magento 2.4.8 GraphQL - Order items order_date wrong formatting

Fixed issue where the order_date field in GraphQL response returned in yyyy-mm-dd format.
Now, the order_date is displayed correctly in dd-mm-yyyy format.

_AC-14431 - [GitHub issue](https://github.com/magento/magento2/issues/39805) - [GitHub code contribution](https://github.com/magento/magento2/commit/a3b1abc2)_

#### Cannot return null for non-nullable field \"AppliedCoupon.code\" unexpected issue

Adobe Commerce now correctly returns applied coupon codes through GraphQL when querying customer orders. Previously, in Adobe Commerce 2.4.8, fetching an order with the applied_coupons.code field (for example via the customer.orders query) could fail with an internal server error and the message Cannot return null for non-nullable field "AppliedCoupon.code", and applied_coupons was returned as [null] instead of a list containing the coupon code. AC-14484

_AC-14484 - [GitHub issue](https://github.com/magento/magento2/issues/39841) - [GitHub code contribution](https://github.com/magento/magento2/commit/97b2ea42)_

#### Shipment email not sent when submitted from Admin Order view despite being enabled in store configuration

The system now send a shipment confirmation email as it is enabled in the store configuration where the order was placed.

_AC-14563 - [GitHub issue](https://github.com/magento/magento2/issues/39861) - [GitHub code contribution](https://github.com/magento/magento2/pull/39897)_

#### Filtering on date does not work because of ambigous field names

In Magento 2.4.7-p6, filtering the order grid by date was reported to cause an error due to joins with Braintree modules.
The issue involved queries joining braintree_transaction_details and sales_order tables when applying date filters.
Adobe Commerce Engineering reviewed the case but was unable to reproduce the error in the environment.
Expected behavior is that filtering by date should return orders matching the filter without errors.

_AC-15037 - [GitHub issue](https://github.com/magento/magento2/issues/40024)_

#### Order creation in backoffice with multiple products of which at least one contains custom options, leads to unwanted extra products to get added to the order

Fixed an issue where creating an order in the backoffice with multiple products, including one with custom options, unintentionally added extra products and caused errors. The system now adds only the selected products, allowing orders to be created without any unexpected items.

_AC-15286 - [GitHub issue](https://github.com/magento/magento2/issues/40122) - [GitHub code contribution](https://github.com/magento/magento2/commit/b5e99d20)_

#### Magento2: Not able to create promotion rule

This PR  fixes, we get 
\Magento\Catalog\Model\ResourceModel\Eav\Attribute model instead of \Magento\Catalog\Model\ResourceModel\Eav\Attribute in the method \Magento\SalesRule\Model\Rule\Condition\Product::loadAttributeOptions

_AC-15358 - [GitHub issue](https://github.com/magento/magento2/issues/12176) - [GitHub code contribution](https://github.com/magento/magento2/pull/30479)_

#### Magento changed the entity type of $order after calls $invoice = $this->_invoiceService->prepareInvoice($order);

Fixed an issue where editing an existing scheduled update for a subcategory incorrectly increased the children_count for parent categories in the database. The problem caused inaccurate category hierarchy data after saving updates. After the fix, the children count remains correct and no longer increments unexpectedly.

_AC-15401 - [GitHub issue](https://github.com/magento/magento2/issues/40154)_

#### Order remains in status 'processing' after shipping, if items get partially refunded

Fixed an issue where orders remained in Processing status after partially refunding items and shipping the rest. The order status now correctly updates to Complete once the total shipped and refunded quantities match the invoiced quantity, ensuring accurate order lifecycle management.

_AC-15419 - [GitHub code contribution](https://github.com/magento/magento2/commit/cc0ec250)_

#### Sending a sales email from backend always gives success - also when disabled

Fixed the backend sales email notification to display accurate messages by validating the email service result, ensuring users are informed when order or invoice emails are disabled and not sent.

_AC-16059 - [GitHub issue](https://github.com/magento/magento2/issues/40309) - [GitHub code contribution](https://github.com/magento/magento2/commit/c95ed7d7)_

#### Custom Price of 0 gets reset to original price on reorder.

Fixed issue where products with a custom price of 0 reverted to their original price during reorder.
Now, the custom price is retained correctly, ensuring accurate pricing when reordering items.

_AC-8147 - [GitHub issue](https://github.com/magento/magento2/issues/36970) - [GitHub code contribution](https://github.com/magento/magento2/commit/01cee3c3)_

#### Place order with disabled Payment method working

Fixed an issue where orders could be placed using a disabled payment method via GraphQL.
Now, an error is returned when attempting to set or use an unavailable payment method, preventing the order from being created.

_AC-9605 - [GitHub issue](https://github.com/magento/magento2/issues/37983) - [GitHub code contribution](https://github.com/magento/magento2/commit/a8cf637b)_

#### Order status stuck on Processing

Prior to the fix, when ordering a bundle product with "Ship toghether" option enabled, the order status did not automatically switch to "complete" after invoice and shipment. Now, after the fix, the order status automatically switches to "complete" after the order has been invoiced and shipped.

_ACP2E-3947 - [GitHub code contribution](https://github.com/magento/magento2/commit/2a252ae6)_

#### [Cloud]Magento OOTB code - Email Template Setup issue

Prior to the fix, when using async email sending, shipment emails were incosisten with the store order. Now, after the fix, the proper store shipment email order is delivered.

_ACP2E-3998 - [GitHub code contribution](https://github.com/magento/magento2/commit/462ede94)_

#### Cancel invoice redirects to 404

Cancellation of the invoice made with Not Capture type does not lead to page 404 anymore.

_ACP2E-4001 - [GitHub code contribution](https://github.com/magento/magento2/commit/2a1e1e55)_

#### Issue with Updated Orders with Configurable Options Using REST API

Preserve existing product options on sales order items when updating an order through rest api endpoints.

_ACP2E-4061 - [GitHub code contribution](https://github.com/magento/magento2/commit/6dd3fa99)_

#### Sales async by id insert limited to 100 entries per cron run

Improved processing of the sales grid async insert. One cron run now inserts all pending rows in batches, instead of a strict 100 per run.

_ACP2E-4360 - [GitHub code contribution](https://github.com/magento/magento2/commit/31258bf6)_

#### Error message "The product with ID "1" does not exist." is being repeatedly logged in the exception.log

Before the fix, critical errors were logged when deleted products were encountered in the Last Ordered Items section. After the fix, merchants can configure whether to log or skip deleted products via the `skipDeletedProductLogging` parameter in di.xml. By default, the behavior remains unchanged for backward compatibility, but merchants can set the parameter to `true` to silently skip deleted products and prevent log noise.

_ACP2E-4366 - [GitHub code contribution](https://github.com/magento/magento2/commit/61c96348)_

#### Double tax on second credit memo refund

Fixed incorrect tax calculation in credit memos when creating a partial refund from an invoice after a previous credit memo was created from the order view page.

_ACP2E-4384 - [GitHub code contribution](https://github.com/magento/magento2/commit/61c96348)_

### Order, Pricing

#### Admin displays incorrect currency symbol on when creating return

In a multi-website setup with different currencies (EUR/USD/GBP), the return product selection page in admin is now displaying the correct tcurrency symbol. Previously, it displayed the default currency symbol.

_ACP2E-3658 - [GitHub code contribution](https://github.com/magento/magento2/commit/df92debe)_

### Order, Returns

#### Error when create credit memo for offline refund

Fixed an issue where creating a credit memo failed for bundle products with the setting Dynamic Price = No. Credit memos can now be created successfully without errors.

_ACP2E-4157 - [GitHub code contribution](https://github.com/magento/magento2/commit/45cbf9b6)_

### Other Developer Tools

#### [Issue] Wrong type hint for the protected member $_urlHelper

The system now Fixes the wrong type hint with the correct one, that is also used in constructor

_AC-10716 - [GitHub issue](https://github.com/magento/magento2/issues/32503) - [GitHub code contribution](https://github.com/magento/magento2/pull/32496)_

#### [Issue] Cleaning up unused code.

The system now removes unused code regarding the unused imports.

_AC-10980 - [GitHub issue](https://github.com/magento/magento2/issues/38424) - [GitHub code contribution](https://github.com/magento/magento2/pull/33499)_

#### Lighthouse Accessibility failure

The System now Pass with Accessibility score of 100

_AC-12783 - [GitHub issue](https://github.com/magento/magento2/issues/39054) - [GitHub code contribution](https://github.com/magento/magento2/pull/39164)_

#### Disable captcha storefont config still load captcha js files

The System now does not load captcha js files when we disabled captcha 
 for storefont

_AC-14267 - [GitHub issue](https://github.com/magento/magento2/issues/32987) - [GitHub code contribution](https://github.com/magento/magento2/pull/39154)_

#### [Issue] Accessibility: WAI-ARIA roles nesting wrong in menu

The system now generates lighthouse accessibility without WAI-ARIA roles nesting wrong in menu error and report should be green

_AC-15082 - [GitHub issue](https://github.com/magento/magento2/issues/40045) - [GitHub code contribution](https://github.com/magento/magento2/pull/38617)_

#### Console error in Email preview in the Magento admin

The system will not throw any console error when we are previewing the email template

_AC-9245 - [GitHub issue](https://github.com/magento/magento2/issues/37820) - [GitHub code contribution](https://github.com/magento/magento2/pull/37933)_

### Payment/ Payment Methods

#### Paylater Message isn't displayed in storefront while configuring successfully in Backend

Fixed an issue where the PayPal Pay Later message was not displayed on the Home and Cart pages despite being configured in the backend. The banner failed to render when the buyer country was null for guests or customers without a default address. After the fix, the Pay Later message displays correctly on the storefront.

_AC-12335 - [GitHub code contribution](https://github.com/magento/magento2/commit/528af81a)_

### Payments

#### [Issue] Fix offline invoice capture (404)

It fixes the 404 Page Error while capturing invoices for offline payment methods from Magento admin

_AC-13336 - [GitHub issue](https://github.com/magento/magento2/issues/39298) - [GitHub code contribution](https://github.com/magento/magento2/pull/39297)_

#### Unknown IPNs from PayPal abuses application IPN processor

The IPN handler now ignores unsupported or unknown IPN types. Instead of returning a 500 error, it logs the issue and continues processing without interruption.

_ACP2E-4049 - [GitHub code contribution](https://github.com/magento/magento2/commit/6dd3fa99)_

#### PayflowPro saved card token failed on payment

PayPal PayFlow Pro transaction IDs (PNREFs) are now valid for use in Reference Transactions for a fixed period of 12 months. Once expired, the saved card will no longer be displayed and must be added again. Previously, the validity was determined by the expiration date of the payment card used in the original transaction.

_ACP2E-4064 - [GitHub code contribution](https://github.com/magento/magento2/commit/52f46328)_

#### Vaulted Card issue when placing order on Admin

Placing an order with stored credit card under website with different a payment action configuration no longer results in an error or wrong transaction type

_ACP2E-4270 - [GitHub code contribution](https://github.com/magento/magento2/commit/0a8c9a9a)_

#### [Cloud] PayflowPro saved card (Vault) last 4 digit is not showing in the order

Card information is now properly persisted and displayed when using saved cards with the Sales payment action, matching the behavior when using the Authorization payment action for PayflowPro.

_ACP2E-4346 - [GitHub code contribution](https://github.com/magento/magento2/commit/0a3b7032)_

### Performance

#### [Issue] Update Store.php

This PR improves performance by skipping current store resolution.

_AC-14791 - [GitHub issue](https://github.com/magento/magento2/issues/39949) - [GitHub code contribution](https://github.com/magento/magento2/pull/38717)_

#### [Issue] Update use cache control immutable for static site

This PR adds performance improvement by not validating the static content on each page load until & unless its changed.

_AC-15171 - [GitHub issue](https://github.com/magento/magento2/issues/39486) - [GitHub code contribution](https://github.com/magento/magento2/pull/39484)_

#### [Issue] Cache the results of isCacheable calls to improve performance

This PR adds caching for isCacheable() method results in the layout rendering process to reduce redundant checks and improve overall page rendering performance.

_AC-16054 - [GitHub issue](https://github.com/magento/magento2/issues/40156) - [GitHub code contribution](https://github.com/magento/magento2/pull/40112)_

#### [Issue] Minor performance improvement of async order grid processing

This PR introduces a performance optimization for Magento's async order grid processing by replacing the transient cache-based last_updated_at lookup with a persistent DB-backed flag stored in the flag table. This ensures the system consistently retains the last processed timestamp even after cache flushes or deployments, preventing unnecessary full-table scans on large sales_order datasets. As a result, async grid updates become more efficient and predictable, especially on high-volume stores with frequent order activity.

_AC-16109 - [GitHub issue](https://github.com/magento/magento2/issues/40282) - [GitHub code contribution](https://github.com/magento/magento2/pull/40271)_

#### [CLOUD] Unable to add products to categories

Improved performance when adding product to category through Visual Merchandiser.

_ACP2E-3946 - [GitHub code contribution](https://github.com/magento/inventory/commit/29653b1d)_

#### Changelog cleanup performance issue after ACP2E-3995

After the fix, the indexer_clean_all_changelogs cron job fully cleans changelogs, keeping batching in place.

_ACP2E-4211 - [GitHub code contribution](https://github.com/magento/magento2/commit/ee918f0d)_

#### [CLOUD] The Fastly cache is not working after we upgrade to 2.4.8

Resolved an issue where cacheable pages were not properly stored or served from Fastly cache, resulting in inconsistent caching behavior and reduced performance.

_ACP2E-4324 - [GitHub code contribution](https://github.com/magento/magento2/commit/2687b487)_

#### Investigate the reasons for increased redis keys and cache keys creation

Prior to the fix, cache kyes used for remote storage metadata were not expiring. Now, after the fix, you can set a TTL for such cache keys through dependency injection.

_ACP2E-4345 - [GitHub code contribution](https://github.com/magento/magento2/commit/0a3b7032)_

### Pricing

#### Price is always 0 for bundle product items without dynamic price in order rest API

Order REST API now returns correct prices for bundle product items without dynamic price.
Previously, when exporting orders via REST API, the price for bundle product items without dynamic pricing was always returned as 0, instead of the actual price shown on the bundle page.
AC-11925

_AC-11925 - [GitHub issue](https://github.com/magento/magento2/issues/38687) - [GitHub code contribution](https://github.com/magento/magento2/commit/7da46f52)_

#### Incorrect Scope Assigned to Price Attributes at Creation

Fixed an issue where newly created price attributes were incorrectly assigned the Store View scope regardless of configuration; after the fix, the attribute scope now aligns with the Catalog Price Scope setting (Global or Website) by default.

_AC-14945 - [GitHub issue](https://github.com/magento/magento2/issues/39986) - [GitHub code contribution](https://github.com/magento/magento2/commit/8670a2b4)_

#### Product is being saved even when Special Price From Date is later than To Date using mass action

Fixed issue where products could be saved with an invalid special price date range without validation.
Now, an error message is shown: “Make sure the To date is later than or the same as the From date.”

_AC-15252 - [GitHub issue](https://github.com/magento/magento2/issues/40113) - [GitHub code contribution](https://github.com/magento/magento2/commit/36d4d6fb)_

#### Regular price is not visible, even though a special price is applied.

Resolved an issue where the regular price was not displayed when a special price was applied. The regular price now correctly appears alongside the special price as expected.

_ACP2E-4100 - [GitHub code contribution](https://github.com/magento/magento2/commit/47721be6)_

### Product

#### Configurable product with bad behavior in front end

Fixed issue where configurable products displayed incorrect frontend behavior when a color swatch attribute was included, causing pricing, dropdown layout, and required field indicators to appear improperly.
Now, configurable products render correctly with proper pricing, aligned dropdowns, and expected UI behavior.

_AC-1014 - [GitHub issue](https://github.com/magento/magento2/issues/14296) - [GitHub code contribution](https://github.com/magento/magento2/commit/ef666cd9)_

#### Price assertion string mismatch when Configurable Product assigned to Test Stock and Test website with option of displaying out-of-stock products enabled

Updated the failing test to align with actual pricing behavior for configurable products when all child products have the same price.
The assertion now correctly validates the displayed price, preventing false test failures without impacting functionality.

_AC-10843 - [GitHub code contribution](https://github.com/magento/inventory/commit/1ccc786b)_

#### 'As low as' label is still displayed for a Configurable Product for the Test case AC-6158

Implemented and verified configurable products (P1–P7) with respective variations and category assignments. Ensured correct storefront price display and “As low as” label behavior for products under Category C.

_AC-10847 - [GitHub code contribution](https://github.com/magento/magento2/commit/a3b1abc2)_

#### Percentage discount on tier price and catalog price rule calculated on original price without selected options.

Percentage discounts on tier price and catalog price rules now include selected custom options.
Previously, percentage discounts were calculated on the original product price without considering selected custom options, resulting in incorrect final prices.
AC-12004

_AC-12004 - [GitHub issue](https://github.com/magento/magento2/issues/38750)_

#### [Issue] validate-rating is not working, selector of review rating is changed

Fixed an issue where the review rating validation was not triggered due to a changed selector. Previously, reviews could be saved without selecting a rating. After the fix, validation works correctly and prevents saving a review unless a rating is selected.

_AC-12686 - [GitHub issue](https://github.com/magento/magento2/issues/33424) - [GitHub code contribution](https://github.com/magento/magento2/commit/528af81a)_

#### Magento 2.4.7 minAllowed missing product order qty

The system is working fine and page source is showing correctly the min qty of the product

_AC-12909 - [GitHub issue](https://github.com/magento/magento2/issues/39142) - [GitHub code contribution](https://github.com/magento/magento2/pull/39480)_

#### Product Collection - addMediaGalleryData calls getSize when the collection maybe or will be loaded (Can use count to avoid an extra DB query)

This PR reduces the extra query call using count() if the product collection is already loaded when calling Product Graphql with media_gallery field included in it.

_AC-13055 - [GitHub issue](https://github.com/magento/magento2/issues/39111) - [GitHub code contribution](https://github.com/magento/magento2/pull/39681)_

#### Invalid SKU Handling for Linked Products in Magento

Fixed an issue where products with SKU “0” could not be linked as related, up-sell, or cross-sell items due to invalid SKU validation. The update ensures such products can be linked successfully, allowing the product to save without errors.

_AC-13311 - [GitHub issue](https://github.com/magento/magento2/issues/39329) - [GitHub code contribution](https://github.com/magento/magento2/commit/a8cf637b)_

#### Issue with the Customizable Options grid on the product page in the admin panel

The system is working as expected when we are creating a customisable options with type dropdown

_AC-14003 - [GitHub issue](https://github.com/magento/magento2/issues/39640) - [GitHub code contribution](https://github.com/magento/magento2/pull/39694)_

#### Admin product page error when all product attributes are set to global scope

Fixed an issue where the admin product edit page displayed an error when all product attributes were set to global scope. The error was caused by an empty database query, making the page unusable. After the fix, the product page renders correctly and products can be created without issues.

_AC-14011 - [GitHub issue](https://github.com/magento/magento2/issues/39646)_

#### [2.4.8] No callbacks found for cron job catalog_product_alert

Adobe Commerce now correctly prevents erroneous catalog_product_alert cron jobs from being scheduled after the product alert cron job was renamed to product_alert. Previously, in Adobe Commerce 2.4.8, configuring Stores > Configuration > Catalog > Catalog > Product Alerts Run Settings caused a catalog_product_alert cron entry to be created in core_config_data, and when cron ran it logged the error Magento_Cron.CRITICAL: Exception: No callbacks found for cron job catalog_product_alert even though the valid product_alert jobs were running correctly.

_AC-14494 - [GitHub issue](https://github.com/magento/magento2/issues/39800) - [GitHub code contribution](https://github.com/magento/magento2/commit/1bc2d6d0)_

#### [Product Compare] Compare List will be unusable

Fixed an issue where the compare list became unusable when the same product was added from different store views; after the fix, the compare list loads correctly and displays items based on the specific store.

_AC-14885 - [GitHub code contribution](https://github.com/magento/magento2/commit/8670a2b4)_

#### Extra Logging When Requesting A Product Via Repository Fails

Improved error messages for ProductRepository::get and getById when a SKU or ID is not found.
Previously, exceptions provided no context about which SKU or ID caused the error.
Now, the exception message includes the missing SKU or ID, aiding in debugging and improving developer experience.
This change does not affect any functional behavior of the API.

_AC-15199 - [GitHub issue](https://github.com/magento/magento2/issues/40090) - [GitHub code contribution](https://github.com/magento/magento2/commit/1b1baf1d)_

#### Attribute Set Doesn't exist error breaks the page

Fixed an issue where entering an invalid attribute set ID in the URL caused a fatal error; the system now displays a proper error message stating that the attribute set does not exist instead of breaking the page.

_AC-15753 - [GitHub issue](https://github.com/magento/magento2/issues/40213) - [GitHub code contribution](https://github.com/magento/magento2/commit/a06a4a57)_

#### Refund with negative qty alway refund discound

Fixed issue where creating a credit memo with a negative quantity incorrectly refunded the discount amount.
Now, discounts are not refunded for negative quantities, and the refund quantity is correctly set to zero.

_AC-9424 - [GitHub issue](https://github.com/magento/magento2/issues/37917) - [GitHub code contribution](https://github.com/magento/magento2/commit/ef666cd9)_

#### Slow query is executed when product widget is included via pagebuilder

The Query for product widgets creation including product SKUs is optimized.

_ACP2E-3449 - [GitHub code contribution](https://github.com/magento/magento2/commit/df92debe)_

#### Product images not resized when added as configurable product

Previously, images added through Configurations in the admin panel did not adhere to the maximum upload size limit, which could lead to inconsistencies and management challenges. Now, a fix has been implemented to ensure that images are automatically resized during upload to comply with the maximum size limit, streamlining the process and maintaining system standards.

_ACP2E-3504 - [GitHub code contribution](https://github.com/magento/magento2/commit/df92debe)_

#### All items from other customers compare lists are assigned to the customer after logging in via the admin

Previously, when an admin used the "Login as Customer" feature in the backend, products from the compare list of a previously logged-in customer were incorrectly assigned to the currently impersonated customer.  After the fix the compare list loads correctly for the correct logged-in customer.

_ACP2E-3818 - [GitHub code contribution](https://github.com/magento/magento2/commit/462ede94)_

#### [B2B] Shared Catalog Save Returns Deprecated Functionality Error

Admin can successfully unassign products from Shared Catalog.
Previously unassigning products with large number of long product SKUs from Shared Catalog resulted in error

_ACP2E-4097 - [GitHub code contribution](https://github.com/magento/magento2/commit/ab891304)_

#### [Cloud] Sitemap generation performance is significantly degraded

Sitemap generation for products with images no longer experiences exponential slowdown. Previously, generating sitemaps for stores with image inclusion enabled would result in long processing times.

_ACP2E-4153 - [GitHub code contribution](https://github.com/magento/magento2/commit/e457c5e2)_

### Product, Tax

#### Fixed Product Tax (FPT) is not displaying separately with configurable products

Fixed an issue where Fixed Product Tax (FPT) was not displayed separately for configurable products after selecting an option. Now, the FPT breakdown appears correctly on product listing and detail pages, matching the display format of simple products.

_AC-13171 - [GitHub code contribution](https://github.com/magento/magento2/commit/b5e99d20)_

### Promotion

#### Buy X Get Y cart price rule adds wrong discount when other rule already was applied

Fixed an issue where the Buy X Get Y cart price rule calculated discounts using the original product price even after another rule had already reduced it. The update ensures the second rule now applies the discount to the adjusted price, resulting in accurate total discounts when multiple promotions are active.

_AC-12325 - [GitHub code contribution](https://github.com/magento/magento2/commit/8670a2b4)_

#### Error getting order item discounts applied_to for customer order via GraphQl customer request

Earlier when discounts applied_to for customer order via GraphQl customer request internal server error was observed which is now fixed and proper customer order data with applied discount is fetched

_AC-14888 - [GitHub issue](https://github.com/magento/magento2/issues/39963) - [GitHub code contribution](https://github.com/magento/magento2/commit/fe72c407)_

#### Error getting order item coupon code for customer order via GraphQl customer request

Fixed issue where fetching orders with coupon details via GraphQL returned an internal server error.
Now, the query executes successfully and returns the correct coupon information in the response.

_AC-14889 - [GitHub issue](https://github.com/magento/magento2/issues/39962) - [GitHub code contribution](https://github.com/magento/magento2/commit/fe72c407)_

#### [Cloud][experienceleague] Catalog Price Rule not applied

Before the fix catalog price rules did not apply when `special_price` was set only at website level (not at "All Store Views"). After the fix catalog price rules now apply correctly when `special_price` is set at website level by checking the website's default store first.

_ACP2E-4372 - [GitHub code contribution](https://github.com/magento/magento2/commit/61c96348)_

### SEO

#### DynamicStorage.findProductRewriteByRequestPath() lacks entity_type filtering, causing CMS pages to be treated as products in category URLs

Fixed an issue where DynamicStorage did not filter by entity_type, causing CMS pages to be incorrectly treated as products in category URLs; malformed URLs now correctly return a 404 instead of serving CMS content.

_AC-14991 - [GitHub issue](https://github.com/magento/magento2/issues/39996) - [GitHub code contribution](https://github.com/magento/magento2/commit/64823f95)_

#### Enabling category path in product urls breaks store switcher in multiple ways

Fixed an issue where enabling category paths in product URLs caused the store switcher to fail; store switching now correctly resolves product URLs across store views without redirecting to the homepage or returning errors.

_AC-15110 - [GitHub issue](https://github.com/magento/magento2/issues/40037) - [GitHub code contribution](https://github.com/magento/magento2/commit/a7ef6300)_

#### Undefined array key in ProductRepository getById

The issue occurred when ProductRepository::getById() was called with an invalid ID like 123abc, leading to an "Undefined array key" error.
After the fix in Magento 2.4.9-alpha3, such requests now correctly return a 404 page instead of throwing an exception.
QA confirmed with both valid and malformed IDs, and no further issues were observed.

_AC-15345 - [GitHub issue](https://github.com/magento/magento2/issues/40146) - [GitHub code contribution](https://github.com/magento/magento2/commit/68a45d0a)_

#### Storefront compare product creates Google SEO error - Links are not crawlable

Resolved an SEO issue where the storefront “Compare Products” link was not crawlable by search engines due to a missing or improperly bound href attribute. The update ensures the link now contains a valid, crawlable URL, improving site discoverability and helping pass Google SEO audits.

_AC-15547 - [GitHub issue](https://github.com/magento/magento2/issues/40185) - [GitHub code contribution](https://github.com/magento/magento2/commit/c95ed7d7)_

#### Update product url_key via REST API does not generate a 301 URL Rewrite

When updating the URL key of the product via the REST API, with the "Create Permanent Redirect for URLs if URL Key Changed" setting set to Yes, the product URL rewrites are create a redirect from old URL to a new one.

_ACP2E-3900 - [GitHub code contribution](https://github.com/magento/magento2/commit/462ede94)_

#### [Cloud] Sitemap generation never ends

Previous to the fix, the sitemap generation could not finish successfully if the catalog contained more than a million products. After the fix, the sitemap generation will finish with lower memory allocation and with as many as one million products per store.

_ACP2E-3902 - [GitHub code contribution](https://github.com/magento/magento2/commit/52f46328)_

#### [Cloud] Store Switcher Not Working from EN to FR for FAQ Page

Fixed an issue where switching between store views redirected users to the homepage instead of the corresponding translated CMS page. The store switcher now checks for URL rewrites in the target store to ensure correct redirection (e.g., FAQ page in English → FAQ page in French).

_ACP2E-4112 - [GitHub issue](https://adobe-ent.crm.dynamics.com/main.aspx?appid=f2e74f34-7119-ea11-a811-000d3a5936c5&forceUCI=1&pagetype=entityrecord&etn=incident&id=3e1df344-8a69-f011-bec3-6045bd04f475)_

#### [Cloud] Deactivate the old sitemap generation

A new configuration option is now available to switch between the standard sitemap generation process and a newly implemented batch mode. This enhancement allows for greater flexibility and scalability in sitemap creation workflows.

_ACP2E-4132 - [GitHub code contribution](https://github.com/magento/magento2/commit/45cbf9b6)_

#### Suspicious requests are throwing exceptions in the exception.log

Fixed an issue where malicious or malformed URL requests were causing database collation errors and filling up exception logs.
Previously, when suspicious requests containing invalid character encodings or unsupported characters were received, the system would attempt to decode and process them, leading to MySQL collation conflicts.

_ACP2E-4328 - [GitHub code contribution](https://github.com/magento/magento2/commit/2687b487)_

### Sales

#### When Gift message enabled on Order level but user does not enter any data and place order, then still From Name and To Name in Admin showing customer first and last name.

Fixed an issue where gift message sender and recipient fields were automatically populated with customer names even when no gift message was entered; the fields now remain empty unless the user provides the details.

_AC-15140 - [GitHub code contribution](https://github.com/magento/magento2/commit/a8cf637b)_

### Search

#### "Confirm Form Resubmission" on Catalog Search with "Remember Category Pagination"

Navigating back from a product page to the Catalog Search Results page after modifying toolbar settings no longer triggers the "Confirm Form Resubmission" dialog when "Remember Category Pagination" is enabled.
Previously, users encountered a browser error or a warning about form resubmission when returning to the search results page after changing toolbar parameters like sort order.

_ACP2E-4208 - [GitHub code contribution](https://github.com/magento/magento2/commit/e885088b)_

#### Aggregated search field "_search" is no longer used in the search query

Now, full-text search returns matching products if the minimum should match condition is met across all searchable fields collectively, rather than requiring the condition to be satisfied by a single field.

_ACP2E-4285 - [GitHub code contribution](https://github.com/magento/magento2/commit/cbca0396)_

### Security

#### Internal Server Error

Magento now successfully adds products to a customer’s cart when using the asynchronous REST endpoint POST /rest/default/async/V1/carts/mine/items. Previously, this async “add to cart” request resulted in an Internal Server Error, and Magento logged the following error: Error: Call to a member function setFinalPrice() on null in app/code/Magento/Quote/Model/Quote/Item/AbstractItem.php:162.

_AC-16344 - [GitHub code contribution](https://github.com/magento/magento2/commit/8670a2b4)_

#### Bundled/Merged JS not part of SRI Hashes

Prior to the fix generated bundle or merged files were not being added to SRI hashes list. Now, the files are being proprly added to the SRI hashes.

_ACP2E-3854 - [GitHub code contribution](https://github.com/magento/magento2/commit/4ca73607)_

#### [CLOUD] Got writable permission issue in the newrelic

Before the fix, the logs were cluttered with exceptions. After applying the fix, the logs are now clean and free of exceptions.

_ACP2E-4296 - [GitHub code contribution](https://github.com/magento/magento2/commit/61c96348)_

### Shipping

#### Incorrect qty to ship after few creditmemos

Fixed issue where the Qty to Ship value was incorrectly calculated after multiple credit memos, allowing shipment of refunded items.
Now, the system accurately updates the remaining shippable quantity based on shipped and refunded items, preventing invalid shipments.

_AC-1479 - [GitHub issue](https://github.com/magento/magento2/issues/34289) - [GitHub code contribution](https://github.com/magento/magento2/commit/913bf1a6)_

#### Potential performance issue on loading shipping methods

Optimized the shipping methods loading process by ensuring only active carriers are loaded when requested. Previously, factories for all shipping methods were initialized, causing unnecessary performance overhead. The fix improves efficiency by conditionally loading only active shipping carriers, reducing load time and resource usage.

_AC-15415 - [GitHub issue](https://github.com/magento/magento2/issues/40153) - [GitHub code contribution](https://github.com/magento/magento2/commit/cc0ec250)_

#### [Issue] Commercial destination should not be treated as residential

Fixed an issue in the UPS REST shipping integration where commercial destinations were incorrectly treated as residential. The ResidentialAddressIndicator is now included in the UPS rate request only for residential addresses, preventing unintended residential surcharges and ensuring accurate commercial shipping rates.

_AC-16285 - [GitHub issue](https://github.com/magento/magento2/issues/40314) - [GitHub code contribution](https://github.com/magento/magento2/pull/40307)_

#### Exception while creating UPS shipping label

Fixed Warning: Array to string conversion during UPS shipping label creation

_ACP2E-3676 - [GitHub code contribution](https://github.com/magento/magento2/commit/b12ffe36)_

#### [QUANS] - Does Magento_Fedex core module check for a valid-active token before sending a request to get a new one?

Adobe Commerce is no long make many requests to FedEx API service for the access token. Previously, even though the access token is still valid, Adobe Commerce always make new requests to FedEx API which caused a rate limiting issue.

_ACP2E-3930 - [GitHub code contribution](https://github.com/magento/magento2/commit/4ca73607)_

### Staging & Preview

#### Price of product in cart affected by catalog price rule doesn't change when rule is adjusted by the staging update

Fixed an issue where product prices in the cart were not fully updated after modifying a catalog price rule through a staging update. Previously, the updated price appeared only in the summary section while the central cart block showed the old value. Now, the revised rule correctly updates the product price across the entire cart.

_AC-15304 - [GitHub code contribution](https://github.com/magento/magento2/commit/913bf1a6)_

#### When scheduled update for category is deleted, amount of children is not decreased for the parent category

Fixed an issue where deleting a scheduled update for a category did not reduce the parent category’s children count, ensuring the count updates correctly when scheduled updates or subcategories are removed.

_AC-15670 - [GitHub code contribution](https://github.com/magento/magento2/commit/ef666cd9)_

#### When editing scheduled update for categories it adds children amount to parent category

Fixed an issue where editing an existing scheduled update for a subcategory incorrectly increased the children_count for parent categories in the database. The problem caused inaccurate category hierarchy data after saving updates. After the fix, the children count remains correct and no longer increments unexpectedly.

_AC-16239 - [GitHub code contribution](https://github.com/magento/magento2/commit/8670a2b4)_

#### Previewing a scheduled update opens the first store view in alphabetical order instead of the store view of interest

Previous to the fix, the preview of a scheduled update opened in the first store view in alphabetical order instead of the assigned store view.
After the fix, the preview now correctly opens in the store view assigned to the CMS block staging update.

_ACP2E-3671 - [GitHub code contribution](https://github.com/magento/magento2/commit/b12ffe36)_

#### Not able to preview Scheduled Product update with Category Permissions enabled

Prior to the fix a future to be enabled product was not being displayed in preview mode. Now it will be displayed even if the current status is disabled.

_ACP2E-3786 - [GitHub code contribution](https://github.com/magento/magento2/commit/7accebfa)_

#### Missing validation for Catalog Price rule discount amount field

Previously, the discount_amount field in the staging schedule update was not validated correctly with the current validation rules. However, after applying the fix, the discount_amount field will be validated appropriately.

_ACP2E-3867 - [GitHub code contribution](https://github.com/magento/magento2/commit/462ede94)_

#### Bundle product with scheduled updates removes the bundle items option on product save action

Removing bundle product options or associated products in scheduled update no longer affects the original bundle options and associated products and vice versa. Also removing bundle production options in the original product and replacing with another options after scheduling an update no longer results in the removal of the newly added options

_ACP2E-4212 - [GitHub code contribution](https://github.com/magento/magento2/commit/ab891304)_

#### Cannot navigate between websites in Schedule Update preview

Before this fix, scheduled update preview would break when attempting to preview content for stores with custom domains. After this fix, custom store domains can be previewed as is and navigated within the preview iframe. The fix covers products, categories, CMS pages, and CMS blocks, and supports navigation links using `{{store url}}` markup tags as documented in [Adobe Commerce Variables and Markup Tags](https://experienceleague.adobe.com/en/docs/commerce-admin/systems/variables/markup-tags).

_ACP2E-4308 - [GitHub code contribution](https://github.com/magento/magento2/commit/0a3b7032)_

### Tax

#### Wrong Order total, the round is not applied to the price calculation.

The system is now correctly handles when calculating the price_after_discount, discount_amount and taxes amount.
the actual total of the order

_AC-11389 - [GitHub issue](https://github.com/magento/magento2/issues/38455) - [GitHub code contribution](https://github.com/magento/magento2/pull/39687)_

#### [Issue] Fix: The Credit Memo Items' base_weee_tax_applied_row_amnt Value is Incorrect

Corrected the credit memo calculation by using the proper setter for base_weee_tax_applied_row_amnt, ensuring the tax value reflects only the refunded quantity. Previously, the row amount incorrectly used the full order value instead of the partial credit memo amount.

_AC-12049 - [GitHub issue](https://github.com/magento/magento2/issues/38765) - [GitHub code contribution](https://github.com/magento/magento2/commit/3b5ac075)_

#### Items in the mini-cart display foreign currency prices without conversion

Mini-cart now correctly converts currency and displays the accurate amount based on configured conversion rates.

_ACP2E-4364 - [GitHub code contribution](https://github.com/magento/magento2/commit/1c547060)_

### Test framework

#### [Issue] Remove a duplicated &lt;severity> tag from MFTF test AdminSetUpWatermarkForSwatchImageTest

The system now only includes a single severity tag in the AdminSetUpWatermarkForSwatchImageTest, improving code clarity and consistency. Previously, this test contained two identical severity tags, which was unnecessary and could lead to confusion.

_AC-11873 - [GitHub issue](https://github.com/magento/magento2/issues/38504) - [GitHub code contribution](https://github.com/magento/magento2/pull/31862)_

#### [Issue] Ignore lib/internal/Magento/Framework/App/Test/Unit/_files/app/etc/en…

The system now ignores the file 'env.php' that gets generated when running unit tests, ensuring that the git status remains clean after running tests. Previously, running unit tests would generate a new file 'env.php', causing the git status to show a new file found and making it appear dirty.

_AC-13293 - [GitHub issue](https://github.com/magento/magento2/issues/39304) - [GitHub code contribution](https://github.com/magento/magento2/pull/37631)_

#### [Issue] Fix integration test issue with interceptor

The system now correctly identifies and handles the \Magento\TestFramework\App\Config\Interceptor in the integration test, ensuring that the test can access the necessary data even when a plugin on the class exists. Previously, the system failed to account for the possibility of the \Magento\TestFramework\App\Config being a \Magento\TestFramework\App\Config\Interceptor, resulting in an error when attempting to access the $data property.

_AC-13305 - [GitHub issue](https://github.com/magento/magento2/issues/39324) - [GitHub code contribution](https://github.com/magento/magento2/pull/37187)_

#### [Issue] MFTF: Submitting Email To Friend Form with enabled captcha

The test case addresses the functionality of the "Email to Friend" form when CAPTCHA is enabled, ensuring that the form submission process works correctly with both incorrect and correct CAPTCHA values.

_AC-13492 - [GitHub issue](https://github.com/magento/magento2/issues/39462) - [GitHub code contribution](https://github.com/magento/magento2/pull/32830)_

#### Hardcoded Fixture Paths Fail in Composer Builds

_AC-16488_

#### [Issue] magento/magento2#: GraphQl mutation. Additional test coverage for customer storeConfig settings.

The System now adds the additional test coverage for the next customer storeConfig options:
required_character_classes_number
minimum_password_length

_AC-9370 - [GitHub issue](https://github.com/magento/magento2/issues/37915) - [GitHub code contribution](https://github.com/magento/magento2/pull/28761)_

#### Environment specific unit tests failures in AC 2.4.7-p3

This issue fixes unit test failures that are not reproducing on all versions and environments. Previously to the fix some unit tests failed due different library versions or due to missing functionality added in a later version.

_ACP2E-3712 - [GitHub code contribution](https://github.com/magento/magento2/commit/9ad7d277)_

### UI Framework

#### [Issue] Remove duplicated variables from one of less files

The system now removes duplicated variables from less files, ensuring cleaner and more efficient code. Previously, these duplicated variables were present in the less files, leading to unnecessary redundancy in the code.

_AC-11743 - [GitHub issue](https://github.com/magento/magento2/issues/31154) - [GitHub code contribution](https://github.com/magento/magento2/pull/31150)_

#### WYSIWYG is empty in dynamic rows

WYSIWYG fields in dynamic rows are now correctly initialized and filled.
Previously, WYSIWYG fields in dynamic rows (such as in design configuration forms) could appear empty or lose their content after certain actions, requiring manual intervention to restore data.
AC-12336

_AC-12336 - [GitHub issue](https://github.com/magento/magento2/issues/38893) - [GitHub code contribution](https://github.com/magento/magento2/commit/7bdafaa2)_

#### [Issue] Fix mime type typo

The system correctly handles and fixed the mime type and typo for gif image

_AC-8001 - [GitHub issue](https://github.com/magento/magento2/issues/36899) - [GitHub code contribution](https://github.com/magento/magento2/pull/36669)_

#### [Issue] Remove forbidden `@author` tag from `Magento_Backend`

This PR removes `@author` tag from the codebase

_AC-8814 - [GitHub issue](https://github.com/magento/magento2/issues/37522) - [GitHub code contribution](https://github.com/magento/magento2/pull/36976)_

#### [Issue] Avoid direct access to reviews list Ajax

The system correctly handles and Avoid direct access to reviews list Ajax

_AC-9381 - [GitHub issue](https://github.com/magento/magento2/issues/37920) - [GitHub code contribution](https://github.com/magento/magento2/pull/33876)_

#### Header Login/Logout Not Updating in Multi-Store Setup with Shared Cookies

Login header is updated correctly on logout in accordance with config settings. The customer-data.js will use a cookie to store the 'mage-customer-login' value if customer accounts are shared globally. Local storage will be used otherwise.

_ACP2E-4149 - [GitHub code contribution](https://github.com/magento/magento2/commit/e885088b)_

#### [Mobile] Fotorama can open Mini Cart on Image Viewer close action

Fixed the issue with Fotorama. Previously, a Mini Cart would open on the Image Viewer's close action

_ACP2E-4231 - [GitHub code contribution](https://github.com/magento/magento2/commit/e885088b)_

#### Merged js files are not properly generated on projects with many stores.

Merging JavaScript files now works correctly when multiple stores are configured.
Previously, files sometimes failed to merge properly in multi-store setups, leading to incomplete or inconsistent results.

_ACP2E-4246 - [GitHub code contribution](https://github.com/magento/magento2/commit/ab891304)_

### Upgrades - Upgrade Compatibility Tool

#### Deprecated Functionality: Creation of dynamic property Magento\Framework\Acl::$_roleRegistry

Deprecated functionality errors no longer prevent admin panel access after upgrade.
Previously, after upgrading to Magento 2.4.6, attempting to access the admin panel could result in the error:
"Deprecated Functionality: Creation of dynamic property Magento\Framework\Acl::$_roleRegistry is deprecated in vendor/magento/framework/Session/SessionManager.php on line 186"
This prevented administrators from logging in.
AC-12343

_AC-12343 - [GitHub issue](https://github.com/magento/magento2/issues/37469)_
