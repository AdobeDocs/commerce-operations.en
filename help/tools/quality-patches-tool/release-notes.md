---
title: Release notes
description: Learn about the patches available for Adobe Commerce and the issues they resolve.
exl-id: 22262555-f5ea-49ad-98ad-ea8428ef66d5
---
# Release notes

The [[!DNL Quality Patches Tool]](https://github.com/magento/quality-patches) delivers individual patches developed by Adobe and the Magento Open Source community. It allows you to apply, revert, and view general information about all individual patches that are available for the installed version of Adobe Commerce or Magento Open Source. You can apply patches to Adobe Commerce and Magento Open Source projects regardless of who developed the patch. For example, you can apply a patch developed by the community to Adobe Commerce projects.

>[!INFO]
>
>See [Apply patches](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html#apply-individual-patches) for instructions on applying patches to your Adobe Commerce or Magento Open Source projects. See [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the Software Update Guide to review a full list of released patches.

>[!INFO]
>
>For information about [!DNL quality patches] created by the Community for Magento Open Source, see the [release notes](https://github.com/magento/quality-patches/blob/master/community-release-notes.md).

## v1.1.34 {#v1-1-34}

* **ACSD-52277** (for Adobe Commerce and Magento Open Source >=2.4.0 <2.4.7) - Fixes the issue where an admin user is not redirected properly after selecting a store view when creating a new order in Admin.
* **ACSD-50813** (for Adobe Commerce >=2.4.5 <2.4.7) - Fixes the issue where Admin was not able to add bundled products containing a slash in the SKU with the [!UICONTROL Add Products by SKU] functionality to the admin order.
* **ACSD-51630** (for Adobe Commerce and Magento Open Source >=2.4.3 <2.4.7) - Fixes the issue where a large amount of system messages slows the downloading of admin pages.
* **ACSD-51853** (for Adobe Commerce and Magento Open Source >=2.4.1 <2.4.7) - Fixes the issue where copied text styles are not applied when using the [!UICONTROL Page Builder].
* **ACSD-52160** (for Adobe Commerce and Magento Open Source >=2.4.4 <2.4.7) - Fixes the issue where the product validation result against the cart price rule was not properly evaluated based on the rule condition 'If an item is FOUND/NOT FOUND in the cart with All/Any of these conditions true'.
* **ACSD-51636** (for Adobe Commerce >=2.4.5 <2.4.7) - Fixes the issue where the company admin cannot add new users from the customer account section despite having all necessary roles and permissions.
* **ACSD-51739** (for Adobe Commerce >=2.4.6 <2.4.7) - Fixes the issue where an error is returned when the `structure_id` is requested in a CompanyTeam GraphQL request.
* **ACSD-51857** (for Adobe Commerce and Magento Open Source >=2.4.0 <2.4.7) - Fixes the issue where the slow performance of the `aggregate_sales_report_bestsellers_data` cron report on large sales_order and `sales_order_item` database tables was due to the way the main data query was written.
* **ACSD-48448** (for Adobe Commerce and Magento Open Source >=2.4.2 <2.4.7) - Fixes the issue where there is a race condition issue happening during the order cancellations, which causes a duplicated entry in the `inventory_reservation` table.
* **ACSD-52689** (for Adobe Commerce and Magento Open Source >=2.4.3 <2.4.6) - Fixes the issue where images cannot be uploaded to Amazon S3 storage using REST API.
* **B2B-2674** (for Adobe Commerce and Magento Open Source >=2.4.4 <2.4.7) - Add caching capability to the 1customAttributeMetadata1 GraphQL query.
* Added new versions for ACSD-44938.
* Added requirements for ACSD-46988.

## v1.1.33 {#v1-1-33}

* **ACSD-50478** (for Adobe Commerce and Magento Open Source >=2.4.0 <2.4.5) - Fixes the database rollback command for a case when the DB dump contains triggers and a *delimiter* SQL command.
* **ACSD-50512** (for Adobe Commerce >=2.4.5 <2.4.7) - Fixes the *Error: The downloadable link isn't related to the product. Verify the link and try again.* error that happens when updating the start date for a downloadable product staging update.
* **ACSD-50949** (for Adobe Commerce and Magento Open Source >=2.4.2 <2.4.7) - Fixes the issue where the price filter in Advanced search doesn't return proper results when used along the SKU filter.
* **ACSD-51645** (for Adobe Commerce and Magento Open Source >=2.4.6 <2.4.7) - Fixes the error thrown when saving a new Cart Price Rule if the extension `Magento_OfflineShipping` is disabled.
* **ACSD-50895** (for Adobe Commerce >=2.4.5 <2.4.7) - Fixes the issue where [!DNL Google Analytics] 3 GTM tags are not fired if [!DNL Google Analytics] 4 GTM is not configured.
* **ACSD-51102** (for Adobe Commerce >=2.4.2 <2.4.7) - Fixes the issue where a catalog rule that is applied to a large number of products is not correctly indexed when the rule is enabled by a scheduled update.
* **ACSD-50368** (for Adobe Commerce and Magento Open Source >= 2.4.3 <2.4.5) - Fixes the issue where the customer's `group_id` is ignored when a customer is created via Async REST API or Async Bulk REST API.
* **ACSD-51497** (for Adobe Commerce and Magento Open Source >=2.3.7 <2.4.0 || >= 2.4.1 <2.4.7) - Fixes the issue where a customer can't sort a catalog page by Custom Attribute of the dropdown type.
* **ACSD-51408** (for Adobe Commerce and Magento Open Source >=2.3.7 < 2.4.7) - Fixes the issue where the order item status is incorrectly set to *[!UICONTROL Backordered]*.
* **ACSD-51735** (for Adobe Commerce and Magento Open Source >=2.4.4 <2.4.5) - Fixes the issue where the order item status is incorrectly set to *[!UICONTROL Ordered]* when the product stock is *0*.
* **ACSD-51792** (for Adobe Commerce and Magento Open Source >=2.4.5 <2.4.6) - Fixes the issue where a page does not have the impression event when [!DNL Google Tag Manager] 4 is enabled.
* **ACSD-51471** (for Adobe Commerce >=2.4.3 <2.4.7) - Fixes the issue where an admin user cannot save a scheduled update for a bundled product that uses a simple product that itself has a scheduled update.
* **ACSD-51700** (for Adobe Commerce and Magento Open Source >=2.4.3 <2.4.7) - Fixes the error that happens when switching store views on a downloadable product edit page in the admin.
* **ACSD-51120** (for Adobe Commerce >=2.3.7 <2.4.3) - Fixes the issue where GraphQL GET requests cache is not cleared for CMS pages that contain CMS blocks that are updated via a staging update.
* **ACSD-51240** (for Adobe Commerce >=2.4.4 <2.4.6) - Fixes the issue where the uploaded file is missing if the registration is done via the company registration form.
* **ACSD-51907** (for Adobe Commerce >=2.4.2 <2.4.3) - Fixes the issue where a restricted admin user cannot create a credit memo with an offline refund.
* **ACSD-52148** (for Adobe Commerce and Magento Open Source >=2.4.0 <2.4.4) - Fixes the issue where the [!DNL Google V3 reCAPTCHA] Admin login fails occasionally.
* **ACSD-51431** (for Adobe Commerce and Magento Open Source >=2.3.7 <2.4.7) - Fixes the issue where an indexer status is *working* even if there are no new entries in the changelog.
* **ACSD-51892** (for Adobe Commerce and Magento Open Source >=2.4.6 <2.4.7) - Fixes the performance issue where config files load multiple times during deployment.
* Deprecated ACSD-51114.

## v1.1.32 {#v1-1-32}

* **ACSD-49628** (for Adobe Commerce and Magento Open Source >=2.4.2 <2.4.7) - Fixes the issue where the [!UICONTROL Page Builder's] multiple errors prevent admin from saving a product without content permissions.
* **ACSD-51305** (for Adobe Commerce and Magento Open Source >=2.4.6 <2.4.7) - Fixes the issue where out-of-stock configurable child products are not available in the GraphQL response.
* **ACSD-50621** (for Adobe Commerce >=2.3.7 <2.4.7) - Fixes the issue where [!UICONTROL Tier Prices] for different websites in the shared catalog are not visible when trying to edit them in a multi-website environment.
* **ACSD-51041** (for Adobe Commerce and Magento Open Source >=2.3.7 <2.4.0 || >=2.4.1 <2.4.6) - Improves performance of price indexer.
* **ACSD-51379** (for Adobe Commerce and Magento Open Source >=2.3.7 <2.4.7) - Fixes the issue where changes made to page text content via [!UICONTROL Page Builder] are not saved.
* **ACSD-49480** (for Adobe Commerce and Magento Open Source >=2.4.4 <2.4.6) - Fixes the issue where only one cart price rule is applied to the cart.
* **ACSD-51230** (for Adobe Commerce >=2.3.7 <2.4.7) - Fixes the issue where the gift card account is deleted when a partial refund of a simple product is processed from an order.
* **ACSD-51238** (for Adobe Commerce and Magento Open Source >=2.4.4 <2.4.7) - Fixes the issue where the inventory source is removed when updating configurable products and editing the price.
* **ACSD-50794** (for Adobe Commerce >=2.4.1 <2.4.7) - Fixes the issue where the gift message or gift wrapping details are not updated in the database when removing it through GraphQL.
* **ACSD-51528** (for Adobe Commerce and Magento Open Source >=2.4.5 <2.4.7) - Fixes the issue where the *x_forwarded_for* column has null values in the *sales_order* table.
* **ACSD-50849** (for Adobe Commerce >=2.4.4 <2.4.6) - Fixes the issue where adding a new product to the category after clearing the cache results in a mismatch of positions and selections of the  existing products.
* **ACSD-51294** (for Adobe Commerce and Magento Open Source >=2.4.5 <2.4.7) - Fixes the issue where GTM/GA price, quantity, tax, shipping, and revenue are sent as a string to [!DNL Google Analytics] and GTM.
* **ACSD-51204** (for Adobe Commerce and Magento Open Source >=2.4.3 <2.4.7) - Fixes the issue where a fully sold product doesn't return back in stock after creating a credit memo.
* **ACSD-51291** (for Adobe Commerce and Magento Open Source >=2.4.4 <2.4.4-p4 || >=2.4.5 <2.4.5-p3) - Fixes the issue where restricted admin with access to one website can add images/videos to the product assigned to multiple websites.
* Added new versions for ACSD-50336.
* Replaced patches ACSD-49970.

## v1.1.31 {#v1-1-31}

* **ACSD-50345** (for Adobe Commerce and Magento Open Source >=2.4.3 <2.4.4 || >=2.4.4-p1 <2.4.6) - Fixes the issue where Recaptcha v2 does not reload after submitting a failed payment.
* **ACSD-50817** (for Adobe Commerce and Magento Open Source >=2.3.7 <2.4.7) - Optimizes Cron job `sales_clean_quotes` to run faster.
* **ACSD-49392** (for Adobe Commerce and Magento Open Source >=2.3.7 <2.4.0 || >= 2.4.1 <2.4.7) - Fixes the issue where the order status changes to closed after a partial refund for a bundled product.
* **ACSD-51036** (for Adobe Commerce and Magento Open Source >=2.4.4 <2.4.5) - Fixes the issue where race conditions during concurrent REST API calls result in an overwrite of shipping status information in the [!UICONTROL Items Ordered] table.
* **ACSD-50858** (for Adobe Commerce and Magento Open Source >=2.4.4 <2.4.7) - Improves performance for loading banners contents.
* Added new versions for MDVA-39305-v2, ACSD-45169.
* Updated patches ACSD-50260-v2.

## v1.1.30 {#v1-1-30}

* **ACSD-50336** (for Adobe Commerce and Magento Open Source >=2.4.4-p1 <2.4.4-p3) - Fixes the issue where product alert emails are not sent when a product is back in stock or the price is changed.
* **ACSD-50367** (for Adobe Commerce and Magento Open Source >=2.3.7 <2.4.7) - Fixes the issue where customer address export does not work when a multi-select customer address attribute without values is created.
* **ACSD-49877** (for Adobe Commerce and Magento Open Source >=2.3.7 <2.4.7) - Fixes the issue where video autoplay does not work on mobile [!DNL Safari] when the video is linked directly to a remote video file and not a streaming service.
* **ACSD-50165** (for Adobe Commerce and Magento Open Source >=2.4.0 <2.4.7) - Fixes the error *The file can't be deleted. Warning!unlink: No such file or directory* when flushing JS/CSS cache from the Admin.
* **ACSD-49737** (for Adobe Commerce and Magento Open Source >=2.4.1-p1 <2.4.7) - Fixes the issue where a coupon is incorrectly marked as used after a failed card payment.
* **ACSD-50814** (for Adobe Commerce and Magento Open Source >=2.4.6 <2.4.7) - Fixes the issue where an admin user is not able to create a credit memo.
* **ACSD-50116** (for Adobe Commerce and Magento Open Source >=2.3.7 <2.4.7) - Fixes the issue where an admin user cannot create a URL rewrite for subcategories level 3 or lower.
* **ACSD-49513** (for Adobe Commerce and Magento Open Source >=2.4.3 <2.4.5) - Fixes the issue where remote storage synchronization fails because of 0-byte files.
* **ACSD-46683** (for Adobe Commerce and Magento Open Source >=2.4.2 <2.4.7) - Fixes the issue where the shipping price shows *Not yet calculated*.
* **ACSD-49129** (for Adobe Commerce and Magento Open Source >=2.4.2 <2.4.6) - Fixes the issue where the *[!UICONTROL content]* attribute (base64 image code) is not returned in `rest/V1/products/sku/media` product media API responses.
* **ACSD-50276** (for Adobe Commerce >=2.4.0 <2.4.7) - Fixes the issue where the customer registration form doesn't work on the storefront if a multi-select customer attribute is created.
* **ACSD-50527** (for Adobe Commerce >=2.3.7 <2.4.7) - Fixes the error that occurs when saving a page with an empty dynamic block.
* **ACSD-49973** (for Adobe Commerce and Magento Open Source >=2.4.4 <2.4.5) - Improves performance of fetching bundled products through GraphQL.
* **ACSD-51114** (for Adobe Commerce and Magento Open Source >=2.4.3 <2.4.7) - Fixes the issue where a random product disappears from large catalogs when asynchronous indexing is enabled. Improves performance of asynchronous reindexing for large catalogs.
* **B2B-2598** (for Adobe Commerce and Magento Open Source >=2.4.4 <2.4.7) - Add caching capability to the [!UICONTROL availableStores], [!UICONTROL countries], [!UICONTROL country], [!UICONTROL currency], and [!UICONTROL storeConfig] GraphQL queries.
* Added new versions for MDVA-42806, ACSD-48627, ACSD-46815.
* Updated patches metadata for ACSD-49773, ACSD-47179, ACSD-48300.

## v1.1.29 {#v1-1-29}

* **ACSD-49389** (for Adobe Commerce and Magento Open Source >=2.4.0 <2.4.7) - Fixes the issue where a ready-to-pick-up email is sent by API when the order is not ready for pickup.
* **ACSD-49822** (for Adobe Commerce >=2.3.7 <2.4.7) - Fixes the issue where updates in the [!UICONTROL Requisition List] page are not reflected on the [!UICONTROL Print Requisition List].
* **ACSD-48771** (for Adobe Commerce and Magento Open Source >=2.4.5 <2.4.7) - Fixes the issue with upgrading the column-block content type from older [!DNL Page Builder] versions.
* **ACSD-49464** (for Adobe Commerce >=2.3.7 <2.4.7) - Fixes the issue where invoices, shipments, and credit memos are not moved back from the archive when the orderId is different.
* **ACSD-49773** (for Adobe Commerce and Magento Open Source >=2.4.2 <2.4.6) - Fixes the issue where product export fails when AWS S3 is used as remote storage.
* **ACSD-49748** (for Adobe Commerce >=2.3.7 <2.4.7) - Fixes the issue where invitations cannot be sent.
* **ACSD-49502** (for Adobe Commerce >=2.4.3 <2.4.7) - Fixes the issue where the downloadable link is not updated properly after a staging update is applied to the downloadable product.
* **ACSD-49527** (for Adobe Commerce >=2.4.2 <2.4.7) - Fixes the issue where GraphQL company roles don't display pagination correctly.
* **ACSD-49706** (for Adobe Commerce and Magento Open Source >=2.3.7 <2.4.7) - Fixes the issue where the default value is saved for a visual swatch attribute when no value is selected.
* **ACSD-49835** (for Adobe Commerce and Magento Open Source >=2.4.5 <2.4.7) - Fixes the issue where the Use default checkbox value is not saved correctly on a store level for a multi-select attribute.
* **ACSD-49898** (for Adobe Commerce and Magento Open Source >=2.4.4 <2.4.6) - Fixes the issue where the products grid throws an exception when a bundled product has a special price that exceeds 1000.
* **ACSD-50234** (for Adobe Commerce and Magento Open Source >=2.3.7 <2.4.5) - Fixes the issue with the wrong customer name in the confirmation email if placing an order with [!DNL PayPal].
* **ACSD-49960** (for Adobe Commerce and Magento Open Source >=2.4.5 <2.4.7) - Fixes the issue where filtering by date does not work for the customer order grid.
* **ACSD-49849** (for Adobe Commerce and Magento Open Source >=2.3.7 <2.4.6) - Fixes the issue where customer email was replaced with [!DNL PayPal] email when placing an order with [!DNL PayPal Express] via GraphQL.
* **ACSD-49839** (for Adobe Commerce >=2.3.7 <2.4.7) - Fixes the issue where Shared Catalog Pricing and structure throws an error in Admin when products have single or double quotes in SKU.
* **ACSD-49970** (for Adobe Commerce and Magento Open Source >=2.4.5 <2.4.7) - Fixes incorrect handling of GraphQL errors when [!DNL New Relic] reporting is turned on.
* **ACSD-50260** (for Adobe Commerce and Magento Open Source >=2.4.5 <2.4.7) - Fixes the issue where GraphQL product search results are limited to 10,000 results only.
* **ACSD-48813** (for Adobe Commerce and Magento Open Source >=2.4.3 <2.4.7) - Fixes the issue where the search is not showing relevant results based on the search weight of the attributes.

## v1.1.28 {#v1-1-28}

* **ACSD-48204** (for Adobe Commerce and Magento Open Source >=2.3.7 <2.4.3) - Fixes the issue where a catalog price rule created based on the Yes/No attribute does not consider the selected scope.
* **ACSD-47704** (for Adobe Commerce and Magento Open Source >=2.3.7 <2.4.7) - Fixes the issue where the bundled product shows the price of in stock products only.
* **ACSD-49370** (for Adobe Commerce and Magento Open Source >=2.3.7 <2.4.7) - Fixes the issue where the *Date Time* product attribute has a *FilterMatchTypeInput* type in GraphQL schema.
* **ACSD-48807** (for Adobe Commerce and Magento Open Source >=2.4.1 <2.4.7) - Fixes the issue where customer Product Reviews are not filtered by storeview via GraphQL.
* **ACSD-49433** (for Adobe Commerce and Magento Open Source >=2.4.3 <2.4.7) - Fixes the issue where the default amount is shown as subtotal in the cart for gift card with an open amount.
* **ACSD-48866** (for Adobe Commerce and Magento Open Source >=2.3.7 <2.4.7) - Fixes the issue where an error occurs when requesting RSS feed for categories.
* **ACSD-48784** (for Adobe Commerce and Magento Open Source >=2.3.7 <2.4.7) - Fixes the issue where the customer segment prices are incorrectly cached between customer groups.
* **ACSD-48857** (for Adobe Commerce and Magento Open Source >=2.4.3 <2.4.7) - Fixes the issue where a user is unable to save changes after editing with Page Builder.
* **ACSD-49065** (for Adobe Commerce and Magento Open Source >=2.3.7 <2.4.7) - Fixes the issue where quote items are not visible in the Admin if only assigned to the custom stock.
* **ACSD-49179** (for Adobe Commerce and Magento Open Source >=2.4.2 <2.4.7) - Fixes the issue where the Orders Report shows incorrect amounts in case of different currencies for different stores.
* **ACSD-49286** (for Adobe Commerce and Magento Open Source >=2.4.3 <2.4.7) - Fixes the issue where a product is added twice to a cart when multiple product widgets are present on the page.
* **ACSD-49574** (for Adobe Commerce >=2.4.4 <2.4.7) - Adds functionality to support Gift Card product updates in a cart via GraphQL.
* Updated patch: ACSD-48694.

## v1.1.27 {#v1-1-27}

* **ACSD-48362** (for Adobe Commerce >=2.4.1 <2.4.7) - Fixes the issue where the default shipping address is used instead of a new one when placing an order using a negotiable quote.
* **ACSD-48059** (for Adobe Commerce >=2.3.7 <2.4.7) - Fixes the issue where merchants cannot save the "[!UICONTROL Match product by rule]" in the category.
* **ACSD-48216** (for Adobe Commerce and Magento Open Source >=2.3.7 <2.3.8 || >=2.4.0 <2.4.7) - Fixes the issue where [!UICONTROL AUTO_INCREMENT] of the [!UICONTROL inventory_source_item] table increases on the [!UICONTROL UPDATE] operation.
* **ACSD-47908** (for Adobe Commerce and Magento Open Source >=2.3.7 <2.3.8 || >=2.4.0 <2.4.7) - Fixes the error "A value less than or equal to 0 is expected" when selecting the source and qty on the shipping step during checkout.
* **ACSD-49497** (for Adobe Commerce and Magento Open Source >=2.3.7 <2.4.6) - Fixes the issue where an order remains in the processing state after shipment and a partial refund is applied.
* **ACSD-48694** (for Adobe Commerce and Magento Open Source >=2.3.7 <2.3.8 || >=2.4.1 <2.4.7) - Fixes the issue where the error "Invalid state change requested" prevents a customer from placing an order.
* **ACSD-49013** (for Adobe Commerce and Magento Open Source >=2.4.3 <2.4.7) - Fixes the issue where email confirmation is not translated to the website locale when creating customers using bulk API.
* **ACSD-48164** (for Adobe Commerce and Magento Open Source >=2.3.7 <2.4.7) - Fixes the issue where a restricted admin cannot save a website-level value.
* **ACSD-48404** (for Adobe Commerce and Magento Open Source >=2.4.0 <2.4.4) - Fixes the issue where "Remember Category Pagination = Yes" causes an error when pressing the browser's back button.
* **ACSD-48634** (for Adobe Commerce and Magento Open Source >=2.3.7 <2.4.7) - Fixes JS errors on a staging update page when "[!UICONTROL Google Analytics Content Experiments]" is enabled.
* **ACSD-49042** (for Adobe Commerce and Magento Open Source >=2.4.4 <2.4.5) - Fixes the issue where a product with infinite backorder cannot be ordered from the Storefront.
* Updated patches: ACSD-48366, ACSD-48661.

## v1.1.26 {#v1-1-26}

* **ACSD-47937** (for Adobe Commerce and Magento Open Source 2.4.4 || >=2.4.5 <2.4.6) - Fixes the issue where price drop notifications are not always sent due to application-level caching.
* **ACSD-48661** (for Adobe Commerce and Magento Open Source >=2.3.7 <2.4.7) - Fixes the issue where if the company's credit limit is larger than 999, the comma separator prevents the saving of the company due to a validation error.
* **ACSD-48773** (for Adobe Commerce and Magento Open Source >=2.4.2 <2.4.7) - Fixes the issue where the reward points email template is taken from the wrong store.
* **ACSD-48587** (for Adobe Commerce and Magento Open Source >=2.3.7 <2.4.7) - Fixes the issue where HTML special characters in the products widget matching rules prevent them from displaying matching products.
* **ACSD-48212** (for Adobe Commerce and Magento Open Source >=2.3.7 <2.4.6) - Fixes the issue where product import assigns the product to the wrong source.
* **ACSD-47988** (for Adobe Commerce and Magento Open Source >=2.3.7 <2.4.6) - Fixes the issue where product export trims HTML tags from the page builder product description.
* **ACSD-48366** (for Adobe Commerce and Magento Open Source >=2.4.4 <2.4.6) - Fixes the issue where the product image is not displayed on the Back to Stock email template.
* **ACSD-48417** (for Adobe Commerce and Magento Open Source >=2.4.5 <2.4.7) - Fixes the issue where an SQL error appears after creating a schedule change for a product and saving another product.

## v1.1.25 {#v1-1-25}

* **ACSD-48058** (for Adobe Commerce and Magento Open Source >=2.4.5 <2.4.6) - Fixes the issue where product price reindex is not working if the bundle product is not assigned to any website.
* **ACSD-48262** (for Adobe Commerce and Magento Open Source >=2.4.5 <2.4.6) - Fixes the issue where products are not visible on the frontend when "Allow All Products Per Page" setting is set to Yes.
* **ACSD-48293** (for Adobe Commerce and Magento Open Source >=2.4.3 <2.4.4) - Fixes the issue where the composite products go out of stock when the child products that were sold out are returned to stock.
* **ACSD-47520** (for Adobe Commerce and Magento Open Source >=2.4.0 <2.4.6) - Fixes the issue where customers lose reward points when a credit memo is created.
* **ACSD-48044** (for Adobe Commerce and Magento Open Source >=2.4.0 <2.4.4) - Fixes the issue where applying multiple gift cards to a single order with multi-shipping prevents orders from being placed.
* **ACSD-48300** (for Adobe Commerce and Magento Open Source >=2.4.0 <2.4.6) - Fixes the issue where a return cannot be created if the configurable product is removed.
* **ACSD-47910** (for Adobe Commerce and Magento Open Source >=2.4.4 <2.4.6) - Fixes the issue of missing orders, invoices, shipments, and credit memos in respective entity grids.
* **ACSD-47292** (for Adobe Commerce and Magento Open Source >=2.4.4 <2.4.6) - Fixes the issue where out-of-stock bundled products are not available in the GraphQL response if the "show out-of-stock products" is set to Yes.
* **ACSD-48234** (for Adobe Commerce and Magento Open Source >=2.4.5 <2.4.6) - Fixes the issue where the catalog search result shows an incorrect category item count when the "show out of stock" option is enabled.
* **ACSD-48313** (for Adobe Commerce and Magento Open Source >=2.4.0 <2.4.5) - Fixes the issue where the "configurable_variations" column is not parsed if the attribute value contains a comma. The same parsing algorithm is used for "additional_attributes.
* **ACSD-48627** (for Adobe Commerce and Magento Open Source >=2.4.5 <2.4.6) - Fixes the issue where the out-of-stock configurable product causes an error when sending a GraphQL request to get cart details.
* Updated patch: MDVA-39384.

## v1.1.24 {#v1-1-24}

* **ACSD-45168** (for Adobe Commerce and Magento Open Source >=2.4.2 <2.4.6) - Fixes the issue where SEO-friendly URLs are not generated for products that have *url_key* attributes overridden on the store-view level.
* **ACSD-46865** (for Adobe Commerce and Magento Open Source >=2.4.4 <2.4.6) - Fixes the issue where the Shipment and Credit Memo grid is not populated when asynchronous indexing is enabled.
* **ACSD-47004** (for Adobe Commerce and Magento Open Source >=2.4.2 <2.4.6) - Fixes the issue where VAT is not applied to a billing address without a VAT ID.
* **ACSD-47803** (for Adobe Commerce and Magento Open Source >=2.4.0 <2.4.6) - Fixes the issue where out-of-stock configurable product swatches are displayed as available.
* **ACSD-47137** (for Adobe Commerce and Magento Open Source >=2.4.4 <2.4.6) - Improves the loading speed of the image gallery when the pub/media folder is very big.
* **ACSD-46770** (for Adobe Commerce and Magento Open Source >=2.4.0 <2.4.6) - Fixes the issue where admin order emails are sent even when the *Email order confirmation* is unchecked.
* **ACSD-47955** (for Adobe Commerce and Magento Open Source >=2.4.4 <2.4.6) - Fixes the issue where GraphQL does not display the cart discount correctly.
* **ACSD-46617** (for Adobe Commerce and Magento Open Source >=2.4.0 <2.4.6) - Fixes the issue where the *Continue to Checkout* button is greyed out even if the subtotal is greater than the configured *Minimum Order Amount*.
* **ACSD-47079** (for Adobe Commerce and Magento Open Source >=2.4.4 <2.4.5) - Fixes the issue where composite products (bundle, grouped, and configurable) stock status are not updated when sub-product stock status changes via REST API POST /rest/V1/inventory/source-items.
* **ACSD-47336** (for Adobe Commerce and Magento Open Source >=2.4.0 <2.4.6) - Fixes *Something went wrong.* error when dismissing notifications in the Commerce Admin.
* **ACSD-47559** (for Adobe Commerce and Magento Open Source >=2.4.0 <2.4.6) - Fixes the issue where the Preview Email Template area is not fully visible.
* **ACSD-47920** (for Adobe Commerce and Magento Open Source >=2.4.0 <2.4.6) - Fixes the issue where orders can be placed via Rest API as a guest user even when the *Allow Guest Checkout* is turned off.
* Replaced patches: MDVA-39305, MDVA-42855.

## v1.1.23 {#v1-1-23}

* **ACSD-47179** (for Adobe Commerce and Magento Open Source >=2.4.0 <2.4.6) - Fixes the issue where an admin with restricted access to a specific scope cannot delete product reviews.
* **ACSD-47107** (for Adobe Commerce and Magento Open Source >=2.4.2 <2.4.5) - Fixes the issue where the Catalog Price Rule discount is applied to custom product options.
* **ACSD-47232** (for Adobe Commerce and Magento Open Source >=2.4.0 <2.4.6) - Fixes the issue where coupons with total weight conditions cannot be applied in the Admin.
* **ACSD-46519** (for Adobe Commerce and Magento Open Source >=2.4.1 <2.4.6) - Fixes the issue where the GraphQL categoryList request returns an incorrect product_count for an anchor category.
* **ACSD-47027** (for Adobe Commerce and Magento Open Source >=2.4.2 <2.4.6) - Fixes a slow updateCompanyRole GraphQL request.
* **ACSD-47666** (for Adobe Commerce and Magento Open Source >=2.4.0 <2.4.6) - Fixes the issue where the filter function does not work in the Admin > System > Permissions > User roles > a role > Role Users grid.
* **ACSD-47497** (for Adobe Commerce and Magento Open Source >=2.4.0 <2.4.6) - Fixes the issue where the Services tab is not visible in the Configuration under the Admin.
* Updated patch: ACSD-47743.
* Replaced patches: MDVA-42807.

## v1.1.22 {#v1-1-22}

* **ACSD-47444** (for Adobe Commerce and Magento Open Source >=2.4.0 <2.4.3) - Fixes the _Trying to access array offset on value of type bool_ error when accessing certain non-existing category paths for known products on PHP 7.4.
* **ACSD-47332** (for Adobe Commerce and Magento Open Source >=2.4.0 <2.4.6) - Fixes the issue where cron fails with an error that is only reported when running between 00:00 and 00:59 UTC.
* **ACSD-47280** (for Adobe Commerce and Magento Open Source >=2.4.0 <2.4.6) - Fixes the issue where disabling the shared catalog feature on a specific scope does not work correctly.
* **ACSD-47106** (for Adobe Commerce and Magento Open Source >=2.4.4 <2.4.6) - Fixes the issue where a value cannot be saved in a new custom attribute on a company creation page.
* Updated patch: ACSD-45143.

## v1.1.21 {#v1-1-21}

* **ACSD-46809** (for Adobe Commerce and Magento Open Source >=2.4.2 <2.4.6) - Fixes the issue where a user gets an error when assigning a large number of product sources.
* **ACSD-46856** (for Adobe Commerce and Magento Open Source >=2.4.0 <2.4.6) - Improves performance updating tier prices via System > Configuration > Import > Advanced Pricing.
* **ACSD-46541** (for Adobe Commerce and Magento Open Source >=2.4.0 <2.4.4) - Fixes the issue where an admin user cannot create a credit memo if an order item is deleted.
* **ACSD-46581** (for Adobe Commerce and Magento Open Source >=2.4.0 <2.4.6) - Fixes the issue where the estimated tax total is not updated after selecting a country in the shopping cart.
* **ACSD-46618** (for Adobe Commerce and Magento Open Source >=2.4.0 <2.4.6) - Fixes the issue where the product list widget shows incorrect cached prices for a logged-in customer.
* **ACSD-46674** (for Adobe Commerce and Magento Open Source >=2.4.0 <2.4.6) - Fixes the issue where custom options of an image type are displayed as HTML in customer emails.
* **ACSD-46988** (for Adobe Commerce and Magento Open Source >=2.4.4 <2.4.6) - Fixes the issue where the GraphQL 'currency' API Request returns NULL values for a custom currency.
* **ACSD-47076** (for Adobe Commerce and Magento Open Source >=2.4.1 <2.4.5) -  Fixes the issue where Vimeo videos cannot be played on the storefront.
* **ACSD-45071** (for Adobe Commerce and Magento Open Source >=2.4.2 <2.4.4) - Fixes the issue where the default source is added to the product during import.
* **AC-3023** (for Adobe Commerce and Magento Open Source >=2.4.0 <2.4.6) - Update DHL scheme to latest version 10.0.
* Updated patches: MDVA-42584.
* Replaced patches: MDVA-36572, ACSD-45241.

## v1.1.20 {#v1-1-20}

* **ACSD-46520** (*for Adobe Commerce and Magento Open Source >=2.4.0 <2.4.5*) - Fixes the issue where a user gets an incorrect order status when refunded using the store credit.
* **ACSD-46703** (*for Adobe Commerce and Magento Open Source >=2.4.4 <2.4.6*) - Fixes the issue where it is not possible to drag and drop custom options on a product edit page.
* **ACSD-44851** (*for Adobe Commerce and Magento Open Source >=2.4.0 <2.4.6*) - Fixes the issue where a category with subcategories is unable to open or expand.
* **ACSD-46815** (*for Adobe Commerce and Magento Open Source >=2.4.5 <2.4.6*) - Fixes the issue where category tree request is limited to 20 categories.
* **ACSD-45675** (*for Adobe Commerce and Magento Open Source >=2.4.0 <2.4.6*) - Fixes the issue where the product export uses category names from the *Default Store View* scope.
* **ACSD-46869** (*for Adobe Commerce and Magento Open Source >=2.4.4 <2.4.6*) - Fixes the issue where a configurable product in a cart is not updated via a *PUT REST API* request without changing the product quantity.
* **MDVA-42768-V2** (*for Adobe Commerce and Magento Open Source >=2.4.2 <2.4.3*) - Fixes the issue where Configurable product displays regular price as *0* when *Display Out-of-Stock* is *Yes*.
* Updated patches: MDVA-44562, ACSD-46213, MDVA-41305, MDVA-38346, MDVA-13203.
* Deprecated patch: MDVA-42768.

## v1.1.19 {#v1-1-19}

* **ACSD-46213** (*for Adobe Commerce and Magento Open Source >=2.4.2 <2.4.3*) - Fixes the issue where category tree request is limited to 20 categories.
* **ACSD-45781** (*for Adobe Commerce and Magento Open Source >=2.4.1 <2.4.2*) - Fixes the issue where the store front search field is not displayed on mobile.
* **ACSD-46192** (*for Adobe Commerce and Magento Open Source >=2.3.6 <2.4.5*) - Fixes the issue with using the `async/bulk/V1/configurable-products/bySku/options` endpoint.
* **ACSD-46404** (*for Adobe Commerce and Magento Open Source >=2.4.4 <2.4.5*) - Fixes the issue where an admin user cannot log in after upgrading to 2.4.4.
* Updated patches: MDVA-41305, MDVA-38626, MDVA-38728, MDVA-41061-V4, MDVA-42269, MDVA-39305.

## v1.1.18 {#v1-1-18}

* **ACSD-45817** (*for Adobe Commerce and Magento Open Source >=2.4.2 <2.4.4*) - Fixes the issue where a GraphQL product mutation for a specific store returns all configurable variants, including those not assigned to the requested store.
* **ACSD-46146** (*for Adobe Commerce and Magento Open Source >=2.3.0 <2.4.6*) - Fixes the issue where two order confirmation emails are sent after placing an order from the Admin.
* **ACSD-45255** (*for Adobe Commerce >=2.4.3 <2.4.6*) - Fixes an exception on the Low Stock Report page for a restricted admin user.
* **ACSD-45488** (*for Adobe Commerce and Magento Open Source >=2.4.2 <2.4.6*) - Fixes the issue where a configurable product with multiple sources is not returned to In Stock automatically.
* **ACSD-45754** (*for Adobe Commerce and Magento Open Source >=2.3.1 <2.4.6*) - Fixes the issue where Reward points are not added after applying a coupon to the cart.
* **ACSD-45849** (*for Adobe Commerce >=2.4.3 <2.4.4*) - Fixes the issue where video metadata is lost after a staging update is applied.
* **ACSD-45257** (*for Adobe Commerce and Magento Open Source >=2.3.4 <2.4.4*) - Fixes the issue where GraphQL doesn't display a cart discount correctly.
* **ACSD-44938** (*for Adobe Commerce and Magento Open Source >=2.4.0 <2.4.4*) - Fixes the issue where `VAT_ID` cannot be applied in a GraphQL request for a guest user.
* Updated patches: MDVA-43417.

## v1.1.17 {#v1-1-17}

* **ACSD-45241** (*for Adobe Commerce and Magento Open Source >=2.3.5 <2.4.4*) - Fixes the issue where stock quantity for a virtual product is miscalculated after creating a credit memo.
* **ACSD-43887** (*for Adobe Commerce and Magento Open Source >=2.4.2 <2.4.5*) - Fixes the issue where incorrect details are displayed on the checkout payment page when Purchase Orders for companies are enabled.
* **ACSD-45143** (*for Adobe Commerce and Magento Open Source >=2.4.0 <2.4.5*) - Fixes the issue where the `setShippingAddressesOnCart` mutation doesn't allow setting numeric region code as *region*.
* **ACSD-44591** (*for Adobe Commerce and Magento Open Source >=2.4.3 <2.4.6*) - Fixes the error that occurs when an order is placed without CAPTCHA confirmation.
* **ACSD-45520** (*for Adobe Commerce and Magento Open Source >=2.3.0 <2.4.6*) - Fixes the issue where swatch options are not pre-selected on the product detail page when a user edits configurable products from the shopping cart.
* **ACSD-45169** (*for Adobe Commerce and Magento Open Source >=2.4.1 <2.4.6*) - Fixes the issue where [!DNL Visual Merchandiser] doesn't display the correct stock and price for a configurable product after a staging update is applied.
* **ACSD-45424** (*for Adobe Commerce and Magento Open Source >=2.3.4 <2.4.6*) - Fixes the issue where an incorrect reservation compensation is created after a partial refund (credit memo).
* **MDVA-42807** (*for Adobe Commerce and Magento Open Source >=2.3.1 <2.4.6*) - Fixes the issue where the custom currency sign is not displayed on the store front.
* Updated patches: MDVA-42689, AC-3022.

## v1.1.16 {#v1-1-16}

* **MDVA-44703** (*for Adobe Commerce and Magento Open Source >=2.4.3 <2.4.4*) - Fixes the issue where order totals in the Orders report are miscalculated for the restricted admin user.
* **MDVA-44940** (*for Adobe Commerce and Magento Open Source >=2.4.3 <2.4.4*) - Fixes the SQL error that occurs while saving the category from the Admin.
* **MDVA-44562** (*for Adobe Commerce and Magento Open Source >=2.4.0 <2.4.2-p2*) - Fixes the issue where the non-default store id for quote items is overridden by the default store id, despite the GraphQL request originating from the non-default store view.
* **MDVA-43167** (*for Adobe Commerce and Magento Open Source >=2.4.2 <2.4.4*) - Fixes the issue where admin order grid mass action doesn't apply for multi-page when admin user selects all orders.
* **MDVA-44044** (*for Adobe Commerce and Magento Open Source >=2.3.0 <2.4.2-p2*) - Fixes the issue where a product is not displayed on the category page after it is assigned to a new website.
* **MDVA-42509** (*for Adobe Commerce and Magento Open Source >=2.3.3 <2.4.4*) - Fixes the issue where a CSV could not be uploaded for a quick order resulting in an *Unable to send the cookie* error.
* Updated patches: MDVA-41061, MDVA-42584.
* The prefix for the new [!DNL Quality Patches Tool] patches will be changed from *MDVA* to *ACSD* due to internal process changes.

## v1.1.15 {#v1-1-15}

* **MDVA-40961** (*for Adobe Commerce and Magento Open Source >=2.4.3 <2.4.4*) - Fixes the issue where an additional item can't be added to the cart when the minimum qty of the item is already in the cart.
* **MDVA-44887** (*for Adobe Commerce and Magento Open Source >=2.4.4 <2.4.5*) - Fixes the *Uncaught SyntaxError: Unexpected token 'const'* error in the Admin panel.
* **MDVA-43718** (*for Adobe Commerce and Magento Open Source >=2.3.0 <2.4.5*) - Fixes *The consumer isn't authorized to access %resources.* error that appears when accessing a shared catalog from a custom integration.
* **MDVA-44660** (*for Adobe Commerce and Magento Open Source >=2.4.2-p1 <2.4.5*) - Fixes the issue where the grave accent character ``` ` ``` could not be used for a customer's first and last name.
* **MDVA-40896** (*for Adobe Commerce and Magento Open Source >=2.4.3 <2.4.4*) - Fixes the *Error: TypeError: Argument 3 passed to Magento* error in async product bulk API.
* **MDVA-38559** (*for Adobe Commerce and Magento Open Source >=2.4.0 <2.4.3*) - Fixes the */V1/customers/search API* error for customers with more than one subscription.
* **MDVA-44533** (*for Adobe Commerce and Magento Open Source >=2.3.1 <2.4.4*) - Fixes the issue where the discount is wrongly applied to a bundle child product.
* Updated patches: MDVA-41061, MDVA-42269.

## v1.1.14 {#v1-1-14}

* **MDVA-43983** (*for Adobe Commerce and Magento Open Source >=2.4.2 <2.4.5*) - Fixes the issue where products *Not Visible Individually* still appear in Catalog Advanced Search Results.
* **MDVA-44100** (*for Adobe Commerce and Magento Open Source >=2.4.3 <2.4.5*) - Fixes the issue where all FPTs are assigned to the last product in the shopping cart and reset for other products.
* **MDVA-43605** (*for Adobe Commerce and Magento Open Source >=2.3.1 <2.4.5*) - Fixes the issue where order data returns negative values for row totals when using Rest API.
* **MDVA-43102** (*for Adobe Commerce and Magento Open Source >=2.3.1 <2.4.5*) - Fixes the issue where the salable quantity is not updated correctly when a refund is done via REST API.
* **MDVA-43178** (*for Adobe Commerce and Magento Open Source >=2.4.3-p2 <2.4.5*) - Fixes the issue where a customer token for a custom store cannot be retrieved in GraphQL.
* **MDVA-43859** (*for Adobe Commerce and Magento Open Source >=2.4.1 <2.4.5*) - Fixes the issue where the error *No such entity with customerId =* is logged when a deleted customer tries to log in.
* **MDVA-44147** (*for Adobe Commerce and Magento Open Source >=2.4.2 <2.4.5*) - Fixes the issue where a GraphQL request doesn't return Requisition Lists.
* **MDVA-44505** (*for Adobe Commerce and Magento Open Source >=2.4.1 <2.4.3*) - Fixes the issues where GraphQL Applying Reward Points does not update Grand Total and where store credit is applied multiple times during the order placement.
* Updated patches: MDVA-29148, MDVA-36464-V5, MDVA-42584, MDVA-39993-V2.

## v1.1.13 {#v1-1-13}

* **MDVA-42969** (*for Adobe Commerce and Magento Open Source >=2.4.1 <2.4.3*) - Fixes the issue where the Related Product Rule works only when Customer Segment is set to *All*.
* **MDVA-39605** (*for Adobe Commerce and Magento Open Source >=2.3.4 <2.4.5*) - Fixes the issue where Redis cache TTL (expiration date) has a wrong value.
* **MDVA-43862** (*for Adobe Commerce and Magento Open Source >=2.3.3 <2.4.5*) - Fixes the issue where the customer can't update cart items because of a GraphQL *UpdateCartItems mutation* error.
* **MDVA-43824** (*for Adobe Commerce and Magento Open Source >=2.3.6 <=2.3.7-p3 || >=2.4.1 <2.4.5*) - Fixes the issue where an error appears on canceling orders with a discount.
* **MDVA-43451** (*for Adobe Commerce and Magento Open Source >=2.4.3 <2.4.5*) - Fixes the issue where the error *The store that was requested wasn't found. Verify the store and try again.* appears while configuring a shared catalog for a specific website.
* **MDVA-43491** (*for Adobe Commerce and Magento Open Source >=2.3.5 <2.4.5*) - Fixes the issue where the base image label doesn't update when importing products for a multi-store website.
* **MDVA-43601** (*for Adobe Commerce and Magento Open Source >=2.3.0 <2.4.5*) - Fixes the issue with missing triggers after full reindex.
* **MDVA-42046** (*for Adobe Commerce and Magento Open Source >=2.3.4 <=2.3.5-p2 || >=2.4.0 <2.4.5*) - Fixes the issue where an incorrect value is assigned to a product attribute with a date input field while updating a product.
* **MDVA-43935** (*for Adobe Commerce and Magento Open Source >=2.4.1 <2.4.5*) - Fixes the issue where Upsell product is shown twice.
* **MDVA-44188** (*for Adobe Commerce and Magento Open Source >=2.4.3 <2.4.5*) - Fixes the issue where system-issued emails with `.-` in addresses are not sent.
* **MDVA-42283** (*for Adobe Commerce and Magento Open Source >=2.3.0 <2.4.5*) - Fixes the issue where the date-time format in the admin order grid for the French locale is invalid.
* Updated patches: MDVA-41061-V2, MDVA-36309, MDVA-30862, MDVA-39713.
* Added patches metadata for the [!DNL Site-Wide Analysis Tool].

## v1.1.12 {#v1-1-12}

* **MDVA-39713** (*for Adobe Commerce and Magento Open Source >=2.3.0 <2.3.6*) - Fixes the issue where the user is able to edit the start time for an active scheduled update.
* **MDVA-42410** (*for Adobe Commerce and Magento Open Source >=2.3.0 <2.4.5*) - Fixes the issue where coupon reports display only the default base currency.
* **MDVA-41136** (*for Adobe Commerce and Magento Open Source >=2.3.0 <2.4.5*) - Fixes the issue where the expiration date of the `mage-cache-sessid` is not extended, resulting in customer data cleanup.
* **MDVA-39993** (*for Adobe Commerce and Magento Open Source >=2.3.5 <=2.3.7-p2 || >=2.4.0 <2.4.4*) - Fixes the issue where inventory changes done through API do not reflect on the product page on the frontend.
* **MDVA-42855** (*for Adobe Commerce and Magento Open Source >=2.4.3 <2.4.5*) - Fixes the issue where a new customer address is not saved to the address book during checkout.
* **MDVA-42645** (*for Adobe Commerce and Magento Open Source >=2.4.3 <2.4.5*) - Fixes the issue where the Admin cannot refund reward points if store credit functionality is disabled.
* **MDVA-43414** (*for Adobe Commerce and Magento Open Source >=2.3.6 <=2.3.7-p2*) - Fixes the PHP fatal error that occurs when running the `inventory.reservations.updateSalabilityStatus` queue consumer on numerical SKUs.
* **MDVA-41628** (*for Adobe Commerce and Magento Open Source >=2.4.0 <2.4.5*) - Fixes the issue where existing restricted admin users get access to the new resources when new modules are added.
* **MDVA-43348** (*for Adobe Commerce and Magento Open Source >=2.4.2 <2.4.5*) - Fixes the issue where gift card GraphQL request shows an error if `gift_card_options` contain *uid*.
* **MDVA-39546** (*for Adobe Commerce and Magento Open Source >=2.3.0 <2.4.5*) - Fixes the issue where the start date for staging update could be set to an earlier date than the current date during editing.
* **MDVA-42950** (*for Adobe Commerce and Magento Open Source >=2.3.0 <2.4.5*) - Fixes the issue where videos don't play on the product page.
* **MDVA-42689** (*for Adobe Commerce and Magento Open Source >=2.3.0 <2.4.4*) - Fixes the issue where Adobe Commerce throws an *Integrity Constraint Violation* error while updating product categories during import.
* **MDVA-41229** (*for Adobe Commerce and Magento Open Source >=2.3.0 <2.4.5*) - Fixes the issue where images available on the backend do not display on the frontend after configurable products import.
* **MDVA-43731** (*for Adobe Commerce and Magento Open Source >=2.4.3 <2.4.4*) - Fixes the issue where *Search Synonyms* no longer work when value is added in *Minimum Terms to Match*.
* **MDVA-43232** (*for Adobe Commerce and Magento Open Source >=2.3.4 <2.4.5*) - Fixes the issue where sorting products in [!DNL Visual Merchandiser] by Special Price To Bottom/Top causes an error while saving the category.
* **MDVA-43726** (*for Adobe Commerce and Magento Open Source >=2.3.3 <2.4.3*) - Fixes the issue where the Catalog price rule based on store-level attribute match fails to apply after partial reindex.
* Updated patches: MDVA-36464, MDVA-37478, MDVA-38608.
* Added patches metadata for the [!DNL Site-Wide Analysis Tool].

## v1.1.11 {#v1-1-11}

* **MDVA-42790** (*for Adobe Commerce and Magento Open Source >=2.4.3 <2.4.5*) - Fixes the issue where product price attributes cannot be updated for a specific website via REST API.
* **MDVA-41350** (*for Adobe Commerce and Magento Open Source >=2.3.0 <2.4.5*) - Fixes the issue where an exception is thrown when an admin user with restricted access adds a product outside their role scope by SKU in an order.
* **MDVA-42269** (*for Adobe Commerce and Magento Open Source >=2.4.3-p1 <2.4.5*) - Fixes the issue where an admin user cannot log in to the Admin due to the *TypeError: strtotime() expects parameter 1 to be string, null given* error.
* **MDVA-40830** (*for Adobe Commerce and Magento Open Source >=2.3.0 <2.4.5*) - Fixes the issue where the store credit is applied multiple times during order placement.
* **MDVA-42237** (*for Adobe Commerce and Magento Open Source >=2.4.2 <2.4.5*) - Fixes the issue where a configurable product special price is not updated after changes in its subproduct price.
* **MDVA-42520** (*for Adobe Commerce and Magento Open Source >=2.4.3 <2.4.4*) - Fixes the issue where the tax rate is applied twice if *Enable Cross Border Trade* is used.
* Updated patches: MDVA-27239, MDVA-39305, MDVA-41236, MDVA-36832.
* Deprecated patch: MDVA-37725.

## v1.1.10 {#v1-1-10}

* **MDVA-38728** (*for Adobe Commerce and Magento Open Source >=2.3.2 <2.4.5*) - Fixes the issue where mass attribute update creates URL rewrite for Default Store only after changing *Product visibility*.
* **MDVA-43091** (*for Adobe Commerce and Magento Open Source >=2.4.3 <2.4.4*) - Fixes the issue where ordering a bundle product from the Admin in the backend gives the error *You cannot use decimal quantity for this product*.
* **MDVA-40816** (*for Adobe Commerce and Magento Open Source >=2.3.0 <2.4.5*) - Fixes the issue where related product rules show products from categories not defined in the rule conditions.
* **MDVA-41305** (*for Adobe Commerce and Magento Open Source >=2.4.2 <2.4.5*) - Fixes the issue where GraphQL mutation doesn't return configurable product options after adding it to the wishlist.
* **MDVA-39181** (*for Adobe Commerce and Magento Open Source >=2.4.1 <2.4.5*) - Fixes the issue where related product rules show products from categories not defined in the rule conditions.
* **MDVA-42584** (*for Adobe Commerce and Magento Open Source >=2.4.2 <2.4.3*) - Fixes the issue where configurable stock status in the backend is not updated after changing qty and stock status via Import or API.
* **MDVA-40175** (*for Adobe Commerce and Magento Open Source >=2.4.0 <2.4.3*) - Fixes the issue where *Click to change shipping method* doesn't show radio buttons to select shipping methods in the Admin during reorder.
* **MDVA-42768** (*for Adobe Commerce and Magento Open Source >=2.3.4 <2.4.5*) - Fixes the issue where Configurable product displays regular price as 0 when *Display Out-of-Stock* is Yes.
* **MDVA-43201** (*for Adobe Commerce and Magento Open Source >=2.4.2 <2.4.4*) - Fixes the issue where an error occurs in customer login when using DOB attribute with certain locales.
* Updated patches: MDVA-35092, MDVA-33970.

## v1.1.9 {#v1-1-9}

* **MDVA-38346** (*for Adobe Commerce and Magento Open Source >=2.3.0 <2.4.5*) - Fixes the issue where date filters are not working properly when the Adobe Commerce timezone is different from the local environment timezone.
* **MDVA-42657** (*for Adobe Commerce and Magento Open Source >=2.4.1 <2.4.5*) - Fixes the issue where the admin user is unable to select categories in the customer segment conditions.
* **MDVA-42806** (*for Adobe Commerce and Magento Open Source >=2.4.2 <2.4.4*) - Fixes the issue where a *New company registration* email is sent each time an existing company is updated via REST API.
* **MDVA-37984** (*for Adobe Commerce and Magento Open Source >=2.4.1 <2.4.5*) - Fixes the issue where the [!DNL Visual Merchandiser] *Match product by rule* functionality does not correctly filter products with staging updates.
* **MDVA-40488** (*for Adobe Commerce and Magento Open Source >=2.4.2 <2.4.4*) - Fixes the issue where configurable products with out-of-stock child products are not shown in their correct price range.
* **MDVA-42507** (*for Adobe Commerce and Magento Open Source >=2.4.3 <2.4.5*) - Fixes the issue where the full-page cache is cleaned after applying staging update for the cart rule.
* **MDVA-39163** (*for Adobe Commerce and Magento Open Source >=2.3.5 <2.4.5*) - Fixes the issue where shipping methods are not available when a new user is registered and products in the cart are from the guest session.
* **MDVA-38626** (*for Adobe Commerce and Magento Open Source >=2.3.3 <2.4.5*) - Fixes the issue where the admin user is not able to place an order on the backend using the [!DNL PayPal Payflow Pro] payment.
* **MDVA-38666** (*for Adobe Commerce and Magento Open Source >=2.3.2 <2.3.6*) - Fixes the issue where the admin user is not able to change the configurable product options in the customer's cart.
* **MDVA-38526** (*for Adobe Commerce and Magento Open Source >=2.4.1 <2.4.4*) - Fixes the issue where the admin user is not able to access the [!DNL Site-Wide Analysis tool].
* Updated patches: MDVA-40101.

## v1.1.8 {#v1-1-8}

* **MDVA-41215** (*for Adobe Commerce and Magento Open Source >=2.3.0 <2.4.4*) - Fixes the issue where users get the 500 error after setting the *mage-messages* cookie if it already exists, but there are no new messages.
* **MDVA-41139** (*for Adobe Commerce and Magento Open Source >=2.4.3 <2.4.4*) - Fixes the issue where configurable products become Out of Stock after product import when a simple product's qty=0 for one of its sources.
* **MDVA-42326** (*for Adobe Commerce and Magento Open Source >=2.3.6 <=2.3.7-p2 || >=2.4.1 <2.4.4*) - Fixes the issue where customers get an error on checkout after a session timeout even if the persistent shopping cart is enabled.
* **MDVA-42341** (*for Adobe Commerce and Magento Open Source >=2.4.2 <2.4.4*) - Fixes the issue where the `categoryList` GraphQL query does not filter results if a request has the Store header.
* **MDVA-38393** (*for Adobe Commerce and Magento Open Source >=2.3.0 <2.4.4*) - Fixes the issue where Catalog rules stop working for a configurable product if its simple product is re-named.
* **MDVA-39153** (*for Adobe Commerce and Magento Open Source >=2.4.2 <2.4.4*) - Fixes the issue where a discount amount is calculated incorrectly during reorder in the Admin.
* Updated patches: MDVA-28993, MDVA-41061, MDVA-35984.

## v1.1.7 {#v1-1-7}

* **MDVA-39711** (*for Adobe Commerce and Magento Open Source >=2.3.0 <2.4.3*) - Fixes the issue where admin users cannot access the customer's grid after deleting the website.
* **MDVA-40311** (*for Adobe Commerce and Magento Open Source >=2.4.2-p2 <2.4.4*) - Fixes the issue where admin users get the error message *Invalid security or form key. Please refresh the page* after login to the Admin if the custom Admin path is configured and secret key is enabled.
* **MDVA-41631** (*for Adobe Commerce and Magento Open Source >=2.4.1 <2.4.4*) - Fixes the issue where users get an error when trying to retrieve order information without an optional *telephone* value through GraphQL.
* **MDVA-27239** (*for Adobe Commerce and Magento Open Source >=2.3.0 <2.3.6*) - Fixes the issue where cross-sell products are not displayed.
* Updated patches: MDVA-37068, MDVA-35254, MDVA-41164, MDVA-37916, MDVA-37478, MDVA-34551, MDVA-31791.

## v1.1.6 {#v1-1-6}

* **MDVA-40550** (*for Adobe Commerce and Magento Open Source >=2.3.5 <2.4.4*) - Fixes the issue with missing products on the frontend during reindexing.
* **MDVA-40120** (*for Adobe Commerce and Magento Open Source >=2.4.1 <2.4.4*) - Fixes the issue where GraphQL sorting by DESC/ASC doesn't work with products having the same relevance or price.
* **MDVA-41399** (*for Adobe Commerce and Magento Open Source >=2.3.3 <2.4.2*) - Fixes the issue where admin users are unable to access the *Manage Shopping Cart* page if a customer adds a product to the wishlist.
* **MDVA-40609** (*for Adobe Commerce and Magento Open Source >=2.4.2 <2.4.3*) - Fixes the issue where disabled products data is absent in the `cataloginventory_stock_status` index table, displaying incorrect disabled product quantities.
* **MDVA-39031** (*for Adobe Commerce and Magento Open Source >=2.4.1 <2.4.4*) - Fixes the issue where adding a product to the cart via GraphQL is possible even if it is not assigned to the target website.
* **MDVA-41597** (*for Adobe Commerce and Magento Open Source >=2.4.2 <2.4.4*) - Fixes the issue where users get an error when adding more than one configurable product to the cart using GraphQL.
* **MDVA-27456** (*for Adobe Commerce and Magento Open Source >=2.3.5 <2.3.7*) - Fixes the issue where users get an error when trying to load [!DNL Swagger].
* **MDVA-32776** (*for Adobe Commerce and Magento Open Source >=2.4.0 <2.4.2*) - Fixes the issue where stock status is not updated when an order is placed but not shipped.
* **MDVA-30862** (*for Adobe Commerce and Magento Open Source >=2.3.4 <2.4.0*) - Fixes the issue with the incorrect order date on the printed PDF invoice.
* Improved the index page for the [!DNL Quality Patch Tool]. Added convenient search and filtering for [!DNL quality patches] at the latest version of the tool.
* Updated patches: MDVA-33382, MDVA-39482.

## v1.1.5 {#v1-1-5}

* **MDVA-41236** (*for Adobe Commerce and Magento Open Source >=2.3.0 <2.4.4*) - Fixes the issue where it is impossible to create a new or edit an existing scheduled update for a product if the End Date has been previously removed.
* **MDVA-41046** (*for Adobe Commerce and Magento Open Source >=2.3.0 <2.4.4*) - Fixes the issue where simple products with custom options are available for assigning to configurable/grouped products.
* **MDVA-40545** (*for Adobe Commerce and Magento Open Source >=2.3.0 <2.4.4*) - Fixes the issue where only the first node for a page was retrieved even if there was more than one node for the same page.
* **MDVA-41164** (*for Adobe Commerce and Magento Open Source >=2.4.2 <2.4.3-p1*) - Fixes the issue where an admin user is not able to save or edit a Company with a file or image type custom customer attribute.
* **MDVA-39229** (*for Adobe Commerce and Magento Open Source >=2.3.0 <2.4.4*) - Fixes the issue which causes the following error to appear after updating Catalog rule Staging Update start time: *Cron Job staging_synchronize_entities_period has an error: The active update can't be deleted.*
* **MDVA-40619** (*for Adobe Commerce and Magento Open Source >=2.3.0 <2.4.4*) - Fixes the issue where changes to CMS page hierarchy cause a 500 error when attempting to do inline editing on a CMS page.
* **MDVA-41061** (*for Adobe Commerce and Magento Open Source >=2.4.2 <2.4.3*) - Fixes the issue where stock status resets to salable when a product is saved from the Admin.
* **MDVA-31763** (*for Adobe Commerce and Magento Open Source >=2.3.0 <2.4.4*) - Fixes the issue where catalog price rules are reverted (or not applied) until manual reindex.
* **MDVA-37748** (*for Adobe Commerce and Magento Open Source >=2.4.2 <2.4.3*) - Fixes the issue where a GraphQL query returns products not assigned to a shared catalog.

## v1.1.4 {#v1-1-4}

* **MDVA-40399** (*for Adobe Commerce and Magento Open Source >=2.4.2 <2.4.4*) - Fixes the issue where partial invoices for the same order cannot be created simultaneously via REST API.
* **MDVA-40101** (*for Adobe Commerce and Magento Open Source >=2.3.2 <2.4.0*) - Fixes the issue where items are not removed from the mini cart after a successful order placement using [!DNL PayPal Express] Checkout.
* **MDVA-40401** (*for Adobe Commerce and Magento Open Source >=2.3.6 <=2.3.7-p2 || >=2.4.1 <2.4.4*) - Fixes the issue where coupon usage value changes even if placing an order fails.
* **MDVA-40537** (*for Adobe Commerce and Magento Open Source >=2.3.4 <=2.4.0-p1*) - Fixes the issue where users get an error when creating a store view if several CMS pages with the same URL key exist.
* **MDVA-37725** (*for Adobe Commerce and Magento Open Source >=2.3.0 <=2.4.3-p1*) - Fixes the issue where asynchronous order emails sent from non-default websites contain logo URLs from the default website.
* **MDVA-39482** (*for Adobe Commerce and Magento Open Source >=2.3.6 <=2.3.7-p2 || >=2.4.1 <2.4.4*) - Fixes the issue where a product goes out of stock if imported with "0" quantity when backorders enabled.
* **MDVA-40435** (*for Adobe Commerce and Magento Open Source >=2.3.4 <2.4.4*) - Fixes the issue with an incorrect discount on bundle products with dynamic prices when applied via GraphQL.
* **MC-42528** (*for Adobe Commerce and Magento Open Source >=2.4.3 <=2.4.3-p1*) - Fixes the issue where the `categoryList` GraphQL query returns both assigned and unassigned categories.
* **MDVA-29400** (*for Adobe Commerce and Magento Open Source >=2.3.0 <=2.3.7-p1 || >=2.4.0 <=2.4.0-p1*) - Fixes the issue with duplicated orders placed with [!DNL PayPal Express Checkout].
* **MDVA-26005** (*for Adobe Commerce and Magento Open Source >=2.3.4 <=2.3.5-p2*) - Fixes the issue where it is impossible to select a category in a category tree for Cart Price rule conditions.
* **MDVA-25631** (*for Adobe Commerce and Magento Open Source >=2.3.3 <=2.3.5-p2*) - Improves performance for editing and saving customer segments that contain a large number of customers.

## v1.1.3 {#v1-1-3}

* **MDVA-40262** (*for Adobe Commerce and Magento Open Source >=2.4.2 <2.4.4*) - Fixes the issue where GraphQL search queries are not shown in popular search terms in the Admin.
* **MDVA-40601** (*for Adobe Commerce and Magento Open Source >=2.3.1 <=2.4.2-p2*) - Fixes the issue where users get an error when trying to get information about the category changed by scheduled update through GraphQL.
* **MDVA-37234** (*for Adobe Commerce and Magento Open Source >=2.3.5 <2.4.0 || >=2.4.1 <=2.4.2-p2*) - Fixes the issue where adding an item to the cart multiple times (parallel request) for the same SKU creates a duplicate line item for the same cart ID.
* **MDVA-33606** (*for Adobe Commerce and Magento Open Source >=2.4.1 <=2.4.2-p2*) - Fixes the issue where users get a *Unique constraint violation* error when saving a CMS page assigned to a hierarchy.
* **MDVA-31590** (*for Adobe Commerce and Magento Open Source >=2.4.0 <=2.4.1-p1*) - Fixes the issue where users are not able to update attributes in bulk using MySQL async queues.
* **MDVA-36309** (*for Adobe Commerce and Magento Open Source >=2.4.2 <=2.4.2-p2*) - Fixes the issue where product search by attributes is slow in the admin grids.

## v1.1.2 {#v1-1-2}

* **MDVA-38929** (*for Adobe Commerce and Magento Open Source >=2.3.0 <2.4.4*) - Fixes the issue where the invoice with FPT shows a wrong Grand Total when the order is paid from the store credit.
* **MDVA-37364** (*for Adobe Commerce and Magento Open Source >=2.4.0 <=2.4.3*) - Fixes the issue where the custom customer attribute of date type breaks the customer's grid UI.
* **MDVA-39195** (*for Adobe Commerce and Magento Open Source >=2.4.2 <=2.4.2-p2*) - Fixes the issue where *Add to Cart* button was inactive on the category page when redirect to cart enabled.
* **MDVA-37115** (*for Adobe Commerce and Magento Open Source >=2.4.2 <=2.4.2-p2*) - Fixes the issue where an unnecessary *Only 0 left* notice is shown on the configurable product page.
* **MDVA-39521** (*for Adobe Commerce and Magento Open Source >=2.4.0 <2.4.4*) - Fixes the issue where the user is not able to set shipping addresses on the cart with an empty telephone number via GraphQL.
* **MDVA-39384** (*for Adobe Commerce and Magento Open Source >=2.3.1 <=2.3.6 || >=2.4.1 <=2.4.3*) - Fixes the issue where the custom customer attribute for a company user is not saved.
* **MDVA-39043** (*for Adobe Commerce and Magento Open Source >=2.3.4 <=2.4.3*) - Fixes the issue where the admin user with limited access gets an error when trying to add the *Products* widget to the CMS page.
* **MDVA-39966** (*for Adobe Commerce and Magento Open Source >=2.3.0 <=2.3.5-p2 || >=2.4.0 <=2.4.0-p1*) - Fixes the issue with deploying incorrect locales.
* **MDVA-38852** (*for Adobe Commerce and Magento Open Source >=2.3.0 <=2.3.5-p2*) - Fixes the issue where the catalog inventory by design locks tables for updates that significantly decrease performance in cases with several parallel orders.
* **MDVA-39986** (*for Adobe Commerce and Magento Open Source >=2.4.1 <2.4.3*) - Fixes the issue where the user is not able to place an order in the Admin on MacOS using the Safari browser.
* **MDVA-38447** (*for Adobe Commerce and Magento Open Source >=2.4.2 <2.4.4*) - Fixes two issues: where the *Not visible individually* configurable child products are returned in GraphQL response and optimize MySQL query for GraphQL products query with category filter.
* **MDVA-40134** (*for Adobe Commerce and Magento Open Source >=2.4.2 <2.4.3*) - Fixes the issue where GraphQL does not return related products when the Shared Catalog is enabled.
* **MDVA-39935** (*for Adobe Commerce and Magento Open Source >=2.4.1 <2.4.4*) - Fixes the issue where the GraphQL returns configurable child products disabled at the website level.

## v1.1.1 {#v1-1-1}

* **MDVA-36021** (*for Adobe Commerce and Magento Open Source >=2.4.0 <2.4.4*) - Fixes the issue where the *Call to a member function getId()* error is displayed on the order details page in the Admin.
* **MDVA-34948** (*for Adobe Commerce and Magento Open Source >=2.3.6 <=2.3.6-p1 || >=2.4.0 <=2.4.0-p1*) - Fixes the issue with long-running queries, like `GET_LOCK`.
* **MDVA-39305** (*for Adobe Commerce and Magento Open Source >=2.4.0 <=2.4.2-p1*) - Fixes the issue where registered customers are not able to log in with enabled Google ReCaptcha.
* **MDVA-37897** (*for Adobe Commerce and Magento Open Source >=2.3.0 <2.4.4*) - Fixes the issue with an incorrect redirect when a customer tries to add products with options from the Recently Viewed widget.

## v1.1.0 {#v1-1-0}

* Patch categories were introduced in order to improve the user experience and make searching for required patches easier for customers.
* The `patches.json` file has been renamed to `support-patches.json`.
* **MDVA-38799** (*for Adobe Commerce >=2.3.0 <2.4.3*) - Fixes the issue where downloadable products weren't saved after creating a staging update.
* **MDVA-37592** (*for Adobe Commerce >=2.3.6 <=2.4.2-p1*) - Fixes the issue when sorting by price doesn't work correctly for products with a zero price assigned to the shared catalog.
* **MDVA-38827** (*for Adobe Commerce >=2.3.3-p1 <2.4.4*) - Fixes the issue where customers receive an order shipment email containing an error message.

## v1.0.26 {#v1-0-26}

* **MDVA-38468** (*for Adobe Commerce >=2.3.2 <=2.3.5-p2*) - Fixes the error when saving CMS pages: *Item with the same ID PAGE_ID already exists*.
* **MDVA-34680** (*for Adobe Commerce >=2.3.6 <=2.3.7 || >=2.4.1 <2.4.3*) - Fixes the issue where Customer Account created time is not filtered correctly in customers grid.
* **MDVA-37068** (*for Adobe Commerce >=2.3.1 <2.4.4*) - Fixes the issue where the incorrect tax rate displays when the shopping cart has only virtual products.
* **MDVA-38608** (*for Adobe Commerce >=2.3.0 <2.4.3*) - Fixes the issue where temporary tables are not deleted when the reindex is not finished successfully.
* **MDVA-38308** (*for Adobe Commerce >=2.3.5 <=2.3.6-p1 || >=2.4.0 <=2.4.1-p1 || >=2.4.2 <2.4.4*) - Fixes the issues related to adding [!DNL Vimeo] videos to products.

## v1.0.25 {#v1-0-25}

* **MDVA-37916** (*for Adobe Commerce >=2.3.6 <2.4.3*) - Fixes the issue where the customer is not taken to the Payment Confirmation page when using the [!DNL Paypal Payment Advanced] method.
* **MDVA-37082** (*for Adobe Commerce >=2.3.0 <2.4.3*) - Fixes the issue when saving the custom stock of grouped products causes the product to show out of stock in the frontend.
* **MDVA-36572** (*for Adobe Commerce >=2.3.5 <2.4.3*) - Fixes the issue when Credit Memo updates no longer cause duplicate product reservation updates in the database.
* **MDVA-38132** (*for Adobe Commerce >=2.3.3 <2.4.3*) - Fixes the issue when the Admin panel is unreachable due to a *too many redirects* error.
* **MDVA-38270** (*for Adobe Commerce >=2.4.1 <2.4.3*) - Fixes the issue with missing Gift card information in the order total in GraphQL.

## v1.0.24 {#v1-0-24}

* **MDVA-37779** (*for Adobe Commerce >=2.4.2 <=2.4.4*) - Fixes the issue with adding a configurable product to the cart via GraphQL when the website ID does not coincide with the store ID.
* **MDVA-36832** (*for Adobe Commerce >=2.3.4 <=2.4.2-p1*) - Fixes the issue where images duplicate on pages when view width is 768px.
* **MDVA-37874** (*for Adobe Commerce >=2.3.6 <=2.3.7 || >=2.4.1 <=2.4.2-p1*) - Fixes the issue where *Fixed discount amount for whole cart* is incorrectly applied to a bundle product containing more than one option.
* **MDVA-37913** (*for Adobe Commerce >=2.3.0 <=2.4.0-p1*) - Fixes the issue where downloadable links disappear if the downloadable product gets updated via API.
* **MDVA-34330** (*for Adobe Commerce >=2.3.1 <=2.4.2-p1*) - Fixes the issue where orders in the Orders grid are not filtered according to the Admin timezone.

## v1.0.23 {#v1-0-23}

* **MDVA-37478** (*for Adobe Commerce >=2.3.0 <=2.3.7*) - Fixes the issue where Adobe Commerce throws an error when creating a partial invoice for orders placed with the *Payment on Account* payment method through REST API.
* **MDVA-37362** (*for Adobe Commerce >=2.3.4 <=2.4.2-p1*) - Fixes the issue where configurable product option values and variant attribute values were empty in GraphQL response.
* **MDVA-37288** (*for Adobe Commerce 2.4.2*) - Fixes the issue where wrong tier prices were returned after GraphQL request.
* **MDVA-37225** (*for Adobe Commerce >=2.4.1 <=2.4.2-p1*) - Fixes the issue where the upload process is stuck during quick order creation when there is an integer value in imported SKUs.
* **MDVA-37224** (*for Adobe Commerce >=2.3.3 <=2.4.2-p1*) - Fixes the issue where customers cannot pay for negotiable quote with [!DNL PayFlow Pro] with another product in the cart.
* **MDVA-36286** (*for Adobe Commerce >=2.3.6 <=2.4.2-p1*) - Fixes the issue where Page Builder products widget preview breaks if the same SKU has a different position in subcategories.
* **MDVA-30186** (*for Adobe Commerce >=2.3.4 <=2.3.5-p2, >=2.4.0 <=2.4.0-p1, >=2.4.2 <=2.4.2-p1*) - Fixes the issue where attribute options are sorted by option value instead of attribute item count in GraphQL response.

## v1.0.22 {#v1-0-22}

* **MDVA-36718** (*for Adobe Commerce >=2.3.0 <=2.4.2*) - Fixes the issue where the old custom options remain after being changed via API.
* **MDVA-35773** (*for Adobe Commerce >=2.3.6 <=2.3.6-p1 || >=2.4.1 <=2.4.2*) - Fixes the issue with the Grand Total not being shown as zero on the Invoice for orders with 100% discount.
* **MDVA-36833** (*for Adobe Commerce 2.4.2*) - Fixes the issue with search results showing random numbers of products per page after excluding some products from shared catalog.
* **MDVA-37182** (*for Adobe Commerce >=2.4.1 <=2.4.2*) - Fixes the issue with getting incorrect search results in both [!DNL Elasticsearch] version 6 and version 7.
* **MDVA-36253** (*for Adobe Commerce >=2.4.0 <=2.4.1-p1*) - Fixes the issue where the wrong subtotal shows in the mini cart after item deletion.
* **MDVA-36853** (*for Adobe Commerce 2.4.2*) - Fixes the issue with no images appear when loading large media galleries.

## v1.0.21 {#v1-0-21}

* **MDVA-34665** (*for Adobe Commerce >=2.3.4 <=2.3.4-p2*) - Fixes the issue with missing bundled products on category pages.
* **MDVA-36615** (*for Adobe Commerce 2.4.2*) - Fixes the issue with incorrect product count in the Admin product grid.
* **MDVA-36464** (*for Adobe Commerce >=2.4.0 <=2.4.2*) - Fixes the issue where the email notification configuration is not working at store-view level.
* **MDVA-36138** (*for Adobe Commerce ^2.3.2*) - Fixes the issue where the shipping price is not adjusted and full shipping price is shown to customers if not all items in the cart qualify for the free shipping cart rule.
* **MDVA-36424** (*for Adobe Commerce >=2.3.0 <=2.3.3-p1 || >=2.0.0 <2.2.0*) - Fixes the issue where media images attached to page builder elements disappear when the content is being edited repeatedly if the backend base URL is different from the storefront base URL.
* **MDVA-35984** (*for Adobe Commerce ^2.4.0*) - Fixes the issue with incorrect product quantity and sellable quantity after creating multiple concurrent shipments for the same product.

## v1.0.20 {#v1-0-20}

* **MDVA-36170** (*for Adobe Commerce >=2.3.4 <2.4.2*) - This fixes the issue where the GraphQL query is not caching by using the category cache tag.
* **MDVA-33168** (*for Adobe Commerce >=2.3.3 <2.4.2*) - Fixes the issue when updating a product attribute via API all other attributes change to an empty value.
* **MDVA-19640** (*for Adobe Commerce >=2.3.0*) - Fixes the issue where [!DNL Advanced Reporting] is not showing any data.
* **MDVA-11189** (*for Adobe Commerce >=2.3.0 <2.3.5*) - Fixes the issue when after importing a CSV file to update product stock, rows from the `cataloginventory_stock` table are deleted.
* **MDVA-26639** (*for Adobe Commerce >=2.3.3-p1 <2.3.6*) - Fixes the issue where if a new order confirmation email template is created, the order items are missing in the order mail.
* **MDVA-15546** (*for Adobe Commerce >=2.3.0*) - Fixes the issue where after creating an order a *Column entity_id where clause is ambiguous* error displays in the exception log.
* **MDVA-21095** (*for Adobe Commerce >=2.3.0 <2.3.5*) - Fixes the issue when a query `INSERT INTO search_tmp` will not end after mass attribute value update.
* **MDVA-23845** (*for Adobe Commerce >=2.3.2-p2 <2.3.5*) - Fixes the issue where email templates cannot be previewed after JavaScript minification is enabled.
* **MDVA-22026** (*for Adobe Commerce >=2.3.2 <2.3.4*) - Fixes the issue where importing products from CSV file including images from external URLs fails.
* **MDVA-22383** (*for Adobe Commerce >=2.3.0 <2.3.4*) - Fixes the issue where saving a product takes a long time and the page breaks.
* **MC-41359** (*for Adobe Commerce >=2.3.6-p1 <2.3.7, >=2.4.2 <2.4.3*) - Fixes the issue of the incorrect SameSite cookie parameters settings.

## v1.0.19 {#v1-0-19}

* **MDVA-33614** (*for Adobe Commerce 2.4.1*) - Fixes the issue where Page Builder throws the following error: *An error has occurred while initiating Page Builder. Please consult with your technical support contact.*
* **MDVA-35356** (*for Adobe Commerce >=2.3.0 <2.4.3*) - Fixes the issue with incorrect store credit return after partially invoiced order cancellation.
* **MDVA-33289** (*for Adobe Commerce >=2.4.0 <2.4.3*) - Fixes the issue where raw JavaScript code is displayed in the billing address UI during checkout if [!DNL Google Tag Manager] is enabled.
* **MDVA-35982** (*for Adobe Commerce >=2.3.0 <2.4.3*) - Fixes the issue where admin users restricted to a specific website cannot create a shipment for the order placed on same website.
* **MDVA-35155** (*for Adobe Commerce >=2.3.0 <2.3.6*) - Fixes the issue where it is impossible to buy a bundle product if the option title was changed.
* **MDVA-35910** (*for Adobe Commerce >=2.4.1 <2.4.3*) - Fixes the issue where it is impossible to create a new customer account after disabling the Login as Customer functionality.
* **MDVA-34474** (*for Adobe Commerce >=2.3.0 <2.4.3*) - Fixes the issue with adding a product to the requisition list using the API.
* **MDVA-34591** (*for Adobe Commerce >=2.3.0 <2.4.3*) - Fixes the issue with an incorrect cart rule discount calculation for *Maximum Qty Discount is Applied To* and *Discount Qty Step (Buy X)*.
* **MDVA-33704** (*for Adobe Commerce >=2.4.0 <2.4.3*) - Fixes the issue where the *In store pickup* shipping option doesn't show up, though being configured to be available.
* **MDVA-34928** (*for Adobe Commerce >=2.3.5 <2.3.5-p2*) - Fixes the issue where the page loader is displayed indefinitely after the store credit is removed from the payment.
* **MDVA-35254** (*for Adobe Commerce >=2.3.1 <2.4.3*) - Fixes the issues with CAPTCHA during checkout.
* **MDVA-35569** (*for Adobe Commerce >=2.3.4 <2.4.2*) - Fixes the issue where the *fixed product taxes* field is not being populated in GraphQL response when state is specified.
* **MDVA-35847** (*for Adobe Commerce >=2.4.1 <2.4.3*) - Fixes the B2B issue where the Company Users form breaks if a custom customer attribute is used.
* **MDVA-31307** (*for Adobe Commerce >=2.4.0 <2.4.2*) - Fixes the issue where there are *Out of memory* errors on certain categories due to problems with dynamic CSP whitelisting for cached blocks.

## v1.0.18 {#v1-0-18}

* **MDVA-32655** (*for Adobe Commerce >=2.3.0 <2.4.3*) - Fixes the incorrect *in progress* message status to the correct *complete* message for consumer `quoteItemCleaner` after deleting several products.
* **MDVA-34102** (*for Adobe Commerce >=2.3.0 <2.4.3*) - Fixes the quantity of Default Stock is zero for disabled products on the Product Grid and Edit Product pages in the Admin area.
* **MDVA-35286** (*for Adobe Commerce >=2.4.0 <2.4.2*) - Fixes the issue where there is an error if a customer has bundled products in the cart and switches from Multiple Addresses checkout to Onepage checkout.
* **MDVA-35312** (*for Adobe Commerce >=2.4.1-p1 <2.4.2*) - Fixes response code 500 when an empty GraphQL request.
* **MDVA-34189** (*for Adobe Commerce >=2.3.4 <2.4.3*) - Fixes 503 first byte timeout on [!DNL Visual Merchandiser] queries when loading the Admin Category page.
* **MDVA-34695** (*for Adobe Commerce >=2.3.0 <2.4.1*) - Fixes negative `children_count` after deleting categories.

## v1.0.17 {#v1-0-17}

* **MDVA-34012** (*for Adobe Commerce >=2.3.1 <2.4.3*) - Fixes the issue where the *Use default value* checkbox gets cleared after the scheduled changes are applied. The issue appears once the scheduled changes are no longer in effect.
* **MDVA-35064** (*for Adobe Commerce >=2.3.3 <2.4.3*) - Fixes the issue where URL rewrites are not generated for configurable products created via API.
* **MDVA-34943** (*for Adobe Commerce >=2.3.0 <2.4.2*) - Fixes the issue where quick order caches the previously entered SKUs.
* **MDVA-35197** (*for Adobe Commerce >=2.3.5 <2.4.0*) - Fixes the issue where there's an error when adding to cart using GraphQL if previously added products become out of stock.
* **MDVA-34850** (*for Adobe Commerce >=2.3.1 <2.4.0*) - Fixes the issue where the out-of-stock options of a configurable product are not displayed instead of being displayed as struck-through.
* **MDVA-34867** (*for Adobe Commerce >=2.3.0 <2.4.3*) - Fixes the issue where values for a condition field set for a scheduled update are not being saved.
* **MDVA-35092** (*for Adobe Commerce >=2.3.5 <2.4.3*) - Fixes the issue where users are not able to add [!DNL Vimeo] videos due to deprecated [!DNL Vimeo] API.

## v1.0.16 {#v1-0-16}

* **MDVA-33453** (*for Adobe Commerce >=2.3.6 <2.4.3*) - Fixes the issue where Page Builder Products content type preview breaks if matching products have different prices for each website.
* **MDVA-32634** (*for Adobe Commerce ^2.3.1*) - Fixes the issue where the `url_path` of the category assigned to all store remains unchanged after moving the category in the hierarchy.
* **MDVA-33344** (*for Adobe Commerce ^2.3.0*) - Fixes the issue where hard coded `rma_item` entity default attribute set ID is used instead of the value from the database.
* **MDVA-34192** (*for Adobe Commerce >=2.3.4 <2.4.3*) - Fixes the issue where it is impossible to modify/specify customer date of birth using dd/mm/yyyy format.
* **MDVA-34847** (*for Adobe Commerce ^2.3.0*) - Fixes store IDs type conversion to integer for SQL condition in Admin collections for Admin User with custom permissions.
* **MDVA-34886** (*for Adobe Commerce ^2.3.2*) - Fixes the issue where search does not return results if *weight* product attribute is configured as searchable.

## v1.0.15 {#v1-0-15}

* **MDVA-33559** (*for Adobe Commerce >=2.3.0 <2.4.3*) - Fixes the issue of [!DNL PayPal Payflow Pro] payment failing with redirect parameter list format error.
* **MDVA-34023** (*for Adobe Commerce >=2.3.0 <2.4.3*) - Fixes the issue where the error *No such entity with addressId* displays randomly on visitors' browsers.
* **MDVA-32759** (*for Adobe Commerce >=2.3.1 <2.4.3 with B2B extension*) - Fixes the issue where Shared Catalogs are deleting existing tier pricing.
* **MDVA-33482** (*for Adobe Commerce ^2.3.5*) - Fixes the issue where generating a Credit Memo against a partial invoice results in tax for the total order instead of tax for that partial invoice.
* **MDVA-33393** (*for Adobe Commerce >=2.3.0 <2.4.2*) - Fixes the error *Provided countryId does not exist*.
* **MDVA-33632** (*for Adobe Commerce >=2.3.0 <2.3.7*) - Provides a fix where the exception message *This product is out of stock* is now displayed to an admin user when trying to re-order an out of stock product.
* **MDVA-34469** (*for Adobe Commerce >=2.4.1 <2.4.2*) - Fixes the issue where GraphQL mutations on a customer's cart fail when using multiple store views.
* **MDVA-33976** (*for Adobe Commerce >=2.3.0 <2.3.7*) - Fixes the issue where the bundle product is shown Out Of Stock on the storefront after removing the second option from the bundle product.
* **MDVA-33894** (*for Adobe Commerce >=2.4.0 <2.4.1 with B2B extension*) - Fixes multiple issues for Quick Order functionality including adding and removing multiple products and SKU case sensitivity.
* **MDVA-27664** (*for Adobe Commerce >=2.3.4 <2.3.6*) - Fixes the issue in the customer registration form causing an error to display: *ERROR - The Date of Birth should not be greater than today.*
* **MDVA-33970** (*for Adobe Commerce >=2.3.4 <2.4.2*) - Fixes the issue where there is the wrong currency sign in the Credit Memo when the price attribute's scope is set to website.
* **MDVA-33992** (*for Adobe Commerce >=2.3.0 <2.4.2*) - Fixes the issue of B2B special pricing displaying incorrectly during checkout.
* **MDVA-34100** (*for Adobe Commerce >=2.3.4 <2.4.2 with B2B extension*) - Fixes the issue where a company account cannot be created from the company structure page.

## v1.0.14 {#v1-0-14}

* **MDVA-31969** (*for Adobe Commerce >=2.3.3 <2.3.5, >=2.4.0 <2.4.2*) - Fixes the issue with duplicated images after product import from a CSV file.
* **MDVA-33382** (*for Adobe Commerce >=2.3.0 <2.4.2*) - Fixes the issues with indexers invalidation after products removal from a category.
* **MDVA-28511** (*for Adobe Commerce >=2.3.5 <2.3.6*) - Fixes the issue where it is not possible to complete [!DNL PayPal] checkout if the Name field contains certain characters (like accented capital letters).
* **MDVA-31519** (*for Adobe Commerce >=2.3.5 <2.3.6*) - Fixes the issue with wait timeouts in guest checkout when a site-wide sales rule is in use.
* **MDVA-33281** (*for Adobe Commerce >=2.3.4 <2.3.6*) - Fixes the issue where there is a fatal error in `inventory:reservation:list-inconsistencies` because of wrong SKU parameter type.
* **MDVA-24201** (*for Adobe Commerce >=2.3.0 <2.3.5*) - Fixes the issue where prices do not reflect the scheduled cart price rule until manually re-indexed.
* **MDVA-32694** (*for Adobe Commerce >=2.3.0 <2.3.6 || >= 2.4.0 <2.4.2*) - Fixes the issue where an admin user cannot add a product to a negotiable quote if it is related to a not default store.
* **MDVA-33516** (*for Adobe Commerce >=2.3.0 <2.3.6*) - Fixes the issue where editing a bundle product in a requisition list leads to an error.
* **MDVA-33975** (*for Adobe Commerce >=2.3.4 <2.4.2*) - Fixes multiple issues related to price calculation in GraphQL requests.

## v1.0.13 {#v1-0-13}

* **MDVA-30858** (*for Adobe Commerce >=2.3.0 <2.4.2*) - Fixes the issue with [!DNL PayPal] Settlement reports not being available under **Reports** > **Sales** > **[!DNL PayPal]** Settlement as expected.
* **MCP-87** (*for Adobe Commerce >=2.3.1 <2.4.2*) - Improved indexation time for category product and stock indexers for large profiles.
* **MDVA-33106** (*for Adobe Commerce >=2.3.0 <2.4.2*) - Fixes the issue where the rescheduled product changes are erased after the cron `run` command is executed.
* **MDVA-19391** (*for Adobe Commerce >=2.3.0 <2.3.5*) - Fixes the issue where `analytics_collect_data` is throwing an error due to NULL description records in the `catalog_category_entity_text` table.
* **MDVA-20376** (*for Adobe Commerce >=2.3.2 <2.3.4*) - Fixes the issue with the *No such entity with customerId = 1* error in the `exception.log` for logged in customers after order placement.
* **MDVA-23764** (*for Adobe Commerce >=2.3.2 <2.3.5*) - Fixes the bug in `JsFooterPlugin.php` that affects the display of dynamic blocks.
* **MDVA-13203** (*for Adobe Commerce >=2.3.0 <2.4.2*) - Fixes the issue where the *Integrity constrain violation search_tmp_ table* error appears after a full reindex.
* **MDVA-23426** (*for Adobe Commerce >=2.3.3 <2.3.5*) - Fixes the issue where notification emails sent by Adobe Commerce contain a blank body with content being added as attachment.
* **MDVA-22150** (*for Adobe Commerce >=2.3.1 <2.3.4*) - Fixes the issue where customers with a configurable product in cart and a coupon applied cannot login if that configurable product is disabled in the Admin.
* **MDVA-32545** (*for Adobe Commerce >=2.3.0 <2.4.2*) - Fixes the issue where invoices are not sent out automatically when creating orders from the Admin.
* **MDVA-32714** (*for Adobe Commerce >=2.3.4 <2.4.1*) - Fixes the issue where customer group price is not working in GraphQL product query.

## v1.0.12 {#v1-0-12}

* **MDVA-31399** (*for Adobe Commerce >=2.3.2 <2.4.2*) - Adds the *Subtotal (Incl. Tax)* option to price rule conditions.
* **MDVA-31236** (*for Adobe Commerce >=2.4.0 <2.4.2*) - Fixes the issue where the Admins with custom resource access are not able to set up 2FA or log in.
* **MDVA-30845** (*for Adobe Commerce >=2.3.5 <2.3.7*) - Fixes the issue where the *Sorry, no quotes are available for this order at this time* error is displayed when failing to connect to UPS XML/USPS/DHL, and no other shipping method is available.
* **MDVA-32133** (*for Adobe Commerce >=2.4.0 <2.4.1*) - Fixes the issue where media gallery is not loading from Page Builder in certain cases.
* **MDVA-12304** (*for Adobe Commerce >=2.3.0*) - Increases the maximum number of cookies from 50 to 200.
* **MDVA-32632** (*for Adobe Commerce >=2.3.2 <2.3.5*) - Fixes the issue where orders appear in the payment system, but not in Adobe Commerce.
* **MDVA-32449** (*for Adobe Commerce >=2.3.0 <2.3.6 || 2.4.0 || >=2.4.1 <2.4.2 with B2B extension*) - Fixes the issue where the order history loads very slowly or does not load at all.
* **MDVA-32739** (*for Adobe Commerce >=2.3.0 <2.4.2*) - Fixes the issue where enabling Asynchronous Email Notifications sends out old sales emails.

## v1.0.11 {#v1-0-11}

* **MC-38509** (*for Adobe Commerce 2.3.6, 2.4.1*) - Fixes the issue where the *Create an Account* button stays disabled after correcting invalid data in the *Create New Customer Account* form.
* **MDVA-31006** (*for Adobe Commerce 2.3.0, 2.3.1*) - Fixes the issue where duplicated orders appear after placing an order using [!DNL Paypal Express] payment.
* **MDVA-25602** (*for Adobe Commerce 2.3.0*) - Fixes issue with [!DNL PayPal Payflow Pro] payment method and treating cookies as `SameSite=Lax` by default in the Chrome 80 browser and API response redirect to customer login page.

## v1.0.10 {#v1-0-10}

Minor fixes for patch versions

## v1.0.9 {#v1-0-9}

* **MDVA-31363** (*for Adobe Commerce >=2.3.2 <2.4.2*) - Fixes the issue where the Cart Price Rule with coupon does not apply via GraphQL when *Fixed amount discount for whole cart* action is used.
* **MDVA-30889** (*for Adobe Commerce >=2.3.0 <2.4.2*) - Fixes the issue where an error occurs after invoicing a bundle with virtual and simple products as options.
* **MDVA-31791** (*for Adobe Commerce >=2.3.4 <2.3.5*) - Improves the performance of the product page in cases when target rules or linked products are used.
* **MDVA-31168** (*for Adobe Commerce >=2.3.0 <2.4.2*) - Fixes the issue where the product export CSV file does not appear, and there is a memory allocation error.
* **MDVA-32313** (*for Adobe Commerce >=2.3.0 <2.3.4*) - Fixes the issue where configurable products could be added to the wishlist with the wrong configuration options.
* **MDVA-31759** (*for Adobe Commerce >=2.3.0 <2.4.2*) - Fixes the issue where products are not updated with *dropdown* and *textarea* attribute values during CSV import.
* **MDVA-32012** (*for Adobe Commerce >=2.3.0 <2.4.2*) - Fixes the issue where zip codes in Korea and Argentina cannot be validated.
* **MDVA-31640** (*for Adobe Commerce >=2.3.1 <2.3.6 || >=2.4.0 <2.4.1*) - Fixes the issue where a special price cannot be updated via REST API.
* **MDVA-28651** (*for Adobe Commerce >=2.3.0 <2.3.6 || >2.4.0 with B2B extension*) - Fixes the issue where there are performance problems with loading negotiable quotes via REST API.

## v1.0.8 {#v1-0-8}

* **MDVA-31242** (*for Adobe Commerce >=2.3.0 <2.4.1 with B2B extension*) - Fixes the issue where a wrong currency sign is displayed in Credit Memo grid.
* **MDVA-31295** (*for Adobe Commerce >=2.3.0 <2.4.2*) - Fixes the issue where reward points are not calculated when a partial order is completed and items are taxed.
* **MDVA-30112** (*for Adobe Commerce >=2.3.4 <2.4.2*) - Fixes the issue where if the number of orders exceeds the *bunch-size* value, Adobe Commerce considers the orders with *pending* status as inconsistencies.
* **MDVA-31150** (*for Adobe Commerce >=2.3.0 <2.4.2*) - Fixes the issue where the store credit and gift card balances are not returned by the GET Invoice Rest API call, when the invoice was posted by Rest API call and the order was partially paid by store credit and gift card accounts.
* **MDVA-30963** (*for Adobe Commerce >=2.3.2 <2.4.2*) - Fixes the issue where products filtering results set to only contain values specified for *All store views* scope in the Admin, include products with values overridden on the store view level.
* **MDVA-29954** (*for Adobe Commerce >=2.3.0 <2.3.6 || 2.4.0 || 2.4.2 with B2B extension*) - Fixes the issue where the *New Company Registration Request* and *You've been linked to a company* emails are sent from the wrong address.
* **MDVA-28357** (*for Adobe Commerce >=2.3.2 <2.3.6 || >=2.4.0 <2.4.1*) - Replaces the standard analyzer with a custom analyzer with keyword tokenizer for the SKU field in the [!DNL ElasticSearch] index to make wildcard search queries work with SKUs containing a hyphen ("-").

## v1.0.7 {#v1-0-7}

* **MDVA-30972** (*for Adobe Commerce >=2.3.0 <2.4.2*) - Fixes the issue where custom order status was changed to *Processing* after partial shipment creation using WebApi.
* **MDVA-30428** (*for Adobe Commerce >=2.3.4 <2.3.5*) - Fixes the issue where customers cannot add a product to wishlist if this product is assigned to a custom inventory source.
* **MDVA-30594** (*for Adobe Commerce >=2.3.0 <2.4.2*) - Fixes the issue where an order with multiple addresses could not be saved during checkout when FPT is configured.
* **MDVA-29148** (*for Adobe Commerce >=2.3.0 <2.4.2*) - Fixes the issue when creating a product via an API call, the product custom attribute of `\Magento\Eav\Model\Entity\Attribute\Backend\ArrayBackend` (like Multiselect) type does not use its default value if no value was provided in the payload.
* **MDVA-30837** (*for Adobe Commerce >=2.3.1 <2.3.5*) - Added a configuration setting *Include Tax to Amount: Yes/No* in Free Shipping method configuration. When *Include Tax to Amount* is set to *Yes*, Minimum Order Amount is calculated as Subtotal + Tax. When *Include Tax to Amount* is set to *No*, Minimum Order Amount is calculated as Subtotal
* **MDVA-25028** (*for Adobe Commerce >=2.3.2 <2.3.3 || >=2.3.5 <2.3.6*) - Fixes the issue when orders that are placed using [!DNL PayPal Payflow Pro] are not set to Suspected Fraud status when fraud filters are triggered.
* **MDVA-31224** (*for Adobe Commerce >=2.3.3 <2.3.5*) - Improves the performance of the `catalog_product_price` re-index operation for bundle products.
* **MDVA-31321** (*for Adobe Commerce >=2.3.2 <2.3.5*) - Fixes a blank page (error) when *Show All* is selected. [!DNL Elasticsearch] returns large list of product ids. In this scenario the order by clause gets converted to an incorrect SQL format.
* **MDVA-30815** (*for Adobe Commerce >=2.3.2 <2.3.4*) - Fixes the issue where when you change how many search results should be displayed on the search results page, Adobe Commerce displays a blank page. [!DNL Elasticsearch] now correctly displays results from category pages when you change the number of search results viewed per page.
* **MDVA-30782** (*for Adobe Commerce >=2.3.5 <2.4.2*) - Fixes the issue where Dynamic Block is displayed regardless of cart rule.
* **MDVA-31021** (*for Adobe Commerce >=2.3.0 <2.4.2*) - Fixes the issue where performance issues exists in `module-catalog-import-export/Model/Import/Product/Option.php`. If there are more than ~100k records in `catalog_product_option` table, a new CSV with single product takes less than 10 sec to validate.
* **MDVA-31007** (*for Adobe Commerce >=2.4.0 <2.4.1*) - Fixes the issue where custom address attributes are not correctly displayed in the order details page in the my account area and in the backend.
* **MDVA-29389** (*for Adobe Commerce >=2.3.0 <2.4.2*) - Fixes the issue with Advanced Reporting where the `analytics_collect_data` cronjob says: *Port must be configured within host parameter (like localhost:3306)*.
* **MDVA-31343** (*for Adobe Commerce >=2.3.4 <2.3.6*) - Fixes the issue with the removed body class `page-layout-category-full-width` when a category is scheduled.
* **MDVA-30945** (*for Adobe Commerce >=2.3.0 <2.4.2*) - Fixes the issue where you receive a fatal error message when updating carts `Call to a member function getValue() on null in module-configurable-product CartItemProcessor.php`.

## v1.0.6 {#v1-0-6}

* **MDVA-28993** (*for Adobe Commerce >=2.3.4 <2.4.0*) - Implements the *Minimum should match* functionality and partial search for [!DNL Elasticsearch] engine. Solves issues with hyphens in search queries.
* **MDVA-30102** (*for Adobe Commerce >=2.3.2 <=2.4.0*) - Fixes the issue where Redis cache grows up quickly since layout caches don't have TTL.
* **MDVA-30599** (*for Adobe Commerce >=2.3.4 <=2.4.0*) - Fixes the issue where guest quotes created using API are incorrectly marked as quotes for logged in customers.
* **MDVA-29446** (*for Adobe Commerce >=2.3.3 <=2.4.0*) - Fixes the issue where the price of not applicable shipping method is shown as zero during checkout.
* **MDVA-30357** (*for Adobe Commerce >=2.3.2 <=2.4.0*) - Fixes the issue with wrong image URLs are created when generating a sitemap by cron.
* **MDVA-30565** (*for Adobe Commerce >=2.3.2 <=2.3.3-p1*) - Fixes the issue where *No such entity with cartid = 0* error is displayed for guest customer on storefront checkout if persistent shopping cart is enabled.
* **MDVA-29787** (*for Adobe Commerce >=2.3.0 <=2.4.0*) - Fixes the issue where target rule for related products does not work when *is one of* condition is used to define products to be displayed.
* **MDVA-30977** (*for Adobe Commerce >=2.3.4 <=2.3.5-p2*) - Fixes the issue with random products missing from categories after reindex.
* **MDVA-28202** (*for Adobe Commerce >=2.3.4 <=2.4.2*) - Fixes the issue where Layered Navigation doesn't filter configurable products correctly when MSI is used.
* **MDVA-28300** (*for Adobe Commerce >=2.3.0 <2.3.6*) - Fixes the issue where GQL request doesn't reflect the price changes from catalog price rules.
* **MDVA-31006** (*for Adobe Commerce >=2.3.2 <=2.4.2*) - Fixes the issue where duplicated orders appear after placing an order using [!DNL Paypal Express] payment.

## v1.0.5 {#v1-0-5}

* **MDVA-30841** (*for Adobe Commerce >=2.3.4 <2.3.6 || 2.4.0*) - Fixes the issue with layered navigation, where the *No* value for boolean type product attributes was not included in layered navigation if [!DNL Elasticsearch] was used as a search engine.
* **MDVA-28191** (*for Adobe Commerce >=2.3.3 <2.4.2*) - Fixes the issue where no payment methods are loaded during order creation via the Admin.
* **MDVA-29959** (*for Adobe Commerce >=2.3.0 <=2.3.3-p1 with B2B extension*) - Fixes the issue where restricted admin user with *Companies* permissions is not allowed to delete company account.
* **MDVA-30265** (*for Adobe Commerce >=2.3.3 <2.4.2*) - Fixes the issue where shipment tracking link stops working after Invoice creation.
* **MDVA-28409** (*for Adobe Commerce >=2.3.4 <2.3.6 || 2.4.0*) - Fixes the issue where the `sales_clean_quotes` cron job fails with *out-of-memory* error when the number of expired quotes in the database is huge.
* **MDVA-30593** (*for Adobe Commerce >=2.3.0 <2.3.4*) - Fixes the issue where quotes that expired according to the Quote Lifetime setting are not cleaned up.
* **MDVA-30107** (*for Adobe Commerce >=2.3.0 <2.3.6*) - Fixes the issue where store switcher doesn't work as expected if different base URLs are used for store views.
* **MDVA-28763** (*for Adobe Commerce >=2.3.2 <2.3.4*) - Fixes the issue where product image is getting duplicated after updating product information using REST API more than once.
* **MDVA-30284** (*for Adobe Commerce >=2.3.0 <2.4.2*) - Fixes the issue where Catalog Search indexer fails due to the following *[!DNL Elasticsearch] error: limit of total fields in index has been exceeded.*
* **MDVA-29042** (*for Adobe Commerce >=2.3.3 <=2.3.4-p2 with B2B extension*) - Fixes the issue where Catalog permissions were changed to *Allow* automatically after new product was added to the shared catalog.
* **MDVA-30428** (*for Adobe Commerce >=2.3.3 <2.4.2*) - Fixes the issue where customers cannot add a product to wishlist if this product is assigned to a custom inventory source.
* **MDVA-28661** (*for Adobe Commerce >=2.3.0 <2.4.2 with B2B extension*) - Fixes the issue where an error is thrown in the Company Users company account section after company admin is changed.

## v1.0.4 {#v1-0-4}

* **MDVA-30195** (*for Adobe Commerce 2.3.1 - 2.3.4-p2*) - Fixes the issue where cron jobs fail if database name is too long, resulting in categories not being updated on the frontend.
* **MDVA-30106** (*for Adobe Commerce ^2.3.0*) - Fixes an issue where during checkout payments are not loaded with *Cannot read property 'length' of null* error in JS console.
* **MDVA-28656** (*for Adobe Commerce >=2.3.1 <2.3.6 || >=2.4.0 <2.4.2*) - Fixes the issue where if an order was placed with no payment information required (for example, with 100% discount) and an invoice was created for the order, the order status changes to *Closed* instead of Complete.
* **MDVA-30209** (*for Adobe Commerce 2.3.0 - 2.3.3-p1*) - Fixes the issue where the customer group was changed to default if customer updated their account information.
* **MDVA-30123** (*for Adobe Commerce >=2.3.4 <2.4.2*) - Fixes the issue where attribute option labels are not translated correctly for GraphQL queries.
* **MDVA-29996** (*for Adobe Commerce >=2.3.3 <2.4.2*) - Fixes the issue where after enabling category permission, the category page is not getting cached by Full Page Cache.
* **MDVA-30164** (*for Adobe Commerce >=2.3.1 <2.4.2*) - Fixes the issue where customers records cannot be exported from the Customers grid if custom customer attributes exist.
* **MDVA-30444** (*for Adobe Commerce >=2.3.0 <2.4.1*) - Fixes the issue where no confirmation email is sent for orders placed using GraphQL.
* **MDVA-30490** (*for Adobe Commerce 2.3.4 - 2.3.5-p2*) - Fixes the issue where products comparison throws the 500 error page if one of the products has an empty short description.
* **MDVA-30232** (*for Adobe Commerce >=2.3.1 <2.4.1*) - Fixes the issue where it is not possible to re-order if the original order contains a gift card.
* **MDVA-29965** (*for Adobe Commerce >=2.3.3 <2.4.0*) - Fixes the issue where customers get Invalid Form Key error when adding a product to the cart.
* **MDVA-30008** (*for Adobe Commerce >=2.3.0 <2.4.2*) - Fixes the B2B issue where it is not possible to place orders through Admin API for a product which is in a public catalog.
* **MDVA-22469** (*for Adobe Commerce 2.3.2-p2 - 2.3.3-p1*) - Fixes the issue where after upgrading to Adobe Commerce 2.3.3, Page Builder is not working in the Admin panel and some JS and CSS files are not loading.
* **MC-35984** (*for Adobe Commerce >=2.4.0 <2.4.1*) - Fixes the issue where merchants could not interact with any page elements on the Returns page after creating a shipping label for a Return Merchandise Authorization (RMA).

## v1.0.3 {#v1-0-3}

* **MDVA-25602** (*for Adobe Commerce 2.3.0 - 2.3.4*) - Fixes the issue with [!DNL PayPal Payflow Pro] payment method and treating cookies as `SameSite=Lax` by default in the Chrome 80 browser and API response redirect to customer login page.
* **MDVA-26694** (*for Adobe Commerce >=2.3.0 <2.3.6 || 2.4.0*) - Fixes the issue with product and catalog caches expiring daily, though being scheduled to expire differently.
* **MDVA-27825** (*for Adobe Commerce >=2.3.0 <2.4.1*) - Fixes the issue where exporting of big amounts of data failed because of memory leak.
* **MDVA-29085** (*for Adobe Commerce >=2.3.0 <=2.3.5-p1*) - Fixes the B2B issue where no required new company emails are sent out if a company is created by API.
* **MDVA-29344** (*for Adobe Commerce >=2.3.5 <=2.4.0-p1*) - Fixes the issue where Page Builder gets stuck after copying text from a header element to a text element.
* **MDVA-29835** (*for Adobe Commerce >2.3.1 <2.4.2*) - Fixes the issue where gift card orders contained two codes instead one.
* **MDVA-30052** (*for Adobe Commerce >=2.3.2-p2 <2.3.5*) - Fixes the issue with private content (local storage) not being populated correctly, which resulted in performance problems.
* **MDVA-30131** (*for Adobe Commerce >=2.3.4 <2.3.6 || 2.4.0*) - Fixes the issue with layered navigation, where the *No* value for boolean type product attributes was not included in layered navigation if [!DNL Elasticsearch] was used as a search engine.
* **MDVA-35514** (*for Adobe Commerce >=2.4.0 <2.4.1*) - Fixes the issue with creating a shipping label and adding ordered products to a package in the Create Packages modal window.
