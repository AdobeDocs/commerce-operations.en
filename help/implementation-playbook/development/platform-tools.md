---
title: Platform Tools
description: Choose recommended platform tools for your Adobe Commerce implementation.
exl-id: 3fc164f9-a0fc-46e7-a54e-08ce101ccae7
---
# Platform tools

There is no shortage of aspects that must be well thought through and rigorously tested to keep an ecommerce site running without interference. Not only must you identify the right solutions to tackle every aspect of the site—from data storage and programming to caching and security—but you need the right process to ensure the delivery of a platform that both runs smoothly and can be built and optimized efficiently.

This section offers not only a look at the tools, solutions, processes, and methodologies that have been tested and perfected over a number of Adobe Commerce implementations, but also our recommendations for which solutions best fit specific business needs and objectives.

The following table includes solutions that we recommend and can be used within Adobe Commerce to drive performance on the platform:

| Purpose                                  | Tool                    |
|------------------------------------------|-------------------------|
| Database                                 | MySQL, MariaDB, Percona |
| Programming language                     | PHP, JS, HTML, LESS CSS |
| Integrated development environment (IDE) | Eclipse, PHPStorm       |
| Web server                               | Nginx, Apache           |
| Caching services                         | Redis, Varnish          |
| Search services                          | Elasticsearch           |
| Message queue services                   | RabbitMQ                |
| Security scan tool                       | SonarQube, ZAP          |

## Database

There are three different tools that we use depending on the needs of the brand. MySQL is a great baseline solution as the Adobe Commerce database if you don’t expect your store to handle extreme loads.

MariaDB is more community-focused and works better for users who care more about features than pure performance. MariaDB supports a large array of database engines, disk encryption, complex horizontal interconnectivity, and scaling features, which could be interesting for large Adobe Commerce stores.

Percona is a fork of MySQL that centers around performance and peak load handling. Choose MariaDB if you need more quality of life and DevOps features. Go for Percona if your goal is to gain high-load performance in large-scale datasets.

## Programming language

Adobe Commerce is a PHP-based application and the newest releases are always compatible with the latest stable PHP version (for example, Adobe Commerce version 2.4 recommends using PHP 7.4). To get more security and performance, there are several factors to account for when configuring PHP to get maximum speed and efficiency on request processing. The Adobe Commerce web storefront is built with HTML, JavaScript, and the LESS CSS pre-processor.

## Web servers

Adobe Commerce fully supports the Nginx and Apache web servers. Adobe Commerce provides sample recommended configuration files for both:

- **Nginx**—`<magento_home>/nginx.conf.sample`
- **Apache**—`<magento_home>.htaccess.sample`

The Nginx sample contains settings for better performance and is designed so that little reconfiguration is required.

## Caching services

Adobe Commerce provides numerous options to store your cache and session data, including Redis, Memcache, filesystem, and database. For a setup with multiple web nodes, Redis is the best option.

We highly recommend using Varnish as the full-page cache server for your store. Adobe Commerce distributes a sample configuration file for Varnish that contains all recommended settings for performance.

## Search services

For Adobe Commerce version 2.4 and later, all installations must be configured to use Elasticsearch as the catalog search solution. Elasticsearch provides quick and advanced searches on products in the catalog. Elasticsearch is optional for releases prior to 2.4, but it’s recommended.

## Message queue services

Message queues provide an asynchronous communication mechanism in which the sender and the receiver of a message do not contact each other. RabbitMQ is an open-source message broker that offers a reliable, highly available, scalable, and portable messaging system.

## Security tools

The [Adobe Commerce Security Scan Tool](https://docs.magento.com/user-guide/magento/security-scan.html) enables you to regularly monitor your store websites and receive updates for known security risks, malware, and out-of-date software. Typically, you start using this tool when you begin user-acceptance testing (UAT). Besides the Adobe Commerce Security Scan tool, which is free and available for all implementations and versions of Adobe Commerce, there are other choices that can be used during the CI/CD process and before each release.

SonarQube is an open-source quality management platform, designed to analyze and measure your code’s technical quality. SonarQube not only provides a complete report of code bugs, syntax errors, and vulnerabilities, but also offers suggestions and examples for fixing your code. SonarQube is perfect to use in a CI/CD environment as a tool capable of analyzing the code before it’s deployed.

Zed Attack Proxy (ZAP) is a free security testing tool used by thousands of pen-testers around the globe. ZAP is developed by OWASPand is one of the most preferred tools for manual security testing.
