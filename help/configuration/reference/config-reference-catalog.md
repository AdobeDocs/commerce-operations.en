---
title: Catalog configuration paths reference
description: Learn about catalog configuration paths and values in Adobe Commerce Admin settings. Discover product, category, and catalog management configuration options.
feature: Configuration, Catalog Management
exl-id: 19451443-228e-437d-a3eb-7dc968b9fb0d
---
# Catalog configuration paths reference

This section lists variable names and config paths available for options in the Admin under **Stores** > Settings > **Configuration** > **Catalog**.

The [`magento app:config:dump` command](../cli/export-configuration.md) writes these values to the shared configuration file, `app/etc/config.php`, which should be in source control. To optionally override any configuration settings or to set sensitive settings, see [Use environment variables to override configuration settings](override-config-settings.md#environment-variables). This topic does _not_ list [sensitive and system-specific values](config-reference-sens.md).

## Catalog paths

These configuration values are available in the Admin in **Stores** > Settings > **Configuration** > **Catalog** > **Catalog**.

| Name  | Config path | Commerce only? |
|--------------|--------------|--------------|
| Mask for SKU | `catalog/fields_masks/sku` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Mask for Meta Title | `catalog/fields_masks/meta_title` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Mask for Meta Keywords | `catalog/fields_masks/meta_keyword` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Mask for Meta Description | `catalog/fields_masks/meta_description` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| List Mode | `catalog/frontend/list_mode` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Products per Page on Grid Allowed Values | `catalog/frontend/grid_per_page_values` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Products per Page on Grid Default Value | `catalog/frontend/grid_per_page` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Products per Page on List Allowed Values | `catalog/frontend/list_per_page_values` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Products per Page on List Default Value | `catalog/frontend/list_per_page` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Product Listing Sort by | `catalog/frontend/default_sort_by` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Allow All Products per Page | `catalog/frontend/list_allow_all` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Use Flat Catalog Category | `catalog/frontend/flat_catalog_category` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Use Flat Catalog Product | `catalog/frontend/flat_catalog_product` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Swatches per Product | `catalog/frontend/swatches_per_product` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Allow Guests to Write Reviews | `catalog/review/allow_guest` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Allow Alert When Product Price Changes | `catalog/productalert/allow_price` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Price Alert Email Template | `catalog/productalert/email_price_template` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Allow Alert When Product Comes Back in Stock | `catalog/productalert/allow_stock` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Stock Alert Email Template | `catalog/productalert/email_stock_template` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Alert Email Sender | `catalog/productalert/email_identity` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Frequency | `catalog/productalert_cron/frequency` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Start Time | `catalog/productalert_cron/time` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Error Email Sender | `catalog/productalert_cron/error_email_identity` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Error Email Template | `catalog/productalert_cron/error_email_template` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Show for Current | `catalog/recently_products/scope` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Default Recently Viewed Products Count | `catalog/recently_products/viewed_count` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Default Recently Compared Products Count | `catalog/recently_products/compared_count` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Autostart base video | `catalog/product_video/play_if_base` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Show related video | `catalog/product_video/show_related` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Auto restart video | `catalog/product_video/video_auto_restart` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Catalog Price Scope | `catalog/price/scope` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Default Product Price | `catalog/price/default_product_price` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Display Product Count | `catalog/layered_navigation/display_product_count` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Price Navigation Step Calculation | `catalog/layered_navigation/price_range_calculation` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Default Price Navigation Step | `catalog/layered_navigation/price_range_step` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Display Price Interval as One Price | `catalog/layered_navigation/one_price_interval` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Maximum Number of Price Intervals | `catalog/layered_navigation/price_range_max_intervals` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Interval Division Limit | `catalog/layered_navigation/interval_division_limit` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Maximal Depth | `catalog/navigation/max_depth` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Minimal Query Length | `catalog/search/min_query_length` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Maximum Query Length | `catalog/search/max_query_length` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Search Engine | `catalog/search/engine` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Solr Server Timeout | `catalog/search/solr_server_timeout` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Indexation Mode | `catalog/search/engine_commit_mode` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enable Search Suggestions | `catalog/search/search_suggestion_enabled` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Search Suggestions Count | `catalog/search/search_suggestion_count` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Show Results Count for Each Suggestion | `catalog/search/search_suggestion_count_results_enabled` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Enable Search Recommendations | `catalog/search/search_recommendations_enabled` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Search Recommendations Count | `catalog/search/search_recommendations_count` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Show Results Count for Each Recommendation | `catalog/search/search_recommendations_count_results_enabled` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Minimum Terms to Match | `catalog/search/minimum_should_match` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Generate "category/product" URL Rewrites | `catalog/seo/generate_category_product_rewrites` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Popular Search Terms | `catalog/seo/search_terms` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Product URL Suffix | `catalog/seo/product_url_suffix` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Category URL Suffix | `catalog/seo/category_url_suffix` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Use Categories Path for Product URLs | `catalog/seo/product_use_categories` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Create Permanent Redirect for URLs if URL Key Changed | `catalog/seo/save_rewrites_history` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Page Title Separator | `catalog/seo/title_separator` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Use Canonical Link Meta Tag For Categories | `catalog/seo/category_canonical_tag` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Use Canonical Link Meta Tag For Products | `catalog/seo/product_canonical_tag` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enable | `catalog/magento_catalogpermissions/enabled` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Allow Browsing Category | `catalog/magento_catalogpermissions/grant_catalog_category_view` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Customer Groups | `catalog/magento_catalogpermissions/grant_catalog_category_view_groups` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Landing Page | `catalog/magento_catalogpermissions/restricted_landing_page` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Display Product Prices | `catalog/magento_catalogpermissions/grant_catalog_product_price` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Customer Groups | `catalog/magento_catalogpermissions/grant_catalog_product_price_groups` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Allow Adding to Cart | `catalog/magento_catalogpermissions/grant_checkout_items` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Customer Groups | `catalog/magento_catalogpermissions/grant_checkout_items_groups` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Disallow Catalog Search By | `catalog/magento_catalogpermissions/deny_catalog_search` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Order Item Status to Enable Downloads | `catalog/downloadable/order_item_status` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Default Maximum Number of Downloads | `catalog/downloadable/downloads_number` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Shareable | `catalog/downloadable/shareable` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Default Sample Title | `catalog/downloadable/samples_title` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Default Link Title | `catalog/downloadable/links_title` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Open Links in New Window | `catalog/downloadable/links_target_new_window` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Use Content-Disposition | `catalog/downloadable/content_disposition` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Disable Guest Checkout if Cart Contains Downloadable Items | `catalog/downloadable/disable_guest_checkout` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Use JavaScript Calendar | `catalog/custom_options/use_calendar` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Date Fields Order | `catalog/custom_options/date_fields_order` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Time Format | `catalog/custom_options/time_format` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Year Range | `catalog/custom_options/year_range` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enable Catalog Events Functionality | `catalog/magento_catalogevent/enabled` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Enable Catalog Event Widget on Storefront | `catalog/magento_catalogevent/lister_output` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Number of Events to be Displayed in Event Slider Widget | `catalog/magento_catalogevent/lister_widget_limit` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Events to Scroll per Click in Event Slider Widget | `catalog/magento_catalogevent/lister_widget_scroll` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Maximum Number of Products in Related Products List | `catalog/magento_targetrule/related_position_limit` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Show Related Products | `catalog/magento_targetrule/related_position_behavior` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Rotation Mode for Products in Related Product List | `catalog/magento_targetrule/related_rotation_mode` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Maximum Number of Products in Cross-Sell Product List | `catalog/magento_targetrule/crosssell_position_limit` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Show Cross-Sell Products | `catalog/magento_targetrule/crosssell_position_behavior` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Rotation Mode for Products in Cross-Sell Product List | `catalog/magento_targetrule/crosssell_rotation_mode` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Maximum Number of Products in Upsell Product List | `catalog/magento_targetrule/upsell_position_limit` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Show Upsell Products | `catalog/magento_targetrule/upsell_position_behavior` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Rotation Mode for Products in Upsell Product List | `catalog/magento_targetrule/upsell_rotation_mode` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |

{style="table-layout:auto"}

## Inventory paths

These configuration values are available in the Admin in **Stores** > Settings > **Configuration** > **Catalog** > **Inventory**.

| Name  | Config path | Commerce only? |
|--------------|--------------|--------------|
| Decrease Stock When Order is Placed | `cataloginventory/options/can_subtract` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Set Items' Status to be In Stock When Order is Cancelled | `cataloginventory/options/can_back_in_stock` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Display Out of Stock Products | `cataloginventory/options/show_out_of_stock` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Only X left Threshold | `cataloginventory/options/stock_threshold_qty` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Display Products Availability in Stock on Storefront | `cataloginventory/options/display_product_stock_status` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Synchronize with Catalog | `cataloginventory/options/synchronize_with_catalog` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Manage Stock | `cataloginventory/item_options/manage_stock` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Backorders | `cataloginventory/item_options/backorders` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Use deferred Stock update | `cataloginventory/item_options/use_deferred_stock_update` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Maximum Qty Allowed in Shopping Cart | `cataloginventory/item_options/max_sale_qty` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Out-of-Stock Threshold | `cataloginventory/item_options/min_qty` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Minimum Qty Allowed in Shopping Cart | `cataloginventory/item_options/min_sale_qty` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Notify for Quantity Below | `cataloginventory/item_options/notify_stock_qty` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enable Qty Increments | `cataloginventory/item_options/enable_qty_increments` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Qty Increments | `cataloginventory/item_options/qty_increments` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Automatically Return Credit Memo Item to Stock | `cataloginventory/item_options/auto_return` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Run asynchronously | `cataloginventory/bulk_operations/async` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Asynchronous batch size | `cataloginventory/bulk_operations/batch_size` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Provider | `cataloginventory/source_selection_distance_based/provider` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Computation mode | `cataloginventory/source_selection_distance_based_google/mode` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Value | `cataloginventory/source_selection_distance_based_google/value` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |

{style="table-layout:auto"}

## Visual Merchandiser paths

[!BADGE PaaS only]{type=Informative url="https://experienceleague.adobe.com/en/docs/commerce/user-guides/product-solutions" tooltip="Applies to Adobe Commerce on Cloud projects (Adobe-managed PaaS infrastructure) and on-premises projects only."}

These configuration values are available in the Admin in **Stores** > Settings > **Configuration** > **Catalog** > **Visual Merchandiser**.

| Name  | Config path | Commerce only? |
|--------------|--------------|--------------|
| Visible Attributes for Category Rules | `visualmerchandiser/options/smart_attributes` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Minimum Stock Threshold | `visualmerchandiser/options/minimum_stock_threshold` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Color Attribute Code | `visualmerchandiser/options/color_attribute_code` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |
| Color Order | `visualmerchandiser/options/color_order` | ![Commerce-only](/help/assets/configuration/cloud-ee.png) |

{style="table-layout:auto"}

## XML sitemap paths

These configuration values are available in the Admin in **Stores** > Settings > **Configuration** > **Catalog** > **XML Sitemap**.

| Name  | Config path | Commerce only? |
|--------------|--------------|--------------|
| Frequency | `sitemap/category/changefreq` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Priority | `sitemap/category/priority` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Frequency | `sitemap/product/changefreq` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Priority | `sitemap/product/priority` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Add Images into Sitemap | `sitemap/product/image_include` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Frequency | `sitemap/page/changefreq` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Priority | `sitemap/page/priority` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enabled | `sitemap/generate/enabled` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Start Time | `sitemap/generate/time` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Frequency | `sitemap/generate/frequency` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Error Email Sender | `sitemap/generate/error_email_identity` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Error Email Template | `sitemap/generate/error_email_template` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Maximum No of URLs Per File | `sitemap/limit/max_lines` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Maximum File Size | `sitemap/limit/max_file_size` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enable Submission to Robots.txt | `sitemap/search_engines/submission_robots` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |

{style="table-layout:auto"}

## RSS Feeds paths

These configuration values are available in the Admin in **Stores** > Settings > **Configuration** > **Catalog** > **RSS Feeds**.

| Name  | Config path | Commerce only? |
|--------------|--------------|--------------|
| Enable RSS | `rss/config/active` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Enable RSS | `rss/wishlist/active` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| New Products | `rss/catalog/new` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Special Products | `rss/catalog/special` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Coupons/Discounts | `rss/catalog/discounts` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Top Level Category | `rss/catalog/category` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Customer Order Status Notification | `rss/order/status` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |

{style="table-layout:auto"}

## Email to a friend paths

These configuration values are available in the Admin in **Stores** > Settings > **Configuration** > **Catalog** > **Email to a Friend**.

| Name  | Config path | Commerce only? |
|--------------|--------------|--------------|
| Enabled | `sendfriend/email/enabled` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Select Email Template | `sendfriend/email/template` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Allow for Guests | `sendfriend/email/allow_guest` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Max Recipients | `sendfriend/email/max_recipients` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Max Products Sent in 1 Hour | `sendfriend/email/max_per_hour` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |
| Limit Sending By | `sendfriend/email/check_by` | <!-- ![Not Commerce-only](/help/assets/configuration/red-x.png) --> |

{style="table-layout:auto"}
