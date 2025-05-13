---
title: Release notes
description: Learn about the patches available for Adobe Commerce and the issues they resolve.
exl-id: 22262555-f5ea-49ad-98ad-ea8428ef66d5
---
# Release notes

The [[!DNL Quality Patches Tool]](https://github.com/magento/quality-patches) delivers individual patches developed by Adobe and the Magento Open Source community. It allows you to apply, revert, and view general information about all individual patches that are available for the installed version of Adobe Commerce. You can apply patches to Adobe Commerce and Magento Open Source projects regardless of who developed the patch. For example, you can apply a patch developed by the community to Adobe Commerce projects.

>[!INFO]
>
>See [Apply patches](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html#apply-individual-patches) for instructions on applying patches to your Adobe Commerce projects. See [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the Software Update Guide to review a full list of released patches.

>[!INFO]
>
>For information about [!DNL quality patches] created by the Community for Magento Open Source, see the [release notes](https://github.com/magento/quality-patches/blob/master/community-release-notes.md).

## v1.1.64 {#v1-1-64}

* **ACP2E-3838** (for Adobe Commerce and Magento Open Source >=2.4.4-p9 <2.4.4-p13 || >=2.4.5-p8 <2.4.5-p12 || >=2.4.6-p6 <2.4.6-p10 || >=2.4.7 <2.4.7-p5) - Fixes the issue where Page Builder CORS errors prevent saving changes in the Admin panel in production mode.
* **ACP2E-3841** (for Adobe Commerce and Magento Open Source >=2.4.5 <2.4.9) - Fixes the issue where cart price rules for multi-shipping products do not apply correctly when subselect conditions are used and free shipping is enabled.
* **ACSD-63139** (for Adobe Commerce and Magento Open Source >=2.4.6 <2.4.7) - Fixes the issue where product export fails when product attributes contain thousands of option values.
* **ACSD-65100** (for Adobe Commerce and Magento Open Source >=2.4.4 <2.4.9) - Fixes the issue where removing the values for Maximum Width and Maximum Height in the Media Gallery Image Optimization configuration causes an error during the image optimization process.
* **ACSD-65127** (for Adobe Commerce and Magento Open Source >=2.4.4 <2.4.8) - Fixes the issue where enabling JavaScript minification in production mode caused TinyMCE 6 to generate errors in the browser console, affecting functionality and user experience.
* **ACSD-65787** (for Adobe Commerce and Magento Open Source >=2.4.7-p5 <2.4.9) - Fixes the issue where the SchemaBuilder class crashes during schema creation or updates due to an undefined array key 'column' when processing table data.
* **ACSD-65223* (for Adobe Commerce, B2B 1.5.1) - Fixes the issue where manually selected terms and agreements for B2B purchase orders result in an error.
* **ACSD-65540* (for Adobe Commerce, B2B 1.5.2) - Fixes the issue where an SQL syntax error occurs due to the absence of the REGEXP_LIKE function when updating the company_structure table.
* **ACSD-65684* (for Adobe Commerce, B2B 1.5.2) - Fixes the performance issue where upgrading the Magento_Company module after updating to B2B 1.5.2 took an excessively long time when processing a large number of records (~100,000+) in the company_structure table.
* Versions updated: **ACSD-48234**, **ACSD-51819**, **ACSD-57570**, **ACSD-56415**

## v1.1.63 {#v1-1-63}

* **ACSD-64627** (for Adobe Commerce >=2.4.6-p8 <2.4.8) - Fixes the issue where custom customer attributes can't be saved when adding or editing users within the Company Structure.
* **ACSD-64753** (for Adobe Commerce and Magento Open Source >=2.4.4 <2.4.8) - Fixes the issue where the pre-selected store in "Pickup in Store" doesn't update when the shipping address changes, even if it is outside the store's radius.
* **ACSD-65195** (for Adobe Commerce >=2.4.4 <2.4.8) - Fixes the issue where the GraphQL mutation `createCompany` throws an error for a country without a required region.
* **LYNX-839** (for Adobe Commerce 2.4.8) - Removed exposure of customer group, segments, and promotional rules information through GraphQL.
* Versions updated: **MDVA-12304**, **ACSD-48234**, **ACSD-58054**

## v1.1.62 {#v1-1-62}

* **ACSD-63406** (for Adobe Commerce and Magento Open Source >=2.4.4-p9 <2.4.5 || >=2.4.5-p8 <2.4.6 || >=2.4.6-p6 <2.4.8) - Fixes the issue where expired persistent quotes are not cleared by any cron job when the `persistent_clear_expired` cron job runs.
* **ACSD-63520** (for Adobe Commerce and Magento Open Source >=2.4.7 <2.4.8) - Fixes the issue where images added through **[!UICONTROL Configurations]** in the admin panel do not adhere to the maximum upload size limit.
* **ACSD-64523** (for Adobe Commerce and Magento Open Source >=2.4.7 <2.4.8) - Fixes the issue where it was possible to create new products without a name through the import process (admin or API), which would break the admin interface and result in invalid products.
* **ACSD-64532** (for Adobe Commerce and Magento Open Source >=2.4.6-p2 <2.4.8) - Fixes the issue where an ENV variable set to "false" is treated as a string "false" instead of a boolean false.
* **ACSD-64592** (for Adobe Commerce >=2.4.4 <2.4.8) - Fixes the issue where the claim link from the email for a gift card in non-default stores always redirected the gift card claim to the default website.
* **ACSD-65164** (for Adobe Commerce and Magento Open Source >=2.4.6 <2.4.8) - Fixes the issue where the error message *Some of the selected item options are not currently available* occurs when reordering a configurable product with a single selected checkbox custom option.
* **ACSD-64732** (for Adobe Commerce >=2.4.4 <2.4.8) - Fixes the issue where 3rd party controllers were not cached correctly with customer segments.

## v1.1.61 {#v1-1-61}

* **ACP2E-3689** (for Adobe Commerce and Magento Open Source >=2.4.7 <2.4.8) - Fixes multiple issues with category tree display on deeper levels and reflecting anchor/non-anchor relationships.
* **ACP2E-3705** (for Adobe Commerce >=2.4.7 <2.4.8) - Fixes an issue where the `indexer_update_all_views` cron execution fails when `MAGE_INDEXER_THREADS_COUNT` is set.
* **ACSD-63883** (for Adobe Commerce >=2.4.4 <2.4.7-p4) - Fixes the issue where the Requisition List returns an incorrect `items_count` in the GraphQL response.
* **ACSD-63974** (for Adobe Commerce >=2.4.4 <2.4.8) - Fixes the issue where the Requisition list page takes too much time to load when there are too many items, by adding a pagination feature to the Requisition list grid on the Storefront, that displays only portions of records that are limited to the number of records per page, instead of all the records at once.
* **ACSD-64178** (for Adobe Commerce and Magento Open Source >=2.4.7 <2.4.8) - Fixes the issue where the Attribute Set edit page loads slowly if there are thousands of product attributes.
* **ACSD-64209** (for Adobe Commerce >=2.4.4 <2.4.8) - Fixes the issue where the cron scheduler retrieves all negotiable quotes without excluding those with the status **[!UICONTROL ordered]**, causing an email or emails to be triggered.
* **ACSD-64431** (for Adobe Commerce and Magento Open Source >=2.4.7 <2.4.8) - The `placeOrder` mutation that contains the coupon code information in the request no longer throws an internal error, but instead shows that the order was placed successfully.
* **ACSD-64467** (for Adobe Commerce and Magento Open Source >=2.4.7 <2.4.8) - Fixes the issue where the WYSIWYG editor appears empty after saving a category description on the store view level.
* **ACSD-64546** (for Adobe Commerce and Magento Open Source >=2.4.4 <2.4.8) - Fixes the issue where a generic error message occurs in the UI and an *Array to string conversion* exception is stored in the logs during UPS shipping label creation, ensuring that the actual error is displayed in the UI and the correct error message is stored in the logs.
* **ACSD-64684** (for Adobe Commerce >=2.4.4 <2.4.8) - Fixes the issue where a validation error occurs when editing and saving a gift card with a value greater than *999* due to the comma (thousand separator) in the number *one thousand (1,000)*.
* Versions updated: **ACSD-49392**, **ACSD-50368**, **ACSD-51819**, **ACSD-54966-V2**, **ACSD-57003**, **ACSD-62979**, **ACSD-64112**
* Replaced patches: **ACSD-49392**, **ACSD-58739**, **ACSD-62689**, **ACSD-64112**
* Deprecated patches: **ACSD-46192**, **ACSD-52133**

## v1.1.60 {#v1-1-60}

* **ACSD-63323** (for Adobe Commerce >=2.4.7 <2.4.8) - Fixes the issue where the **[!UICONTROL Select All]** option doesn't work when adding products to a category. Additionally, it ensures that pagination and the record count label function correctly when adding products to a category via the popup grid.
* **ACSD-63992** (for Adobe Commerce >=2.4.4 <2.4.8) - Fixes an issue where a cart price rule with a coupon and a condition based on a shipping method cannot be correctly applied through the Admin UI.
* **ACSD-64111** (for Adobe Commerce and Magento Open Source >=2.4.4 <2.4.8) - Fixes the issue where an error occurs when setting nested conditions for a Product component in [!DNL Page Builder].
* **ACSD-64137** (for Adobe Commerce and Magento Open Source >=2.4.4 <2.4.8) - Fixes the issue where searching for pickup locations by zip code doesn't work properly for Dutch localization.
* **ACSD-64149** (for Adobe Commerce and Magento Open Source >=2.4.4 <2.4.8) - Fixes the issue where a customer segment with a date range condition can be saved when only one of the dates is edited.
* Versions updated: **MDVA-12304**, **ACSD-45049**, **MDVA-43824**, **ACSD-46192**, **ACSD-50368**, **ACSD-52133**, **ACSD-47657**, **ACSD-51819**, **ACSD-54966-V2**, **ACSD-55628**, **ACSD-45049**, **ACSD-63242**

## v1.1.59 {#v1-1-59}

* **ACSD-63454** (for Adobe Commerce and Magento Open Source >=2.4.7 <2.4.8) - Fixes the issue where the default value for a dropdown and multi-select attributes is not saved properly in the database.
* **ACSD-63574** (for Adobe Commerce and Magento Open Source >=2.4.4 <2.4.5) - Fixes the issue where adding a Bundle Product Listing to a block via the Page Builder resulted in an error.
* **ACSD-63793** (for Adobe Commerce and Magento Open Source >=2.4.6 <2.4.8) - Fixes the issue when Import processes interfere with each other in different browser tabs.
* **ACSD-64113** (for Adobe Commerce and Magento Open Source >=2.4.5 <2.4.8) - Fixes the issue causing errors in the admin when uploading images with a relatively small width compared to their height (or vice versa) via the media gallery.
* **ACSD-64212** (for Adobe Commerce and Magento Open Source >=2.4.5 <2.4.8) - Fixes the issue where an order is not associated with a customer account when the account is created via GraphQL after the order is placed.
* **ACSD-63469** (for Adobe Commerce and Magento Open Source >=2.4.7 <2.4.8) - Fixes the issue where fixed-amount discounts for the whole cart were not being applied properly when more than one rule was applied.
* **ACSD-63870** (for Adobe Commerce >=2.4.4 <2.4.4-p11) - Fixes the issue where a company customer wasn't logged out properly when the company status changes during the customer active session.
* **ACSD-64112** (for Adobe Commerce >=2.4.5 <2.4.8) - Fixes an issue where the `indexer_update_all_views` cron execution fails when `MAGE_INDEXER_THREADS_COUNT` is set.
* Versions updated: **ACSD-61622**
* Replaced patches: **ACSD-61553**
* Deprecated patches: **ACSD-61199**

## v1.1.58 {#v1-1-58}

* **ACSD-48570** (for Adobe Commerce and Magento Open Source >=2.4.4 <2.4.7) - Fixes the issue where the reset password page couldn't be reached by clicking the [!UICONTROL Admin] reset password link when **Add Store Code to URLs** was *enabled*, which previously resulted in the login page or a 404 page being displayed.
* **ACSD-62118** (for Adobe Commerce >=2.4.6 <2.4.8) - Fixes the issue where the `sales_order_tax_item` table isn't fully updated when [!DNL B2B] orders are placed using the Purchase Order method.
* **ACSD-63067** (for Adobe Commerce and Magento Open Source >=2.4.4 <2.4.8) - Fixes the issue where all product quantities are incorrectly highlighted, and the message *[!DNL Please specify the quantity of product(s).]* is displayed for all products in a grouped product when only one quantity is incorrect.
* **ACSD-63090** (for Adobe Commerce and Magento Open Source >=2.4.4 <2.4.8) - Fixes the issue where shopping cart items are removed when a product is deleted, after being added to the cart.
* **ACSD-63182** (for Adobe Commerce and Magento Open Source >=2.4.4 <2.4.8) - Fixes the issue where an error occurs when saving a duplicated bundle product with **[!DNL MSI]** *enabled*.
* **ACSD-63283** (for Adobe Commerce >=2.4.4 <2.4.8) - Fixes the issue where ordering items from the gift registry causes an exception and where gift registry updates include items that don't belong to the registry.
* **ACSD-63299** (for Adobe Commerce and Magento Open Source >=2.4.4 <2.4.8) - Fixes the issue where the special price for a configurable product doesn't display on the storefront.
* **ACSD-63325** (for Adobe Commerce and Magento Open Source >=2.4.7 <2.4.8) - Fixes the issue where a `Syntax Error: Unexpected <EOF>` error occurs when submitting an empty [!DNL GraphQL] request.
* **ACSD-63329** (for Adobe Commerce and Magento Open Source >=2.4.4 <2.4.8) - Fixes the issue where the default values for attributes with **[!UICONTROL Date]** or **[!UICONTROL Date and Time]** input types aren't set when creating products via the [!DNL REST API].
* **ACSD-63572** (for Adobe Commerce and Magento Open Source >=2.4.5 <2.4.8) - Fixes the issue where the `CatalogRule` indexer temporary tables aren't cleaned up if the indexer process is terminated.
* **ACSD-63578** (for Adobe Commerce >=2.4.4 <2.4.8) - Fixes the issue where clicking the **[!UICONTROL Delete]** button in **[!UICONTROL Add to Order by SKU]** in the [!UICONTROL Admin] doesn't remove the [!DNL SKU].
* Versions updated: **MDVA-39305-V3**
* Replaced patches: **ACSD-56280**
* Deprecated patches: **ACSD-62872**

## v1.1.57 {#v1-1-57}

* **ACSD-57570** (for Adobe Commerce >=2.4.4 <2.4.4-p10) - Fixes the issue where a restricted admin user with access to a particular store can't always see all shared catalogs to which the products are assigned, nor can see customers that can't be saved, leading to inconsistencies in the system.
* **ACSD-58325** (for Adobe Commerce >=2.4.6 <2.4.7) - Fixes the issue where the **[!UICONTROL Import]** button is available even after a validation error.
* **ACSD-59083** (for Adobe Commerce >=2.4.4 <2.5.0) - Fixes the issue where some database update operations result in a *Base table or view not found* error if the [!DNL mview] update is running at the same time.
* **ACSD-61622** (for Adobe Commerce and Magento Open Source >=2.4.6-p1 <2.4.7) - Fixes the issue where [!DNL FedEx]'s account-specific rates are missing in the response.
* **ACSD-61895** (for Adobe Commerce >=2.4.4 <2.5.0) - Fixes the issue where the categories [!DNL GraphQL] query returns categories with the **allow** permission even if the root category doesn't have the **allow** permission.
* **ACSD-62212** (for Adobe Commerce and Magento Open Source >=2.4.4 <2.5.0) - Fixes the issue where the **Forgot Password** email content isn't translated to the store view's language.
* **ACSD-62481** (for Adobe Commerce and Magento Open Source >=2.4.4 <2.5.0) - Fixes the issue where the customer's shopping cart becomes empty even if **[!UICONTROL Persistence]** is enabled.
* **ACSD-62629** (for Adobe Commerce and Magento Open Source >=2.4.7 <2.5.0) - Fixes the issue where a product list used in **[!UICONTROL Widgets]** doesn't reflect the category condition.
* **ACSD-62635** (for Adobe Commerce and Magento Open Source >=2.4.7 <2.5.0) - Fixes the issue where multi-store related products don't display properly in the [!DNL GraphQL] product query.
* **ACSD-62671** (for Adobe Commerce and Magento Open Source >=2.4.7 <2.5.0) - Fixes the issue where the [!DNL GraphQL] request doesn't return up-to-date address information on the first attempt.
* **ACSD-62689** (for Adobe Commerce and Magento Open Source >=2.4.7 <2.5.0) - Fixes the issue where the customer is unable to add Categories in **[!UICONTROL Related Product Rules and Widgets]** after *depth 4*.
* **ACSD-62708** (for Adobe Commerce and Magento Open Source >=2.4.4-p11 <2.4.5 || >=2.4.5-p10 <2.4.6-p2 || >=2.4.6-p8 <2.4.7-p1) - Fixes the issue where [!DNL TinyMCE] 7 editor font size in the admin shows *PT* and not *PX*. Now, you can also set the font size in *PX* instead of *PT*.
* **ACSD-62758** (for Adobe Commerce and Magento Open Source >=2.4.4 <2.5.0) - Fixes the issue where product videos don't render correctly on the **[!UICONTROL Configurable Product]**'s details page if the [!DNL URL] contains selected options.
* **ACSD-62951** (for Adobe Commerce and Magento Open Source >=2.4.4 <2.5.0) - Fixes the issue where the Credit Memo email is sent without including items and totals.
* **ACSD-62965** (for Adobe Commerce >=2.4.7 <2.5.0) - Fixes the issue where a `LocalizedException` message isn't included in the order placement [!DNL GraphQL] response.
* **ACSD-63286** (for Adobe Commerce >=2.4.6 <2.4.7) - Fixes the issue where products assigned to a shared catalog via [!DNL API] don't appear on the storefront until a manual reindex is executed.
* **ACSD-63326** (for Adobe Commerce and Magento Open Source >=2.4.4 <2.5.0) - Fixes the issue where the [!UICONTROL Admin] is redirected to a broken page after placing an order from the backend.
* Versions updated: **ACSD-51739**
* Replaced patches: **MDVA-43451**, **ACSD-62755**

## v1.1.56 {#v1-1-56}

* **ACSD-63244** (for Adobe Commerce and Magento Open Source >=2.4.4 <2.4.8) - Fixes the issue where a [!DNL JavaScript] error prevents [!DNL Google Maps] from rendering correctly. Fixes the issue where there are many *Uncaught TypeError: this._each is not a function* errors in the console in the [!UICONTROL Admin] panel.
* **ACSD-63242** (for Adobe Commerce and Magento Open Source >=2.4.6-p8 <2.4.7 || >=2.4.7-p3 <2.4.8) - Fixes the issue with import slowness when adding catalog products with more than 10,000 entries.
* **ACSD-63062** (for Adobe Commerce and Magento Open Source >=2.4.7 <2.4.8) - Fixes the issue where incorrect cart discount calculations occur when multiple overlapping rules are applied.
* **ACSD-62979** (for Adobe Commerce and Magento Open Source >=2.4.4 <2.4.7) - Fixes the issue where using the wrong [!UICONTROL Store ID] in the [!DNL GraphQL] header causes a fatal memory error.
* **ACSD-62971** (for Adobe Commerce and Magento Open Source >=2.4.4 <2.4.8) - Fixes the issue where importing stock sources with non-numeric values in the **quantity** column results in the **quantity** being set to *0*.
* **ACSD-62872** (for Adobe Commerce and Magento Open Source >=2.4.4 <2.4.8) - Fixes the issue with unique attribute validation where schedule updates are validated incorrectly.
* **ACSD-62755** (for Adobe Commerce and Magento Open Source >=2.4.4-p11 <2.4.5 || >=2.4.5-p10 <2.4.6 || >=2.4.6-p8 <2.4.7 || >=2.4.7-p3 <2.4.8) - Fixes the issue where [!DNL TinyMCE] 7 requires font size and font to be specifically added within editor initialization settings.
* **ACSD-62670** (for Adobe Commerce and Magento Open Source >=2.4.4-p11 <2.4.5 || >=2.4.5-p10 <2.4.6 || >=2.4.6-p8 <2.4.7 || >=2.4.7-p3 <2.4.8) - Fixes the issue where the [!UICONTROL Products Ordered] report export to [!DNL CSV] and [!DNL XML] returns an error.
* **ACSD-62577** (for Adobe Commerce and Magento Open Source >=2.4.4 <2.4.8) - Fixes the issue with slow performance of storefront search queries by optimizing both query and table indexes.
* **ACSD-62475** (for Adobe Commerce and Magento Open Source >=2.4.7 <2.4.8) - Fixes the issue where the [!UICONTROL Gift Card] products are merged incorrectly in the cart.
* **ACSD-62428** (for Adobe Commerce and Magento Open Source >=2.4.6 <2.4.7) - Fixes the issue where `is_out_of_stock` is set to an incorrect value in the catalog search index when the [!DNL SKU] is not set as a searchable attribute.
* **ACSD-62355** (for Adobe Commerce and Magento Open Source >=2.4.6 <2.4.8) - Improves the loading time of the configurable product edit page when the configurable product is based on many attributes with many values.
* **ACSD-61805** (for Adobe Commerce and Magento Open Source >=2.4.4 <2.4.8) - Fixes the issue where products remain out of stock on the storefront after updating the backorder status via the [!DNL REST API].
* **ACSD-60811** (for Adobe Commerce and Magento Open Source >=2.4.7 <2.4.8) - Fixes the issue where updating order status with a custom value or comment is only possible if the current status is either *processing* or *fraud*.
* **ACSD-62952** (for Adobe Commerce >=2.4.4 <2.4.8) - Fixes the issue where the [!UICONTROL Gift Registry] date is displayed inaccurately on the storefront.
* **ACSD-55339** (for Adobe Commerce >=2.4.4 <2.4.8) - Fixes the issue where a product [!DNL SKU] starting with "0" (zero) removes the "0", preventing the quote from being updated.
**
* Updated patches: **ACSD-59514**
* Versions updated: **ACSD-60816**
* Replaced patches: **ACSD-59967**

## v1.1.55 {#v1-1-55}

* **ACSD-58383** (for Adobe Commerce and Magento Open Source >=2.4.4 <2.4.8) - Fixes the issue where issuing a refund via the [!DNL REST API] with two identical requests that are executed simultaneously, creates duplicate credit memos.
* **ACSD-58471** (for Adobe Commerce >=2.4.4 <2.4.8) - Fixes the issue where dynamic content fails to load on the product detail page, when the associated catalog price rules were scheduled.
* **ACSD-58566** (for Adobe Commerce >=2.4.6 <2.4.8) - Fixes the issue where [!DNL GraphQL] returns an internal server error when querying the `created_at` field in the `addPurchaseOrderComment` mutation.
* **ACSD-58685** (for Adobe Commerce and Magento Open Source >=2.4.4 <2.4.8) - Fixes the issue where sales emails initiated while email communication was disabled, would still be sent once email communication was re-enabled.
* **ACSD-58735** (for Adobe Commerce and Magento Open Source >=2.4.4 <2.4.8) - Fixes the issue where a restricted admin couldn't view the abandoned shopping carts on the customer account page in the [!UICONTROL Admin] for an associated website.
* **ACSD-58828** (for Adobe Commerce and Magento Open Source >=2.4.6 <2.4.8) - Fixes the issue where the server-side validation message *address is required* appears if any required field is left empty, alongside the client-side validation message. The server-side validation won't display the message for empty required fields, and the client-side validation will handle the error notification, stating, *This is a required field.*
* **ACSD-60344** (for Adobe Commerce >=2.4.4 <2.4.8) - Fixes the issue where duplicate order confirmation emails are sent when using a **[!UICONTROL Purchase Order]** with auto-approval.
* **ACSD-61348** (for Adobe Commerce and Magento Open Source >=2.4.4 <2.4.8) - Fixes the issue where wishlist items are visible via [!DNL GraphQL], but not on the storefront when in a multi-website environment.
* **ACSD-61534** (for Adobe Commerce and Magento Open Source >=2.4.7 <2.4.8) - Fixes the issue where design configuration couldn't be set using the `bin/magento config:set` command, and locked values could be altered through form manipulation. Now locked values set from the [!DNL CLI] with `--lock-env` or `--lock-conf` can't be updated.
* **ACSD-61785** (for Adobe Commerce >=2.4.4 <2.4.8) - FFixes the issue where updating the `reward_warning_notification` attribute wasn't possible via [!DNL GraphQL] mutation and [!DNL REST API] calls, aligning its behavior with `reward_update_notification`.
* **ACSD-62591** (for Adobe Commerce and Magento Open Source >=2.4.7 <2.4.8) - Fixing the issue where the theme doesn't switch properly when the **[!UICONTROL User Agent Rules]** are configured.
* **ACSD-62793** (for Adobe Commerce and Magento Open Source >=2.4.7 <2.4.8) - Fixes the issue where `datetime` attributes in exported data don't include the time component. Additionally if **[!UICONTROL Fields Enclosure]** is *enabled*, attribute values in the `additional_attributes` column will be enclosed within double-quotes.
* **ACSD-62332** (for Adobe Commerce >=2.4.6 <2.4.7) - Fixes the issue where the product listing [!DNL GraphQL] query was limited to a `total_count` of 10,000 products. Fixes the issue where [!DNL Live Search] sets the current page to *1* instead of page *2* in the search criteria when queried via [!DNL GraphQL].
* Versions updated: **ACSD-46581**, **ACSD-49513**, **ACSD-52801**, **ACSD-59514**
* Replaced patches: **ACSD-52801**, **ACSD-55100**
* Deprecated patches: **ACSD-52085**, **ACSD-57854**

## v1.1.54 {#v1-1-54}

* **AC-13283** (for Adobe Commerce and Magento Open Source 2.4.6-p8) - Reverts Place Order backward incompatible changes included in 2.4.6-p8.
* **ACSD-60267** (for Adobe Commerce and Magento Open Source >=2.4.4 <2.4.8) - Fixes the issue where Fixed Product Tax (FPT) applies correctly when adding simple products with FPT directly to the cart but fails when selecting these products through configurable product options.
* **ACSD-61103** (for Adobe Commerce and Magento Open Source >=2.4.6 <2.4.7) - Fixes the issue where the failure count in the `customer_entity` table is not reset to zero after a customer successfully logs in through API endpoints.
* **ACSD-61134** (for Adobe Commerce and Magento Open Source >=2.4.4 <2.4.7) - Fixes the issue where the [!DNL Braintree Vault] payment method is automatically deselected in the checkout workflow when a shopper updates their billing address by deselecting the *[!UICONTROL My billing and shipping address are the same]* checkbox.
* **ACSD-61199** (for Adobe Commerce >=2.4.4 <2.4.8) - Fixes the issue where the CMS page hierarchy tab does not display a proper tree structure when editing a CMS page with an existing hierarchy.
* **ACSD-61200** (for Adobe Commerce and Magento Open Source >=2.4.4 <2.4.8) - Fixes the issue where the calculations for *[!UICONTROL Total Amount]* and *[!UICONTROL Total Amount Actual]* in sales are missing the *[!UICONTROL Discount Tax Compensation Amount]* and *[!UICONTROL Shipping Discount Tax Compensation Amount]*, causing discrepancies in the sales order data.
* **ACSD-61522** (for Adobe Commerce and Magento Open Source >=2.4.4 <2.4.8) - Fixes the issue where it is possible to enter email addresses into the guest customer's *[!UICONTROL First Name]* and *[!UICONTROL Last Name]* fields and send invalid order confirmation emails.
* **ACSD-61756** (for Adobe Commerce >=2.4.4 <2.4.7) - Improves performance of `AdvancedSalesRule` filters.
* **ACSD-61799** (for Adobe Commerce and Magento Open Source >=2.4.4 <2.4.5) - Fixes the issue where the total discount is incorrectly calculated when multiple cart rules with fixed discounts are applied to the quote.
* **ACSD-61845** (for Adobe Commerce and Magento Open Source >=2.4.7-p1 <2.4.8) - Fixes the error that occurs when a request is sent with only *text/html* accept header.
* **ACSD-62056** (for Adobe Commerce and Magento Open Source >=2.4.4 <2.4.8) - Fixes the issue where image uploading for a configurable product fails if MSI is installed.
* **ACSD-62485** (for Adobe Commerce >=2.4.4 <2.4.6-p8 || >=2.4.7 <2.4.8) - Fixes the issue where `async.operations.all` consumer stops working when a company is created.
* Versions updated: **ACSD-48661**, **ACSD-55100**, **ACSD-61553**
* Deprecated patches: **ACSD-51846**

## v1.1.53 {#v1-1-53}

* **ACSD-48318** (for Adobe Commerce and Magento Open Source >=2.4.4 <2.4.7) - Fixes the issue where environment emulation nesting is not allowed. Now, the emulation starts during the `send()` call once the emulation stops during the `getInfoBlockHtml()` call. 
* **ACSD-59930** (for Adobe Commerce >=2.4.6 <2.4.8) - Improves performance of the company's **[!UICONTROL Create]**, **[!UICONTROL Save]**, and **[!UICONTROL Delete]** flows. 
* **ACSD-60584** (for Adobe Commerce and Magento Open Source >=2.4.5 <2.4.7) - Fixes the issue where an access token created for the user on one website is allowed to access or change customer information on other websites. 
* **ACSD-60804** (for Adobe Commerce >=2.4.4 <2.4.8) - Fixes the issue where editing a customer that is linked to a deleted company causes the error *Call to a member function `getSuperUserId()` on null*. 
* **ACSD-61133** (for Adobe Commerce >=2.4.4-p5 <2.4.5 || >=2.4.5-p4 <2.4.6 || >=2.4.6-p2 <2.4.8) - Fixes the issue where the `sales_clean_quotes` [!DNL cron] deletes quotes from unapproved purchase orders.
* **ACSD-61528** (for Adobe Commerce >=2.4.6 <2.4.8) - Fixes the issue where retrieving roles from the [!UICONTROL Admin] using [!DNL GraphQL] returns no results.  
* **ACSD-61553** (for Adobe Commerce and Magento Open Source >=2.4.5 <2.4.7) - Fixes the issue where **[!UICONTROL Cart Price Rule]** discounts are incorrectly calculated when multiple discounts with different priorities and **[!UICONTROL Maximum Qty Discount is Applied To]** are applied to the product. 
* **ACSD-61667** (for Adobe Commerce and Magento Open Source >=2.4.4 <2.4.8) - Improves inventory performance for creating shipping in the case of many sources with in-store pickup. 
* **ACSD-61969** (for Adobe Commerce >=2.4.7 <2.4.8) - Fixes the issue where the user is required to type in a case-sensitive coupon code to match exactly as the coupon code was configured.
* Versions updated: **ACSD-54989**, **ACSD-60632**

## v1.1.52 {#v1-1-52}

* **BUNDLE-3375** (for Adobe Commerce and Magento Open Source) - Adds all the necessary fields to fulfill the 3DS VISA mandate requirements when using [!DNL Braintree] as a payment gateway.
* **ACSD-59366** (for Adobe Commerce >=2.4.6 <2.4.8) - Fixes the issue where an error occurs when attempting to delete a team that contains deactivated users who are not visible in the team list.
* **ACSD-59865** (for Adobe Commerce and Magento Open Source >=2.4.4 <2.4.7) - Fixes the issue where a [!UICONTROL Cart Price Rule] doesn't cancel previously applied rules if the quantity of the product in the cart is not enough for the rules to be applied.
* **ACSD-59925** (for Adobe Commerce and Magento Open Source >=2.4.4 <2.4.8) - Fixes the issue with sorting items in the [!UICONTROL Media Gallery] by position in GraphQL.
* **ACSD-59952** (for Adobe Commerce >=2.4.4 <2.4.8) - Fixes the issue where an error occurs when creating a [!UICONTROL Shared Catalog] with a group ID that is assigned to an existing [!UICONTROL Shared Catalog].
* **ACSD-60590** (for Adobe Commerce and Magento Open Source >=2.4.4 <2.4.7) - Improves the performance of generating [!UICONTROL Bestsellers Aggregated Daily Reports] for a large volume of placed orders.
* **ACSD-60673** (for Adobe Commerce >=2.4.4 <2.4.8) - Fixes the issue where the [!UICONTROL Cart Price Rule] for multiple payment methods at checkout doesn't apply appropriately to the specific payment method.
* **ACSD-60684** (for Adobe Commerce and Magento Open Source >=2.4.6 <2.4.7) - Fixes the issue where GraphQL product sorting by multiple fields doesn't work as expected.
* **ACSD-60788** (for Adobe Commerce >=2.4.7 <2.4.8) - Fixes the issue where custom scripts for [!DNL Google Tag Manager] are not executed due to Content Security Policy (CSP) errors.
* **ACSD-61322** (for Adobe Commerce >=2.4.6 <2.4.8) - Fixes the issue where [!UICONTROL Products/Categories] not assigned to the [!UICONTROL Shared Catalog] for the Default (General Group) are still included in the XML Sitemap.
* **ACSD-61366** (for Adobe Commerce and Magento Open Source >=2.4.7 <2.4.8) - Fixes the issue where the `setup:static-content:deploy --jobs 4` command runs with multiple jobs failing with the *Port must be configured within host parameter* error when the port is specified for the DB connection.
* Updated patches: ACSD-51857, ACSD-57394

## v1.1.51 {#v1-1-51}

* **ACSD-59786** (for Adobe Commerce and Magento Open Source >=2.4.6 <2.4.8) - Fixes the issue where GraphQL returns an internal server error when trying to get a Quote ID for an expired quote.
* **ACSD-60234** (for Adobe Commerce and Magento Open Source >=2.4.4 <2.4.8) - Fixes the issue where an incorrect amount is shown on [!DNL PayPal] when the discount is applied by the payment method.
* **ACSD-59967** (for Adobe Commerce and Magento Open Source >=2.4.4 <2.4.7-p2) - Fixes the issue where a JavaScript error prevents [!DNL Google Maps] from rendering correctly.
* **ACSD-60326** (for Adobe Commerce >=2.4.4 <2.4.8) - Fixes the issue where an error occurs on the GraphQL query for customer return status.
* **ACSD-60538** (for Adobe Commerce >=2.4.7 <2.4.8) - Fixes the issue where if a product is disabled in *[!UICONTROL All Store Views]* and enabled only in specific store view scopes, the product attributes don't show correctly in the GraphQL response, leading to the product not being displayed properly.
* **ACSD-60631** (for Adobe Commerce and Magento Open Source >=2.4.7 <2.4.8) - Fixes the issue where GraphQL returns an error when the same simple product is assigned to multiple configurable products.
* **ACSD-60632** (for Adobe Commerce and Magento Open Source >=2.4.5-p8 <2.4.8) - Fixes the issue where a new address is saved each time an order placement attempt is made, regardless of whether the order is successfully created or not.
* **ACSD-60816** (for Adobe Commerce and Magento Open Source >=2.4.4 <2.4.7) - Fixes the issue where the [!DNL New Relic Browser Monitoring] scripts injected by the APM agent are not compliant with CSP (Content Security Policy), preventing their execution.
* **ACSD-61195** (for Adobe Commerce and Magento Open Source >=2.4.7 <2.4.8) - Fixes the issue where no cart items are returned on the last page for the cart GraphQL request.
* Updated patches: ACSD-59378

## v1.1.50 {#v1-1-50}

* **ACSD-59280** (for Adobe Commerce and Magento Open Source >=2.4.4 <2.4.5) - Fixes the error *Call to undefined method ReflectionUnionType::getName()* that occurs when installing 2.4.4-pX versions.
* **ACSD-45049** (for Adobe Commerce and Magento Open Source >=2.4.4 <2.4.4-p8 || >=2.4.5 <2.4.6) - Fixes the issue where a customer *[!UICONTROL Is required]* attribute setting doesn't work properly as per website scope in Admin.
* **ACSD-46938** (for Adobe Commerce and Magento Open Source >=2.4.4 <2.4.6) - Fixes the issue with the performance of DB triggers recreation during `setup:upgrade`.
* **ACSD-48210** (for Adobe Commerce and Magento Open Source >=2.4.4 <2.4.7) - Fixes the issue where updating a *[!UICONTROL Website Scope]* attribute in a specific store view overrides the attribute values in the global scope.
* **ACSD-54887** (for Adobe Commerce and Magento Open Source >=2.4.4-p4 <2.4.4-p9 || >=2.4.5-p3 <2.4.5-p8 || >=2.4.6-p1 <2.4.6-p6) - Fixes the issue where the customer shopping cart gets cleared after the customer session has expired with [!UICONTROL Persistent Shopping Cart] enabled.
* **ACSD-58141** (for Adobe Commerce and Magento Open Source >=2.4.4 <2.4.8) - Fixes the issue where PHPSESSID regenerates on POST requests on the storefront area for a logged-in customer if the [!DNL L2 Redis cache] is enabled and the customer is updated from Admin.
* **ACSD-58352** (for Adobe Commerce >=2.4.4 <2.4.7) - Fixes the issue where return attribute labels for the default store view are returned via GraphQL API when a non-default store view is specified in the request header.
* **ACSD-58442** (for Adobe Commerce >=2.4.4 <2.4.7-p1) - Fixes the issue where devices with a width of 768px are treated as mobile, causing the menu and header to load in a mobile view instead of desktop.
* **ACSD-58790** (for Adobe Commerce and Magento Open Source >=2.4.4 <2.4.8) - Fixes pinch-to-zoom functionality on the product detail page images in mobile view on [!DNL Chrome].
* **ACSD-59036** (for Adobe Commerce and Magento Open Source >=2.4.7 <2.4.8) - Fixes an exception that happens when loading product prices with both lower and upper bounds equal to $0.
* **ACSD-59229** (for Adobe Commerce and Magento Open Source >=2.4.4 <2.4.7) - Fixes the issue where customer group-related information is saved in the wrong segment due to the old value of the X-Magento-Vary in request.
* **ACSD-59378** (for Adobe Commerce and Magento Open Source >=2.4.5 <2.4.6) - Fixes the issue where store-level URL rewrites are incorrectly updated during import.
* **ACSD-59514** (for Adobe Commerce >=2.4.4 <2.4.7-p2) - Fixes the issue where forms in the Admin area with [!DNL Page Builder] throw the error *[!DNL Page Builder] was rendering for 5 seconds without releasing locks.* in the browser console after submitting the form, and changes can't be saved.
* **ACSD-60303** (for Adobe Commerce >=2.4.4-p9 <2.4.5 || >=2.4.5-p8 <2.4.6 || >=2.4.6-p6 <2.4.8) - Fixes the issue where an order from Admin cannot be placed if HTML minification is enabled.
* **ACSD-60441** (for Adobe Commerce and Magento Open Source 2.4.4-p9 || 2.4.5-p8 || 2.4.6-p6 || 2.4.7-p1) - Fixes the issue with updating customers via `V1/customers` [!DNL REST API] endpoint when using the integration access token generated from the backend.
* Updated patches: ACSD-57003

## v1.1.49 {#v1-1-49}

* **ACSD-56979** (for Adobe Commerce and Magento Open Source >=2.4.3 <2.4.7) - Fixes the issue where product images are removed after deleting a staging update.
* **ACSD-57086** (for Adobe Commerce and Magento Open Source >=2.4.3 <2.4.7) - Fixes the issue where the orders placed from non-default websites with terms and conditions enabled are not processed correctly.
* **ACSD-57588** (for Adobe Commerce and Magento Open Source >=2.4.6 <2.4.7) - Fixes the issue where shipping an order to multiple addresses triggers an error during region ID processing.
* **ACSD-57643** (for Adobe Commerce and Magento Open Source >=2.4.6 <2.4.7) - Fixes the issue where products with custom options are incorrectly added to the shopping cart via GraphQL.
* **ACSD-57846** (for Adobe Commerce and Magento Open Source >=2.4.2 <2.4.7) - Fixes the issue where GraphQL products search with a filter for zero prices does not return any results due to an exception.
* **ACSD-57941** (for Adobe Commerce and Magento Open Source >=2.4.6 <2.4.7) - Fixes the issue where product options are incorrectly assigned to the admin store instead of their respective stores.
* **ACSD-58375** (for Adobe Commerce and Magento Open Source >=2.4.2 <2.4.7) - Fixes the issue where the wrong *[!DNL YouTube API Key]* configuration causes an error when adding a [!DNL YouTube] video at the store view level.
* **ACSD-58739** (for Adobe Commerce and Magento Open Source >=2.4.7 <2.4.8) - Fixes the issue where partial reindexing throws an error.
* **ACSD-58446** (for Adobe Commerce >=2.4.6 <2.4.7) - Fixes the issue where when deleting a team with child users or teams irrespective of their status (inactive), the system provides an uninformative error message not consistent with the UI.
* **ACSD-58054** (for Adobe Commerce >=2.4.4 <2.4.6) - Fixes the issue where it is possible to generate customer tokens for inactive customers via API.
* **ACSD-58163** (for Adobe Commerce >=2.4.3 <2.4.7) - Fixes the issue where a *[!UICONTROL Cart Price Rule]* doesn't apply a discount for a guest customer from the matching *[!UICONTROL Customer Segment]* cart without a coupon code.
* **ACSD-57045** (for Adobe Commerce >=2.4.5 <2.4.7) - Fixes the issue where URL rewrites cause infinite page looping after *[!UICONTROL Website Root]* is unchecked from *[!UICONTROL Hierarchy]*.
* Updated patches: ACSD-46815, ACSD-47027, ACSD-51683, ACSD-55031, ACSD-51819, ACSD-54965-v2

## v1.1.48 {#v1-1-48}

* **ACSD-55566** (for Adobe Commerce and Magento Open Source >=2.4.3 <2.4.7) - Fixes the issue where the `mergeCart` mutation fails with an "*Internal Server Error*" in the [!DNL GraphQL] response when merging source and destination carts that have the same bundle items. 
* **ACSD-56546** (for Adobe Commerce and Magento Open Source >=2.4.4 <2.4.7) - Fixes the issue where configurable and bundle products display as **Out of Stock** on the storefront when the **display out of product configuration** is *Disabled*.
* **ACSD-56635** (for Adobe Commerce >=2.4.6 <2.4.7) - Fixes the issue where the imported customer is duplicated with the same email address, when an import is used with **account sharing** set to *Global*.
* **ACSD-56741** (for Adobe Commerce and Magento Open Source >=2.4.6 <2.4.7) - Fixes the error message "*Trying to access array offset on value of type null*" that displays during `setup:upgrade` when the database contains a custom [!DNL MySQL] trigger not related to the indexation mechanism and [!DNL MView].
* **ACSD-57315** (for Adobe Commerce and Magento Open Source >=2.4.2 <2.4.7) - Fixes the issue when a new transaction is created in [!DNL PayPal Payflow Pro] each time the [!UICONTROL Fetch] button is clicked on the **[!UICONTROL View transaction]** screen in the Admin.
* **ACSD-57337** (for Adobe Commerce >=2.4.4 <2.4.6) - Fixes the issue where an admin user with access restrictions to specific websites is able to see companies from all the websites in the **[!UICONTROL Companies]** grid.
* **ACSD-57394** (for Adobe Commerce and Magento Open Source >=2.4.4 <2.4.7) - Fixes the issue of incorrect product sorting by multiple sort fields in [!DNL GraphQL].
* **ACSD-57565** (for Adobe Commerce and Magento Open Source >=2.4.6 <2.4.7) - Fixes the issue where the **[!UICONTROL Order]** dashboard displays incorrect order information until the time period is updated. The dashboard now displays the correct order statistics on the first load.
* **ACSD-57854** (for Adobe Commerce and Magento Open Source >=2.4.5 <2.4.7) - Fixes the issue when product [!DNL GraphQL] requests returned disabled categories in the category aggregations.
* **ACSD-58008** (for Adobe Commerce >=2.4.5 <2.4.7) - Fixes the issue where updating a scheduled update removed the previous version of a staged item, if no end date was specified.
* Updated patches: MDVA-39305-V2, ACSD-48627, ACSD-54965

## v1.1.47 {#v1-1-47}

* **ACSD-55241** (for Adobe Commerce and Magento Open Source >=2.4.2 <2.4.7) - Fixes the issue where *[!UICONTROL Used]* and *[!UICONTROL Times Used]* attributes display incorrect values for generated coupons when used during checkout with multiple addresses.
* **ACSD-56760** (for Adobe Commerce >=2.4.6 <2.4.7) - Fixes the issue where an admin user restricted to a specific website cannot sort or add new products inside a category in case the webstore has its own root category.
* **ACSD-56858** (for Adobe Commerce >=2.4.2 <2.4.7) - Fixes the issue where B2B company role permissions are displayed incorrectly for a restricted company admin.
* **ACSD-57074** (for Adobe Commerce and Magento Open Source >=2.4.6 <2.4.7) - Fixes the issue where the *Yes/No* custom attribute with `attrbute_code` starting with `price_` does not work properly with indexing, and products with such attributes are not available on the front end.
* Updated patches: ACSD-53378, ACSD-51819

## v1.1.46 {#v1-1-46}

* **ACSD-46767** (for Adobe Commerce and Magento Open Source >=2.4.4 <2.4.6) - Fixes the issue where the category page caches invalidate when the stock quantity changes, even if the product is still in stock.
* **ACSD-54656** (for Adobe Commerce >=2.4.5 <2.4.6) - Fixes the issue where the invisible Recaptcha fails during checkout, preventing an order from being placed.
* **ACSD-55100** (for Adobe Commerce >=2.4.6 <2.4.7) - Fixes the issue where GraphQL does not return more than 10k products in the search results.
* **ACSD-56621** (for Adobe Commerce >=2.4.2 <2.4.7) - Fixes the issue where the updated first name and last name are not reflected in the greetings header section for the company admin user.
* **ACSD-56842** (for Adobe Commerce and Magento Open Source >=2.4.2 <2.4.7) - Fixes the issue where the deferred proxies and the deferred proxy factories are missing after running `setup:di:compile`.
* **ACSD-57003** (for Adobe Commerce and Magento Open Source >=2.4.6 <2.4.7) - Fixes the issue where the order status is changed to *[!UICONTROL Complete]* instead of being changed to *[!UICONTROL Processing]* when an order is partially refunded and partially shipped.
* Updated patches: ACSD-50260-v2, ACSD-54966

## v1.1.45 {#v1-1-45}

* **ACSD-56886** (for Adobe Commerce and Magento Open Source >=2.4.2 <2.4.7) - Fixes the issue where a configurable product becomes out of stock when one of two child products is disabled by a scheduled update.
* **ACSD-56616** (for Adobe Commerce and Magento Open Source >=2.4.5 <2.4.6) - Fixes the issue where bundled products display as in stock on the storefront when their simple products are out of stock.
* **ACSD-56515** (for Adobe Commerce >=2.4.2 <2.4.7) - Fixes the issue where admin with website level permissions cannot add or edit a dynamic block.
* **ACSD-56447** (for Adobe Commerce and Magento Open Source >=2.4.2 <2.4.7) - Fixes the issue where adding the same product to the cart via parallel REST web API requests results in two separate items in the cart.
* **ACSD-56415** (for Adobe Commerce and Magento Open Source >=2.4.5 <2.4.7) - Fixes the issue where the performance of the partial price indexing is slowed down due to a `DELETE` query when the database has a lot of partial price data to index.
* **ACSD-54965** (for Adobe Commerce >=2.4.5 <2.4.6) - Fixes the issue where the Visual Merchandising grid does not display the correct stock when a product is assigned to custom stock only.
* **ACSD-52824** (for Adobe Commerce >=2.4.5 <2.4.7) - Fixes the issue where PayPal Express, Google Pay, and Apple Pay buttons are displayed for company customers when such payment methods are disabled in company settings.
* Updated patches: ACSD-56193

## v1.1.44 {#v1-1-44}

* **ACSD-56790** (for Adobe Commerce and Magento Open Source >=2.4.6 <2.4.7) - Fixes the issue where a user is redirected to the Admin Dashboard when sorting category products using the **Move out of Stock to bottom** option and the `Invalid security or form key. Please refresh the page` error appears on top of the screen.
* **ACSD-56280** (for Adobe Commerce >=2.4.4 <2.4.7) - Fixes the issue where ordering items from a gift registry leads to an exception.
* **ACSD-56246** (for Adobe Commerce and Magento Open Source >=2.4.6 <2.4.7) - Fixes the issue where data is removed from the custom multi-select attribute when a scheduled update for a product becomes active.
* **ACSD-56193** (for Adobe Commerce and Magento Open Source >=2.4.2 <2.4.4) - Fixes the issue where the Varnish/Fastly cache is not updated when a scheduled block is used in the category description using Page Builder.
* **ACSD-56158** (for Adobe Commerce and Magento Open Source >=2.4.5 <2.4.7) - Fixes the issue where the "cart" query returns the total tax value for each tax rule.
* **ACSD-56023** (for Adobe Commerce and Magento Open Source >=2.4.2 <2.4.7) - Fixes the issue where widget content is not updating on the CMS page when cache is enabled.
* **ACSD-55427** (for Adobe Commerce >=2.4.5 <2.4.7) - Fixes the issue where the admin user cannot unassign a product from a shared catalog from the product page in the Admin.
* **ACSD-55352** (for Adobe Commerce and Magento Open Source >=2.4.2 <2.4.7) - Fixes the issue where after creating a partial credit memo with customer reward points, the order status changes to Closed and credit memo options disappear from the Admin order page.
* **ACSD-55231** (for Adobe Commerce >=2.4.2 <2.4.7) - Fixes the issue where you cannot add products to a cart using the quick order functionality.
* **ACSD-54283** (for Adobe Commerce >=2.4.3 <2.4.4) - Fixes the issue where Products/Categories not assigned to the Shared Catalog for the Default (General Group) are still included in the XML Sitemap.
* Updated patches: ACSD-52041, ACSD-54040, ACSD-51819

## v1.1.43 {#v1-1-43}

* **ACSD-54972** (for Adobe Commerce and Magento Open Source >=2.4.2 <2.4.7) - Fixes the issue where the canonical category URL doesn't update after changing the category URL.
* **ACSD-53636** (for Adobe Commerce and Magento Open Source >=2.4.3 <2.4.5) - Fixes the issue where the regular price is not displayed on product listing pages for configurable products that have child products with special prices.
* **ACSD-54885** (for Adobe Commerce and Magento Open Source >=2.4.2 <2.4.7) - Fixes the issue with the multiple address checkout when the admin user is using the *Login as Customer* functionality.
* **ACSD-55610** (for Adobe Commerce and Magento Open Source >=2.4.4 <2.4.7) - Fixes the issue where a partially canceled order has an incorrect discount amount.
* **ACSD-55334** (for Adobe Commerce and Magento Open Source >=2.4.3 <2.4.7) - Fixes translations for labels through Translation dictionaries in GraphQL response.
* **ACSD-54739** (for Adobe Commerce >=2.4.5 <2.4.7) - Fixes the issue where the product stock status condition is not applied for related product rules.
* **ACSD-53925** (for Adobe Commerce and Magento Open Source >=2.4.2 <2.4.7) - Fixes the issue where the admin is unable to save CMS block with product carousel when `catalog_product_price` dimensions-mode is set to *website*.
* **ACSD-52714** (for Adobe Commerce and Magento Open Source >=2.4.2 <2.4.7) - Fixes the issue where the date filter is not working in the admin grid when the date format is set as *Y-m-d*.
* **ACSD-55055** (for Adobe Commerce and Magento Open Source >=2.4.2 <2.4.7) - Improves performance of loading product attributes in cart price rules in the shopping cart.
* **ACSD-53790** (for Adobe Commerce >=2.4.6 <2.4.7) - Fixes the issue where Multiple RMAs for a single product can be created via REST API.
* **ACSD-56090** (for Adobe Commerce and Magento Open Source >=2.4.2 <2.4.5) - Fixes the issue where the GraphQL request is responding with all stores' data rather than the specifically requested store data.
* **ACSD-54983** (for Adobe Commerce >=2.4.2 <2.4.7) - Fixes the issue where getting the company user UID with GraphQL request is not possible when the user status is set to *[!UICONTROL Inactive]*.
* **ACSD-53309** (for Adobe Commerce and Magento Open Source >=2.4.2 <2.4.7) - Fixes the issue where tax is not fully applied in the *[!UICONTROL Regular Price]* label when the customizable option is selected.
* **ACSD-55305** (for Adobe Commerce >=2.4.4 <2.4.7) - Fixes the issue where the *[!UICONTROL Edit Company User]* popup on the **[!UICONTROL myAccount]** > **[!UICONTROL Company Structure]** page freezes with a loader on the screen.
* Updated patches: ACSD-49013

## v1.1.42 {#v1-1-42}

* **ACSD-53658** (for Adobe Commerce and Magento Open Source >=2.4.4 <2.4.7) - Fixes the issue where *[!UICONTROL Recently Viewed]* product data is not updated properly in the store view.
* **ACSD-54626** (for Adobe Commerce >=2.4.6 <2.4.7) - Fixes the issue where you can't create a new purchase order rule (`createPurchaseOrderApprovalRule`) with the `NUMBER_OF_SKUS` attribute via [!DNL GraphQL].
* **ACSD-53845** (for Adobe Commerce and Magento Open Source >=2.4.0 <2.4.7) - Fixes the [!DNL MySQL] connection timeout issue when `consumer max_messages` = 0.
* **ACSD-54890** (for Adobe Commerce and Magento Open Source >=2.4.0 <2.4.7) - Fixes the issue where `aggregate_sales_report_bestsellers_data` causes [!DNL MySQL] errors due to `/tmp` disk being out of space.
* **ACSD-55112** (for Adobe Commerce and Magento Open Source >=2.4.0 <2.4.7) - Fixes the issue where the *[!UICONTROL Submit review]* button can be clicked multiple times without [!DNL Google reCAPTCHA v3] validation.
* **ACSD-54264** (for Adobe Commerce >=2.4.4-p5 <2.4.5 || >=2.4.5-p4 <2.4.6 || >=2.4.6-p2 <2.4.7) - Fixes the issue where the error message *"You cannot update the requested attribute. Row ID: store_id"* appears when a customer tries to check out with a negotiable quote from another store view.
* **ACSD-54418** (for Adobe Commerce and Magento Open Source >=2.4.0 <2.4.7) - Fixes the issue where a fixed amount of discount is incorrectly applied to each child product of the dynamically priced bundle.
* **ACSD-55238** (for Adobe Commerce and Magento Open Source >=2.4.4 <2.4.7) - Fixes saving the empty product *[!UICONTROL Meta Description]*.
* **ACSD-54966** (for Adobe Commerce and Magento Open Source >=2.4.5 <2.4.7) - Fixes the issue where a coupon code with a limited-use per customer can't be reused if the previous order failed.
* **ACSD-54060** (for Adobe Commerce and Magento Open Source >=2.4.3 <2.4.7) - Fixes the issue where a restricted admin can't save a product if it's a child of another product assigned to a different scope.
* **ACSD-48910** (for Adobe Commerce and Magento Open Source >=2.4.5 <2.4.6) - Fixed the issue where a bundle product assigned to multiple sources goes out-of-stock after an order is invoiced and shipped, even if it still has a non-zero quantity.
* **ACSD-55381** (for Adobe Commerce >=2.4.2 <2.4.7) - Fixes an internal server error when querying `configurable_product_option_uid` and `configurable_product_option_value_uid` fields from a [!DNL B2B] *[!UICONTROL Requisition list]* via [!DNL GraphQL].
* **ACSD-55628** (for Adobe Commerce >=2.4.4-p2 < 2.4.5 || >=2.4.5-p1 < 2.4.6) - Fixes uploading a file on the company registration form and replacing a file for a customer attribute on the storefront.
* Updated patches: ACSD-51240, ACSD-51890, ACSD-53098

## v1.1.41 {#v1-1-41}

* **ACSD-54376** (for Adobe Commerce >=2.4.2 <2.4.7) - Fixes the issue that occurs in the shopping cart when a product is removed from the shared catalog after it has already been added to the cart.
* **ACSD-53722** (for Adobe Commerce >=2.4.4 <2.4.7) - Fixes the issue where the bundled product options price changes to $0 when scheduled updates for different scopes become active.
* **ACSD-53643** (for Adobe Commerce >=2.4.3 <2.4.7) - Fixes the issue where the order has an incorrect total when placing a purchase order with disabled or out-of-stock products. It is fixed by hiding the *[!UICONTROL Place Order]* button for such purchase orders.
* **ACSD-54067** (for Adobe Commerce and Magento Open Source >=2.4.0 <2.4.7) - Fixes the issue where a product video doesn't play on a mobile device.
* **ACSD-55414** (for Adobe Commerce and Magento Open Source >=2.4.0 <2.4.6) - Improves performance when the MariaDB tries to cast the EAV entity_id from string to integer.
* **ACSD-51819** (for Adobe Commerce >=2.4.4 <2.4.4-p4) - Fixes the issue where multiple orders can be placed with the same quote ID.
* **ACSD-53118** (for Adobe Commerce >=2.4.0 <2.4.7) - Fixes the issue where the *[!UICONTROL Cart Price Rule]* is applied using coupon code while the product has an empty attribute, which should have caused the rule to be invalidated.
* **ACSD-54324** (for Adobe Commerce >=2.4.5 <2.4.7) - Fixes the issue where the GraphQL requisition_lists request does not consider pagination settings and returns all results.
* Updated patches: MDVA-42855-v2

## v1.1.40 {#v1-1-40}

* **ACSD-54680** (for Adobe Commerce >=2.4.0 <2.4.6) - Fixes the issue where it is not possible to process a B2B Quote submitted for a product with Multiple Assigned Sources.
* **ACSD-54040** (for Adobe Commerce >=2.4.4-p5 <2.4.5 || >=2.4.5-p4 <2.4.6) - Fixes the issue where the *[!UICONTROL Created]* field is blank in order details when B2B modules are enabled.
* **ACSD-54319** (for Adobe Commerce and Magento Open Source >=2.4.2 <2.4.6) - Fixes the issue where the product price shows zero in the *[!UICONTROL Product in Cart]* report.
* **ACSD-53378** (for Adobe Commerce and Magento Open Source >=2.4.5 <2.4.7) - Improves checkout page load time for customers who have large address books.
* **ACSD-52657** (for Adobe Commerce and Magento Open Source >=2.4.5 <2.4.7) - Fixes the issue where the minicart is not updated on the secondary storeview, which uses a subdomain.
* **ACSD-53414** (for Adobe Commerce >=2.4.6 <2.4.7) - Fixes the issue where a restricted admin user can see CMS pages outside of their permissions scope.
* **ACSD-54472** (for Adobe Commerce >=2.4.6 <2.4.7) - Fixes the issue where customers of a rejected company can still authenticate, and customers of a blocked and a rejected company can still place orders. The patch adds additional validation for GraphQL endpoints.
* **ACSD-52801** (for Adobe Commerce and Magento Open Source >=2.4.4 <2.4.7) - Adds the option to do a partial match when searching for products in GraphQL.
* **ACSD-55004** (for Adobe Commerce and Magento Open Source >=2.4.6 <2.4.7) - Fixes the issue where the validator crashes while uploading an import file larger than the value configured in `php.ini`.
* **ACSD-54989** (for Adobe Commerce >=2.4.4-p5 <2.4.5 || >=2.4.5-p4 <2.4.6 || >=2.4.6-p2 <2.4.7) - Fixes the issue where a company admin cannot place an order when *[!UICONTROL Enable Purchase Orders]* is set to *[!UICONTROL Yes]* and *[!UICONTROL Purchase Order]* is set to *[!UICONTROL No]*.
* **ACSD-54007** (for Adobe Commerce and Magento Open Source >=2.4.0 <2.4.7) - Fixes the error *"Undefined array key "_scope""* on importing customer data.
* **ACSD-55031** (for Adobe Commerce and Magento Open Source >=2.4.5 <2.4.6) - Fixes the *Type "mixed" cannot be nullable* error during compilation.
* **ACSD-54961** (for Adobe Commerce and Magento Open Source >=2.4.0 <2.4.7) - Fixes the issue where a restricted admin user cannot mass update the *Product Review* status.
* **ACSD-55256** (for Adobe Commerce and Magento Open Source >=2.4.6 <2.4.7) - Fixes the issue where only the first image is successfully displayed in the image slider.
* Updated patches: ACSD-52041, ACSD-54106

## v1.1.39 {#v1-1-39}

* **ACSD-53704** (for Adobe Commerce >=2.4.0 <2.4.7) - Fixes the issue where reward points balance history is miscalculated after reward points expiration.
* **ACSD-53583** (for Adobe Commerce and Magento Open Source >=2.4.4 <2.4.7) - Improves partial reindex performance for *Category Products* and *Product Categories* indexers.
* **ACSD-54026** (for Adobe Commerce >=2.4.6 <2.4.7) - Fixes an incorrect error message for an `updateCompanyRole` GraphQL request for a non-authorized user.
* **ACSD-54106** (for Adobe Commerce and Magento Open Source >=2.4.1 <2.4.5) - Fixes the issue where category product sorting by name for Turkish accented characters is incorrect.
* **ACSD-52219** (for Adobe Commerce and Magento Open Source >=2.4.5 <2.4.7) - Fixes the issue where Admin grids saved filters don't work as expected when frequently switching between bookmark views.
* **ACSD-54342** (for Adobe Commerce and Magento Open Source >=2.4.0 <2.4.7) - Fixes an incorrect error message *Error in data structure: values are mixed* when importing a CSV file without valid data.
* **ACSD-54660** (for Adobe Commerce and Magento Open Source >=2.4.4 <2.4.6) - Added a new input attribute *sort* to sort customer orders in GraphQL by `sort_field` and `sort_direction`.
* **ACSD-54776** (for Adobe Commerce >=2.4.5 <2.4.7) - Fixes the issue where unchecked *[!UICONTROL Use Default Value]* and non-default product field values are not saved for the second website, store, and store view.
* **ACSD-53998** (for Adobe Commerce and Magento Open Source >=2.4.4-p2 <2.4.5 || >=2.4.5-p1 <2.4.7) - Fixes the issue where a **[!UICONTROL Dynamic Block]** based on a **[!UICONTROL Customer Segment]** doesn't work correctly after logging out from a customer account.
* **ACSD-53204** (for Adobe Commerce and Magento Open Source >=2.4.6 <2.4.7) - Fixes *The product can't be saved.* error when making concurrent requests to add images to the product gallery using the `rest/V1/products/<sku>/media` endpoint.
* **ACSD-47657** (for Adobe Commerce and Magento Open Source >=2.4.4 <2.4.7) - Added a caching mechanism for AWS credentials. A credentials provider now uses the Magento cache to cache credentials retrieved from AWS for EC2 configuration.
* Updated patches: ACSD-51984, ACSD-51574.

## v1.1.38 {#v1-1-38}

* **ACSD-53098** (for Adobe Commerce and Magento Open Source >=2.4.3 <2.4.4) - Fixes the issue where products assigned to a shared catalog do not appear on the storefront when a partial index is executed.
* **ACSD-54018** (for Adobe Commerce and Magento Open Source >=2.3.7 <2.4.6) - Fixes the performance issues with the [!UICONTROL Product List] widget that uses a non-global attribute in the widget condition.
* **ACSD-54111** (for Adobe Commerce and Magento Open Source >=2.4.2 <2.4.6) - Fixes the issue where the product thumbnail images are not displayed on the storefront when the aspect ratio of the watermark image does not match the product image.
* **ACSD-47669** (for Adobe Commerce and Magento Open Source >=2.4.2 <2.4.6) - Fixes *Integrity constraint violation: 1452 Cannot add or update a child row: a foreign key constraint fails* error when importing products CSV.
* **ACSD-53347** (for Adobe Commerce and Magento Open Source >=2.3.7 <2.4.7) - Fixes the issue where the price indexer takes too much time to execute.
* **ACSD-52287** (for Adobe Commerce >=2.3.7 <2.4.7) - Fixes the issue with incorrect order status in the archived order grid when asynchronous grid indexing is enabled.
* **ACSD-52929** (for Adobe Commerce and Magento Open Source >=2.3.7 <2.4.7) - Fixes the issue with redundant requests to reindex default source items when the inventory indexer is configured in async mode.
* **ACSD-53824** (for Adobe Commerce and Magento Open Source >=2.4.4 <2.4.7) - Fixes the issue where `UpdateMultiselectAttributesBackendTypes` migration data patch exceeds database transaction size limit during `setup:upgrade`.

## v1.1.37 {#v1-1-37}

* **ACSD-52613** (for Adobe Commerce and Magento Open Source >=2.4.6 <2.4.7) - Fixes the issue where caches and indexes are refreshed even when no updates are made to `Inventory_source` items by REST API.
* **ACSD-51884** (for Adobe Commerce and Magento Open Source >=2.3.7 <2.4.7) - Fixes the issue where the product image cache path becomes incorrect after running the resize command.
* **ACSD-53628** (for Adobe Commerce and Magento Open Source >=2.3.7 <2.4.7) - Fixes the issue where the CSV sales order report shows incorrect special characters.
* **ACSD-53148** (for Adobe Commerce and Magento Open Source >=2.4.4 <2.4.7) - Fixes the issue where two parallel requests in GraphQL for adding the same configurable product to the cart resulted in two separate items on the cart with the same product SKU.
* **ACSD-52606** (for Adobe Commerce and Magento Open Source >=2.4.0 <2.4.7) - Fixes the issue where the error message *Your order is not ready for pickup* is displayed when the user clicks **[!UICONTROL Notify Order is Ready for Pickup]**.
* **ACSD-51574** (for Adobe Commerce and Magento Open Source >=2.4.2 <2.4.7) - Fixes the issue where the image is not updated on the frontend after replacing it with another image with the same name.
* **ACSD-53728** (for Adobe Commerce and Magento Open Source >=2.3.7 <2.4.7) - Fixes the issue where the product EAV indexer is taking longer to complete.
* **ACSD-53979** (for Adobe Commerce and Magento Open Source >=2.4.6 <2.4.7) - Fixes the JS issue that occurs on the homepage if the welcome message contains a single quote.
* **ACSD-52085** (for Adobe Commerce and Magento Open Source >=2.4.5 <2.4.7) - Fixes the issue where a configurable product with a special price is not visible in the product's carousel.
* **ACSD-53795** (for Adobe Commerce and Magento Open Source >=2.4.2 <2.4.7) - Fixes the issue with invalid data type in `indexer_update_all_views` cron job.
* **ACSD-52143** (for Adobe Commerce and Magento Open Source >=2.4.6 <2.4.7) - Fixes the issue where custom options are removed after product import.
* **ACSD-53750** (for Adobe Commerce and Magento Open Source >=2.4.4 <2.4.7) - Fixes the *Broken pipe or closed connection* error during multi-threaded `catalog_product_price` reindex.
* **ACSD-49843** (for Adobe Commerce and Magento Open Source >=2.3.7 <2.4.0 || >=2.4.1 <2.4.7) - Fixes the issue where the link on product download is not available after the ordered item is auto-invoiced by online payment method with the **[!UICONTROL Payment Action]** = **[!UICONTROL Sale]** setting enabled.
* **ACSD-47054** (for Adobe Commerce >=2.4.2 <2.4.6) - Fixes the issue where the preview reindex runs reindex for all stores, causing slowness.
* Added new versions for ACSD-46541, ACSD-47079.
* ACSD-49970-v3 replaced with ACSD-54095.

## v1.1.36 {#v1-1-36}

* **ACSD-53239** (for Adobe Commerce and Magento Open Source >=2.4.3 < 2.4.6) - Fixes the issue where the inventory indexer cleans all caches in the Update on Schedule mode.
* **ACSD-50887** (for Adobe Commerce and Magento Open Source >=2.4.0 <2.4.7) - Fixes the issue where the product attribute property *[!UICONTROL Use in Search Results Layered Navigation]* can be set to *Yes* without the *[!UICONTROL Use in search]* option set to *Yes*.
* **ACSD-51846** (for Adobe Commerce and Magento Open Source >=2.4.3-p2 <2.4.6) - Fixes the *Internal Error* issue that happens because not all levels of REST API payload are validated.
* **ACSD-52906** (for Adobe Commerce >=2.3.7 <2.4.7) - Fixes the issue where the X-Magento-Vary cookie is set incorrectly for logged-in customers that belong to the same customer segment causing improper caching for some pages.
* **ACSD-52736** (for Adobe Commerce and Magento Open Source >=2.3.7 <2.4.6) - Fixes the issue where a *Cart Price Rule* that includes requirements for configurable product quantity does not work as expected.
* **ACSD-47875** (for Adobe Commerce and Magento Open Source >=2.3.7 <2.4.7) - Fixes the issue where admin users are not able to add a product to a customer cart from the Admin for a particular store view scope with inventory management.
* **ACSD-53176** (for Adobe Commerce >=2.3.7 <2.4.5) - Fixes the issue where *Related Product Rule* with *is one of* condition does not match products.
* **ACSD-51666** (for Adobe Commerce and Magento Open Source >=2.3.7 <2.4.7) - Fixes the error *The session has expired, please login again.* that happens after a customer tries to log in.
* Added new versions for MDVA-39305-v2.
* Updated requirements for ACSD-19640.

## v1.1.35 {#v1-1-35}

* **ACSD-51899** (for Adobe Commerce and Magento Open Source >=2.4.0 <2.4.7) - Fixes the issue where the default shipping address on the checkout shipping step is auto-populated with a previously selected in-store pickup address.
* **ACSD-52041** (for Adobe Commerce and Magento Open Source >=2.4.4 <2.4.7) - Fixes the issue where the error message: *[ERROR] [!DNL Page Builder] was rendering for 5 seconds without releasing locks.* appears in Chrome browser when saving content edited with [!DNL Page Builder].
* **ACSD-52095** (for Adobe Commerce and Magento Open Source >=2.3.7 <2.4.6) - Fixes the issue where the `manage_stock` value was incorrectly set to 0 in the CSV file after product export.
* **ACSD-51358** (for Adobe Commerce >=2.4.5 <2.4.7) - Fixes the issue where removing a scheduled update without an end date leads to removing other scheduled updates for the same entity.
* **ACSD-48070** (for Adobe Commerce >=2.3.7 <2.4.7) - Fixes the issue where editing a scheduled update triggers an exception.
* **ACSD-51890** (for Adobe Commerce and Magento Open Source >=2.4.0 <2.4.7) - Fixes the issue where the [!UICONTROL Submit review] button can be clicked multiple times without [!DNL Google reCAPTCHA] v3 validation.
* **ACSD-51984** (for Adobe Commerce >=2.4.5 <2.4.7) - Fixes the issue where unchecked *[!UICONTROL Use Default Value]* and *[!UICONTROL non-default product field]* values are not saved for the second website, store, and store view.
* **ACSD-52398** (for Adobe Commerce and Magento Open Source >=2.4.0 <2.4.7) - Fixes the error *The requested qty is not available* that occurs when trying to update the quantity of a bundled product in the cart on the storefront.
* **ACSD-52786** (for Adobe Commerce and Magento Open Source >=2.4.5 <2.4.6) - Fixes the issue where a catalog rule condition *SKU is* applies to all products starting with the given SKU.
* **ACSD-52921** (for Adobe Commerce and Magento Open Source >=2.4.5 <2.4.7) - Fixes the issue where an internal error occurs if requesting cart details from GraphQL when there is an out-of-stock configurable product in the cart.
* **ACSD-51683** (for Adobe Commerce and Magento Open Source >=2.4.6 <2.4.7) - Fixes the issue where a customizable option can't be added to the cart using GraphQL.
* **ACSD-52133** (for Adobe Commerce and Magento Open Source >=2.4.6 <2.4.7) - Fixes the issue where a customer account cannot be saved after an upgrade.
* **ACSD-52202** (for Adobe Commerce and Magento Open Source >=2.4.3 <2.4.7) - Fixes the issue where the salable qty of default stock wrongly changes to 0 when a non-default stock is changed to 0 qty on order fulfillment.
* **ACSD-51265** (for Adobe Commerce and Magento Open Source >=2.4.2 <2.4.7) - Fixes the issue with `catalog_product_price` reindexing performance when there are too many bundled products in the system.
* **ACSD-52831** (for Adobe Commerce >=2.3.7 <2.4.7) - Fixes the issue where customers cannot place negotiable quote orders when [!DNL Google reCAPTCHA v3 Invisible] is enabled.
* **ACSD-51845** (for Adobe Commerce and Magento Open Source >=2.4.4 <2.4.7) - Fixes the issue where subsequent products with tier prices and different attribute sets cannot be updated via asynchronous bulk REST API.
* **ACSD-52815** (for Adobe Commerce and Magento Open Source >=2.3.7 <2.4.7) - Fixes the issue where the input for the quantity field of a non-default source supports only up to 6 digits, unlike 8 for a default stock.
* **ACSD-51149** (for Adobe Commerce >=2.3.7 <2.4.7) - Fixes the issue where Scheduled ImportExport with enabled Catalog Permissions invalidates indexers and then cache flushes by cron.
* **ACSD-50815** (for Adobe Commerce and Magento Open Source >=2.4.5 <2.4.6) - Fixes the issue where decimal quantity for a simple product cannot be used for a new Bundled product option.
* Updated versions for ACSD-47803.
* Updated title for ACSD-51892.
* Updated ACSD-51379.
* Updated ACSD-49970-v2.

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
* **ACSD-51892** (for Adobe Commerce and Magento Open Source >=2.4.6 <2.4.7) - Fixes the performance issue where config files load multiple times.
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
