---
title: Performance optimization recommendations
description: Optimize the performance of your Adobe Commerce implementation by following these recommendations.
exl-id: c5d62e23-be43-4eea-afdb-bb1b156848f9
feature: Cloud
topic: Performance
---

# Performance optimization review

Even as performance optimization can come from many aspects, there are some general recommendations that should be considered for most scenarios. General recommendations include configuration optimization for infrastructure elements, Adobe Commerce backend configuration, and architecture scalability planning.

>[!TIP]
>
>See the [_Performance Best Practices Guide_](../../../performance/overview.md) for more information about performance optimization.

## Infrastructure

The following sections describe recommendations for infrastructure optimizations.

### DNS lookups

DNS lookup is the process of finding which IP address that the domain name belongs to. The browser must wait until the DNS lookup is complete before it can download anything for each request. Reducing DNS lookups is important to improve overall page load times.

### Content delivery network (CDN)

Use a CDN to optimize asset downloading performance. Adobe Commerce uses Fastly. If you have an on-premises implementation of Adobe Commerce, you should also consider adding a CDN layer.

### Web latency

The location of the datacenter affects the web latency for frontend users.

### Network bandwidth

Sufficient network bandwidth is one of the key requirements for data exchange between web nodes, databases, caching/session servers, and other services. 

Because Adobe Commerce effectively uses caching for high performance, your system can actively exchange data with caching servers like Redis. If Redis is installed on a remote server, you must provide a sufficient network channel between web nodes and the caching server to prevent bottlenecks on read/write operations.

### Operating system (OS)

Operating system configurations and optimizations are similar for Adobe Commerce when compared to other high-load web applications. As the number of concurrent connections handled by the server increases, the number of available sockets can become fully allocated.

### CPU of web nodes

One CPU core can serve around 2-4 Adobe Commerce requests without cache effectively. To determine how many web nodes/cores needed to process all incoming requests without putting them into queue, use the equation:

```
N[Cores] = (N [Expected Requests] / 2) + N [Expected Cron Processes])
```

### PHP-FPM settings

Optimizing these settings depends on the performance test results for different projects.

- **ByteCode**—To get maximum speed out of Adobe Commerce on PHP 7, you must activate the `opcache` module and configure it properly.

- **APCU**—Adobe recommends enabling the PHP APCu extension and configuring Composer to optimize for maximum performance. This extension caches file locations for opened files, which increases performance for Adobe Commerce server calls, including pages, Ajax calls, and endpoints.

- **Realpath_cacheconfiguration**—Optimizing `realpath_cache` allows PHP processes to cache paths to files instead of looking them up each time a page loads.

### Web server

Only slight reconfiguration is needed to use nginx as a web server. The nginx web server provides better performance and is easy to configure using the sample configuration file from Adobe Commerce ([`nginx.conf.sample`](https://github.com/magento/magento2/blob/2.4/nginx.conf.sample)).

- Set up PHP-FPM with TCP properly

- Enable HTTP/2 and Gzip

- Optimize worker connections

### Database

This document does not provide in-depth MySQL tuning instructions because each store and environment is different, but Adobe can make general recommendations.

The Adobe Commerce database (and any other database) is sensitive to the amount of memory available for storing data and indexes. To effectively use MySQL data indexation, the amount of memory available should be, at minimum, close to half the size of the data stored in the database.

Optimize the `innodb_buffer_pool_instances` setting to avoid issues with multiple threads attempting to access the same instance. The value of the `max_connections` parameter should correlate with the total number of PHP threads configured in the application server. Use the following formula to calculate the best value for `innodb-thread-concurrency`:

```
innodb-thread-concurrency = 2 * (NumCPUs+NumDisks)
```

### Session caching

Session caching is a good candidate to configure for a separate instance of Redis. Memory configuration for this cache type should consider the site's cart abandonment strategy and how long a session should expect to remain in the cache.

Redis should have enough memory allocated to hold all other caches in memory for optimal performance. Block cache is the key factor in determining the amount of memory to configure. Block cache grows relative to the number of pages on a site (number of SKU x number of store views).

### Page caching

Adobe highly recommends using Varnish for full page cache on your Adobe Commerce store. The `PageCache` module is still present in the codebase, but it should be used for development purposes only.

Install Varnish on a separate server in front of the web tier. It should accept all incoming requests and provide cached page copies. To allow Varnish to work effectively with secured pages, an SSL termination proxy can be placed in front of Varnish. Nginx can be used for this purpose.

While Varnish full page cache memory invalidation is effective, Adobe recommends allocating enough memory to Varnish to hold your most popular pages in memory.

### Message queues

The Message Queue Framework (MQF) is a system that allows a module to publish messages to queues. It also defines the consumers that receive the messages asynchronously. Adobe Commerce supports [!DNL RabbitMQ] as the messaging broker, which provides a scalable platform for sending and receiving messages.

### Performance testing and monitoring

Performance testing before each production release is always recommended to get an estimation of the capability of your ecommerce platform. Keep monitoring after launch and have a scalability and backup plan for handling peak times.

>[!NOTE]
>
> Adobe Commerce on cloud infrastructure already applies the above infrastructure and architecture optimizations, except for the DNS lookup because it's out of scope.

### Search {#search-heading}

Elasticsearch (or OpenSearch) is required as of Adobe Commerce version 2.4, but it's also a best practice to enable it for versions before 2.4.

## Operating models

Apart from the previously mentioned common infrastructure optimization recommendations, there are also approaches to enhance the performance for specific business modes and scales. This document does not provide in-depth tuning instructions for all of them because each scenario is different, but Adobe can provide a few high-level options for your reference.

### Headless architecture

There's a separate section dedicated to [headless](../../architecture/headless/adobe-commerce.md). In summary, it separates the storefront layer from the platform itself. It is still the same backend, but Adobe Commerce no longer processes requests directly and instead only supports custom storefronts through the GraphQL API.

### Keep Adobe Commerce updated

Adobe Commerce always has better performance when running the newest version. Even if it is not possible to keep Adobe Commerce up to date after each new version is released, it is still recommended to [upgrade](../../../upgrade/overview.md) when Adobe Commerce introduces significant performance optimizations. 

For example, in 2020, Adobe released an optimization to the Redis layer, fixing many inefficiencies, connection issues, and unnecessary data transfer between Redis and Adobe Commerce. Overall performance between 2.3 and 2.4 is night and day and provided significant improvements in cart, checkout, concurrent users, just because of the Redis optimization.

### Optimize data model

Many problems originate from data, including bad data models, data that is not structured properly, and data that is missing an index. 

It looks fine if you're testing a few connections, but after you deploy to production you might see serious performance degradation. It's important that systems integrators know how to design a data model (especially for product attributes), avoid adding unnecessary attributes, and keep mandatory attributes that affect business logic (such as pricing, stock availability, and search).

For those attributes that do not affect business logic but must still be present on the storefront, combine them into a few attributes (for example, JSON format).

To optimize platform performance, if business logic is not required on the storefront from data or attributes taken from a PIM or an ERP, there is no need to add that attribute into Adobe Commerce.

### Design for scalability

Scalability is important for businesses running campaigns and frequently facing peak traffic times. A scalable architecture and application design can increase resources during peak times and reduce them after it.
