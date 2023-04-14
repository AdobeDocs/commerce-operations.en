---
title: Self-hosting Adobe Commerce monitoring tools
description: Learn about self-hosting monitoring tools ideas and concepts and best practices to consider.
landing-page-description: Learn some monitoring tools concepts and things to consider when hosting Adobe Commerce on your own.
short-description: Learn strategies and monitoring tools concepts for hosting Adobe Commerce yourself.
kt: 11420
doc-type: tutorial
audience: all
last-substantial-update: 2023-04-13

---

# Self-hosted Adobe Commerce Monitoring telemetry and tools

Using monitoring tools allows you many opportunities to detect changes without having to pay someone to watch everything all the time. With most tools, you can also add alerts and notifications should something come up that is a known threshold, such as a hard drive running out of space. Some tools provide output that should be tracked and calculated, such as load test results. No matter the tool, every one has a purpose and when used consistently, they can ensure that your application doesn't stray too far off course. There are free options to every tool, but remember paying for some more advanced set often ensures a faster more reliable method and may be worth the investment. New Relic is an example of a tool that offers a free tier but also a paid version that unlocks much more power and capabilities. There are others such as DataDog, Dynatrace, and many more. Find a good option for you and use it consistently.

## Infrastructure monitoring

The term infrastructure is used rather loosely for this context. For this area, this means any server, process, or device that is used to make the site operate. For example:

* Hard drives
* CPU usage
* RAM usage
* Redis
* Average load per server
* network traffic

Take time to find thresholds that should warn teammates when they are reached. Do not assign one for the important things such as hard drive capacity. Set up a few to notify different groups as things get worse. For example, here is a set of rules when a hard drive is getting full.

* 70% Slack notification to the DevOps channel
* 80% Notify the Slack room DevOps channel and an email distribution list of DevOps teammates
* 90% Notify Slack DevOps channel and production support Slack channel, email DevOps distribution group and the engineering manager
* 95% Notify Slack DevOps and production support Slack channels, email distribution list of all engineers and Director of engineering
* 98% Notify any P1 Slack channels and DevOps and production support Slack channels, email distribution list of engineers and Director of engineering and VP of technology

There are many ways to notify a team, so make sure you pick one that is reliable and wont get flooded with too many alerts. It is important to reserver alerts for when it matters, otherwise you run the risk of becoming complacent.

There are often good templates to follow for most tools such as New Relic, DataDog, and Dynatrace. You do not have to reinvent the wheel. Take some time to find good ideas and take the ones that make the most sense for your application. When it comes to Adobe Commerce on cloud, there are already alerts and triggers in place when the project is set up. This is to allow the Adobe production support team to apply their tools for uptime and high availability monitoring. You can add your own, even if you are on Adobe Commerce on cloud. But for the sake of this article, you are creating your own and shouldn't have any pre-build alerts in place to worry about.

Dashboards should be considered with whatever tools you use if you have a software-based solution and not just doing things on the servers themselves. Creating dashboards provide fast access to the frequent or important aspects of your site. Dashboard items can consist of page views, CPU usage per host, list of all servers, page load times, transaction durations, and even synthetic monitoring tests results for the past few days. These dashboards should be built to allow for fast triage if something is wrong, or different dashboards set up for different user experiences. Hopefully you can design several dashboards and enjoy seeing your application monitoring in real time. It is very satisfying especially asked by the owner of the project or a manager how the site is operating, and you can find the answer in seconds, not hours.

## Log aggregation and rotation

When you have a server, you have logs. Logs can be found on application servers that taking requests or MySQL logs when things take too long to execute. The tough thing about logs is that they are separate from each other and finding all of them, parsing the information from each log can be a cumbersome task. Many years ago this issue was resolved by using a technique called log aggregation. This takes logs from all your locations on every server and pushes them into a centralized location. Once the are moved, then a piece of software can read them and provide ways to search, filter, and review the information. This can be a tricky process to get right. There are many options, but if you are lucky your Monitoring tools can also be your log aggregate and reader, such as New Relic. By finding a good tool, you will save yourself an immeasurable amount of time in the future. Unless you have just a single server that does everything to make your site run and operate, having log aggregation is essential. This is especially useful when trying to figure out if you are under a DDoS attack vs legitimate traffic spike or when trying to figure out why a certain request is failing. 

Another key piece for logs is to ensure that rotation happens. This historically pertains to `run-away logs` that can accidentally fill up your hard drive and cause the site to go down. A version of log rotation can be when a log file gets to be a certain size, such as 1 GB. There are server level tools such as logrotate that can automatically remove them. For example it can remove excessively large log files once they get to be more than 1GB or perhaps remove log files older than 90 days. These rules are things that you define, so it is important to know what is acceptable and what is not and set your rules accordingly. 

## Malware scans

Many website hosting companies that are dedicated to Adobe Commerce would have a library of known exploits and malware. They should offer a scan either automatically or upon request. Where these are effective, they are reactionary and only work as new malware is detected. It may be a good idea to have a proactive tool that can look at the code and database for known malware. There are a few options available such as [MageReport](https://www.magereport.com){target="_blank"}, [Sansec](https://sansec.io){target="_blank"}, or [Magento Malware Scanner](https://github.com/gwillem/magento-malware-scanner){target="_blank"}. They can either do a remote scan from the outside or be installed and update/scan/monitor proactively after being set up on the servers. These can be a great option since their library is constantly being updated because they are installed and monitoring thousands of sites if you choose a provided solution such as Sansec. As a new malware is detected, every project they monitor benefits from the information and are now will be alerted if it is detected.

There are a few free versions to consider but for malware, you really should consider a paid solution. This may be difference between your site being infected for a few minutes versus a few months. Having an exploit on your site causes enormous headaches, this is one area you should consider paying for a service.

## Adobe's Site-Wide Analysis Tool

The Site-Wide Analysis Tool is a proactive self-service tool and central repository that includes detailed system insights and recommendations to ensure the security and operability of your Adobe Commerce installation. It provides 24/7 real-time performance monitoring, reports, and advice to identify potential issues and better visibility into site health, safety, and application configurations. It helps reduce resolution time and improve site stability and performance.

The Site-Wide Analysis Tool's Recommendations page lists recommendations based on best practices to address issues detected on your site. The recommendations are sorted by priority PO to P4, where PO is critical and P4 is low. The findings include description, recommendation, site impact, root cause, scenarios/preconditions, expected result, and tools used.

Use the Recommendations page to see and implement recommendations to improve your site's health.

Learn about the best practices to improve your site performance. Track and implement the recommendations listed as per priority.

The Site-Wide Analysis Tool's Recommendations page lists recommendations with priority P0 to P4. P0 is critical, P1 is urgent, P2 is high, P3 is medium, and P4 is low. Monitor this page to see these recommendations and implement them based on priority to ensure optimum site performance.

For more information for how to install this on your project, please visit [Site-Wide Analysis Tool Install Guide](https://experienceleague.adobe.com/docs/commerce-operations/tools/site-wide-analysis-tool/installation.html){target="_blank"}.

## SSL monitoring

One of the more forgotten items for a project is the SSL certificate. They only need attention once a year, so forgetting them is very easy. However, this expiration of your security certificate would mean that modern browsers will warn or refuse to allow them to display the pages on your site. You may get lucky and have a few customers send you emails or try to call you if they experience such an issue, however, you may be unable to operate until it is resolved. Every minute counts, so recognizing the expiration is coming ahead of time and making sure that things are renewed is paramount to keeping the site up and running. There are many ways to accomplish SSL monitoring. Consider using synthetic monitoring tools for your site, using free or low-cost tools like Pingdom, Keychest or Sucuri and even subscribe to a service that offers SSL certificate expiration alerts. These simple tools can ensure that your sites certificates are valid and eliminate an avoidable downtime for your customers.

## Automated functional test, unit test and load testing

Performing automated tests such as functional tests or unit tests often helps to detect issues from newly introduced code. These will not be able to catch everything, since Adobe Commerce and unit tests are typically less than 50% coverage. It doesn't mean you should avoid writing them and testing. These tools are here to add another layer of safety and security that everything being committed doesn't adversely affect the out of the box and any custom tests your development team creates. By running these tests on each deployment, any major issues are caught early and avoid allowing things to make their way to production. 

Load tests can be challenging to get it right. Much of the complexity comes from how the frontend is used and implemented. If your site has a headless frontend, you might want to load test the GraphQL and REST APIs. How you end up load testing is up to you and the DevOps team. Know that each load test, performed as soon as possible, provides insight to the status of the project. It also provides benchmarks for future tests to see if there are any drastic changes in the load test results. If so, and they are negative, this is a good opportunity to review the latest code changes and look for performance impacting sections to improve.

Adobe Commerce has a good set of pages to help understand the reasoning and how to execute Unit tests, found by visiting [PHP unit testing](https://developer.adobe.com/commerce/testing/guide/unit/){target="_blank"}.

For more information around functional testing, please visit [Introduction to the Functional Testing Framework](https://developer.adobe.com/commerce/testing/functional-testing-framework/){target="_blank"}.


{{$include /help/_includes/hosting-related-links.md}}
