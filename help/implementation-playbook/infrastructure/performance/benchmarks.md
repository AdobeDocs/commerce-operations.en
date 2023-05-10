---
title: Performance Benchmarks
description: Review performance benchmarks for Adobe Commerce implementations hosted on Adobe cloud infrastructure.
exl-id: cc9b090a-a504-4df3-aa32-81882f431dd9
---

# Benchmark Summary 

## Key Performance Metrics - Adobe Commerce 2.4.5

|Products|Websites|Categories|Customer Groups|Cart Pricing Rules|<a href="https://experienceleague.adobe.com/docs/commerce-operations/implementation-playbook/best-practices/planning/product-sku-limits.html">effective SKUs</a>|
|:-:|:-:|:-:|:-:|:-:|:-:|
|250,000|5|6,000|50|20|242M|

Based on testing criteria that aim to mimic an enterprise B2C organization, the system is capable of handling requested traffic and order numbers during peak times and at a standard load flow. 

Here is a summary of the benchmark:
- 3,481 orders per minute while maintaining response times of less than 2 seconds for the 99th percentile (99% of the requests were serviced with a response time of less than 2 seconds).
- Over 2 million page views per hour while maintaining response times of less than 2 seconds for the 99th percentile.
- During the benchmark, the customer profile had 242 million different price variations (<a href="https://experienceleague.adobe.com/docs/commerce-operations/implementation-playbook/best-practices/planning/product-sku-limits.html">eSKUs</a>) for 250,000 products.
- System scaled to 10,500 GraphQL un-cached requests per minute while maintaining response times of less than 2 seconds for the 99th percentile.
- System scaled to support 500 concurrent admin users while maintaining response times of less than 2 seconds for the 99th percentile.

## Test Environment

Performance benchmark results were obtained by testing against an instance with Adobe Commerce 2.4.5 deployed on cloud infrastructure with Pro <a href="https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/architecture/scaled-architecture.html">Scaled/Split Architecture</a>, <a href="https://experienceleague.adobe.com/docs/commerce-admin/inventory/introduction.html">Multi-Source Inventory</a>, and <a href="https://experienceleague.adobe.com/docs/commerce-admin/content-design/media/adobe-stock/adobe-stock.html">Adobe Stock</a> enabled. There were no additional customizations. 

Performance testing data for the test profile was generated using the <a href="https://experienceleague.adobe.com/docs/commerce-operations/configuration-guide/cli/generate-data.html">Performance Toolkit</a>.

Performance measurements are based on simulated day-to-day store activities for customers and business users. The values reflect a close to maximum throughput for each case, but do not reflect unique business models like private sales or flash sales.

- LUMA Storefront
  - 3000 Concurrent Users on Storefront
  - Set to 30% CDN cache hit rate.
    - Effective usage of the cache layer will increase the page views number per hour.
- GraphQL API
  - 250 Concurrent Threads
  - Set to 0% CDN cache hit rate.
    - Response times significantly improve with a caching layer in front of GraphQL.
- Admin Web
  - 500 Concurrent users
  - Set to 0% CDN cache hit rate

## Test Environment Specifications

Load tests experiments run through JMeter using profiles against the Adobe Commerce on Cloud Pro environment. 3 web nodes and 3 database nodes were used during the test. The following image details the entry point of JMeter and Production infrastructure.
<img width="1345" alt="Adobe-Commerce-Benchmark" src="https://git.corp.adobe.com/storage/user/43354/files/4d801e3e-96b7-4193-b94f-12571263b495">

### Application

- <a href="https://experienceleague.adobe.com/docs/commerce-operations/release/notes/adobe-commerce/2-4-5.html">Adobe Commerce 2.4.5</a> deployed on cloud infrastructure with Pro architecture.

### Infrastructure

Per web node:
|vCPU|Memory|Network bandwidth|EBS bandwidth|
|:-:|:-:|:-:|:-:|
|72|144GiB|256Gbps|19000Mbps|

Per db node:
|vCPU|Memory|Network bandwidth|EBS bandwidth|
|:-:|:-:|:-:|:-:|
|64|256GiB|20Gbps|13600Mbps|

Total vCPU:
|web|db|
|:-:|:-:|
|216 vCPU|192 vCPU|

Total provisioned storage:
|web|db|
|:-:|:-:|
|1100GB|100GB|

