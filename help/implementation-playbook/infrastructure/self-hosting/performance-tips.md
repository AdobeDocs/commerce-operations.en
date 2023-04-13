---
title: Self-hosting Adobe Commerce performance tips
description: Learn about self-hosting performance tips ideas and concepts and best practices to consider.
landing-page-description: Learn some performance tips concepts and things to consider when hosting Adobe Commerce on your own.
short-description: Learn strategies and performance tips concepts for hosting Adobe Commerce yourself.
kt: 11420
doc-type: tutorial
audience: all
last-substantial-update: 2023-04-13

---

# Self-hosted Adobe Commerce Performance Tips

Using a flexible and powerful e-commerce platform shouldn't mean you have to sacrifice performance. There have been numerous improvements to the core application since Adobe Commerces' inception. In version 2.5.4 the Adobe Commerce engineering team performed a set test to benchmark the application. This helped bolster the fact that Adobe Commerce is capable at handling a large catalog of over 240 million SKUs, API request times are exceptional averaging 300 ms and the number of page views and orders placed per hour are phenomenal coming in at 2 million page views and 208,000 orders per hour. 

You can read the latest benchmark results by heading over to [Experience League - Adobe Commerce - Implementation Playbook - Benchmarks](https://experienceleague.adobe.com/docs/commerce-operations/implementation-playbook/infrastructure/performance/benchmarks.html){target="_blank"}

To keep things as optimal as possible, having a set of tools and tips to follow will encourage a site owner to keep these standards in place when adding customizations and additional complexity to their project.

In the following sections we cover some topics to consider using and when possible some advice for how to optimize.

## Varnish

Varnish is HTTP reverse proxy with cache. As complicated as that may seem, the result is fast responses to help make sure that the requests are returned faster than if it had to fetch the item from the source. Running an Adobe Commerce site without some version of Varnish will result in slower page loads and other key metrics. Varnish can be a bit difficult to set up and manage yourself, however we do have this topic in Experience League [Configure Varnish](https://experienceleague.adobe.com/docs/commerce-operations/configuration-guide/cache/varnish/config-varnish.html){target="_blank"} to get a better understanding for its use with Adobe Commerce. An alternative is to use a cloud-based solution. While there are many to consider, Fastly was chosen as the solution for the Adobe Commerce Cloud. It is a version of Fastly, cloud based, that uses VCLs and many facets of varnish. 

Finding a solution that best suits your application, configuration, budget, and technical abilities is a difficult one to make. Using a cloud-based option makes all the hard parts disappear as far as the management, configuration, servers, and other infrastructure components are considered. It was chosen by the Adobe Commerce Cloud team as their solution due to its performance, scalability, throughput, and many other key metrics. 

By choosing a good solution for your project regarding Varnish, you are setting yourself up for the best performance for your customers and saving the commerce application from working harder than it must.

## CDN

Along with Varnish being a valuable asset to your Adobe Commerce project, next in line is a CDN. Along with your Varnish a CDN can provide cached instances for your CSS, page assets like images to help reduce bandwidth coming to your Adobe Commerce application. It can cache GraphQL responses furthering the benefits of a headless Adobe Commerce site. Some CDNs also provide image optimization, provide a web application firewall, and many other features. 

Adobe Commerce Cloud chose to use Fastly for its Varnish cache but also as its CDN. This single solution provides a myriad of features to provide a great experience for the Adobe Commerce Cloud customers. You can read the Fastly CDN user guide in Experience League [Fastly services overview](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/cdn/fastly.html){target="_blank"}

A CDN provides optimized and secure delivery content for the Adobe Commerce project. Where this may not be a required component to your project, it should be considered as your site matures and the amount of visitors increase. By providing a CDN, you can delay adding additional hardware to the infrastructure or scaling the existing infrastructure because of the load removed from each request. 

## Disable Modules

Disabling a module that is unused should be considered, but not taken lightly. This technique does reduce some overhead and processing time for some requests, but there are side effects that should be considered. There are often times, when a developer makes an assumption that a module will be available when creating functionality. This often is safe, unless they chose to use some classes found in a module that was disabled. 

Disabling a module such as the native "newsletter" is a fairly common event. This is true especially when the store owner has a third-party company that manages their newsletter. Where this can be an issue is when a third-party module is installed and for some reason they decided to use a class from the newsletter. This accidental dependency will likely get caught during some initial installation and testing, but then you are forced to decide if you want to keep this third-party module, enable newsletter and then regression test the site looking for any odd behavior that is introduced. Or do you find a replacement for that third-party module. Both decisions come with risk, time and possibly bugs. 

So before you start to disable as many unused modules as your possible can, make sure that you don't have any tests such as unit, [MFTF](https://developer.adobe.com/commerce/cloud-tools/docker/test/application-testing/){target="_blank"}, [Codeception testing](https://developer.adobe.com/commerce/cloud-tools/docker/test/code-testing/){targe="_blank"} load tests, or API requests that may be affected.

## Require Adobe Commerce and PHP coding standards to be followed for every pull request

Adobe Commerce has a set of [Coding Standards](https://developer.adobe.com/commerce/php/coding-standards/){target="_blank"}. These help ensure that a similar pattern, style, and expected design are followed regardless of the type of software development. Where this is an absolution requirement to follow is when contributing to the Adobe Commerce codebase. However, following this methodology for custom development also makes for a solid cornerstone for all developers, current, and future to expect. When requiring all pull requests to pass a code standard helps make sure that everyone can understand and expect the same consistent development patterns. 

To accompany the Adobe Commerce coding standards, the other foundation used is PHP basic coding standards. It should be clearly defined in your developer guides what standards you are required to follow and any deviations that are acceptable. However a fallback should be to the publicly maintained guide found at [PHP-FIG](https://www.php-fig.org){target="_blank"}.

A firm stance on following PSR-1 and PSR-12. Ensuring that the developers contributing to the project follow these helps ensure that there are no oddly structured files and patterns. This also helps ensure that future developers can quickly read and understand the code they are reviewing. The closer you follow these patterns and coding standards, means that future development efforts should be easier read and faster to implement. 

## Run load tests after each deployment

Performing a load test after each deployment may appear to be excessive. However, if this methodology is followed, the opportunity for newly introduced features causing a decrease in performance can be tracked and mitigated. 

Aside from detecting degradation in performance from new code, having a historical reference of key metrics from your site can help provide insight to when a new tool or change infrastructure is enabled. For example, before paying the hosting company to up-size your environment and hope you are getting the performance increase you expect, you can set up a staging environment with the new configurations and run a load test to see what the actual outcome would be. 

These tests can be automated and part of your CI/CD pipeline. Due to this, you can also have rules in place that take the results and potentially block the merging of feature if too much deviation from the norm occurs. The number of use cases for this data is limitless, but without starting this process you may never realize its potential.

Adobe Commerce has a good writeup on this topic found in Experience League [Performance Testing Tips](https://experienceleague.adobe.com/docs/commerce-operations/deliver-commerce-at-scale/launch.html){target="_blank"} and in [Testing guidance](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/test/guidance.html){target="_blank"}.

{{$include /help/_includes/hosting-related-links.md}}
