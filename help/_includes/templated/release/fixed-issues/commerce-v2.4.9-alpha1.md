# Adobe Commerce fixed issues (v2.4.9-alpha1)

## Fixed issues in v2.4.9-alpha1

We have fixed 84 issues in the Adobe Commerce 2.4.9-alpha1 core code. A subset of the fixed issues included in this release is described below.

### APIs

* __Async Bulk Operation remains in open state for async.magento.configurableproduct.api.optionrepositoryinterface.save.post__
  Bulk API endpoints will now throw an error if the request body is not an Array, thus requiring bulk item keys to be consecutive numbers starting from 0. Previously, bulk item status was not updated due to the arbitrary item key submitted in the bulk request.
  _ACP2E-3544 - [GitHub code contribution](https://github.com/magento/magento2/commit/9608ca21)_
* __[CLOUD] API REST bug on is_subscribed value not considering from the current store  using searchCriteria__
  API REST Customer query fetches the correct &quot;is_subscribed&quot; value from the correct store using searchCriteria
Previously the API REST Customer query did not consider store when fetching is_subscribed&quot; value.
  _ACP2E-3621 - [GitHub code contribution](https://github.com/magento/magento2/commit/9608ca21)_
* __async.operations.all can create multiple entries for 1 SKU__
  Concurrent requests to save and update the same product are now serialized to prevent race conditions  which may result in data inconsistency or duplicated products
  _ACP2E-3744 - [GitHub code contribution](https://github.com/magento/magento2/commit/520f9e30)_

### Account

* __[Cloud] Delete operation is forbidden for current area error during customer account creation__
  After the fix saving a customer with an invalid address returns a message describing the reason for invalidity instead of irrelevant &quot;Delete operation is forbidden for current area&quot;.
  _ACP2E-3791 - [GitHub code contribution](https://github.com/magento/magento2/commit/6ea61121)_

### Admin UI

* __[Issue] Improve user experience with roles tree__
  This pull request adds buttons to collapse all, expand all, and expand branches with selected items. This functionality is similar to that provided in the category tree (Catalog -&gt; Inventory -&gt; Categories)
  _AC-14020 - [GitHub issue](https://github.com/magento/magento2/issues/39654) - [GitHub code contribution](https://github.com/magento/magento2/pull/36511)_
* __Symfony\Component\Mime\Exception\LogicException: The &quot;Sender&quot; header must be an instance of &quot;Symfony\Component\Mime\Header\MailboxHeader&quot; (got &quot;Symfony\Component\Mime\Header\MailboxListHeader&quot;)__
  _AC-14520 - [GitHub issue](https://github.com/magento/magento2/issues/39823) - [GitHub code contribution](https://github.com/magento/magento2/commit/1e14bd72)
* __Provide a feature to mass-delete tax rates using the grid__
  Admin users can now simultaneously delete multiple tax rates from the Admin Tax Rates grid.  [GitHub-33399](https://github.com/magento/magento2/issues/33399)
  _AC-2238 - [GitHub issue](https://github.com/magento/magento2/issues/33399) - [GitHub code contribution](https://github.com/magento/magento2/pull/33484) - [GitHub code contribution](https://github.com/magento/magento2/commit/5cd64dd0)_
* __Cart price rule with condition SKU dosen&apos;t take into account the &quot;leading zeros&quot; in the SKU (sku: 01234 is the same as 1234)__
  The System now correctly handles Cart price rule with condition SKU take into account the &quot;leading zeros&quot; in the SKU
  _AC-9428 - [GitHub issue](https://github.com/magento/magento2/issues/37919) - [GitHub code contribution](https://github.com/magento/magento2/pull/39525)_
* __Issue with Default Attribute Option Value Behavior for Multiselect__
  Prior to the fix default values for multiple options attribute were not being saved properly. Now, after the fix, the values are properly stored in the database.
  _ACP2E-3523 - [GitHub code contribution](https://github.com/magento/magento2/commit/9608ca21)_
* __Backend admin menu subtitles not displaying__
  All titles of the main menu groups will now be properly displayed. Previously, if the second or third column of the main menu contained only one group of links, the title of the group was not displayed.
  _ACP2E-3540_
* __Issue while moving the product qty to back to shopping cart from the admin__
  When creating an order from the admin, products in the customer cart on the sidebar will not disappear when added to the order.
  _ACP2E-3563 - [GitHub code contribution](https://github.com/magento/magento2/commit/c8ba4ab1)_

### Admin UI, B2B

* __B2B Login as Customer header still has Magento branding__
  Earlier the storefront header shows &quot;You are now connected as &lt;customer name&gt; on &lt;store name&gt;&quot; with Magento branding. Which is now fixed and the header shows with ADOBE branding.
  _AC-14361 - [GitHub code contribution](https://github.com/magento/magento2/commit/fadcfa8b)_

### Admin UI, Content

* __Exception &quot;Cannot create rendition for media asset paths&quot; during image insertion__
  After removing the values of the Maximum Width and Maximum Height of the Media Gallery Image Optimization configuration, the error is not occurred any more during the image optimization process.
  _ACP2E-3781 - [GitHub code contribution](https://github.com/magento/magento2/commit/520f9e30)_

### Admin UI, Security

* __Weak Password Management__
  The admin user cannot be saved when using the same password. Previously, it was saved successfully without a proper validation.
  _ACP2E-3657 - [GitHub code contribution](https://github.com/magento/magento2/commit/df92debe)_

### Admin UI, Security, Staging & Preview

* __Action logs for content staging__
  The Action Logs now will show the Staging Update activities. Previously, the Staging Update log was not recorded in the Admin Action Logs.
  _ACP2E-3679_

### B2B

* __Place Order is not working on Proceed to checkout via Negotiable Quote with PayFlow Pro Credit Card payment method__
  _AC-11973_
* __Success message after Quote renaming vanishes intermittently__
  _AC-13447_
* __The grand total calculation does not including the Tax amount__
  Order contains correct totals when places from existing Purchase Order with Cross Border Trade enabled.
  _ACP2E-3727_
* __Unassigning categories in a B2B shared catalog via the REST API is slow__
  Now the performance is significantly improved when unassigning categories in B2B. Previously, it took a long time to unassign categories in the B2B shared catalog.
  _ACP2E-3796_
* __Performance issue with new Setup Patch in B2B__
  Fixes the performance issue where upgrading the Magento_Company module after updating to B2B 1.5.2 took an excessively long time when processing a large number of records (~100,000+) in the company_structure table.
  _ACP2E-3850_

### Cart & Checkout

* __Magento 2.4.7 update (mini)cart no decimal qty allowed__
  Now Magento correctly handles when we are updating qty with decimals from mini cart when the locale was NL(Dutch)
  _AC-13238 - [GitHub issue](https://github.com/magento/magento2/issues/39236) - [GitHub code contribution](https://github.com/magento/magento2/pull/39669)_
* __[Issue] Update subtotal.phtml__
  The System updates the subtotal.phtml with the correct spacing
  _AC-13907 - [GitHub issue](https://github.com/magento/magento2/issues/39619) - [GitHub code contribution](https://github.com/magento/magento2/pull/39612)_
* __Not able to place the order with the guest__
  _AC-14241 - [GitHub code contribution](https://github.com/magento/magento2/commit/27217d0e)_
* __Expired persistent quotes are not cleaned up by a cron job sales_clean_quotes__
  The expired persistent quotes are now cleared when the &apos;persistent_clear_expired&apos; cron job runs. Previously, the expired persistent quotes were not cleared by any other cron job.
  _ACP2E-3493 - [GitHub code contribution](https://github.com/magento/magento2/commit/11be3dff)_
* __&quot;Something went wrong&quot; error on checkout for inactive company__
  Prior to the fix, the logout action was not being completed properly on the cart page, if the logged in user company was no longer enabled. Now, if the company is no longer available, the logout is performed properly.
  _ACP2E-3541 - [GitHub code contribution](https://github.com/magento/magento2/commit/df92debe)_
* __Addresses selection is not saved when we &quot;Check Out with Multiple Addresses&quot;__
  Prior to the fix when canceling the multishipping option, the address was not preselected when reverting back to multshipping. Now, the default address is replaced with one of the selections made within the multishipping screen.
  _ACP2E-3646 - [GitHub code contribution](https://github.com/magento/magento2/commit/6ea61121)_

### Cart & Checkout, SEO

* __Incorrect Gift Card Code URL in the email when purchased in from the secondary website__
  Previously, the multi-store setup and gift card for non-default stores always redirected the gift card claim to the default website. After this fix is applied, the email will redirect the gift card claim link to the correct scope or website.
  _ACP2E-3699_

### Cart & Checkout, Shipping

* __[Mainline] Cart Price rule is not respecting Multishipping__
  Prior to the implementation of this correction, the cart price rule for multi-shipping products did not apply correctly when sub-select conditions were applied and free shipping was enabled. However, since the correction was applied, the cart price rule for multi-shipping carts now functions as intended.
  _ACP2E-3666 - [GitHub code contribution](https://github.com/magento/magento2/commit/b12ffe36)_

### Catalog

* __Duplicate cache fpc for same page with same query__
  The system now correctly identifies and uses the same Full Page Cache (FPC) for pages with the same query parameters, regardless of their order or trailing characters. This prevents an unnecessary increase in the page cache folder size. Previously, the system would create a different FPC identifier for the same page if the order of the query parameters was different or if there were trailing characters, leading to an increase in the page cache folder size.
  _AC-10722 - [GitHub issue](https://github.com/magento/magento2/issues/38269) - [GitHub code contribution](https://github.com/magento/magento2/pull/38270)_
* __Missing indexing of required columns in catalog_product_entity_int table__
  Added the missing indexing of required columns in catalog_product_entity_int table
  _AC-10844 - [GitHub issue](https://github.com/magento/magento2/issues/38315) - [GitHub code contribution](https://github.com/magento/magento2/pull/38316)_
* __Product page gives error because of url rewrites__
  Now the Product Page is loaded successfully when we have URL rewrites
  _AC-2950 - [GitHub issue](https://github.com/magento/magento2/issues/35371) - [GitHub code contribution](https://github.com/magento/magento2/pull/39670)_
* __[Cloud] Bug when adding products to category__
  The pagination and record count label now work correctly when adding products to a category via the popup grid. Previously, loading only a single page with items equal to the page size caused issues with the item selection dropdown.
  _ACP2E-3526_
* __indexer_update_all_views cron error with MAGE_INDEXER_THREADS_COUNT__
  Fixed issue for MAGE_INDEXER_THREADS_COUNT &gt; 2 with Customer Segment indexer
  _ACP2E-3538 - [GitHub code contribution](https://github.com/magento/magento2/commit/9608ca21)_
* __Exception while adding &quot;Conditions Combination&quot; in Page Builder Products widget condition__
  The issue has been fixed by adding a check to skip missing or incomplete conditions. Previously, this caused error logs to be generated due to the handling of incomplete conditions in the system.
  _ACP2E-3545 - [GitHub code contribution](https://github.com/magento/magento2/commit/11be3dff)_
* __Browser crash when loading attribute set__
  Browser no longer crashes on attribute set edit page if there are more than 4k product attributes
  _ACP2E-3633 - [GitHub issue](https://github.com/magento/magento2/issues/38810) - [GitHub code contribution](https://github.com/magento/magento2/commit/b12ffe36)_
* __[CLOUD] Product URL Rewrites Not Created for New Store: Go Live Blocker__
  Product URL Rewrites for New Store is successfully created. 
Previously operation ended with memory leak or with timeout.
  _ACP2E-3669 - [GitHub code contribution](https://github.com/magento/magento2/commit/df92debe)_
* __Attribute Default Value for Options Not Working__
  Previously, when we changed the default value of a product select attribute, it appeared as an array element with the previous values. After this fix is applied, when we update a product attribute value it will save as a single element at eav_attribute table.
  _ACP2E-3688 - [GitHub code contribution](https://github.com/magento/magento2/commit/520f9e30)_
* __Gift Card validation fails when editing due to thousand separator__
  Fixed issue with gift card product type saving when the gift card amount is 1000 and more.
  _ACP2E-3704_

### Catalog, GraphQL, Search

* __Products graphql returned disabled categories in the category aggregations__
  After the fix disabled categories aren&apos;t returned for the products GraphQl request.
  _ACP2E-2885 - [GitHub code contribution](https://github.com/magento/magento2/commit/b12ffe36)_

### Catalog, Product

* __[Random Bug] Fotorama lib isn&apos;t loaded__
  The system now ensures that the Fotorama library is properly loaded, allowing all attached images to be displayed in the image gallery as expected. Previously, only the first image was visible due to an issue with the Fotorama library not loading correctly.
  _AC-12124 - [GitHub code contribution](https://github.com/magento/magento2/commit/45b51c9c) - [GitHub code contribution](https://github.com/magento/magento2/commit/27217d0e)_

### Content

* __Putting csp_whitelist.xml in theme does not work and creates intermittent issue__
  Implemented caching of CSP whitelist per website area.
  _AC-13069 - [GitHub issue](https://github.com/magento/magento2/issues/38933) - [GitHub code contribution](https://github.com/magento/magento2/pull/39672)_
* __Error: Script error for &quot;Magento_Catalog/js/validate-product&quot; for admin content pagebuilder with products load__
  This PR fixes the  Script error for catalogAddToCart when editing the pagebuilder with the products condition
  _AC-13891 - [GitHub issue](https://github.com/magento/magento2/issues/39604) - [GitHub code contribution](https://github.com/magento/magento2/pull/39677)_
* __Block selection in widgets that have the same identifier__
  The System now correctly handles selecting block while creating widgets when we are having same identifier blocks
  _AC-14132 - [GitHub issue](https://github.com/magento/magento2/issues/39692) - [GitHub code contribution](https://github.com/magento/magento2/pull/39722)_
* __Table prefix is not taken into account__
  _AC-14556 - [GitHub issue](https://github.com/magento/magento2/issues/39847) - [GitHub code contribution](https://github.com/magento/magento2/commit/1bc2d6d0)_
* __Unable to upload image with relatively small width__
  The system no longer fails to resize image with relatively small width to its height.
  _ACP2E-3558 - [GitHub code contribution](https://github.com/magento/magento2/commit/9608ca21)_
* __Incorrect config path for remote storage path style configuration__
  After the fix, setting the remote storage path style configuration will impact the actual AWS S3 path style configuration.
  _ACP2E-3734 - [GitHub code contribution](https://github.com/magento/magento2/commit/df92debe)_

### Framework

* __Compiling code of disabled module.__
  This pull request escapes disabled modules before code compilation.
  _AC-10933 - [GitHub issue](https://github.com/magento/magento2/issues/38241) - [GitHub code contribution](https://github.com/magento/magento2/pull/39723)_
* __Magento_Theme title.phtml template invalid for PHP 8.2__
  This pull request fixes an issue when CMS page created with the null heading as in Php 8.x passing null to trim() throws Exception: Deprecated Functionality: trim(): Passing null to parameter #1 ($string) of type string
  _AC-12856 - [GitHub issue](https://github.com/magento/magento2/issues/39092) - [GitHub code contribution](https://github.com/magento/magento2/pull/39398)_
* __When using file storage for the lock provider, we get an ever growing directory of files without any cleanup happening__
  This pull request introduce a new cron job that runs once per day and searches for lock files that haven&apos;t been modified in the last 24 hours and can thus be safely removed. This will keep the contents of the lock files directory under control.
This cron job will only execute something when the lock provider is configured to use files, not when one of the others is used (database - the default, zookeeper or cache)
  _AC-13367 - [GitHub issue](https://github.com/magento/magento2/issues/39369) - [GitHub code contribution](https://github.com/magento/magento2/pull/39372)_
* __[Issue] Cleanup: don&apos;t use void return value from method calls.__
  This PR does minor cleanup. Sometimes we called methods that didn&apos;t return anything (void) and then used that result value. Which is really not needed.
  _AC-13664 - [GitHub issue](https://github.com/magento/magento2/issues/39524) - [GitHub code contribution](https://github.com/magento/magento2/pull/39516)_
* __[Issue] [PHPDOC] Fix bad phpdoc for Magento\Framework\Message\ManagerInterface__
  This PR fixes the bad phpdoc for \Magento\Framework\Message\ManagerInterface and remove all duplicate phpdoc in \Magento\Framework\Message\Manager (use inheritdoc syntax).
  _AC-14312 - [GitHub issue](https://github.com/magento/magento2/issues/39593) - [GitHub code contribution](https://github.com/magento/magento2/pull/39153)_
* __Removed beta minimum-stability from composer.json__
  Removed beta minimum-stability from composer.json
  _AC-14450 - [GitHub code contribution](https://github.com/magento/magento2/commit/1cbbf187)_
* __allow_parallel_generation should be set through environment variable__
  After the fix, the &quot;MAGENTO_DC_CACHE__ALLOW_PARALLEL_GENERATION&quot; environment variable can be used to set the &quot;allow_parallel_generation&quot; configuration.
  _ACP2E-3673 - [GitHub code contribution](https://github.com/magento/magento2/commit/b12ffe36)_
* __[Cloud] Changing table column type from Int to Decimal using db_schema.xml file In Magento 2 Results In Errors__
  Changing the column data type is not working correctly. Previously, it throws an error: The attribute &apos;identity&apos; is not allowed.
  _ACP2E-3709 - [GitHub code contribution](https://github.com/magento/magento2/commit/df92debe)_
* __New currency (XCG) support in Adobe__
  Caribbean Guilder (XCG) is added to the currencies list.
  _ACP2E-3790 - [GitHub code contribution](https://github.com/magento/magento2/commit/520f9e30)_

### GraphQL

* __GraphQL Response for Order placement does not include the exception message__
  Reverted previous change that was returning errors in a different format. Now potential errors are returned in a consistent manner, not breaking GraphQL schema. This should be added as known BIC, approved by in ACP2E-3399.
  _ACP2E-3399 - [GitHub code contribution](https://github.com/magento/magento2/commit/9608ca21)_
* __GraphQL Response for Order placement is partially localised__
  Errors returned by placeOrder GraphQl mutation were not fully localized. Now, in a multilanguage context, errors are properly translated.
  _ACP2E-3506 - [GitHub code contribution](https://github.com/magento/magento2/commit/9608ca21)_
* __Concurrent Calls to Reorder GraphQL API - Same Products Added to Different Rows__
  Fixes the issue where concurrent calls to the Reorder GraphQL API result in the same products being added as different rows, leading to data inconsistencies.
  _ACP2E-3774 - [GitHub code contribution](https://github.com/magento/magento2/commit/c8ba4ab1)_
* __updateCustomerEmail GraphQL mutation(Change email Address) doesn&apos;t trigger the email Notification__
  Previously, email was not sent to customers after successfully updating their email addresses on their accounts. After the fix has been applied, customers now receive email notifications after successfully updating their email addresses.
  _ACP2E-3785 - [GitHub code contribution](https://github.com/magento/magento2/commit/c8ba4ab1)_
* __Dynamic Attribute Not Updating in Gift Registry via updateGiftRegistry Mutation__
  Previously, before this fix through the updateGiftRegistry mutation, the custom attribute of the gift registry was not modified or updated through GraphQL mutations. After this fix has been applied, the dynamic attribute of the gift registry can successfully be updated through the updateGiftRegistry mutation.
  _ACP2E-3805 - [GitHub issue](https://mcstaging.briscoes.co.nz/)_

### Import / export

* __[Issue] Copyedit: change &quot;coping&quot; to &quot;copying&quot;__
  PR fixes the Minor copyedit to correct spelling of &quot;copying&quot;
  _AC-13300 - [GitHub issue](https://github.com/magento/magento2/issues/39311) - [GitHub code contribution](https://github.com/magento/magento2/pull/39307)_
* __REST endpoint Product Import Json not validate the mandatory fields__
  Name field is now required when creating new products through the import process  (admin or API). Prior to the fix, you could have created new products without name, this would have broken the admin interface and created invalid products.
  _ACP2E-3660 - [GitHub code contribution](https://github.com/magento/magento2/commit/df92debe)_
* __Missing Website Filter Option in Export Process__
  It is now possible to filter products by websites when creating products export.
  _ACP2E-3720 - [GitHub code contribution](https://github.com/magento/magento2/commit/520f9e30)_
* __Duplicate of AC-13913 - Static attribute cleaning asynchronously.__
  After the fix, there is no &apos;Undefined array key &quot;apply_to&quot;&apos; error when numerous instances of the \Magento\CatalogImportExport\Model\Import\Product\Type\AbstractType are created.
  _ACP2E-3752 - [GitHub code contribution](https://github.com/magento/magento2/commit/520f9e30)_

### Inventory / MSI

* __Store Pickup not respecting maximum search radius when address is changed at checkout__
  Now pre-selected store in &quot;Pick in Store&quot; will update if the shipping address changes. Previously, once a store was pre-selected, it did not change even if the new shipping address is not within the radius of the selected store
  _ACP2E-3728 - [GitHub code contribution](https://github.com/magento/inventory/commit/07620383)_

### Order

* __Cannot return null for non-nullable field \&quot;AppliedCoupon.code\&quot; unexpected issue__
  _AC-14484 - [GitHub issue](https://github.com/magento/magento2/issues/39841) - [GitHub code contribution](https://github.com/magento/magento2/commit/97b2ea42)_
* __[Cloud] Some Inline Javascript does not work after upgrade to magento 2.4.6-p7__
  Clicking on &quot;delete&quot; button in &quot;Add to Order by SKU&quot; in admin will now remove the SKU. Previously, clicking on&quot;delete&quot; button in &quot;Add to Order by SKU&quot; did not remove the SKU.
  _ACP2E-3515_
* __gift_cards serialized data is inconsistent in the sales_order table__
  gift_cards data in sales_order table is now serialized correctly. Previously, it was serialized every time the order was updated.
  _ACP2E-3662_

### Order, Pricing

* __Admin displays incorrect currency symbol on when creating return__
  In a multi-website setup with different currencies (EUR/USD/GBP), the return product selection page in admin is now displaying the correct currency symbol. Previously, it displayed the default currency symbol.
  _ACP2E-3658 - [GitHub code contribution](https://github.com/magento/magento2/commit/df92debe)_

### Other Developer Tools

* __Lighthouse Accessibility failure__
  The System now Pass with Accessibility score of 100
  _AC-12783 - [GitHub issue](https://github.com/magento/magento2/issues/39054) - [GitHub code contribution](https://github.com/magento/magento2/pull/39164)_
* __Disable captcha storefront config still load captcha js files__
  The System now does not load captcha js files when we disabled captcha 
 for storefront
  _AC-14267 - [GitHub issue](https://github.com/magento/magento2/issues/32987) - [GitHub code contribution](https://github.com/magento/magento2/pull/39154)_

### Packaging

* __[Packaging] Fix magento/magento-coding-standard dependency+ page-builder__
  _ACPLTSRV-6383_

### Payments

* __[Issue] Fix offline invoice capture (404)__
  It fixes the 404 Page Error while capturing invoices for offline payment methods from Magento admin
  _AC-13336 - [GitHub issue](https://github.com/magento/magento2/issues/39298) - [GitHub code contribution](https://github.com/magento/magento2/pull/39297)_

### Performance

* __Category Permissions module possibly preventing caching__
  3rd party controllers now cached correc tly with customer segments
  _ACP2E-3721_

### Product

* __Product Collection - addMediaGalleryData calls getSize when the collection maybe or will be loaded (Can use count to avoid an extra DB query)__
  This PR reduces the extra query call using count() if the product collection is already loaded when calling Product Graphql with media_gallery field included in it.
  _AC-13055 - [GitHub issue](https://github.com/magento/magento2/issues/39111) - [GitHub code contribution](https://github.com/magento/magento2/pull/39681)_
* __[2.4.8] No callbacks found for cron job catalog_product_alert__
  _AC-14494 - [GitHub issue](https://github.com/magento/magento2/issues/39800) - [GitHub code contribution](https://github.com/magento/magento2/commit/1bc2d6d0)_
* __Slow query is executed when product widget is included via pagebuilder__
  The Query for product widgets creation including product SKUs is optimized.
  _ACP2E-3449 - [GitHub code contribution](https://github.com/magento/magento2/commit/df92debe)_
* __Product images not resized when added as configurable product__
  Previously, images added through Configurations in the admin panel did not adhere to the maximum upload size limit, which could lead to inconsistencies and management challenges. Now, a fix has been implemented to ensure that images are automatically resized during upload to comply with the maximum size limit, streamlining the process and maintaining system standards.
  _ACP2E-3504 - [GitHub code contribution](https://github.com/magento/magento2/commit/df92debe)_

### Shipping

* __Doucment should be updated for % implementation which is not correct in official document__
  Updated the devdoc for DHL Rest API support
  _AC-14507_
* __[DHL]-Handle Optional Dimensions in Regular Size Settings and Price Variance Between REST and XML API Integrations__
  _AC-14601 - [GitHub code contribution](https://github.com/magento/magento2/commit/1e3bde4c)_
* __Exception while creating UPS shipping label__
  Fixed Warning: Array to string conversion during UPS shipping label creation
  _ACP2E-3676 - [GitHub code contribution](https://github.com/magento/magento2/commit/b12ffe36)_

### Staging & Preview

* __Previewing a scheduled update opens the first store view in alphabetical order instead of the store view of interest__
  Previous to the fix, the preview of a scheduled update opened in the first store view in alphabetical order instead of the assigned store view.
After the fix, the preview now correctly opens in the store view assigned to the CMS block staging update.
  _ACP2E-3671 - [GitHub code contribution](https://github.com/magento/magento2/commit/b12ffe36)_
* __Staging_apply_version Cron behavior issue -  special_price ignored__
  After the fix, quotes totals will be recalculated after changing special price by scheduled product update.
  _ACP2E-3674_

### Tax

* __Tax amount isn&apos;t updated when gift wrapping removed from the cart__
  _AC-14637_
