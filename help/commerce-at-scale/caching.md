---
title: Effective Cache Planning
description: Refer to recommended benchmarks for caching to ensure the success of your site under load.
exl-id: 275eb21d-fa52-4b97-9453-8f8553128b53
---
# Planning effective caching for ecommerce success under load

Delivering a shopping experience under load will require a well-planned caching strategy. Whilst initially, the request from business stakeholders may be to always present real time product data to customers, this is not an optimal use of system resources, and the impacts of end user site performance would greatly outweigh the benefits of consistently showing real time information.

The initial step in caching strategy should therefore be to define with the relevant stakeholders a matrix of acceptable caching timings for the different areas of the site, for example:

| Caching area                                                  | How often changes? | Impact if stale content served from cache | Acceptable caching time-to-live (TTL)?              |
|---------------------------------------------------------------|--------------------|-------------------------------------------|-----------------------------------------------------|
| Site content HTML pages, updated via CMS                      | Infrequently       | Low                                       | 1 day                                               |
| Site content template media/assets - logo, CSS design, images | Infrequently       | Low                                       | 1 week                                              |
| Product listing pages (PLP)                                   | Infrequently       | Medium                                    | 1 day                                               |
| Product details page (PDP)                                    | Sometimes          | Medium                                    | 1 hour                                              |
| Product categories                                            | Infrequently       | Medium                                    | 1 day                                               |
| Prices                                                        | Frequently         | High                                      | No cache                                            |
| Inventory/stock                                               | Frequently         | High                                      | No cache                                            |
| Site search                                                   | Most users unique  | Medium                                    | Cache results from top 100 search phrases for 1 day |
| Checkout                                                      | Every unique user  | Very high                                 | No cache                                            |
| Shopping cart                                                 | Every unique user  | Very high                                 | No cache                                            |
| Payment pages                                                 | Every unique user  | Very high                                 | No cache                                            |

With this initial planning complete, the technical configuration can start to be put in place to configure caches based on these requirements.

Even if content is updated and needing to be made live within the caching TTL, it is, in most cases, possible to manually clear the caches for the [AEM dispatcher](https://experienceleague.adobe.com/docs/experience-manager-dispatcher/using/configuring/page-invalidate.html?lang=en) and [Adobe Commerce](https://devdocs.magento.com/guides/v2.4/config-guide/cli/config-cli-subcommands-cache.html#config-cli-subcommands-cache-clean) cache selectively for that content, meaning that urgent changes will be reflected immediately. The process around manual cache clearing should also be planned and tested in advance so that if there is a need to manually force an update on some content, then it is documented into a site operations runbook and clear how and who needs to be involved to action this. 
