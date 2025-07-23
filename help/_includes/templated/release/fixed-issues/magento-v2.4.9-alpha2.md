# Magento Open Source release notes (v2.4.9-alpha2)

## Fixed issues in v2.4.9-alpha2

We have fixed 109 issues in the Magento Open Source 2.4.9-alpha2 core code. A subset of the fixed issues included in this release is described below.

### APIs

* __Special Price To Date is wrongly validated on applySpecialPrice__
  The system is working fine regarding Special price and Product special price will be expire on date set by admin or 3rd party system by REST API
  _AC-13130 - [GitHub issue](https://github.com/magento/magento2/issues/39169) - [GitHub code contribution](https://github.com/magento/magento2/pull/39690)_
* __Malformed request body or parameters cause &quot;Internal Server Error&quot;__
  _AC-746 - [GitHub issue](https://github.com/magento/magento2/issues/32784) - [GitHub code contribution](https://github.com/magento/magento2/commit/f1adb44e)_
* __Order &quot;base_row_total&quot; and &quot;row_total&quot; show single item price in REST API response__
  REST api response for order details now contains correct values for &quot;base_row_total&quot; and &quot;row_total&quot; attributes in case when several same items were ordered
  _ACP2E-3874 - [GitHub code contribution](https://github.com/magento/magento2/commit/4ca73607)_

### APIs, Order

* __[CLOUD] Order information issue with row total appearance for order 000075568__
  Fixes the issue where the row_total_incl_tax value in the order API response was returned as a near-zero residual value instead of 0.00 when an item was fully discounted.
  _ACP2E-3950 - [GitHub code contribution](https://github.com/magento/magento2/commit/462ede94)_

### Account

* __Issue when updating customer email in Admin Panel with ö and .swiss domain__
  _AC-13409 - [GitHub issue](https://github.com/magento/magento2/issues/39394) - [GitHub code contribution](https://github.com/magento/magento2/commit/d3ea191d)_
* __Newsletter subscribe enabled switch not working per website/store__
  The System Correctly handles subscription with newsletter when we are having multiple websites/storeviews when it was disabled at global level
  _AC-14283 - [GitHub issue](https://github.com/magento/magento2/issues/39751) - [GitHub code contribution](https://github.com/magento/magento2/pull/39752)_
* __[Issue] Removed email disclosure__
  The System now shows Display an error message indicating an incorrect email if the entered email is not required to confirm the account, regardless of whether the customer exists or not.
  _AC-14561 - [GitHub issue](https://github.com/magento/magento2/issues/39574) - [GitHub code contribution](https://github.com/magento/magento2/pull/39570)_

### Admin UI

* __FPT value in cart page and product page are different for same configurations for simple product__
  _AC-13066 - [GitHub code contribution](https://github.com/magento/magento2/commit/8953613e)_
* __Multiselect/select attribute options can not be saved when Swatches modules disabled__
  _AC-13071 - [GitHub code contribution](https://github.com/magento/magento2/commit/8953613e)_
* __FPT value in cart page and product page are different for same configurations for a dynamic product__
  _AC-13075 - [GitHub code contribution](https://github.com/magento/magento2/commit/8953613e)_
* __Hover colour not applied on static grids in admin__
  Hover colors are now applied as expected on the rows of Admin static grids.[GitHub-35358](https://github.com/magento/magento2/issues/35358)
  _AC-2916 - [GitHub issue](https://github.com/magento/magento2/issues/35358) - [GitHub code contribution](https://github.com/magento/magento2/pull/35384)_
* __[Staging2] Stored cards are not visible on Admin panel__
  Fixes the issue where the &quot;Stored Card&quot; payment option no longer appeared in the backend order placement form after an upgrade.
  _ACP2E-3830 - [GitHub code contribution](https://github.com/magento/magento2/commit/7accebfa)_

### B2B

* __company field validation fails for guest checkout__
  _AC-14987 - [GitHub issue](https://github.com/magento/magento2/issues/40011) - [GitHub code contribution](https://github.com/magento/magento2/commit/f1adb44e)_

### Bundle

* __Exclude hugerte Editor JS Files from Bundled Output Across Themes__
  _AC-15128 - [GitHub code contribution](https://github.com/magento/magento2/commit/43648891) - [GitHub code contribution](https://github.com/magento/magento2/commit/2bc584af)_

### Cart & Checkout

* __Grouped Product Frontend Quantity Validations are Missing__
  The system is now working fine and displaying validation error when we are trying to add negative qty and max qty
  _AC-13524 - [GitHub issue](https://github.com/magento/magento2/issues/39479) - [GitHub code contribution](https://github.com/magento/magento2/pull/39480)_
* __Guest Prefix Not Saved to Quote Address 2.4.8__
  _AC-14705 - [GitHub issue](https://github.com/magento/magento2/issues/39915) - [GitHub code contribution](https://github.com/magento/magento2/commit/f1adb44e)_
* __[Issue] Set price on quote item instead of base_price__
  The system correctly handles quote item&apos;s price set to the base_price instead of the price if you have multiple currencies in one website on the frontend
  _AC-9985 - [GitHub issue](https://github.com/magento/magento2/issues/38094) - [GitHub code contribution](https://github.com/magento/magento2/pull/36878)_
* __[Cloud] Recent Orders not appearing in other store view if the orders are created on one store view__
  Resolved an issue where the &quot;My Account&quot; page did not display recent orders from other Store Views within the same Store. The order retrieval logic has been updated to ensure consistent order visibility across all Store Views, aligning with the behavior of the &quot;My Orders&quot; page.
  _ACP2E-3807 - [GitHub code contribution](https://github.com/magento/magento2/commit/a20a6ff2)_
* __qty showing as  0 in the admin customer shopping cart section while adding BUNDLE products  __
  The Shopping Cart section in Customer Activities now displays the correct quantity. Previously, the quantity was shown as 0.
  _ACP2E-3872 - [GitHub code contribution](https://github.com/magento/magento2/commit/3ad96f6a)_

### Cart & Checkout, GraphQL

* __Error in mapping message to error code when placing order via GraphQL__
  GraphQL calls to place an order for a nonexistent or inactive cart now correctly return CART_NOT_ACTIVE or CART_NOT_FOUND error codes in all store views, fixing an issue where translated error messages previously resulted in an UNDEFINED code.
  _ACP2E-3942 - [GitHub code contribution](https://github.com/magento/magento2/commit/7accebfa)_

### Cart & Checkout, GraphQL, Inventory / MSI

* __is_available attribute in CartItemInterface returns false even when salable stock is high__
  The is_available attribute returns true when salable stock is high. Previously, it always return false.
  _ACP2E-3885 - [GitHub code contribution](https://github.com/magento/magento2/commit/3ad96f6a)_

### Catalog

* __Scope bug in Catalog URL resource (_getCategories)__
  This PR adds a fallback to default scope if there is no value defined on the store scope in category URL resource.
  _AC-11011 - [GitHub issue](https://github.com/magento/magento2/issues/38393) - [GitHub code contribution](https://github.com/magento/magento2/pull/38394)_
* __[Issue] Check if OpenGraph can show price__
  The system is working fine when we use plugin which hides the price and with this change price is not visible in the OG tag.
  _AC-11635 - [GitHub issue](https://github.com/magento/magento2/issues/38512) - [GitHub code contribution](https://github.com/magento/magento2/pull/38510)_
* __[Bug] REST API: Update special prices does not set values for all store views__
  _AC-13671 - [GitHub issue](https://github.com/magento/magento2/issues/39521) - [GitHub code contribution](https://github.com/magento/magento2/commit/7bdafaa2)_
* __[\Magento\ConfigurableProduct\Model\Product\Type\Configurable] PHP error unoticed__
  This PR Change a loop variable name to correctly add the &quot;_cache_instance_product_ids&quot; data on the given product to be used on subsequent calls.
  _AC-14159 - [GitHub issue](https://github.com/magento/magento2/issues/39641) - [GitHub code contribution](https://github.com/magento/magento2/pull/39642)_
* __[Mainline] [CLOUD] Image Resizing consumes over 400GB of disk space__
  After the fix, the `catalog:images:resize` command used with --skip_hidden_images flag will not generate image caches for websites where images are not present.
  _ACP2E-3869 - [GitHub code contribution](https://github.com/magento/magento2/commit/9ad7d277)_
* __Provided CountryID Does not Exist - Ireland (IE)__
  After the fix, Ireland postcodes are available to search for pickup locations.
  _ACP2E-3932 - [GitHub code contribution](https://github.com/magento/magento2/commit/4ca73607) - [GitHub code contribution](https://github.com/magento/inventory/commit/d2f1d6c6)_

### Catalog, Performance

* __Categories in admin are loading very slow__
  The category loading performance has a significant improved. Previously, it took so long to load the category that caused a timeout issue.
  _ACP2E-3891 - [GitHub code contribution](https://github.com/magento/magento2/commit/4ca73607)_

### Catalog, Pricing

* __Wrong catalog price rule discount applied to the child product__
  Fixes the issue where the catalog price rule for the variation is overridden by the parent configurable product, in case where both rules have the same priority.
  _ACP2E-3693 - [GitHub code contribution](https://github.com/magento/magento2/commit/a20a6ff2)_

### Catalog, Search

* __RestApi request &apos;/rest/default/V1/categories?searchCriteria%5Bpage_size%5D=1&apos; fails with timeout error__
  _AC-13358 - [GitHub code contribution](https://github.com/magento/magento2/commit/7bdafaa2)_

### Content

* __After upgrade to magento 2.4.7 p2 can&apos;t see newly uploaded files media gallery__
  _AC-13262 - [GitHub issue](https://github.com/magento/magento2/issues/39275)_
* __Completely removing a gallery-image from be keeps scope roles/types set (base/small/thumbnail) and after re-adding &quot;old&quot; roles/types appear__
  The system is working as expected in the store scopes the images inherit the roles/types of the new added image as per the default scope
  _AC-13556 - [GitHub issue](https://github.com/magento/magento2/issues/39481) - [GitHub code contribution](https://github.com/magento/magento2/pull/39680)_
* __[Small Bug] Filter of Admin Panel `listing component` cannot hit when field value contains `\`__
  The system is working fine when we are filtering page title having slash in it(eg: Magento\Store)
  _AC-13661 - [GitHub issue](https://github.com/magento/magento2/issues/39513) - [GitHub code contribution](https://github.com/magento/magento2/pull/39535)_
* __&quot;The CMS page with the &quot;0&quot; ID doesn&apos;t exist&quot; log flood__
  The system is working as expected after creating admin user and when we creating a new page system.log does not have any error messages
  _AC-14254 - [GitHub issue](https://github.com/magento/magento2/issues/39743) - [GitHub code contribution](https://github.com/magento/magento2/pull/39746)_
* __Catalog link widgets uses incorrect URL__
  The System now correctly handles widgets after adding catalog product link and catalog category link and it shows correct urls in html source also
  _AC-14437 - [GitHub issue](https://github.com/magento/magento2/issues/39464) - [GitHub code contribution](https://github.com/magento/magento2/pull/39710)_
* __Page Builder&apos;s Product component doesn&apos;t work if the user doesn&apos;t have Widget permission__
  Prior to the fix, when accessing a widget without permissions, the page was throwing a generic error and displaying a &quot;loading&quot; GIF. Now, after the fix, a modal window is displayed with &quot;Sorry, you need permissions to view this content.&quot; message.
  _ACP2E-3664 - [GitHub code contribution](https://github.com/magento/magento2-page-builder/commit/bd9181b6)_
* __Page Builder Product Widget ordering not being applied in GraphQL__
  Fixes the issue where the GraphQL &quot;route&quot; query response did not return products in the correct sort order within a Page Builder Products content type.
  _ACP2E-3898 - [GitHub code contribution](https://github.com/magento/magento2-page-builder/commit/bd9181b6)_
* __Pricing Display Issue on Non-English Storefronts Due to ICU Library Version__
  After the fix, the product price is displayed correctly in the Hebrew (Israel) locale.
  _ACP2E-3938 - [GitHub code contribution](https://github.com/magento/magento2/commit/7accebfa)_
* __Updating Store Code Cleared Design Configuration__
  Fixes the issue where updating the store view code cleared the Design Configuration settings due to the configuration cache not being properly refreshed.
  _ACP2E-3941 - [GitHub code contribution](https://github.com/magento/magento2/commit/462ede94)_

### Framework

* __Error when run command setup:upgrade with custom DB trigger__
  _AC-11487 - [GitHub issue](https://github.com/magento/magento2/issues/38481)_
* __Website/Group/Store entity form can&apos;t be extended with multiple value form element for extension attributes__
  This PR allowes multivalue form elements to submit data to website/group/store form.
  _AC-11657 - [GitHub issue](https://github.com/magento/magento2/issues/24070) - [GitHub code contribution](https://github.com/magento/magento2/pull/24094)_
* __[Issue] Remove scope resolver usage__
  This PR resolves the Admin URL settings globally instead of the current store
  _AC-11736 - [GitHub issue](https://github.com/magento/magento2/issues/38566) - [GitHub code contribution](https://github.com/magento/magento2/pull/38554)_
* __Magento Version exposure via Setup route with default Nginx Configuration__
  The system is now working as expected and do not expose the exact version of Magento the site is running
  _AC-13205 - [GitHub issue](https://github.com/magento/magento2/issues/39227) - [GitHub code contribution](https://github.com/magento/magento2/pull/39228)_
* __[Issue] refactor quote address do validate method__
  This PR includes readability improvements to the doValidate method.
  _AC-13214 - [GitHub issue](https://github.com/magento/magento2/issues/38230) - [GitHub code contribution](https://github.com/magento/magento2/pull/38219)_
* __Magento option --magento-init-params never used when running cli?__
  _AC-13231 - [GitHub issue](https://github.com/magento/magento2/issues/39248) - [GitHub code contribution](https://github.com/magento/magento2/commit/132b9e68)_
* __getItemsByColumnValue wrong type declaration__
  The system now correctly defines the input parameter $value as a primitive type, not an array, in the getItemsByColumnValue function, ensuring that the function returns the expected collection. Previously, if an array with a single value was used as the input parameter, the function would return null and IDEs would mark it as an error.
  _AC-13240 - [GitHub issue](https://github.com/magento/magento2/issues/33070) - [GitHub code contribution](https://github.com/magento/magento2/pull/33120)_
* __Cache Keys associated with FPC on Magento 2.4.7 multi-store implementations__
  _AC-13719 - [GitHub issue](https://github.com/magento/magento2/issues/39456) - [GitHub code contribution](https://github.com/magento/magento2/commit/ae6f305b)_
* __Magento Rest API exposing PII__
  _AC-13904 - [GitHub issue](https://github.com/magento/magento2/issues/39336)_
* __Partial indexation stop working for customers with huge # of updates__
  _AC-14424 - [GitHub code contribution](https://github.com/magento/magento2/commit/7bdafaa2)_
* __Investigate &quot;use strict&quot; is unnecessary inside of modules__
  _AC-14517 - [GitHub code contribution](https://github.com/magento/magento2/commit/77c589a6)_
* __MView mechanism silently ignores errors on trigger execution__
  _AC-14567 - [GitHub code contribution](https://github.com/magento/magento2/commit/ae6f305b)_
* __[Issue] Avoid lots of uncessary exceptions during layout XML merge loading__
  This PR introduce a new function (for B/C compat we don&apos;t overwrite the protected _loadXmlString) to load and not throw an exception
  _AC-14580 - [GitHub issue](https://github.com/magento/magento2/issues/39877) - [GitHub code contribution](https://github.com/magento/magento2/pull/37570)_
* __[Issue] Use constructor property promotion in module Vault graph Ql__
  This PR replace constructor properties with property promotion in VaultGraphQl module
  _AC-14616 - [GitHub issue](https://github.com/magento/magento2/issues/39900) - [GitHub code contribution](https://github.com/magento/magento2/pull/36996)_
* __[Issue] Removed code redundancy for module frontend layouts.__
  This PR removes code redundancy to theme layouts for Magento_Msrp, Magento_LoginAsCustomerAssistance, Magento_Newsletter &amp; Magento_Sitemap modules frontend layouts.
  _AC-14625 - [GitHub issue](https://github.com/magento/magento2/issues/30673) - [GitHub code contribution](https://github.com/magento/magento2/pull/30644)_
* __[Issue] Remove code related to Microsoft IIS__
  This PR clean up the code related to Mircrosoft IIS as per Magento System Requirement documentation which states that the Microsoft Windows OS is not supported
  _AC-14702 - [GitHub issue](https://github.com/magento/magento2/issues/39910) - [GitHub code contribution](https://github.com/magento/magento2/pull/39894)_
* __Magnifier.js syntax error__
  The system Magnifier functionality should keep working the way it worked before and magnifierOptions should not be available in global scope
  _AC-14722 - [GitHub issue](https://github.com/magento/magento2/issues/36200) - [GitHub code contribution](https://github.com/magento/magento2/pull/39321)_
* __Backport Verbose Mode in `setup:db:status` CLI command__
  _AC-14807 - [GitHub code contribution](https://github.com/magento/magento2/commit/7bdafaa2)_
* __SMTP mail send with tls and 2.4.8__
  _AC-14883 - [GitHub issue](https://github.com/magento/magento2/issues/39947) - [GitHub code contribution](https://github.com/magento/magento2/commit/3717e6cb) - [GitHub code contribution](https://github.com/magento/magento2/commit/8b453942) - [GitHub code contribution](https://github.com/magento/magento2/commit/d3ea191d)_
* __[Issue] Fix concurrency issue in static content deploy__
  This PR fixes a bug in which multiple concurrent processes spin up to handle the same theme package, depending on how the themes are defined with their parents.
  _AC-14944 - [GitHub issue](https://github.com/magento/magento2/issues/39990) - [GitHub code contribution](https://github.com/magento/magento2/pull/39954)_
* __[Issue] Remove legacy compatibility code for PHP versions &lt; 8.1__
  This pull request removes code that was designed to be ran on PHP &lt;8.1.
Also, removed checks for PHP_VERSION_ID contact availability, since it&apos;s available in all PHP versions
  _AC-14971 - [GitHub issue](https://github.com/magento/magento2/issues/39891) - [GitHub code contribution](https://github.com/magento/magento2/pull/39882)_
* __FPC not work when login__
  _AC-14999 - [GitHub issue](https://github.com/magento/magento2/issues/40007) - [GitHub code contribution](https://github.com/magento/magento2/commit/)_
* __[Issue] improve error handling SchemaBuilder__
  This PR improves the error message handling of db schema. It helps us to identify issue without heavy debugging.
  _AC-15020 - [GitHub issue](https://github.com/magento/magento2/issues/39816) - [GitHub code contribution](https://github.com/magento/magento2/pull/39799)_
* __Integration Test failure on SYNC PR for 2.4.9-alpha2-develop due to CliStateTest modification__
  _AC-15136 - [GitHub code contribution](https://github.com/magento/magento2/commit/2d0f8066)_
* __PHP8.1 type bugfix__
  The associated products are now initialized to an empty array instead of false when the strict processing mode is not active or when product information is available. This change ensures that the subsequent logic handling associated products behaves consistently, improving stability and predictability in the product preparation process.
  _AC-6017 - [GitHub issue](https://github.com/magento/magento2/issues/35808) - [GitHub code contribution](https://github.com/magento/magento2/pull/35842)_
* __[Issue] Remove forbidden `@author` tag from framework (part 3)__
  The system now adheres to the coding standards by removing the forbidden `@author` tag from certain modules, enhancing the overall code quality. Previously, the presence of this tag in some modules was in violation of the established coding standards.
  _AC-8343 - [GitHub issue](https://github.com/magento/magento2/issues/37270) - [GitHub code contribution](https://github.com/magento/magento2/pull/37020)_
* __[Issue] Use constructor property promotion in module send friend graph ql__
  The system now utilizes constructor property promotion in the &apos;send friend&apos; GraphQL module, enhancing code readability and reducing complexity. Previously, the module used properties that occupied numerous lines, making the code more complex and less readable.
  _AC-8346 - [GitHub issue](https://github.com/magento/magento2/issues/37235) - [GitHub code contribution](https://github.com/magento/magento2/pull/37197)_
* __[Issue] Remove forbidden `@author` tag from `Magento_Downloadable`__
  The system now adheres to the coding standards by removing the forbidden `@author` tag from certain modules, enhancing the overall code quality. Previously, the presence of this tag in some modules was in violation of the established coding standards.
  _AC-8355 - [GitHub issue](https://github.com/magento/magento2/issues/37251) - [GitHub code contribution](https://github.com/magento/magento2/pull/37001)_
* __[Issue] Remove forbidden `@author` tag__
  The system now adheres to coding standards by removing the forbidden `@author` tag from certain modules, enhancing code quality and consistency. Previously, the presence of this tag in some modules was in violation of the established coding standards.
  _AC-8358 - [GitHub issue](https://github.com/magento/magento2/issues/37264) - [GitHub code contribution](https://github.com/magento/magento2/pull/37014)_
* __[Issue] Remove forbidden `@author` tag__
  The system now adheres to coding standards by removing the forbidden `@author` tag from certain modules, enhancing the overall code quality. Previously, the presence of this tag in some modules was in violation of the established coding standards.
  _AC-8360 - [GitHub issue](https://github.com/magento/magento2/issues/37261) - [GitHub code contribution](https://github.com/magento/magento2/pull/37011)_
* __[Issue] Remove forbidden `@author` tag__
  The system now adheres to the coding standards by removing the forbidden `@author` tag from certain modules, ensuring cleaner and more standardized code. Previously, the presence of this tag in some modules was in violation of the established coding standards.
  _AC-8361 - [GitHub issue](https://github.com/magento/magento2/issues/37260) - [GitHub code contribution](https://github.com/magento/magento2/pull/37010)_
* __[Issue] Remove forbidden `@author` tag__
  The system now adheres to the coding standards by removing the forbidden `@author` tag from certain modules, enhancing the overall code quality. Previously, the presence of this tag in some modules was in violation of the established coding standards.
  _AC-8363 - [GitHub issue](https://github.com/magento/magento2/issues/37258) - [GitHub code contribution](https://github.com/magento/magento2/pull/37008)_
* __[Issue] Remove forbidden `@author` tag__
  The system now adheres to the coding standards by removing the forbidden `@author` tag from certain modules, enhancing the overall code quality. Previously, the presence of this tag in some modules was in violation of the established coding standards.
  _AC-8375 - [GitHub issue](https://github.com/magento/magento2/issues/37257) - [GitHub code contribution](https://github.com/magento/magento2/pull/37007)_
* __[Issue] Remove forbidden `@author` tag__
  The system now adheres to the coding standards by removing the forbidden `@author` tag from certain modules, enhancing the overall code quality. Previously, the presence of this tag in some modules was in violation of the established coding standards.
  _AC-8376 - [GitHub issue](https://github.com/magento/magento2/issues/37256) - [GitHub code contribution](https://github.com/magento/magento2/pull/37006)_
* __[Issue] Remove forbidden `@author` tag__
  The system now adheres to the coding standards by removing the forbidden `@author` tag from certain modules, enhancing the overall code quality. Previously, the presence of this tag in some modules was in violation of the established coding standards.
  _AC-8400 - [GitHub issue](https://github.com/magento/magento2/issues/37254) - [GitHub code contribution](https://github.com/magento/magento2/pull/37004)_
* __[Issue] Remove forbidden `@author` tag__
  The system now adheres to the coding standards by removing the forbidden `@author` tag from certain modules, enhancing the overall code quality. Previously, the presence of this tag in some modules was in violation of the established coding standards.
  _AC-8401 - [GitHub issue](https://github.com/magento/magento2/issues/37255) - [GitHub code contribution](https://github.com/magento/magento2/pull/37005)_
* __[Issue] Improve Extensibility of Service URL Generation__
  The system now allows for customization of the Service URL Generation function via plugins, promoting a more maintainable approach to modifications. Previously, customization of this function was achieved through preferences, which may not have been as efficient or maintainable.
  _AC-8813 - [GitHub issue](https://github.com/magento/magento2/issues/37404) - [GitHub code contribution](https://github.com/magento/magento2/pull/37403)_
* __Issue with upgrade 2.4.7-p5 due to added new validation__
  Fixed an issue in the SchemaBuilder class where an undefined array key &quot;column&quot; caused a crash during schema creation or updates. This occurred when processing table data that did not include a &quot;column&quot; key.
  _ACP2E-3871 - [GitHub code contribution](https://github.com/magento/magento2/commit/9ad7d277)_
* __PHP8.4 Deprecation Error: E_USER_ERROR after Upgrade to Adobe Commerce 2.4.8__
  *NO RELEASE NOTES ARE REQUIRED*
Customer-facing scenarios are not affected by the fix.
  _ACP2E-3963 - [GitHub code contribution](https://github.com/magento/magento2/commit/7accebfa)_

### Framework, Search

* __Opensearch 2.19.1 illegal_argument_exception on one-priced categories__
  Opensearch is no longer throwing an illegal_argument_exception on the categories containing all products with the same price. Previously, it has this exception &quot;[from] parameter cannot be negative&quot;.
  _ACP2E-3896 - [GitHub code contribution](https://github.com/magento/magento2/commit/3ad96f6a)_

### GraphQL

* __Wishlist items are not shared between stores views within one website in GraphQL request__
  Prior to the fix, wishlist items were filtered by store id. Now, after the fix, wishlist items are filtered by website.
  _ACP2E-3987 - [GitHub code contribution](https://github.com/magento/magento2/commit/2a252ae6)_

### GraphQL, Product

* __Product graphql missing media_type in MediaGalleryInterface__
  The MediaGallery GraphQL request now includes the &quot;types&quot; field for product image types. Previously, this &quot;types&quot; field did not exist in the MediaGallery GraphQL request.
  _ACP2E-3880 - [GitHub code contribution](https://github.com/magento/magento2/commit/3ad96f6a)_

### Inventory / MSI

* __No store is available after redirecting to home page and checkout__
  Previously selected store will now be pre-selected in the “Pick in Store” shipping if the customer navigates to the payment page, then returns to the home page, and finally returns to the checkout page. Previously, after repeatedly returning to the checkout page, the selected store in the “Pick in Store” would be cleared.
  _ACP2E-3793 - [GitHub code contribution](https://github.com/magento/magento2/commit/a20a6ff2) - [GitHub code contribution](https://github.com/magento/inventory/commit/62c0d79b)_

### Order

* __AbstractAddress setData(&apos;custom_attributes&apos;, AttributeValue[]) breaks customAttributes__
  _AC-10568 - [GitHub issue](https://github.com/magento/magento2/issues/31644)_
* __v2.4.7-p1 Magento reorder -1 order numbers__
  The system is working as expected and after reorder from the backend the order number will be unique 8 digits
  _AC-12854 - [GitHub issue](https://github.com/magento/magento2/issues/39089) - [GitHub code contribution](https://github.com/magento/magento2/pull/39399)_
* __Losing product custom option file upload when checking out with Adobe credit card payment method__
  _AC-14306 - [GitHub issue](https://github.com/magento/magento2/issues/39647)_
* __Order status stuck on Processing__
  Prior to the fix, when ordering a bundle product with &quot;Ship toghether&quot; option enabled, the order status did not automatically switch to &quot;complete&quot; after invoice and shipment. Now, after the fix, the order status automatically switches to &quot;complete&quot; after the order has been invoiced and shipped.
  _ACP2E-3947 - [GitHub code contribution](https://github.com/magento/magento2/commit/2a252ae6)_
* __[Cloud]Magento OOTB code - Email Template Setup issue__
  Prior to the fix, when using async email sending, shipment emails were incosisten with the store order. Now, after the fix, the proper store shipment email order is delivered.
  _ACP2E-3998 - [GitHub code contribution](https://github.com/magento/magento2/commit/462ede94)_

### Other Developer Tools

* __[Issue] Wrong type hint for the protected member $_urlHelper__
  The system now Fixes the wrong type hint with the correct one, that is also used in constructor
  _AC-10716 - [GitHub issue](https://github.com/magento/magento2/issues/32503) - [GitHub code contribution](https://github.com/magento/magento2/pull/32496)_

### Performance

* __[Issue] Update Store.php__
  This PR improves performance by skipping current store resolution.
  _AC-14791 - [GitHub issue](https://github.com/magento/magento2/issues/39949) - [GitHub code contribution](https://github.com/magento/magento2/pull/38717)_

### Pricing

* __Price is always 0 for bundle product items without dynamic price in order rest API__
  _AC-11925 - [GitHub issue](https://github.com/magento/magento2/issues/38687) - [GitHub code contribution](https://github.com/magento/magento2/commit/7da46f52)_

### Product

* __Percentage discount on tier price and catalog price rule calculated on original price without selected options.__
  _AC-12004 - [GitHub issue](https://github.com/magento/magento2/issues/38750)_
* __Magento 2.4.7 minAllowed missing product order qty__
  The system is working fine and page source is showing correctly the min qty of the product
  _AC-12909 - [GitHub issue](https://github.com/magento/magento2/issues/39142) - [GitHub code contribution](https://github.com/magento/magento2/pull/39480)_
* __Issue with the Customizable Options grid on the product page in the admin panel__
  The system is working as expected when we are creating a customisable options with type dropdown
  _AC-14003 - [GitHub issue](https://github.com/magento/magento2/issues/39640) - [GitHub code contribution](https://github.com/magento/magento2/pull/39694)_
* __All items from other customers compare lists are assigned to the customer after logging in via the admin__
  Previously, when an admin used the &quot;Login as Customer&quot; feature in the backend, products from the compare list of a previously logged-in customer were incorrectly assigned to the currently impersonated customer.  After the fix the compare list loads correctly for the correct logged-in customer.
  _ACP2E-3818 - [GitHub code contribution](https://github.com/magento/magento2/commit/462ede94)_

### SEO

* __Update product url_key via REST API does not generate a 301 URL Rewrite__
  When updating the URL key of the product via the REST API, with the &quot;Create Permanent Redirect for URLs if URL Key Changed&quot; setting set to Yes, the product URL rewrites are create a redirect from old URL to a new one.
  _ACP2E-3900 - [GitHub code contribution](https://github.com/magento/magento2/commit/462ede94)_

### Security

* __Bundled/Merged JS not part of SRI Hashes__
  Prior to the fix generated bundle or merged files were not being added to SRI hashes list. Now, the files are being proprly added to the SRI hashes.
  _ACP2E-3854 - [GitHub code contribution](https://github.com/magento/magento2/commit/4ca73607)_

### Shipping

* __[QUANS] - Does Magento_Fedex core module check for a valid-active token before sending a request to get a new one?__
  Adobe Commerce is no long make many requests to FedEx API service for the access token. Previously, even though the access token is still valid, Adobe Commerce always make new requests to FedEx API which caused a rate limiting issue.
  _ACP2E-3930 - [GitHub code contribution](https://github.com/magento/magento2/commit/4ca73607)_

### Staging & Preview

* __Not able to preview Scheduled Product update with Category Permissions enabled__
  Prior to the fix a future to be enabled product was not being displayed in preview mode. Now it will be displayed even if the current status is disabled.
  _ACP2E-3786 - [GitHub code contribution](https://github.com/magento/magento2/commit/7accebfa)_
* __Missing validation for Catalog Price rule discount amount field__
  Previously, the discount_amount field in the staging schedule update was not validated correctly with the current validation rules. However, after applying the fix, the discount_amount field will be validated appropriately.
  _ACP2E-3867 - [GitHub code contribution](https://github.com/magento/magento2/commit/462ede94)_

### Tax

* __Wrong Order total, the round is not applied to the price calculation.__
  The system is now correctly handles when calculating the price_after_discount, discount_amount and taxes amount.
the actual total of the order
  _AC-11389 - [GitHub issue](https://github.com/magento/magento2/issues/38455) - [GitHub code contribution](https://github.com/magento/magento2/pull/39687)_

### Test framework

* __[Issue] Ignore lib/internal/Magento/Framework/App/Test/Unit/_files/app/etc/en…__
  The system now ignores the file &apos;env.php&apos; that gets generated when running unit tests, ensuring that the git status remains clean after running tests. Previously, running unit tests would generate a new file &apos;env.php&apos;, causing the git status to show a new file found and making it appear dirty.
  _AC-13293 - [GitHub issue](https://github.com/magento/magento2/issues/39304) - [GitHub code contribution](https://github.com/magento/magento2/pull/37631)_
* __[Issue] Fix integration test issue with interceptor__
  The system now correctly identifies and handles the \Magento\TestFramework\App\Config\Interceptor in the integration test, ensuring that the test can access the necessary data even when a plugin on the class exists. Previously, the system failed to account for the possibility of the \Magento\TestFramework\App\Config being a \Magento\TestFramework\App\Config\Interceptor, resulting in an error when attempting to access the $data property.
  _AC-13305 - [GitHub issue](https://github.com/magento/magento2/issues/39324) - [GitHub code contribution](https://github.com/magento/magento2/pull/37187)_
* __[Issue] MFTF: Submitting Email To Friend Form with enabled captcha__
  The test case addresses the functionality of the &quot;Email to Friend&quot; form when CAPTCHA is enabled, ensuring that the form submission process works correctly with both incorrect and correct CAPTCHA values.
  _AC-13492 - [GitHub issue](https://github.com/magento/magento2/issues/39462) - [GitHub code contribution](https://github.com/magento/magento2/pull/32830)_
* __[TestFramework] Usages of TestCase::getTestResultObject are invalid since phpunit v10__
  _AC-13502 - [GitHub issue](https://github.com/magento/magento2/issues/39463)_
* __Environment specific unit tests failures in AC 2.4.7-p3__
  This issue fixes unit test failures that are not reproducing on all versions and environments. Previously to the fix some unit tests failed due different library versions or due to missing functionality added in a later version.
  _ACP2E-3712 - [GitHub code contribution](https://github.com/magento/magento2/commit/9ad7d277)_

### UI Framework

* __WYSIWYG is empty in dynamic rows__
  _AC-12336 - [GitHub issue](https://github.com/magento/magento2/issues/38893) - [GitHub code contribution](https://github.com/magento/magento2/commit/7bdafaa2)_
* __[Issue] Fix mime type typo__
  The system correctly handles and fixed the mime type and typo for gif image
  _AC-8001 - [GitHub issue](https://github.com/magento/magento2/issues/36899) - [GitHub code contribution](https://github.com/magento/magento2/pull/36669)_
* __[Issue] Avoid direct access to reviews list Ajax__
  The system correctly handles and Avoid direct access to reviews list Ajax
  _AC-9381 - [GitHub issue](https://github.com/magento/magento2/issues/37920) - [GitHub code contribution](https://github.com/magento/magento2/pull/33876)_

### Upgrades - Upgrade Compatibility Tool

* __Deprecated Functionality: Creation of dynamic property Magento\Framework\Acl::$_roleRegistry__
  _AC-12343 - [GitHub issue](https://github.com/magento/magento2/issues/37469)_
