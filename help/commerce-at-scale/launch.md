---
title: Performance Testing Tips
description: Learn how to set KPIs for launching your Adobe Commerce and ADobe Experience Manager solution.
exl-id: 4b0d9c4f-e611-452d-a80f-27f82705935d
---
# Performance testing tips

To evaluate the effectiveness of all of the changes above, thorough performance testing should be run before go-live and before any future major deployments to your production environments. When planning your load testing, it is important to simulate real life consumer traffic as much as possible.

The most resource intensive areas of the AEM/CIF/Adobe Commerce site are those which are not cacheable such as the checkout process and site search. Static, and therefore cacheable, page browsing such as for Produce Detail Pages (PDP’s) and Product Listing Pages (PLP’s) make up the majority of the traffic to an ecommerce site generally and so the scripts and scenarios in the test should reflect that to measure the limits of the platform.

Having a single script running for your load test which navigates through the site with no wait time between steps, and also always completes the checkout process every time would not give a reliable indication of the limits of the platform, as that is not what a real-life scenario would be.

Defining KPIs should be the first step in your performance test plan: define metrics that you can test during your initial test, but then measure again in the future, and on a recurring basis after the site is live. This allows you track the performance of your site’s performance over time – pre and post launch. Example KPIs to define could be:

- Average response time - time to first byte or last byte
- Latency
- Bytes/s (Througput)
- Error rate
- Orders per hour
- Page views per hour
- Unique users per hour (concurrent shoppers)

## Jmeter guidelines

The following Jmeter high level guidelines should be considered when developing your AEM/CIF/Adobe Commerce load testing:

- Split your script into configurable scenarios, which should cover, for example:
  - Open Home Page
  - Open Category Page (PLP)
  - View Simple Products (PDP) – 2 loops within each iteration
  - View Configurable Products – 2 loops within each iteration
    - For example,  set the steps above to 60% of traffic
  - Product Search
    - For example, set searching the catalog to 37% of traffic
  - Cart and Checkout
    - For example, a user completing the Cart and checkout part of the script should default to an industry standard ecommerce site conversion rate of around 3%
    - As the checkout flow is uncached and usually a resource intensive operation, setting an unrealistically high figure for the numbers of people completing orders vs. the number of site browsers would give an unreliable result for the volume of traffic your site could handle.
- Clean all caches before each test run:
  - The AEM dispatcher cache should be fully cleaned
  - Adobe Commerce’s Fastly and internal cache should be fully flushed and cleaned – this can be done via the cache control in Adobe Commerce admin.
- Include a ramp period in Jmeter test: Having no ramp period set means no gradual ramp up of traffic and no chance for the site to cache any of the commonly visited pages and components of the page. In real life, it would be unusual for all peak traffic to arrive on a fully uncached site at exactly the same time, therefore a ramp period should be included in Jmeter test scripts to allow the cache to build up as would happen on a real ecommerce site.
- A “Wait time” between each step within an iteration should be used – in reality, a user would not
immediately jump to the next page on the site during their journey – there would be a wait time whilst the user read the page and decided on their next action.
- Setting the thread groups to loop infinitely, but for a set time of x (e.g. 60 minutes), will give a repeatable test, with median response times to comparable against previous test runs. This means that after the set ramp up period, there will be the target number of Virtual Users running concurrently and this will continue for the set loop time.
- Median time should be used to give an improvement /decline in average response time, not average. If
there are several edge results that take a lot longer than the other results then this would skew this average result, but what we are interested in in the end user response time for the majority of users, which is more suited to the median measure.
- Embedded resources are not collected by default in jmeter (e.g. JS, CSS and other resources downloaded when a real user visits page). This can be enabled, but only for the domain you are testing –external resource calls should still be excluded (e.g. we don’t want to include response times from externally hosted services, eg. google analytics code, as we have no control over them).
- HTTP Cache Manager should be enabled, this enables Jmeter to cache page elements during a journey as
a real user’s journey would during their browsing of the website on their own browser. During their journey though the site, the user’s browser would download the related embedded resourced only once and then these would be cached by the user’s browser. Also, If the same user returns to the site some time after their original visit then it could still be the cache that those assets are cached.
- Listeners should be kept within the actual load test runs (e.g “View Results Tree” and “Aggregate Report”). Including this in the non-GUI real load test run can impact on the performance results being reported by Jmeter, as resources are used during the real test run to generate the reports. These listeners were removed from the test script to be replaced with a JTL results file, which can then be processed using Jmeter’s Report Dashboard functionality.
- A target response time for evaluated so that the dashboard report’s “Apdex score” can be used as a quick way to measure the effect of changes on performance between test runs. The Apdex score is based on a certain amount of people being able to access the site in a tolerable time . If the response time is over a certain “frustrating” amount, this lowers the score. The times can be set using the “apdex_satisfied_ threshold” and “apdex_tolerated_threshold” parameters.
- Set a target “Orders per hour” metric to present to business users, not a Virtual User count. “Virtual users” can be a complex topic to understand what in real life the test is measuring. By calculating the site conversion rate, orders per hour, average time a user spends on the site and think time in between each page load, industry standard calculations can be used to present different load test scenarios based on orders per hour to be achieved.
- Finally, your Jmeter test server should be run on a server geographically close to where the majority of your user traffic is coming from and where your cloud infrastructure is hosted – hopefully these would be the same.
