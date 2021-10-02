---
title: AEM Performance Optimization
description: Optimize your default Adobe Experience Manager configuration to support high loads on Adobe Commerce.
exl-id: 923a709f-9048-4e67-a5b0-ece831d2eb91
---
# AEM performance optimization

The AEM dispatcher is a reverse proxy, that helps deliver an environment that is both fast and dynamic. It works as part of a static HTML server, such as Apache HTTP Server, with the aim of storing (or “caching”) as much of the site content as is possible, in the form of static resources. This approach aims to minimize the need to access the AEM page rendering functionality and the Adobe Commerce GraphQL service as much as possible. The result of serving much of the pages as static HTML, CSS, & JS delivers performance benefits to users and reduces infrastructure requirements on the environment. Any page or query that is likely to be identically repeated from user to user should be considered for caching.

The following sections show at a high level the recommended technical focus area to be reviewed to enable effective caching on AEM in a CIF/Adobe Commerce environment.

## TTL based caching on AEM dispatchers

Caching as much of the site as possible on the dispatchers is best practice for any AEM project. Using timebased cache invalidation will cache server side rendered CIF pages, for a set limited amount of time. After the set time has expired, the next request will rebuild the page from the AEM publisher and Adobe Commerce GraphQL and will store it in the dispatcher cache again until the next invalidation.

The TTL caching feature can be configured in AEM with using the “Dispatcher TTL” component within the ACS AEM Commons package and setting /enableTTL “1” in the dispatcher.any configuration file.

If enabled, the dispatcher will evaluate the response headers from the backend, and if they contain a Cache-Control max-age or Expires date, an auxiliary, empty file next to the cache file is created, with modification time equal to the expiry date. When the cached file is requested past the modification time it is automatically re-requested from the backend. This gives an effective caching mechanism which requires no manual intervention or maintenance, once the product update delay (TTL) has been acknowledged and accepted by business stakeholders.

## Browser caching

The dispatcher TTL approach above will greatly reduce requests and load onto the publisher, however there are some assets which are very unlikely to change and therefore even requests to the dispatcher can be reduced by caching relevant files locally on a user’s browser. For example, the site’s logo, which is displayed on every page on the site in the site template, would not need to be requested each time to the dispatcher. This instead can be stored on the user’s browser cache. The reduction in bandwidth requirements for each page load would have a large impact on site responsiveness and page load times.

Caching at the browser level is commonly done via the “Cache-Control: max-age=” response header. The maxage setting tells the browser how many seconds it should cache the file for before attempting to “revalidate” or request it from the site again. This concept of cache max-age is commonly referred to as “Cache Expiration” or TTL (“Time to Live”). Delivering commerce experiences at scale - With Adobe Experience Manager, Commerce Integration Framework, Adobe Commerce 7

Some areas of an AEM/CIF/Adobe Commerce site which can be set to be cached in the client’s browser include:

- Images (within the AEM template itself, e.g. site logo and template design images – catalogue product images would be called from Adobe Commerce via Fastly, caching these images are discussed later on)
- HTML files (for infrequently changed pages – terms and conditions page etc)
- CSS files
- All site JavaScript files – including CIF JavaScript files

## Dispatcher statfilelevel anbd grace period optimization

The default dispatcher configuration uses /statfilelevel “0” setting – this means that a single “.stat” file is placed at the root of htdocs directory (document root directory). If a change is made to a page or file in AEM, the modification time of this single stat file is updated to the time of the change. If the time is newer than modification time of the resource, then the dispatcher will consider all resources are invalidated and any subsequent request for an invalidated resource will trigger a call to the Publish instance. So essentially, with this setting every activation will invalidate the whole cache.

For any site, especially commerce sites with heavy load, this would place an unnecessary amount of load onto the AEM Publish tier for the whole site structure to become invalidated with only a single page update.

Instead, the statfilelevel setting can be modified to a higher value, corresponding to the depth of subdirectories in the htdocs directory from the document root directory so that when a file located at a certain level is invalidated then only files at that .stat directory level and below are updated.

For example: let’s say you have a product page template at:

```
content/ecommerce/us/en/products/product-page.html
```

Each folder level would have ‘stat level’ – as shown broken down in the table above.

| content (docroot) | ecommerce | us | en | products | product-page.tml |
|-------------------|-----------|----|----|----------|------------------|
| 0                 | 1         | 2  | 3  | 4        | -                |

In this case, if you had left the statfilelevel property set to the default “0”, and the product-page.html template is updated and activated triggering an invalidation then every .stat file from docroot to level 4 will be touched, and files invalidated, causing a further request from the AEM publish instances for all pages across the site (including other websites, countries and languages) from that single change.

However, if the statfilelevel property is set to level 4, and a change is made to the product-page.html – then only the .stat file in products directory for that specific website/country/language would be touched.

Please note that the .stat file level shouldn’t be set to a too high level – exceeding 20 can have performance impacts. Executing a bulk file activation whilst running a performance test should give you the correct level you should tune your stat level to.

Another dispatcher setting to optimise when configuring the statfilelevel is the gracePeriod setting. This defines the number of seconds a stale, auto-invalidated resource may still be served from the cache after the last activation occurred. Auto-invalidated resources are invalidated by any activation (when their path matches the dispatcher /invalidate section, and to the level specified in the statfileslevel property). Setting the gracePeriod setting to 2 seconds can be used to prevent a scenario where multiple requests are continually sent to the publisher, even while the publisher is still in the process of building the new page.

>[!NOTE]
>
> Further more detailed reading on this topic is available in the [aem-dispatcher-experiments](https://github.com/adobe/aem-dispatcher-experiments/tree/main/experiments/gracePeriod) GitHub repository.

## CIF - GraphQL caching via components

Individual components within AEM can be set to be cached, meaning that the GraphQL request to Adobe
Commerce is called once and then subsequent requests, up to the configured time limit, are retrieved from the AEM cache and would not place further load onto Adobe Commerce. Examples would be a site navigation based on a category tree shown on every page and options within a faceted search functionality – these are just two areas which require resource intensive queries on Adobe Commerce to build yet would be unlikely to change regularly and therefore would be good choices for caching. This way, for example, even when a PDP or PLP is being rebuilt by the publisher, the resource intensive GraphQL request for the navigation build would not hit Adobe Commerce and could be retrieved from the GraphQL cache on AEM CIF.

An example below is for the navigation component to be cached because it sends the same GraphQL query on all pages in the site. The request below caches the past 100 entries for 10 minutes for the navigation structure:

```
venia/components/structure/navigation:true:100:600
```

The example below caches the past 100 faceted search options in a search page for 1 hour:

```
com.adobe.cq.commerce.core.search.services.SearchFilterService:true:100:3600
```

The request, including all custom http headers and variables, must match exactly in order for the cache to be ‘hit’ and to prevent a repeat call to Adobe Commerce. It should be noted there once set there is no easy way to manually invalidate this cache. This could mean, therefore that if a new category is added in Adobe Commerce, it would not start to appear in the navigation until the expiry time set in the cache above has expired and the GraphQL request is refreshed. The same for search facets. However, given the performance benefits to be achieved by this caching, this is usually an acceptable compromise.

The above caching options can be set using the AEM OSGi configuration console in “GraphQL Client
Configuration Factory”. Each cache configuration entry can be specified with the following format:

```
• NAME:ENABLE:MAXSIZE:TIMEOUT like for example mycache:true:1000:60 where each attribute is defined as:
    › NAME (String): name of the cache
    › ENABLE (true|false): enables or disables that cache entry
    › MAXSIZE (Integer): maximum size of the cache (in number of entries)
    › TIMEOUT (Integer): timeout for each cache entry (in seconds)
```

## Hybrid caching—client side GraphQL requests within cached dispatcher pages

It is also possible for a hybrid approach to caching of pages: it is possible for a CIF page to contain components which would always request the latest information from Adobe Commerce directly from the customer’s browser. This can be useful for specific areas of the page within a template which are important to be kept up to date with real time information: Product prices within a PDP, for example. Where prices are changing frequently due to dynamic price matching, that information can be configured to be not cached on the dispatcher, rather the prices can be fetched client-side in the customer’s browser from Adobe Commerce directly via GraphQL APIs with AEM CIF web components.

This can be configured via the AEM components settings – for Price information on product list pages, this can be configured in the product list template, selecting the product list component on the page settings and checking the “load prices” option. The same approach would work for stock levels.

The methods above should only be used in the case where real time, constantly up to date information is a requirement. In the example above with pricing, it could be agreed with business stakeholders to update prices only daily at low traffic times and perform cache flush operation then. This would remove the need for the real time pricing information requests and the subsequent extra load onto Adobe Commerce when building each page displaying pricing information.

## Uncacheable GraphQL requests

Specific dynamic data components within pages should not be cached and will always require a GraphQL call to Adobe Commerce, such as for the shopping cart and calls throughout the checkout pages. This information is specific to a user and is changing constantly due to customer’s activity on the site – e.g. by adding products to their shopping cart.

GraphQL Query results should not be cached for logged in customers if the site’s design would give different responses based on the user’s role. For example, you can create multiple customer groups and set up different product prices or different product category visibility for each group. Caching results such as these may cause customers to see the prices of another customer group or to have incorrect categories showing.

## Ignoring tracking parameters on AEM dispatcher cache

Ecommerce sites may drive traffic to their site using PPC search adverts or social media campaigns. 

Use of these mediums will mean that a tracking ID is added onto the outbound link from that platform. For example, Facebook will add a Facebook Click ID (fbclid) to the URL, Google Adverts will add a Google Click ID (gclid), this will make incoming links to your AEM frontend appear like the below, as an example:

```
https://www.adobe.com/?gclid=oirhgj34y43yowiahg9u3t
```

The gclid and fbclid will change with every user that clicks the advert, this is intended for tracking purposes, but with its default settings, AEM would see every request as a unique page, which would bypass the dispatcher and generate unnecessary extra load on the publisher and Adobe Commerce. 

During a surge event this can even cause the AEM publishers to become overloaded and unresponsive. When a parameter is set to be ignored for a page, the page is cached the first time that the page is requested. Subsequent requests for the page are served the cached page, regardless of the value of the parameter in the request.

>[!NOTE]
>
>Further reading on the importance of setting `ignoreUrlParams` is available in the [aem-dispatcher-experiments](https://github.com/adobe/aem-dispatcher-experiments/tree/main/experiments/ignoreUrlParams) GitHub repository.

It should therefore be configured to ignore all parameters by default in “ignoreUrlParams”, except where a GET parameter is used which would change the HTML structure of a page. An example of this would be with a search page where the search term is in the URL as GET parameter – in this case you should then manually configure ignoreUrlParams to ignore parameters such as gclid, fbclid and any other tracking parameters your advertising channels are using, leaving the GET parameters required for normal site operations unaffected.

## MPM workers limits on dispatchers

The MPM workers settings is an advanced Apache HTTP server configuration which would require thorough testing to optimise based on your Dispatcher’s available CPU and RAM. However, in the scope of this whitepaper we would suggest that ServerLimit and MaxRequestWorkers, should be increased to a level that the server’s available CPU and RAM would support, and then the MinSpareThreads and MaxSpareThreads be both increased to a level which matches the MaxRequestWorkers.

This configuration would leave Apache HTTP on an “full readiness setting” which is a high-performance configuration for servers with significant RAM and multiple CPU cores. This configuration will produce the best possible response times from Apache HTTP by maintaining persistent open connections ready to serve requests and would remove any delay in spawning new processes in response to sudden traffic surges, such as during flash sales.
