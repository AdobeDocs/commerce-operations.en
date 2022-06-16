---
title: Catalog configuration paths reference
description: See a list of catalog configuration values.
---

# Catalog configuration paths reference

This section lists variable names and config paths available for options in the Admin under **Stores** > Settings > **Configuration** > **Catalog**.

The [`magento app:config:dump` command](../cli/export-configuration.md) writes these values to the shared configuration file, `app/etc/config.php`, which should be in source control. To optionally override any configuration settings or to set sensitive settings, see [Use environment variables to override configuration settings](../reference/config-reference-var-name.html). This topic does _not_ list [sensitive and system-specific values](../reference/config-reference-sens.md).

## Catalog paths

These configuration values are available in the Admin in **Stores** > Settings > **Configuration** > **Catalog** > **Catalog**.

Name  | Config path | EE only? |
|--------------|--------------|--------------|
Mask for SKU | `catalog/fields_masks/sku` | <!-- ![Not EE-only][red-x] --> |
Mask for Meta Title | `catalog/fields_masks/meta_title` | <!-- ![Not EE-only][red-x] --> |
Mask for Meta Keywords | `catalog/fields_masks/meta_keyword` | <!-- ![Not EE-only][red-x] --> |
Mask for Meta Description | `catalog/fields_masks/meta_description` | <!-- ![Not EE-only][red-x] --> |
List Mode | `catalog/frontend/list_mode` | <!-- ![Not EE-only][red-x] --> |
Products per Page on Grid Allowed Values | `catalog/frontend/grid_per_page_values` | <!-- ![Not EE-only][red-x] --> |
Products per Page on Grid Default Value | `catalog/frontend/grid_per_page` | <!-- ![Not EE-only][red-x] --> |
Products per Page on List Allowed Values | `catalog/frontend/list_per_page_values` | <!-- ![Not EE-only][red-x] --> |
Products per Page on List Default Value | `catalog/frontend/list_per_page` | <!-- ![Not EE-only][red-x] --> |
Product Listing Sort by | `catalog/frontend/default_sort_by` | <!-- ![Not EE-only][red-x] --> |
Allow All Products per Page | `catalog/frontend/list_allow_all` | <!-- ![Not EE-only][red-x] --> |
Use Flat Catalog Category | `catalog/frontend/flat_catalog_category` | <!-- ![Not EE-only][red-x] --> |
Use Flat Catalog Product | `catalog/frontend/flat_catalog_product` | <!-- ![Not EE-only][red-x] --> |
Swatches per Product | `catalog/frontend/swatches_per_product` | <!-- ![Not EE-only][red-x] --> |
Allow Guests to Write Reviews | `catalog/review/allow_guest` | <!-- ![Not EE-only][red-x] --> |
Allow Alert When Product Price Changes | `catalog/productalert/allow_price` | <!-- ![Not EE-only][red-x] --> |
Price Alert Email Template | `catalog/productalert/email_price_template` | <!-- ![Not EE-only][red-x] --> |
Allow Alert When Product Comes Back in Stock | `catalog/productalert/allow_stock` | <!-- ![Not EE-only][red-x] --> |
Stock Alert Email Template | `catalog/productalert/email_stock_template` | <!-- ![Not EE-only][red-x] --> |
Alert Email Sender | `catalog/productalert/email_identity` | <!-- ![Not EE-only][red-x] --> |
Frequency | `catalog/productalert_cron/frequency` | <!-- ![Not EE-only][red-x] --> |
Start Time | `catalog/productalert_cron/time` | <!-- ![Not EE-only][red-x] --> |
Error Email Sender | `catalog/productalert_cron/error_email_identity` | <!-- ![Not EE-only][red-x] --> |
Error Email Template | `catalog/productalert_cron/error_email_template` | <!-- ![Not EE-only][red-x] --> |
Show for Current | `catalog/recently_products/scope` | <!-- ![Not EE-only][red-x] --> |
Default Recently Viewed Products Count | `catalog/recently_products/viewed_count` | <!-- ![Not EE-only][red-x] --> |
Default Recently Compared Products Count | `catalog/recently_products/compared_count` | <!-- ![Not EE-only][red-x] --> |
Autostart base video | `catalog/product_video/play_if_base` | <!-- ![Not EE-only][red-x] --> |
Show related video | `catalog/product_video/show_related` | <!-- ![Not EE-only][red-x] --> |
Auto restart video | `catalog/product_video/video_auto_restart` | <!-- ![Not EE-only][red-x] --> |
Catalog Price Scope | `catalog/price/scope` | <!-- ![Not EE-only][red-x] --> |
Default Product Price | `catalog/price/default_product_price` | ![EE-only][ee] |
Display Product Count | `catalog/layered_navigation/display_product_count` | <!-- ![Not EE-only][red-x] --> |
Price Navigation Step Calculation | `catalog/layered_navigation/price_range_calculation` | <!-- ![Not EE-only][red-x] --> |
Default Price Navigation Step | `catalog/layered_navigation/price_range_step` | <!-- ![Not EE-only][red-x] --> |
Display Price Interval as One Price | `catalog/layered_navigation/one_price_interval` | <!-- ![Not EE-only][red-x] --> |
Maximum Number of Price Intervals | `catalog/layered_navigation/price_range_max_intervals` | <!-- ![Not EE-only][red-x] --> |
Interval Division Limit | `catalog/layered_navigation/interval_division_limit` | <!-- ![Not EE-only][red-x] --> |
Maximal Depth | `catalog/navigation/max_depth` | <!-- ![Not EE-only][red-x] --> |
Minimal Query Length | `catalog/search/min_query_length` | <!-- ![Not EE-only][red-x] --> |
Maximum Query Length | `catalog/search/max_query_length` | <!-- ![Not EE-only][red-x] --> |
Search Engine | `catalog/search/engine` | <!-- ![Not EE-only][red-x] --> |
Solr Server Timeout | `catalog/search/solr_server_timeout` | ![EE-only][ee] |
Indexation Mode | `catalog/search/engine_commit_mode` | <!-- ![Not EE-only][red-x] --> |
Enable Search Suggestions | `catalog/search/search_suggestion_enabled` | ![EE-only][ee] |
Search Suggestions Count | `catalog/search/search_suggestion_count` | ![EE-only][ee] |
Show Results Count for Each Suggestion | `catalog/search/search_suggestion_count_results_enabled` | ![EE-only][ee] |
Enable Search Recommendations | `catalog/search/search_recommendations_enabled` | ![EE-only][ee] |
Search Recommendations Count | `catalog/search/search_recommendations_count` | ![EE-only][ee] |
Show Results Count for Each Recommendation | `catalog/search/search_recommendations_count_results_enabled` | ![EE-only][ee] |
Minimum Terms to Match | `catalog/search/minimum_should_match` | <!-- ![Not EE-only][red-x] --> |
Popular Search Terms | `catalog/seo/search_terms` | <!-- ![Not EE-only][red-x] --> |
Product URL Suffix | `catalog/seo/product_url_suffix` | <!-- ![Not EE-only][red-x] --> |
Category URL Suffix | `catalog/seo/category_url_suffix` | <!-- ![Not EE-only][red-x] --> |
Use Categories Path for Product URLs | `catalog/seo/product_use_categories` | <!-- ![Not EE-only][red-x] --> |
Create Permanent Redirect for URLs if URL Key Changed | `catalog/seo/save_rewrites_history` | <!-- ![Not EE-only][red-x] --> |
Page Title Separator | `catalog/seo/title_separator` | <!-- ![Not EE-only][red-x] --> |
Use Canonical Link Meta Tag For Categories | `catalog/seo/category_canonical_tag` | <!-- ![Not EE-only][red-x] --> |
Use Canonical Link Meta Tag For Products | `catalog/seo/product_canonical_tag` | <!-- ![Not EE-only][red-x] --> |
Enable | `catalog/magento_catalogpermissions/enabled` | ![EE-only][ee] |
Allow Browsing Category | `catalog/magento_catalogpermissions/grant_catalog_category_view` | ![EE-only][ee] |
Customer Groups | `catalog/magento_catalogpermissions/grant_catalog_category_view_groups` | ![EE-only][ee] |
Landing Page | `catalog/magento_catalogpermissions/restricted_landing_page` | ![EE-only][ee] |
Display Product Prices | `catalog/magento_catalogpermissions/grant_catalog_product_price` | ![EE-only][ee] |
Customer Groups | `catalog/magento_catalogpermissions/grant_catalog_product_price_groups` | ![EE-only][ee] |
Allow Adding to Cart | `catalog/magento_catalogpermissions/grant_checkout_items` | ![EE-only][ee] |
Customer Groups | `catalog/magento_catalogpermissions/grant_checkout_items_groups` | ![EE-only][ee] |
Disallow Catalog Search By | `catalog/magento_catalogpermissions/deny_catalog_search` | ![EE-only][ee] |
Order Item Status to Enable Downloads | `catalog/downloadable/order_item_status` | <!-- ![Not EE-only][red-x] --> |
Default Maximum Number of Downloads | `catalog/downloadable/downloads_number` | <!-- ![Not EE-only][red-x] --> |
Shareable | `catalog/downloadable/shareable` | <!-- ![Not EE-only][red-x] --> |
Default Sample Title | `catalog/downloadable/samples_title` | <!-- ![Not EE-only][red-x] --> |
Default Link Title | `catalog/downloadable/links_title` | <!-- ![Not EE-only][red-x] --> |
Open Links in New Window | `catalog/downloadable/links_target_new_window` | <!-- ![Not EE-only][red-x] --> |
Use Content-Disposition | `catalog/downloadable/content_disposition` | <!-- ![Not EE-only][red-x] --> |
Disable Guest Checkout if Cart Contains Downloadable Items | `catalog/downloadable/disable_guest_checkout` | <!-- ![Not EE-only][red-x] --> |
Use JavaScript Calendar | `catalog/custom_options/use_calendar` | <!-- ![Not EE-only][red-x] --> |
Date Fields Order | `catalog/custom_options/date_fields_order` | <!-- ![Not EE-only][red-x] --> |
Time Format | `catalog/custom_options/time_format` | <!-- ![Not EE-only][red-x] --> |
Year Range | `catalog/custom_options/year_range` | <!-- ![Not EE-only][red-x] --> |
Enable Catalog Events Functionality | `catalog/magento_catalogevent/enabled` | ![EE-only][ee] |
Enable Catalog Event Widget on Storefront | `catalog/magento_catalogevent/lister_output` | ![EE-only][ee] |
Number of Events to be Displayed in Event Slider Widget | `catalog/magento_catalogevent/lister_widget_limit` | ![EE-only][ee] |
Events to Scroll per Click in Event Slider Widget | `catalog/magento_catalogevent/lister_widget_scroll` | ![EE-only][ee] |
Maximum Number of Products in Related Products List | `catalog/magento_targetrule/related_position_limit` | ![EE-only][ee] |
Show Related Products | `catalog/magento_targetrule/related_position_behavior` | ![EE-only][ee] |
Rotation Mode for Products in Related Product List | `catalog/magento_targetrule/related_rotation_mode` | ![EE-only][ee] |
Maximum Number of Products in Cross-Sell Product List | `catalog/magento_targetrule/crosssell_position_limit` | ![EE-only][ee] |
Show Cross-Sell Products | `catalog/magento_targetrule/crosssell_position_behavior` | ![EE-only][ee] |
Rotation Mode for Products in Cross-Sell Product List | `catalog/magento_targetrule/crosssell_rotation_mode` | ![EE-only][ee] |
Maximum Number of Products in Upsell Product List | `catalog/magento_targetrule/upsell_position_limit` | ![EE-only][ee] |
Show Upsell Products | `catalog/magento_targetrule/upsell_position_behavior` | ![EE-only][ee] |
Rotation Mode for Products in Upsell Product List | `catalog/magento_targetrule/upsell_rotation_mode` | ![EE-only][ee] |

## Inventory paths

These configuration values are available in the Admin in **Stores** > Settings > **Configuration** > **Catalog** > **Inventory**.

Name  | Config path | EE only? |
|--------------|--------------|--------------|
Decrease Stock When Order is Placed | `cataloginventory/options/can_subtract` | <!-- ![Not EE-only][red-x] --> |
Set Items' Status to be In Stock When Order is Cancelled | `cataloginventory/options/can_back_in_stock` | <!-- ![Not EE-only][red-x] --> |
Display Out of Stock Products | `cataloginventory/options/show_out_of_stock` | <!-- ![Not EE-only][red-x] --> |
Only X left Threshold | `cataloginventory/options/stock_threshold_qty` | <!-- ![Not EE-only][red-x] --> |
Display Products Availability in Stock on Storefront | `cataloginventory/options/display_product_stock_status` | <!-- ![Not EE-only][red-x] --> |
Synchronize with Catalog | `cataloginventory/options/synchronize_with_catalog` | ![EE-only][ee] |
Manage Stock | `cataloginventory/item_options/manage_stock` | <!-- ![Not EE-only][red-x] --> |
Backorders | `cataloginventory/item_options/backorders` | <!-- ![Not EE-only][red-x] --> |
Use deferred Stock update | `cataloginventory/item_options/use_deferred_stock_update` | ![EE-only][ee] |
Maximum Qty Allowed in Shopping Cart | `cataloginventory/item_options/max_sale_qty` | <!-- ![Not EE-only][red-x] --> |
Out-of-Stock Threshold | `cataloginventory/item_options/min_qty` | <!-- ![Not EE-only][red-x] --> |
Minimum Qty Allowed in Shopping Cart | `cataloginventory/item_options/min_sale_qty` | <!-- ![Not EE-only][red-x] --> |
Notify for Quantity Below | `cataloginventory/item_options/notify_stock_qty` | <!-- ![Not EE-only][red-x] --> |
Enable Qty Increments | `cataloginventory/item_options/enable_qty_increments` | <!-- ![Not EE-only][red-x] --> |
Qty Increments | `cataloginventory/item_options/qty_increments` | <!-- ![Not EE-only][red-x] --> |
Automatically Return Credit Memo Item to Stock | `cataloginventory/item_options/auto_return` | <!-- ![Not EE-only][red-x] --> |
Run asynchronously | `cataloginventory/bulk_operations/async` | ![EE-only][ee] |
Asynchronous batch size | `cataloginventory/bulk_operations/batch_size` | ![EE-only][ee] |
Provider | `cataloginventory/source_selection_distance_based/provider` | <!-- ![Not EE-only][red-x] --> |
Computation mode | `cataloginventory/source_selection_distance_based_google/mode` | <!-- ![Not EE-only][red-x] --> |
Value | `cataloginventory/source_selection_distance_based_google/value` | <!-- ![Not EE-only][red-x] --> |

## Visual Merchandiser paths

These configuration values are available in the Admin in **Stores** > Settings > **Configuration** > **Catalog** > **Visual Merchandiser**.

Name  | Config path | EE only? |
|--------------|--------------|--------------|
Visible Attributes for Category Rules | `visualmerchandiser/options/smart_attributes` | ![EE-only][ee] |
Minimum Stock Threshold | `visualmerchandiser/options/minimum_stock_threshold` | ![EE-only][ee] |
Color Attribute Code | `visualmerchandiser/options/color_attribute_code` | ![EE-only][ee] |
Color Order | `visualmerchandiser/options/color_order` | ![EE-only][ee] |

## XML sitemap paths

These configuration values are available in the Admin in **Stores** > Settings > **Configuration** > **Catalog** > **XML Sitemap**.

Name  | Config path | EE only? |
|--------------|--------------|--------------|
Frequency | `sitemap/category/changefreq` | <!-- ![Not EE-only][red-x] --> |
Priority | `sitemap/category/priority` | <!-- ![Not EE-only][red-x] --> |
Frequency | `sitemap/product/changefreq` | <!-- ![Not EE-only][red-x] --> |
Priority | `sitemap/product/priority` | <!-- ![Not EE-only][red-x] --> |
Add Images into Sitemap | `sitemap/product/image_include` | <!-- ![Not EE-only][red-x] --> |
Frequency | `sitemap/page/changefreq` | <!-- ![Not EE-only][red-x] --> |
Priority | `sitemap/page/priority` | <!-- ![Not EE-only][red-x] --> |
Enabled | `sitemap/generate/enabled` | <!-- ![Not EE-only][red-x] --> |
Start Time | `sitemap/generate/time` | <!-- ![Not EE-only][red-x] --> |
Frequency | `sitemap/generate/frequency` | <!-- ![Not EE-only][red-x] --> |
Error Email Sender | `sitemap/generate/error_email_identity` | <!-- ![Not EE-only][red-x] --> |
Error Email Template | `sitemap/generate/error_email_template` | <!-- ![Not EE-only][red-x] --> |
Maximum No of URLs Per File | `sitemap/limit/max_lines` | <!-- ![Not EE-only][red-x] --> |
Maximum File Size | `sitemap/limit/max_file_size` | <!-- ![Not EE-only][red-x] --> |
Enable Submission to Robots.txt | `sitemap/search_engines/submission_robots` | <!-- ![Not EE-only][red-x] --> |

## RSS Feeds paths

These configuration values are available in the Admin in **Stores** > Settings > **Configuration** > **Catalog** > **RSS Feeds**.

Name  | Config path | EE only? |
|--------------|--------------|--------------|
Enable RSS | `rss/config/active` | <!-- ![Not EE-only][red-x] --> |
Enable RSS | `rss/wishlist/active` | <!-- ![Not EE-only][red-x] --> |
New Products | `rss/catalog/new` | <!-- ![Not EE-only][red-x] --> |
Special Products | `rss/catalog/special` | <!-- ![Not EE-only][red-x] --> |
Coupons/Discounts | `rss/catalog/discounts` | <!-- ![Not EE-only][red-x] --> |
Top Level Category | `rss/catalog/category` | <!-- ![Not EE-only][red-x] --> |
Customer Order Status Notification | `rss/order/status` | <!-- ![Not EE-only][red-x] --> |

## Email to a friend paths

These configuration values are available in the Admin in **Stores** > Settings > **Configuration** > **Catalog** > **Email to a Friend**.

Name  | Config path | EE only? |
|--------------|--------------|--------------|
Enabled | `sendfriend/email/enabled` | <!-- ![Not EE-only][red-x] --> |
Select Email Template | `sendfriend/email/template` | <!-- ![Not EE-only][red-x] --> |
Allow for Guests | `sendfriend/email/allow_guest` | <!-- ![Not EE-only][red-x] --> |
Max Recipients | `sendfriend/email/max_recipients` | <!-- ![Not EE-only][red-x] --> |
Max Products Sent in 1 Hour | `sendfriend/email/max_per_hour` | <!-- ![Not EE-only][red-x] --> |
Limit Sending By | `sendfriend/email/check_by` | <!-- ![Not EE-only][red-x] --> |

<!-- link definitions -->

[ee]: ../../assets/configuration/cloud-ee.png
[red-x]: ../../assets/configuration/red-x.png
