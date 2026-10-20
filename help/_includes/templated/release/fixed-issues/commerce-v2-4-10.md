# Adobe Commerce fixed issues (v2.4.10-alpha1)

## Fixed issues in v2.4.10-alpha1

We have fixed 169 issues in the Adobe Commerce 2.4.10-alpha1 core code. A subset of the fixed issues included in this release is described below.

### APIs

#### [Issue] TypeError in Creditmemo\Validation\QuantityValidator caused by min() with string quantity

To stabilize financial logging pipelines and prevent API request failures during bulk automated order refunds, data type casting guardrails have been added to the internal sales credit memo factory and validation layers.

_AC-16056 - [GitHub issue](https://github.com/magento/magento2/issues/40302) - [GitHub code contribution](https://github.com/magento/magento2/pull/40429) - [GitHub code contribution](https://github.com/magento/magento2/pull/40303)_

#### REST API Attribute Update fails without attribute_id

Fixed an issue where updating an existing product attribute through the REST API failed when attribute_id was not provided. The API now correctly identifies the attribute using the attribute_code from the URL and updates it successfully.

_AC-16424 - [GitHub issue](https://github.com/magento/magento2/issues/40458) - [GitHub code contribution](https://github.com/magento/magento2/commit/c10554e1)_

#### Show an authentication error when Adobe Stock credentials are invalid

Admins now see an authentication error when Adobe Stock credentials are invalid.

_AC-17123_

#### Visual Swatch is deleted when updating option through REST API

To protect catalog data integrity and streamline automated integrations, a bug has been resolved in the EAV Swatch management layer where existing visual or textual swatch values were inadvertently wiped out during standard option updates.

_AC-9199 - [GitHub issue](https://github.com/magento/magento2/issues/37794) - [GitHub code contribution](https://github.com/magento/magento2/pull/40872)_

#### Bulk tier price API fails entire batch when one SKU is missing

Previously, the bulk tier price update API (POST /V1/products/tier-prices) failed the entire request when any SKU in the payload did not exist, leaving valid SKUs without updates. Now, valid SKUs are processed successfully while missing SKUs are reported as per-item errors, so a single bad entry no longer aborts the whole batch.

_ACP2E-4998 - [GitHub code contribution](https://github.com/magento/magento2/commit/51f6d191)_

#### Attribute update fails with label Value matching with existing Option value ID

Fixed the issue where a new dropdown/multiselect product attribute option could not be created via the REST API when its label matched an existing option's ID. Previously, the API returned an "already exists" error (and could return the wrong option ID) even though the same option could be created successfully through the Admin UI.

_ACP2E-5107 - [GitHub code contribution](https://github.com/magento/magento2/commit/4d0357d7)_

### APIs, Import and export

#### REST API allows negative product prices while Admin UI blocks them

Product import via the REST API endpoint now rejects negative values for price-type attributes (price, special_price, cost, and related MSRP fields), consistent with the behavior of the Admin UI import. Previously, the API accepted negative prices silently and persisted them.

_ACP2E-4941 - [GitHub code contribution](https://github.com/magento/magento2/commit/08b91f1a)_

### APIs, Order

#### Order Rate Limit feature incompatible with Valkey cache backend

Previously to this fix rate limiting was silently bypassed and each request was allowed through regardless of the configured limit. After the fix, requests exceeding the configured limit are correctly rejected with HTTP 429.

_ACP2E-4899 - [GitHub code contribution](https://github.com/magento/magento2/commit/9b6a8bd9)_

### Account

#### [Issue] fix: login form incorrect password label

Fixed an issue where the Password field on the customer login page had an incorrect label association. The password label now correctly targets the Password field, allowing it to be identified properly by automated testing tools.

_AC-16193 - [GitHub issue](https://github.com/magento/magento2/issues/40353) - [GitHub code contribution](https://github.com/magento/magento2/commit/64eb754d)_

#### [Issue] Validate frontend input type for file uploads

Customer address file uploads now validate that the target attribute's input type is file or image before processing, so text and other non-file attributes cannot be abused as upload targets. Invalid upload attempts return a clear validation error instead of failing unpredictably or accepting disallowed file types.

_AC-17076 - [GitHub issue](https://github.com/magento/magento2/issues/40795) - [GitHub code contribution](https://github.com/magento/magento2/pull/40583)_

#### Customer token generated on website A can be used on website B in website-scoped customer configuration

To enforce strict customer data isolation on multi-website instances, a security gap has been resolved in the GraphQL authentication layer where tokens were being incorrectly validated across separate boundaries.

_AC-17299 - [GitHub issue](https://github.com/magento/magento2/issues/40847) - [GitHub code contribution](https://github.com/magento/magento2/pull/40858)_

#### [Issue] Fix PHP 8.5 deprecation: Using null as the key parameter for array_key_exists()

Fixed an issue on PHP 8.5 where customer login during guest checkout failed due to a deprecated array_key_exists() call with a null key. Customer login now works successfully without generating the deprecation error.

_AC-17395 - [GitHub issue](https://github.com/magento/magento2/issues/40875) - [GitHub code contribution](https://github.com/magento/magento2/commit/515d3dd3)_

#### [Issue] magento/magento2: Add i18 translations to requestPasswordResetEmail and resetPassword GraphQL mutations

To ensure a fully localized headless storefront experience, internationalization (i18n) translation capabilities have been added to the customer account recovery API endpoints

_AC-9356 - [GitHub issue](https://github.com/magento/magento2/issues/29658) - [GitHub code contribution](https://github.com/magento/magento2/pull/28950)_

### Admin UI

#### Dashboard should show Last 7 days by default when aggregate data is used

Fixed an issue where the Dashboard showed Today by default when aggregated sales data was enabled. The Dashboard now shows Last 7 days by default when using aggregated data.

_AC-13799 - [GitHub issue](https://github.com/magento/magento2/issues/28152) - [GitHub code contribution](https://github.com/magento/magento2/commit/29a7cdbe)_

#### FPT value in cart page and product page are different for same configurations for a simple product

Fixed an issue where Fixed Product Tax (FPT) values were displayed differently on product and cart pages for the same tax configuration. FPT values are now displayed consistently across the product, catalog, mini cart, and shopping cart pages.

_AC-17007 - [GitHub code contribution](https://github.com/magento/magento2/commit/ecbeba3a)_

#### Lazy configuration implementation

Performance optimization that improves configuration loading performance by lazily resolving scoped system configuration data while preserving existing configuration behavior.

_ACP2E-4751 - [GitHub code contribution](https://github.com/magento/magento2/commit/65f660bd)_

#### HugeRTE editor blocks emojis - javascript validation failed

Fixed the issue where HugeRTE blocked saving content containing utf8mb4 emojis (e.g. 🔵⚪🔴) when editing inside PageBuilder content-type modals (Text, Banner, Slide). Previously, the wysiwyg validation config for these modal forms resolved `allowUtf8mb4` to `false`, causing the editor to reject 4-byte UTF-8 characters even on installations where the database fully supports utf8mb4.

_ACP2E-4822 - [GitHub code contribution](https://github.com/magento/magento2-page-builder/commit/f2691e17)_

#### Restricted admin cannot delete customers post-upgrade

Fixed an issue where restricted admin cannot delete customers after upgrade, with a red banner at the top of the customer grid saying: "More permissions are needed to view this item."

_ACP2E-4838_

#### Admin is logged out when viewing customers with large address books in customer edit page in Admin Panel

Fixed an issue when Admin is logged out when viewing customers with large address books in customer edit page in Admin Panel

_ACP2E-4875 - [GitHub code contribution](https://github.com/magento/magento2/commit/b63925d9)_

#### Orders do not appear in Sales Grid

Fixed an issue where new orders were delayed in appearing in the Sales grids when asynchronous grid indexing was enabled, due to the reconciliation cursor resetting once it caught up to the most recent entity. New entries now appear in the grid on the next cron run.

_ACP2E-4893 - [GitHub code contribution](https://github.com/magento/magento2/commit/b63925d9)_

#### [Cloud] Missing Assigned Products filter in Category Product Grid when Magento_VisualMerchandiser is enabled

Fixed the issue where the "Assigned" filter was missing from the Add Products modal Search All Products grid when Visual Merchandiser is enabled. Previously, admin users had no way to filter products by their assigned/unassigned status in that modal, making it difficult to identify which products were already in the category.

_ACP2E-4974_

#### Action Log does not display Return Number/Return ID for return-related actions

Fixed the issue where the Return Number/Return ID was not displayed in Action Log entries for return-related admin actions. Previously, actions such as viewing or saving an RMA were recorded in the Action Log without any return identifier, unlike order-related actions which correctly showed the Order Number.

_ACP2E-5050_

#### "Use Default Value" unchecked for Price and Tax Class on Admin product save at store-view scope

Restricted admin users can now save products at store-view scope without losing the "Use Default Value" state for Price, Status, and Tax Class attributes. Previously, saving a product as a restricted admin (with price and status editing denied) would silently uncheck "Use Default Value" for those fields, causing store-view-level overrides to be written even when none were intended.

_ACP2E-5081_

### Admin UI, Order

#### Incorrect price shown for grouped product in Admin Create Order when two grouped products share the same simple product

Fixed an issue where the price of a grouped product in Admin Create Order was incorrectly calculated when two grouped products sharing the same simple product were both configured without being added to the cart.

_ACP2E-4965 - [GitHub code contribution](https://github.com/magento/magento2/commit/08b91f1a)_

### Admin UI, UI Framework

#### Magento2 redirects to homepage instead of showing error with wrong menu declaration

To optimize the extension development workflow and ensure stable backend loading, a structural routing defect has been resolved where invalid admin menu declarations triggered silent browser loop failures instead of displaying actionable diagnostic messages.

_AC-7543 - [GitHub issue](https://github.com/magento/magento2/issues/36632) - [GitHub code contribution](https://github.com/magento/magento2/pull/40881)_

### Analytics / Reporting

#### [QUANS] Can it be possible to display the customer email ID and name in the Customer KPI Table under Advanced Reporting

Adobe Commerce now includes the customer first, middle, and last name in the data exported to Advanced Reporting, allowing the Customer KPI Table to display the customer name. Previously, only an encoded customer identifier was exported, so merchants could not identify customers by name in Advanced Reporting.

_ACP2E-3928 - [GitHub code contribution](https://github.com/magento/magento2/commit/4d0357d7)_

#### Heavy INSERT on sales_bestsellers_aggregated_monthly

Improved performance for aggregate_sales_report_bestsellers_data cron.

_ACP2E-4559 - [GitHub code contribution](https://github.com/magento/magento2/commit/8d95ae6e)_

#### Add to Cart event payload is in the legacy Universal Analytics Enhanced Ecommerce format instead of the GA4 ecommerce format.

Before the fix, ecommerce events sent to Google Analytics 4 through Google Tag Manager used the legacy Universal Analytics format and were missing several checkout events. After the fix, all ecommerce events use the correct GA4 format and the full checkout funnel is tracked.

_ACP2E-5176 - [GitHub code contribution](https://github.com/magento/magento2/commit/24667df1)_

### B2B

#### placeNegotiableQuoteOrderV2 returns total.total_shipping = null for orders placed from a negotiable quote

Fixed an issue where placeNegotiableQuoteOrderV2 returned a null shipping total for orders placed from a negotiable quote with paid shipping. The API now correctly returns the shipping amount, matching the shipping charge included in the order total.

_AC-18083_

#### [B2B] Missing Bundle Option Prices in Quote Details After Quote Is Converted to Order

Fixed an issue where bundle product option prices were missing on the negotiable quote detail page after the quote was converted to an order.

_ACP2E-5055_

### B2B, Order

#### Help on cleaning 59M+ quote tables (sales_clean_quotes is unable to run)

Fixed the issue where the `sales_clean_quotes` cron job timed out on instances with large quote tables. Previously, the cleanup query selected all columns from the `negotiable_quote` table unnecessarily, causing MySQL to perform a full filesort on millions of rows; and each quote was deleted individually via the PHP model layer, compounding the performance cost.

_ACP2E-4891 - [GitHub code contribution](https://github.com/magento/magento2/commit/b63925d9)_

### Cart & Checkout

#### Add to cart notification for related products

Fixed an issue where the Add to Cart notification did not include the related product when adding a product and its related product together.
The notification now displays the names of both products added to the cart.

_AC-11976 - [GitHub issue](https://github.com/magento/magento2/issues/27164) - [GitHub code contribution](https://github.com/magento/magento2/commit/515d3dd3)_

#### [Issue] Update CartRepositoryInterface.php

Updated CartRepositoryInterface.php to declare the exceptions that can be thrown when saving a cart. This keeps the interface consistent with the underlying cart save implementation.

_AC-13323 - [GitHub issue](https://github.com/magento/magento2/issues/39328) - [GitHub code contribution](https://github.com/magento/magento2/commit/29a7cdbe)_

#### [Bug] Company field in shipping address is set to null in multi-store setup when adding a new address during the checkout shipping step

Fixed an issue where the Company field was not saved when customers added a new shipping address during checkout in a multi-store setup. The Company value is now correctly saved in the quote, placed order, and customer address book.

_AC-13456 - [GitHub issue](https://github.com/magento/magento2/issues/39424) - [GitHub code contribution](https://github.com/magento/magento2/commit/515d3dd3)_

#### Paypal > Customer data mismatch (prefix, firstname, lastname)

Fixed an issue where customer name details were mapped incorrectly during the PayPal SEPA checkout flow. Prefix, First Name, and Last Name are now populated correctly in the order without any mismatch.

_AC-15366 - [GitHub issue](https://github.com/magento/magento2/issues/39061) - [GitHub code contribution](https://github.com/magento/magento2/commit/ecbeba3a)_

#### Incorrect free_shipping flag for virtual products

Fixed an issue where the free_shipping flag was set incorrectly for virtual products when multiple items were added to the cart. The flag is now correctly set for all items when the applicable free shipping rule is applied.

_AC-15648 - [GitHub issue](https://github.com/magento/magento2/issues/40184) - [GitHub code contribution](https://github.com/magento/magento2/commit/c10554e1)_

#### Guest add-to-cart: mini-cart / customer-data "cart" section under-reports cart as empty despite item being correctly persisted

Fixed an issue where the guest mini-cart did not reflect items immediately after adding a product to the cart. The mini-cart counter and dropdown now correctly update, and added products are displayed in the cart as expected.

_AC-17973 - [GitHub code contribution](https://github.com/magento/magento2/commit/2b218686)_

#### AJAX add-to-cart inline error messages lost role="alert" semantics

Fixed an issue where AJAX add-to-cart error messages were visible on the storefront but were not announced by screen readers. Add-to-cart errors are now displayed within an accessible role="alert" region for proper accessibility support.

_AC-18036 - [GitHub code contribution](https://github.com/magento/magento2/commit/2b218686)_

#### Discard subsequent rules for shipping amount

To ensure accurate promotional pricing and strict compliance with configured discount rules, a flaw in the shopping cart price rules calculator has been resolved where lower-priority shipping discounts were incorrectly applied

_AC-9612 - [GitHub issue](https://github.com/magento/magento2/issues/37985) - [GitHub code contribution](https://github.com/magento/magento2/pull/40869)_

#### Duplicate orders created even though the error is triggered

Fixed an issue where orders could still be placed with an invalid customer address

_ACP2E-4774 - [GitHub code contribution](https://github.com/magento/magento2/commit/8d95ae6e)_

#### Configurable Product's performance impact on checkout (totals-information, estimate-shipping-modules)

Before the fix, checkout requests such as totals-information and estimate-shipping-methods could become significantly slower for configurable products with many child products when the first salable child appeared late in the child list. After the fix, this performance degradation no longer occurs, and response times remain consistent regardless of the position of the first salable child.

_ACP2E-4805 - [GitHub code contribution](https://github.com/magento/inventory/commit/30fbdb0f)_

#### Cart totals recalculated on every cart page view

Optimized cart totals requests on cart page. Cart totals recalculated twice on every cart page view.

_ACP2E-4817 - [GitHub code contribution](https://github.com/magento/magento2/commit/b63925d9)_

#### Customer Address Attribute (EAV) City and Street validation rules conflicts with hardcoded validation rules.

Fixed an issue where the city validator incorrectly rejected valid city names longer than 100 characters (database limit is 255), and where street addresses longer than 255 characters could be silently truncated in the database without    
  returning a validation error. Both validators now enforce limits aligned with the narrowest database column constraint across all address tables.

_ACP2E-4861 - [GitHub code contribution](https://github.com/magento/magento2/commit/b63925d9)_

#### [Storefront] Add-to-cart "requested qty is not available" message intermittently not rendered on PDP

Fixed the issue where the stock unavailability message ("The requested qty is not available, please reduce the quantity.") was intermittently not displayed on the product detail page after a failed Add to Cart attempt. Previously, the page could refresh silently with no error feedback when a shopper repeatedly clicked Add to Cart for a product whose available stock was already fully reserved in their cart.

_ACP2E-5071 - [GitHub code contribution](https://github.com/magento/magento2/commit/8d70f246)_

#### Persistent shopping cart cleared on natural session expiry when Clear Persistence on Log Out = Yes

Fixed the issue where the persistent shopping cart was cleared when the browser session expired. Previously, with Clear Persistence on Log Out enabled, an expired session emptied the cart and removed the persistent cookie even though the shopper had not logged out.

_ACP2E-5088 - [GitHub code contribution](https://github.com/magento/magento2/commit/597c7211)_

#### Guest quote customer_email not resynced from billing address after restoreQuote() when retrying checkout

Fixed an issue where retrying a failed guest checkout placed the order with the previously entered email instead of the updated one.

_ACP2E-5188 - [GitHub code contribution](https://github.com/magento/magento2/commit/597c7211)_

### Cart & Checkout, GraphQL

#### The Quote GraphQL API may assign currency objects instead of ISO currency codes to quote fields

Updated the Quote GraphQL API to assign ISO currency codes to a quote's store and quote currency fields instead of assigning currency objects.

_ACP2E-5229 - [GitHub code contribution](https://github.com/magento/magento2/commit/24667df1)_

### Catalog

#### [Issue] module.xml file improvements for Magento_ConfigurableProductGraphQl, Magento_MsrpConfigurableProduct, Magento_NewRelicReporting & Magento_Swatches modules.

Optimized the module declaration architecture by removing redundant Magento_Catalog dependencies from four core sub-modules. This cleanup addresses unnecessary duplication in the dependency tree, streamline module loading order calculations, and improves long-term framework maintainability without introducing breaking changes.

_AC-10762 - [GitHub issue](https://github.com/magento/magento2/issues/30675) - [GitHub code contribution](https://github.com/magento/magento2/pull/30638)_

#### Possible memory leak in getUsedProducts function for configurables

Fixed an issue where processing multiple configurable products caused execution time and memory usage to increase over time.
Configurable products can now be processed without the progressive slowdown and memory increase.

_AC-10942 - [GitHub issue](https://github.com/magento/magento2/issues/37639) - [GitHub code contribution](https://github.com/magento/inventory/commit/8c058c2e)_

#### Shop By Category filter visible on non-anchor categories

Fixed an issue where the Shop By Category filter was displayed on non-anchor categories even when the category filter was disabled in Admin.
The filter is now hidden on the storefront according to the configured setting.

_AC-10945 - [GitHub issue](https://github.com/magento/magento2/issues/38379) - [GitHub code contribution](https://github.com/magento/magento2/commit/64eb754d)_

#### Data Type of applied_rule_ids in Quote and Quote Item is different

To ensure absolute database schema consistency and prevent critical cart data mismatches on high-volume promotional stores, the data column tracking active promo definitions has been expanded across parent checkout structures.

_AC-14518 - [GitHub issue](https://github.com/magento/magento2/issues/39838) - [GitHub code contribution](https://github.com/magento/magento2/pull/40540)_

#### Unable to get product collection scoped `decimal` attribute if price is globally scoped

To ensure precise storefront pricing and attribute rendering on international setups, a core data collection bug has been resolved where store-specific decimal values were erroneously replaced by default global values.

_AC-15806 - [GitHub issue](https://github.com/magento/magento2/issues/40218) - [GitHub code contribution](https://github.com/magento/magento2/pull/40419)_

#### Incorrect handling of the GET params

To improve platform stability and safeguard the checkout funnel, a block-level input validation layer has been added to prevent malformed URL queries from crashing storefront product pages.

_AC-16262 - [GitHub issue](https://github.com/magento/magento2/issues/40405) - [GitHub code contribution](https://github.com/magento/magento2/pull/40433)_

#### Magento\SalesRule\Model\Plugin\QuoteConfigProductAttributes::afterGetProductAttributes getting triggered on all Cart Queries

To reduce database execution strains and eliminate unoptimized database hits during customer checkouts, the sales rule product configuration plugin has been optimized to execute conditionally and leverage caching structures.

_AC-16559 - [GitHub issue](https://github.com/magento/magento2/issues/40226) - [GitHub code contribution](https://github.com/magento/magento2/pull/40251)_

#### [Issue] [PHPDOC] Fix functions orderComment in Magento\Sales\Model\Order

To eliminate strict typing restrictions, enhance static analysis accuracy, and improve developer experience under rigorous linting engines like PHPStan (Level 5 or higher), inline structural documentation blocks have been standardized within the sales order core subsystems.

_AC-16759 - [GitHub issue](https://github.com/magento/magento2/issues/39575) - [GitHub code contribution](https://github.com/magento/magento2/pull/39572)_

#### [Issue] [Bug] GraphQL SearchCriteriaValidator not loaded — removed by module-graph-ql di.xml array override

To preserve robust query validation and enforce platform guardrails, a dependency injection (DI) configuration defect has been resolved where the SearchCriteriaValidator layer was being inadvertently disabled.

_AC-16959 - [GitHub issue](https://github.com/magento/magento2/issues/40762) - [GitHub code contribution](https://github.com/magento/magento2/pull/40742)_

#### strpos() expects parameter 1 to be string, array given | magento/module-eav

To protect storefront stability and deliver an uninterrupted customer discovery experience, a critical type-mismatch defect has been resolved within the advanced catalog search processing engines.

_AC-1706 - [GitHub issue](https://github.com/magento/magento2/issues/33588) - [GitHub code contribution](https://github.com/magento/magento2/pull/40422)_

#### Empty quote records are being created when customer visits a page

Visiting product page on the storefront doesn't create empty quote records in some situations.
Previously an empty quote records were created when customer visits a product page on the storefront

_ACP2E-4682 - [GitHub code contribution](https://github.com/magento/magento2/commit/8d95ae6e)_

#### Product details page  "Weight" attribute doesn't show unit suffix in "Additional Information" section

Fixes the issue where the Weight attribute on the Storefront product page displayed only a raw numeric value in the "Additional Information" or "More Information" section without the configured unit of measurement (lbs or kgs).

_ACP2E-4808 - [GitHub code contribution](https://github.com/magento/magento2/commit/b63925d9)_

#### [Cloud] Catalog price rule activation not reflected in Live Search until next force resync — price feed sync delay

Fixed an issue where activating a catalog price rule did not update prices in Live Search until a later force resync. The price feed indexer could run before the catalog rule indexer it depends on had finished, and so exported stale prices. Indexers with unfinished dependencies are now deferred to the next cron run, so the price feed always runs against up-to-date prices.

_ACP2E-5029 - [GitHub code contribution](https://github.com/magento/magento2/commit/ec436b10)_

#### [CLOUD] Adobe Commerce Cloud category rule OR operator logic issue

The Contains operator now accepts multiple comma-separated values, evaluated as an OR match. A single rule row can therefore match any of several terms instead of just one.

_ACP2E-5061_

#### Alt text (label) is not saved for a newly added product image

Fixed an issue where the alt text (label) of a newly uploaded product image was not saved when the uploaded file was renamed on save due to a filename collision in the media gallery. Previously, the image role attributes (image, small_image, thumbnail) were stored correctly, but their corresponding *_label attributes were silently dropped, leaving alt text empty on storefront search and listing pages. The gallery create handler now resolves the renamed file back to its originating image entry, so the label is persisted for all assigned image roles. As a result, alt text entered during product creation is reliably saved and rendered across the storefront.

_ACP2E-5216 - [GitHub code contribution](https://github.com/magento/magento2/commit/24667df1)_

#### PHP 8.5 "null as array offset" deprecation error opening Add Product page in admin when user lacks Edit Product Status resource

Previously, admin users without the "Edit Product Status" permission could encounter a "null as array offset" deprecation error when opening the Add Product page. This has been fixed so the page loads correctly regardless of the user's product status permissions.

_ACP2E-5248 - [GitHub code contribution](https://github.com/magento/magento2/commit/24667df1)_

### Catalog, GraphQL

#### [GraphQl] products query price filter issues with net prices entered in adminhtml

Fixed an issue where the GraphQL products query did not consider tax when applying a price filter.
The price filter now uses the displayed tax-inclusive price, so only products within the specified price range are returned.

_AC-6883 - [GitHub issue](https://github.com/magento/magento2/issues/36337) - [GitHub code contribution](https://github.com/magento/magento2/commit/8b67e8ed)_

### Catalog, Performance

#### [CLOUD] customer_group_excluded_website are not honored by the Catalog Permissions indexing pipeline

Catalog Permissions index now excludes the website that is excluded from the customer group.

_ACP2E-5223_

### Catalog, SEO

#### Category url_path not syncing on url_key change for all store views

Previously, changing a category's URL Key at the "All Store Views" scope could leave store-scoped descendant categories with a stale or incorrectly-prefixed url_path, and editing a category with its own store-specific url_path override could pick up its pre-edit URL Key instead of the newly entered one. This is now fixed — URL Key changes correctly cascade to all store-scoped descendants in the right hierarchical order with the correct parent path, and a category's own store-scoped url_path override is recalculated using its just-changed URL Key, so store-scoped URLs stay accurate immediately after saving.

_ACP2E-5113 - [GitHub code contribution](https://github.com/magento/magento2/commit/597c7211)_

### Cloud, Framework

#### Performance Regression and incorrect cache storage with SymfonyL2 enabled

Fixed an issue where configuring the L1 cache storage path as an absolute path (e.g., /dev/shm) caused it to be silently redirected to the var/ directory, and a separate performance issue where invalidating cache tags on large catalogs could cause significant response time delays due to a blocking Redis operation.

_ACP2E-4989 - [GitHub code contribution](https://github.com/magento/magento2/commit/51f6d191)_

### Content

#### CMS pages created for different websites are displaying wrong pages in frontend

Previously, in multi-website setups where the Website Restriction landing page cache key was not scoped per website, causing the wrong CMS page to be served on the secondary website storefront. The cache key in WebsiteRestriction/Controller/Index/Stub.php now correctly includes the current website ID resolved via the store manager.

_ACP2E-4593_

#### Customer Segment evaluation returns customers from only the first website instead of all assigned websites when Global customer sharing is enabled

Fixed an issue where Customer Segment evaluation returns customers from only the first website instead of all assigned websites when Global customer sharing is enabled.

_ACP2E-5079_

#### Page Builder ajax preview request returns 500 error with translate cache disabled

PageBuilder preview now renders correctly regardless of whether the Translations cache is enabled or disabled. Previously, PageBuilder preview failed to render when the Translations cache was disabled.

_ACP2E-5118 - [GitHub code contribution](https://github.com/magento/magento2-page-builder/commit/606e12fd)_

#### Animated GIF uploads are converted to PNG when Enable Old Media Gallery is enabled

Fixed an issue where animated GIF images uploaded through the media gallery were converted to PNG when the legacy media gallery was enabled. Previously, when Enable Frontend Resize was turned on, animated GIFs uploaded through the Old Media Gallery lost their animation and were saved as static PNG files. Animated GIFs are now uploaded and stored in their original format.

_ACP2E-5232 - [GitHub code contribution](https://github.com/magento/magento2/commit/24667df1)_

### Content / CMS

#### [Issue] Fix the product gallery tab when an image attribute label contains a single quote

To ensure a reliable and uninterrupted catalog management experience in the administration panel, a JavaScript formatting defect has been resolved that completely broke the backend product workspace interface

_AC-16474 - [GitHub issue](https://github.com/magento/magento2/issues/40519) - [GitHub code contribution](https://github.com/magento/magento2/pull/40870)_

#### [Issue] Improve performance when resized image URL is accessed but does not yet exist.

To maximize asset delivery responsiveness, significantly reduce server disk I/O, and prevent severe server processor spikes, the catalog image generation subsystem has been optimized to handle missing media URLs strictly on demand.

_AC-16547 - [GitHub issue](https://github.com/magento/magento2/issues/40399) - [GitHub code contribution](https://github.com/magento/magento2/pull/40388)_

#### Regression: Non UTF-8 encoded URI component still throws "Unable to serialize value" in CatalogWidget on 2.4.7-p5

To eliminate critical rendering failures caused by bad production web traffic, the catalog widget block has been fortified to gracefully handle non-UTF-8 data sequences inside requested URLs.

_AC-17264 - [GitHub issue](https://github.com/magento/magento2/issues/40824) - [GitHub code contribution](https://github.com/magento/magento2/pull/40825)_

#### `Using null as an array offset is deprecated, use an empty string instead` when editing global design config scope

Fixed an issue where editing the Global scope under Content > Design > Configuration returned an HTTP 500 error on PHP 8.5 due to a deprecated null array offset. The Global design configuration now opens successfully without the error.

_AC-17456 - [GitHub issue](https://github.com/magento/magento2/issues/40886) - [GitHub code contribution](https://github.com/magento/magento2/commit/515d3dd3)_

### Framework

#### SELECT from media_storage_file_storage when media DB storage is not in use or disabled

To reduce unnecessary database query overhead and eliminate noisy system exceptions, the media file synchronization layer has been optimized to bypass database storage checks when the system is explicitly configured to use the local filesystem

_AC-10586 - [GitHub issue](https://github.com/magento/magento2/issues/38116) - [GitHub code contribution](https://github.com/magento/magento2/pull/40480)_

#### Fatal error thrown on exception constructor when cookies store is an array

Fixed an issue where an invalid store cookie value caused a PHP fatal error.
Magento now correctly throws an "Invalid store parameter" exception when the store cookie contains an invalid value.

_AC-10888 - [GitHub issue](https://github.com/magento/magento2/issues/38365) - [GitHub code contribution](https://github.com/magento/magento2/commit/7aecc9f1)_

#### [Issue] Use static const in Magento\Customer\Model\Address\Config

Fixed an issue where custom address configuration classes had to duplicate getFormats() to use a custom address template path. Custom address configurations can now define their own template path using a static constant without duplicating the method.

_AC-12906 - [GitHub issue](https://github.com/magento/magento2/issues/39135) - [GitHub code contribution](https://github.com/magento/magento2/commit/29a7cdbe)_

#### Cannot use processFilter on product Collection

Fixed an issue where applying multiple filters to a product collection using FilterProcessor caused a PHP error. Product collections can now be filtered correctly using multiple filter conditions.

_AC-15018 - [GitHub issue](https://github.com/magento/magento2/issues/40014) - [GitHub code contribution](https://github.com/magento/magento2/commit/7aecc9f1)_

#### Potential Indexer Performance issue for large catalogs - Bulk Insert & Locking Entire CL table to identity the latest version

To safeguard database performance on large enterprise-scale catalogs, the system database indexer pipeline has been hardened to parse scheduled data modifications in bounded batches, eliminating high-pressure database locks.

_AC-16238 - [GitHub issue](https://github.com/magento/magento2/issues/40331) - [GitHub code contribution](https://github.com/magento/magento2/pull/40546)_

#### [Issue] Performance Improvement

To eliminate unnecessary memory allocation and reduce runtime processing overhead, several core string manipulation routines have been refactored to utilize optimized PHP native behavior.

_AC-16565 - [GitHub issue](https://github.com/magento/magento2/issues/40383) - [GitHub code contribution](https://github.com/magento/magento2/pull/40375)_

#### [Issue] Fix support for GLOB_BRACE on non-GNU Linux systems

To guarantee seamless deployment capability across lightweight virtualization environments, a critical path discovery bug has been fixed to fully restore execution support for systems utilizing non-GNU libraries, such as Alpine Linux Docker images.

_AC-16568 - [GitHub issue](https://github.com/magento/magento2/issues/40552) - [GitHub code contribution](https://github.com/magento/magento2/pull/40538)_

#### Marketing params added back into query used for built-in FPC identifier creation

To improve cache hit rates and eliminate server performance regressions, a structural flaw has been fixed in the native built-in Full Page Cache (FPC) system where marketing and tracking query parameters were accidentally reintroduced into cache identifier signatures.

_AC-16583 - [GitHub issue](https://github.com/magento/magento2/issues/40350) - [GitHub code contribution](https://github.com/magento/magento2/pull/40349)_

#### Add support for plain objects with promoted properties in message queue communication

To support modern PHP development practices and simplify asynchronous architecture workflows, the framework reflection engine has been enhanced to natively process Data Transfer Objects (DTOs) utilizing public, promoted, and readonly constructor properties.

_AC-16672 - [GitHub issue](https://github.com/magento/magento2/issues/36660) - [GitHub code contribution](https://github.com/magento/magento2/pull/40457)_

#### [Issue] Fix: Real column type introspection skips unsigned/nullable processors, uses defaults

To ensure accurate system setup tracking, a database abstraction defect has been resolved where declarative schema verification commands perpetually reported pending modification changes for DOUBLE UNSIGNED columns lacking explicit precision or scale attributes.

_AC-16758 - [GitHub issue](https://github.com/magento/magento2/issues/40646) - [GitHub code contribution](https://github.com/magento/magento2/pull/40582)_

#### [Feature] Support "disabled" state for individual select options in the admin config

To enhance backend form flexibility and provide developers with granular layout control, framework-level support has been introduced to mark individual option tags as non-selectable inside form elements.

_AC-16761 - [GitHub issue](https://github.com/magento/magento2/issues/40564) - [GitHub code contribution](https://github.com/magento/magento2/pull/40565)_

#### ⚡ Performance: Missing memoization in StoreManager and plugin overhead in Store module

To drastically lower CPU execution strain and minimize unnecessary application memory churn, a critical configuration value caching routine has been implemented to intercept redundant store check processes.

_AC-16838 - [GitHub issue](https://github.com/magento/magento2/issues/40706) - [GitHub code contribution](https://github.com/magento/magento2/pull/40732)_

#### [Issue] fix: remove dead openssl_free_key() code path in JwkFactory

To clean up structural tech debt and align cryptography tools with modern execution profiles, legacy resource-freeing hooks have been purged from the JSON Web Key utility backend.

_AC-16958 - [GitHub issue](https://github.com/magento/magento2/issues/40761) - [GitHub code contribution](https://github.com/magento/magento2/pull/40688)_

#### [Issue] PHPDoc correction spelling

To maintain high code quality standards and improve integrated development environment (IDE) code-hinting accuracy, structural cleanups have been applied to inline code documentation layers across the core framework modules.

_AC-16960 - [GitHub issue](https://github.com/magento/magento2/issues/40763) - [GitHub code contribution](https://github.com/magento/magento2/pull/40745)_

#### [Issue] perf(di:compile): cache ReflectionClass instantiations in Type, Config/Reader and ClassReader

To significantly accelerate compilation times and maximize continuous integration (CI) deployment throughput, the internal dependency injection compiler backend (`setup:di:compile`) has been optimized to eliminate redundant PHP reflection cycles.

_AC-17077 - [GitHub issue](https://github.com/magento/magento2/issues/40796) - [GitHub code contribution](https://github.com/magento/magento2/pull/40615)_

#### [Issue] Update Filter.php  to allow `{{block template="Magento_Module::path/to/template.phtml"}}`  and setting \Magento\Framework\View\Element\Template as default class

To simplify content creation and align CMS directives with template layout standards, the core markup tag processing system has been enhanced to support block declarations without an explicit class definition.

_AC-17078 - [GitHub issue](https://github.com/magento/magento2/issues/38477) - [GitHub code contribution](https://github.com/magento/magento2/pull/38469)_

#### [Issue] perf(di:compile): memoize Interception Config scope reads during compilation

To dramatically speed up site deployments and automated backend compilation, the dependency injection compiler (`setup:di:compile`) has been optimized to eliminate redundant XML parsing operations.

_AC-17313 - [GitHub issue](https://github.com/magento/magento2/issues/40852) - [GitHub code contribution](https://github.com/magento/magento2/pull/40614)_

#### Upgrade underscore.js to 1.13.8 for preventing against security vulenerability

The bundled Underscore.js library (lib/web/underscore.js) has been upgraded from 1.13.7 to 1.13.8 No configuration changes are required.

_AC-17349 - [GitHub issue](https://github.com/magento/magento2/issues/40857) - [GitHub code contribution](https://github.com/magento/magento2/commit/12d0be1e)_

#### magento-composer-installer silently leaves setup/ (and other mapped dirs) unpopulated when a deploy destination is a symlink

Fixed an issue where magento-composer-installer could silently fail to populate setup/ and other Composer-mapped directories when the deployment destination was configured as a symbolic link. This could result in missing files and an incomplete Commerce deployment.

_AC-17360 - [GitHub issue](https://github.com/magento/magento2/issues/40864)_

#### Cache preload keys no longer need ID prefix when using Symfony Cache adapter

Preload keys (preload_keys) for the Symfony Cache adapter can now be configured without the cache id_prefix. Previously, following the documented configuration and including the prefix on each key (for example, 061_SYSTEM_DEFAULT) caused the keys not to be preloaded. You can now specify the keys exactly as the application requests them (for example, SYSTEM_DEFAULT), and Adobe Commerce applies the id_prefix automatically.

_AC-17407 - [GitHub issue](https://github.com/magento/magento2/issues/40877) - [GitHub code contribution](https://github.com/magento/magento2/commit/3a6b9667)_

#### [Issue] Fix PHP 8.5 deprecation when category attribute has 'frontend_input' …

Fixed an issue where opening a category in the Admin panel caused an error on PHP 8.5 when a category attribute had frontend_input set to null. Category pages now open and can be edited successfully without the deprecation error.

_AC-17499 - [GitHub issue](https://github.com/magento/magento2/issues/40908) - [GitHub code contribution](https://github.com/magento/magento2/commit/ecbeba3a)_

#### [Issue] Replace deprecated PHPUnit assertions and test-stub configuration

Updated Magento 2's core unit test suite for future PHPUnit upgrades by replacing seven deprecated PHPUnit usages. The changes address `isType()` assertions and `with*()` configuration on test stubs—patterns that trigger deprecation notices in current PHPUnit versions and are slated for removal in PHPUnit 13 or later.

_AC-17750 - [GitHub issue](https://github.com/magento/magento2/issues/41040) - [GitHub code contribution](https://github.com/magento/magento2/pull/41033)_

#### GraphQL order_date and comment timestamps return wrong calendar date under non-en_US locales (IntlDateFormatter misparse) — AC-14431 fix incomplete

Fixed an issue where GraphQL order dates could show an incorrect calendar date for French and German locales.
Order dates and related comment timestamps now return the correct date and time.
Improved date formatting so GraphQL date values can be reliably parsed by applications.
Existing behavior for the en_US locale remains unchanged.

_AC-18084 - [GitHub code contribution](https://github.com/magento/magento2/commit/d10ab92b)_

#### [Issue] Remove forbidden @author tag

To ensure strict alignment with core technical guidelines, an incremental code maintenance sweep has been completed to clean up inline resource documentation blocks across multiple system modules.

_AC-8366 - [GitHub issue](https://github.com/magento/magento2/issues/37248) - [GitHub code contribution](https://github.com/magento/magento2/pull/36993)_

#### [Issue] Remove forbidden `@author` tag from `Magento_Catalog` (part 2)

To ensure full alignment with Magento's unified code delivery guidelines, an incremental cleanup pass has been executed to systematically strip out non-compliant file comments across core storefront resource models.

_AC-8370 - [GitHub issue](https://github.com/magento/magento2/issues/37247) - [GitHub code contribution](https://github.com/magento/magento2/pull/36988)_

#### Tier Price Storage Interface Delete Bug doesn't delete all Tier Prices

Resolved an issue in TierPriceStorage where deleting product tier prices across multiple websites failed to delete all prices by updating the price ID matching logic to account for the assigned website ID.

_AC-9738 - [GitHub issue](https://github.com/magento/magento2/issues/37949) - [GitHub code contribution](https://github.com/magento/magento2/pull/40557)_

#### [B2B] Purchase orders not auto-converting to sales order with ActiveMQ

Fixed an issue where consumers started by cron did not process messages when ActiveMQ was used with the STOMP protocol. As a result, auto-approved purchase orders were not converted to sales orders. Message processing for STOMP queues is now more reliable and consistent with the DB and AMQP queue implementations.

_ACP2E-4349 - [GitHub code contribution](https://github.com/magento/magento2/commit/08b91f1a) - [GitHub code contribution](https://github.com/magento/inventory/commit/239464da)_

#### Exports failure with configured AWS S3 storage

Product export now works correctly when AWS S3 remote storage is configured. Previously, exported files could not be written to S3 due to invalid path resolution in the storage driver.

_ACP2E-4786 - [GitHub code contribution](https://github.com/magento/magento2/commit/8d95ae6e)_

#### Indexers stuck in self-lock loop with 'use_application_lock' and 'file' provider

Fixed an issue where indexers hung indefinitely during reindexing when the indexer use_application_lock setting was enabled together with the file lock provider. Reindex operations now complete as expected.

_ACP2E-5027 - [GitHub code contribution](https://github.com/magento/magento2/commit/ec436b10)_

#### Slow performance with MAGENTO_DC variables set under cloud UI

After the fix, the deployment config is not reloaded each time the requested key is not present and some env variables are defined.

_ACP2E-5094 - [GitHub code contribution](https://github.com/magento/magento2/commit/2b9e8316)_

#### [CLOUD] Malformed URL path returns HTTP 500 instead of 404 in URL rewrite router

Fixed the issue where a malformed storefront URL returned an HTTP 500 error page instead of a standard 404 Not Found. Previously, certain malformed request paths caused an uncaught error during URL rewrite resolution.

_ACP2E-5154 - [GitHub code contribution](https://github.com/magento/magento2/commit/4d0357d7)_

#### [CLOUD] PHP 8.5 compatibility — ComponentRegistrar::getPath() null array offset crashes setup:static-content:deploy (compact strategy) on 2.4.9

Fixed an issue where `setup:static-content:deploy` failed on PHP 8.5 with a "Using null as an array offset" error when compiling module LESS files that use the //@magento_import directive. Static content deployment now completes successfully on PHP 8.5.

_ACP2E-5183 - [GitHub code contribution](https://github.com/magento/magento2/commit/597c7211)_

#### [CMS] False-positive "Invalid HTML content provided" when saving CMS block with an anchor href followed by another attribute

CMS content containing a standard anchor link (e.g. `&lt;a href="https://example.com/page" target="_blank" rel="noopener">`) no longer triggers a false "Invalid HTML content provided" validation warning or a save failure when cms/wysiwyg/force_valid is enabled.

_ACP2E-5203 - [GitHub code contribution](https://github.com/magento/magento2/commit/24667df1)_

### Framework, GraphQL

#### di.xml array item gets replaced if later config used numeric key

To protect architectural data integrity and improve modular extensibility, a core bug has been resolved within the Dependency Injection (DI) XML parsing engine where array configurations using the numeric key "0" were silently overwritten or dropped during module compilation.

_AC-8102 - [GitHub issue](https://github.com/magento/magento2/issues/36861) - [GitHub code contribution](https://github.com/magento/magento2/pull/40880)_

### GraphQL

#### addProductsToCart throws errors on custom_attributesV2 if attribute code is model

Fixed an issue where addProductsToCart returned an internal server error when a product had a custom attribute with the code model. The custom attribute can now be retrieved correctly through custom_attributesV2.

_AC-16987 - [GitHub code contribution](https://github.com/magento/magento2/commit/809ba93c)_

#### GQL Quantity null while stock_status is IN_STOCK

The quantity field in the products GraphQL query incorrectly returned null for products that were in stock on a custom MSI stock. The resolver was gating the response on the cataloginventory/options/not_available_message config value before fetching the actual stock quantity, and the XML default of this config (2 — "Not enough items for sale") caused null to be returned on any fresh store without an explicit admin override.
The check is now evaluated after the saleable quantity is resolved. null is returned only when the product has no available stock (saleableQty &lt;= 0) and the store is explicitly configured with "Not enough items for sale". Products that are in stock always return their actual saleable quantity, regardless of this config setting. The config read is also corrected to use store scope so store-level overrides are respected.

_ACP2E-4840 - [GitHub code contribution](https://github.com/magento/magento2/commit/b63925d9)_

#### [CLOUD] BundleProduct items.options.price ignores website-scoped prices when Catalog Price Scope = Website

Fixed Website-Scoped Bundle Option Prices in GraphQL: Resolved an issue where querying bundle product options via GraphQL returned global "All Store Views" prices instead of website-scoped prices when Catalog Price Scope was set to Website. The Magento\BundleGraphQl\Model\Resolver\Links\Collection resolver now properly checks price scope and joins website-specific selection prices based on the requested store scope.

_ACP2E-5057 - [GitHub code contribution](https://github.com/magento/magento2/commit/597c7211)_

#### Duplicate active cart created for customer due to concurrent customerCart GraphQL requests race condition

The system now ensures only one active cart is created per customer regardless of request concurrency. Previously, two concurrent customerCart GraphQL queries or POST /V1/carts/mine REST requests for the same authenticated customer with no active cart could result in duplicate active cart records in the database.

_ACP2E-5077 - [GitHub code contribution](https://github.com/magento/magento2/commit/8d70f246)_

#### [Cloud] Handled GraphQlNoSuchEntityException from QuoteGraphQl logged to exception.log, causing unbounded log growth

Fixed an issue where expected GraphQlNoSuchEntityException errors, such as those returned for an expired or invalid cart ID, were written to var/log/exception.log. These handled errors are still returned to the client as normal GraphQL error responses, but they no longer fill the exception log.

_ACP2E-5122 - [GitHub code contribution](https://github.com/magento/magento2/commit/2b9e8316)_

### GraphQL, Inventory / MSI

#### GraphQL: store ID passed as website ID in ProductStock::isProductAvailable causes 'website ... wasn't found' error

Previously, some storefronts could encounter a website wasn't found error when checking product stock availability while adding items to the cart, due to the store ID being used where a website ID was required. This has been fixed so stock availability checks use the correct website context, preventing the error.

_ACP2E-5242 - [GitHub code contribution](https://github.com/magento/magento2/commit/597c7211)_

### GraphQL, Order

#### [Feature Request] Clear redundant in store pickup data when changing shipping carrier

When switching from in-store pickup to home delivery method, the pickup location and associated store address are removed from the cart. A valid shipping address must be provided before the order can be placed.

_ACP2E-4973 - [GitHub code contribution](https://github.com/magento/inventory/commit/57047d29)_

### GraphQL, Product

#### Missing key \"model\" in Wishlist value data

Fixed an issue where querying wishlist details through GraphQL returned an internal server error.
The wishlist query now returns successfully without the "Missing key model in Wishlist value data" error.

_AC-8062 - [GitHub issue](https://github.com/magento/magento2/issues/36909) - [GitHub code contribution](https://github.com/magento/magento2/commit/515d3dd3)_

### Import and export

#### [Issue] Fix import iframe visibility

To ensure a clean and polished user interface within the Magento Admin panel, a template layout defect has been resolved where an internal background execution iframe became visible to store managers during data validations

_AC-13250 - [GitHub issue](https://github.com/magento/magento2/issues/39267) - [GitHub code contribution](https://github.com/magento/magento2/pull/39265)_

#### [Issue] fix: hardcode xxh128 hash algorithm in product import

To clean up internal subsystems and leverage modern system optimization baselines, the product import component has been streamlined to use a single permanent hash algorithm.

_AC-16967 - [GitHub issue](https://github.com/magento/magento2/issues/40770) - [GitHub code contribution](https://github.com/magento/magento2/pull/40687)_

#### Import button remains available after validation errors when Validation Strategy is set to "Stop on Error"

Fixed the issue where the Import button was still shown in the validation results after a failed data validation when the Validation Strategy was set to "Stop on Error". Previously, the button appeared and could be clicked even though all records had failed validation, so the attempted import was immediately terminated.

_ACP2E-5124 - [GitHub code contribution](https://github.com/magento/magento2/commit/2b9e8316)_

### Install & Administer

#### [Cloud] Correction of Outdated Existing ISO Subdivision Codes

Updated region codes for 13 countries to match the ISO 3166-2 standard. Previously, some region codes did not match the standard, which could cause issues with third-party integrations and international compliance. New regions added for Belgium, Colombia, Spain, France, Italy, and Latvia. Region codes updated for Austria, Colombia, Costa Rica, Germany, Estonia, Spain, Finland, France, India, Iceland, and Latvia.

_ACP2E-4495 - [GitHub code contribution](https://github.com/magento/magento2/commit/9b6a8bd9)_

### Inventory / MSI

#### [CLOUD] Gift card and related not sellable WF-1688

Product does not disappear when non-default stock/source is used and related (related or upsell or cross-sell) product is saved.

_ACP2E-4741 - [GitHub code contribution](https://github.com/magento/inventory/commit/30fbdb0f)_

#### Bundle Product stock status inconsistency

Previously, when a store admin manually updated the stock status of a bundle product from the Admin panel, the change was not reflected on the storefront for stores configured with multiple inventory sources. Customers would continue to see outdated stock status despite the admin's changes. 
                  
  This issue has been fixed. Bundle product stock status changes made in the Admin panel are now correctly propagated across all configured inventory sources and stock locations, ensuring customers always see the accurate stock availability on the storefront.

_ACP2E-4866 - [GitHub code contribution](https://github.com/magento/inventory/commit/db712a46)_

#### NoSuchEntityException "store that was requested wasn't found" thrown by GetStockIdForCurrentWebsite.php

Fixed the issue where visiting a storefront page with an invalid ?store= query parameter caused a NoSuchEntityException to be logged at CRITICAL level on every such request. Previously, the MSI stock data plugin passed the raw store code directly to StoreManager::getStore() without handling the case where the store did not exist, resulting in exception log clutter.

_ACP2E-5003 - [GitHub code contribution](https://github.com/magento/inventory/commit/1bf25e46)_

### Order

#### Cancel Order Observer not executed when scope is frontend or webapi_rest scope

Fixed an issue where canceling an order from the storefront or through the webapi_rest scope did not execute the cancel observer correctly. Gift card amounts are now restored to the customer's store credit when the order is canceled.

_AC-16353 - [GitHub issue](https://github.com/magento/magento2/issues/40414) - [GitHub code contribution](https://github.com/magento/magento2/commit/64eb754d)_

#### Cart Price Rule with limited usage is not applied when editing an existing order in Admin (e.g. "Uses per Customer = 1")

Fixed an issue where Cart Price Rule discounts with usage limits were removed when editing an existing order in Admin. The original discount is now preserved when the order is edited, even after the usage limit has been reached.

_AC-16671 - [GitHub issue](https://github.com/magento/magento2/issues/40624) - [GitHub code contribution](https://github.com/magento/magento2/commit/c10554e1)_

#### Min qty validation error in admin panel for bundle products

To improve the backend ordering experience and remove functional blocks when generating manual quotes, a validation error has been resolved where child item parameters were evaluated incorrectly during admin order creation.

_AC-17193 - [GitHub issue](https://github.com/magento/magento2/issues/40812) - [GitHub code contribution](https://github.com/magento/magento2/pull/40863)_

#### Bundle product child item qty inconsistency in Frontend Order View

Storefront order details page will now show the total ordered quantity for each bundle product option. Previously, the quantity column for each child option showed the parent bundle's ordered quantity instead of the total quantity ordered per option.

_ACP2E-4820 - [GitHub code contribution](https://github.com/magento/magento2/commit/b63925d9)_

#### [ASUS] OrderMutex::execute() missing DeadlockException retry causes permanent ShipOrder/InvoiceOrder failure-

ShipOrder and InvoiceOrder operations now are successfully resolved in case of Deadlock.
Previously ShipOrder and InvoiceOrder operations fail permanently due to Deadlock

_ACP2E-4913 - [GitHub code contribution](https://github.com/magento/magento2/commit/51f6d191)_

#### Incorrect FPT/WEEE row-level calculation on parent configurable items during invoice generation

Invoice and credit memo grand totals for configurable products now correctly include the Fixed Product Tax amount. Previously, the FPT row-level amounts were not propagated to the parent configurable order item, causing the invoice and credit memo totals to be lower than the order grand total by the FPT amount.

_ACP2E-4977 - [GitHub code contribution](https://github.com/magento/magento2/commit/51f6d191)_

#### Product quantities modified on page refresh while creating order from admin

Resolved an issue where refreshing the page could cause the same SKU to be added multiple times.

_ACP2E-5046 - [GitHub code contribution](https://github.com/magento/magento2/commit/ec436b10)_

#### Concurrent async email cron workers send duplicate order confirmation emails for the same order

Resolved an issue where concurrent email workers could send duplicate order confirmation emails for the same order.

_ACP2E-5059 - [GitHub code contribution](https://github.com/magento/magento2/commit/8d70f246)_

#### [CLOUD] sales_clean_quotes cron job runs out of memory

Fixed the issue where the sales_clean_quotes cron job ran out of memory when cleaning a large number of expired quotes. Previously, the job retained every processed quote in memory and terminated with a fatal memory-exhaustion error before all expired quotes were removed.

_ACP2E-5137 - [GitHub code contribution](https://github.com/magento/magento2/commit/4d0357d7)_

### Order, Promotion

#### [Cloud] Issue adding multiple coupons to reorder

Resolved an issue where valid coupons were no longer applied to an order after an invalid coupon attempt failed. Now, if an invalid coupon is entered, any previously applied valid coupons will remain applied correctly.

_ACP2E-4810_

#### Fixed-amount category cart price rule discounts non-matching dynamic-bundle child when the rule matches the bundle parent

Fixed the issue where a fixed-amount cart price rule with a category condition incorrectly applied a discount to all children of a dynamic-price bundle when the rule matched only the bundle parent. Previously, bundle children that did not belong to the targeted category received a prorated share of the discount instead of zero.

_ACP2E-5075 - [GitHub code contribution](https://github.com/magento/magento2/commit/2b9e8316)_

### Payments

#### The config:show command doesn't work with partial paths in newer versions

The `config:show` command now accepts partial configuration paths, such as payment, and displays the configuration values under that path. Previously, running `php bin/magento config:show` payment returned an error: `The "payment" path doesn't exist. Verify and try again.` instead of showing the correct values.

_AC-13908 - [GitHub issue](https://github.com/magento/magento2/issues/39610) - [GitHub code contribution](https://github.com/magento/magento2/pull/40432)_

### Performance

#### setup:upgrade is changing indexer mode to `save` from `schedule` slowing it down immensely

Resolved a long-standing issue where running bin/magento setup:upgrade would inadvertently change indexer modes from "Save on Schedule" to "Save on Save" and unnecessarily drop and recreate database triggers, drastically reducing downtime and preventing performance bottlenecks during deployments on large catalogs.

_AC-2423 - [GitHub issue](https://github.com/magento/magento2/issues/33386) - [GitHub code contribution](https://github.com/magento/magento2/pull/40643)_

#### Valkey LAYOUT cache keys consume a lot of space for a big products catalog

Previously, each product generated its own LAYOUT cache entry per store view, causing excessive memory consumption in Redis/Valkey on large catalogs. Now, LAYOUT cache entries are shared across products with the same type, attribute set, and store view, bounding cache growth regardless of catalog size.

_ACP2E-4908 - [GitHub code contribution](https://github.com/magento/magento2/commit/9b6a8bd9)_

#### Deadlock error on product query

Fixed an InnoDB deadlock on pages with a CatalogWidget Products List filtered by category, which occurred when the schedule-mode price indexer ran concurrently.

_ACP2E-5052 - [GitHub code contribution](https://github.com/magento/magento2/commit/ec436b10)_

#### [Quans] Adobe Commerce URL resolution query performance degradation

Fixed the issue where the GraphQL route query always rendered full CMS page content — including Page Builder widget execution and product collection loading — even when only URL routing metadata (relative_url, redirect_code, type) was requested. Previously, this caused unnecessary widget/product rendering and a significant increase in database queries per request for CMS pages containing Page Builder widgets.

_ACP2E-5143 - [GitHub code contribution](https://github.com/magento/magento2/commit/597c7211)_

#### Admin Customer Edit performance tanks when Customer Account Sharing is set to Global

Fixed a performance issue on the Admin Customers Edit page where load time and HTTP response size grew quadratically when Share Customer Accounts was set to Global.

_ACP2E-5164 - [GitHub code contribution](https://github.com/magento/magento2/commit/24667df1)_

### Product

#### Add to Cart button within "Click for price" popup not working.

Fixed an issue where the Add to Cart button in the "Click for price" popup on the product listing page did not add the product to the cart.
Products can now be added to the cart successfully from the popup.

_AC-11896 - [GitHub issue](https://github.com/magento/magento2/issues/30356) - [GitHub code contribution](https://github.com/magento/magento2/commit/29a7cdbe)_

#### BundleGraphQL Resolvers Create Separate Deferred Product Instances, Defeating Query Batching (N+1)

To drastically accelerate API response throughput and minimize server overhead, the GraphQL resolution layer has been optimized to enforce true query batching for bundle products, eliminating performance-draining N+1 database leaks.

_AC-16647 - [GitHub issue](https://github.com/magento/magento2/issues/40595) - [GitHub code contribution](https://github.com/magento/magento2/pull/40867)_

#### EAV Select and Multiselect attribute validation incorrectly rejects option labels with the value "0"

To improve data integrity and eliminate unexpected submission errors across customer and catalog forms, a validation flaw has been resolved where option labels containing the exact string value "0" were erroneously rejected by the EAV core framework

_AC-16986 - [GitHub issue](https://github.com/magento/magento2/issues/40634) - [GitHub code contribution](https://github.com/magento/magento2/pull/40827)_

#### Customizable option labels, and customizble option titles cannot be saved when a user's role is limited to a certain scope

Fixed an issue where customizable option labels and titles were reverted when edited by an admin user with access limited to a specific store scope.
The updated labels and titles are now saved correctly for the selected scope.

_AC-2684 - [GitHub issue](https://github.com/magento/magento2/issues/35210)_

#### Gift Card price is displayed incorrectly in wish list

Fixed an issue where the minimum configured Gift Card price was displayed as $0.00 in the wishlist.
The correct minimum Gift Card price is now displayed on both the My Wishlist page and the Wishlist sidebar widget.

_AC-8037_

#### Product Alert Consumer ignores store scoped system/stmp/disable

Product Alert Consumer now accounts for store scoped system/stmp/disable setting.

_ACP2E-4870 - [GitHub code contribution](https://github.com/magento/magento2/commit/ec436b10)_

#### Frontend compare page displaying incorrect Short Description label translations

Previously, on the Compare Products page, comparable attribute labels such as Short Description could display a translation from a different store view instead of the one for the current store. Now, the correct store-specific translations are displayed.

_ACP2E-4929 - [GitHub code contribution](https://github.com/magento/magento2/commit/08b91f1a)_

#### Page Builder product carousel ignores category position sort order, displaying products in entity_id DESC order instead

Fixed an issue where products displayed in a Page Builder carousel set to sort by category position appeared in the wrong order on the storefront. Products are now shown in the order configured in Admin → Catalog → Categories → Products tab.

_ACP2E-4980 - [GitHub code contribution](https://github.com/magento/magento2/commit/51f6d191)_

### Promotion Rules

#### Wrong discount calculation when one of applied cart price rules has Discount Qty Step value

Fixed an issue where the discount was calculated incorrectly when multiple cart price rules were applied and one rule had a Discount Qty Step (Buy X) value.
Discounts are now calculated correctly for all eligible quantities.

_AC-12307 - [GitHub code contribution](https://github.com/magento/magento2/commit/c10554e1)_

### Promotion, Trageting

#### Related products are getting automatically removed

Fixed the issue where related products were not removed when a product's attributes changed and it stopped matching a Target Rule. Previously, the mview indexer failed to delete stale rule-product associations and emitted a PHP Warning (Undefined array key) during reindexing.

_ACP2E-4836_

### Returns

#### RMA - Add Return Comments API - Emails are triggered to Sender (Sales Representative) but not to Customer

Fixed an issue where return comment emails sent through the Returns API were sent to the sales representative but not to the customer.
Customers now receive an email notification when a return comment is added through the API with customer notification enabled.

_AC-1138 - [GitHub issue](https://github.com/magento/magento2/issues/33985)_

### Sales

#### `[Order][REST]` sales_order_items product_options column missing data when order placed from rest api V1/orders or V1/orders/create endpoints

Fixed an issue where order items created through the REST API did not include complete product_options data. Custom option labels and relevant option details are now correctly saved for orders created through the REST API.

_AC-15187 - [GitHub code contribution](https://github.com/magento/magento2/commit/8b67e8ed)_

#### Sales order grid permanently stuck in stale status when async grid indexing is enabled due to tied updated_at timestamps

Fixed an issue where the Sales Order Grid could remain stuck with a stale order status when asynchronous grid indexing was enabled. The order grid status now correctly updates to match the current order status, including cases where multiple order updates occur within the same second.

_AC-17118 - [GitHub code contribution](https://github.com/magento/magento2/commit/478f8e7c)_

### Security

#### [Issue] Update js.phtml DOM text reinterpreted as HTML

To strengthen the platform's security baseline and minimize the risk of malicious input execution, the primary inline script template handling dynamic DOM updates has been refactored to eliminate cross-site scripting (XSS) injection vectors.

_AC-12118 - [GitHub issue](https://github.com/magento/magento2/issues/38821) - [GitHub code contribution](https://github.com/magento/magento2/pull/38804)_

### Shipping

#### Issue with USPS REST API, incorrect rates for Maximum Package Weight

Fixed incorrect shipping estimates when an order splits into multiple packages (for example, above "Maximum Package Weight"). The carrier now requests a rate for each package and totals the amounts, consistent with the legacy Web Tools flow.

_ACP2E-4813 - [GitHub code contribution](https://github.com/magento/magento2/commit/6c67a9b5)_

### Staging & Preview

#### Console errors in schedule update preview mode

Fixed the issue where the preview page for a staging update would fail to load correctly with JavaScript console errors when two updates shared the same start time. Previously, the signed preview URL used an incremented version ID that did not match the timestamp derived by the preview JavaScript, causing a signature mismatch and preventing the page from loading correctly in preview mode.

_ACP2E-4828_

#### Setup:upgrade takes too long on Magento_CatalogStaging data patch with high number of storeviews and categories

Fixed an issue where the CE-to-EE data migration patch did not correctly migrate scheduled category design updates and product special prices into staging updates. Categories with scheduled design dates produced empty staging updates due to an incorrect staging context approach. Products were silently skipped on PHP 8.1+ when NULL datetime values were present from a previous migration run. Also improved migration performance by loading only affected categories and products instead of iterating the full catalog.

_ACP2E-5009_

#### Content Staging Dashboard Catalog Price Rules grid displays duplicate data

The Catalog Price Rules grid now correctly displays the unique details for each Catalog Price Rule assigned to a staging update. Previously, when two or more Catalog Price Rules were assigned to the same staging update, the Catalog Price Rules grid on that update's page in the Content Staging Dashboard displayed the correct number of rows, but every row incorrectly showed the same (last) rule's data instead of each rule's own details.

_ACP2E-5097_

### Tax

#### base_wee_tax_applied_amount is not set for parent product

base_weee_tax_applied_amount value is now populated for the configurable product in database tables like sales_order_item, sales_invoice_item, sales_creditmemo_item, not only for its child

_ACP2E-4922 - [GitHub code contribution](https://github.com/magento/magento2/commit/08b91f1a)_

### Test Framework

#### [Issue] Update GraphQL tests Client.php for case-insensitive substring comparation

Fixed an issue where GraphQL API tests did not recognize Set-Cookie headers when the header used different letter casing. The tests now correctly handle Set-Cookie, set-cookie, and SET-COOKIE headers.

_AC-15337 - [GitHub issue](https://github.com/magento/magento2/issues/39713) - [GitHub code contribution](https://github.com/magento/magento2/commit/c10554e1)_

#### Extremely slow WebAPI GraphQL functional tests

To optimize build delivery setups and accelerate continuous integration (CI) environments, a testing infrastructure bottleneck has been resolved by transitioning cache clearing behaviors from external system command calls to native in-process memory handling.

_AC-15395 - [GitHub issue](https://github.com/magento/magento2/issues/39725) - [GitHub code contribution](https://github.com/magento/magento2/pull/40804)_

### UI Framework

#### Minicart cannot be used twice in the same page

To provide frontend developers with greater layout flexibility, a long-standing core UI limitation has been resolved, allowing multiple minicart blocks (e.g., one in the header and another in the footer) to exist and update independently on a single page layout.

_AC-12579 - [GitHub issue](https://github.com/magento/magento2/issues/38958) - [GitHub code contribution](https://github.com/magento/magento2/pull/40871)_

### from-github

#### [Issue] fix(pagecache): recognize PATCH as valid HTTP method in Varnish VCL

Magento's default Varnish VCL now recognizes PATCH as a valid HTTP method, so REST API partial-update requests (e.g. PATCH /rest/V1/products/:sku) are passed to the backend instead of being piped. This fixes PATCH calls failing or behaving incorrectly when Full Page Cache is set to Varnish.

_AC-16954 - [GitHub issue](https://github.com/magento/magento2/issues/40757) - [GitHub code contribution](https://github.com/magento/magento2/pull/40657)_

#### [Issue] Replace all gad_* parameters in VCL

To eliminate performance regressions caused by dynamic ad campaigns, the application's caching layers have been updated to proactively ignore all Google Ads gad_* query strings. This prevents external campaign links from invalidating page caches and slowing down target pages

_AC-16980 - [GitHub issue](https://github.com/magento/magento2/issues/40781) - [GitHub code contribution](https://github.com/magento/magento2/pull/40780)_

#### [Issue] fix: update minimum PHP version check in bootstrap to 8.3

To prevent confusing runtime errors and improve developer installation troubleshooting, the native PHP environment validator inside the system bootstrap framework has been brought in line with the application's actual core requirements.

_AC-17312 - [GitHub issue](https://github.com/magento/magento2/issues/40851) - [GitHub code contribution](https://github.com/magento/magento2/pull/40686)_

#### `health_check.php` returns 500 when `igbinary` is installed and default file cache is used (Varnish 503)

Fixed an issue where health_check.php returned HTTP 500 when igbinary was installed with the default file cache backend. The health check now accepts valid cache configurations without an explicit backend key, preventing Varnish from marking the backend as unhealthy and returning HTTP 503.

_AC-17400 - [GitHub issue](https://github.com/magento/magento2/issues/40876) - [GitHub code contribution](https://github.com/magento/magento2/commit/8b67e8ed)_

#### [Issue] fix: update gzip types and remove IE6 workaround in nginx config

To improve page load speeds and optimize network asset delivery, the fallback server configuration has been modernized to better support modern storefront components and remove legacy tech overhead

_AC-17498 - [GitHub issue](https://github.com/magento/magento2/issues/40774) - [GitHub code contribution](https://github.com/magento/magento2/pull/40681)_

#### [Issue] Attempt to fix flaky graphql OrderStatusChangeDateTest.

To improve continuous integration (CI) reliability and reduce false-positive build failures, a race condition has been resolved in the WebAPI functional test suite. The GraphQL order status validation test (OrderStatusChangeDateTest) previously experienced intermittent failures due to subtle timing disparities between PHP memory and MySQL timestamps

_AC-17959 - [GitHub issue](https://github.com/magento/magento2/issues/41126) - [GitHub code contribution](https://github.com/magento/magento2/pull/40618)_
