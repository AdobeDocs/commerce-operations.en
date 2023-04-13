---
title: Self-hosting overview.
description: Learn about self-hosting best practices to consider. The topics range from security elements, to disaster recover many more. These topics can be considered independent of each other however ensuring you have considered all of the areas ensure your project has had deep thought and consideration to providing the most stable, secure, and resilient hosting options.
landing-page-description: Learn some concepts and things to consider when hosting Adobe Commerce on your own.
short-description: Learn strategies and concepts for hosting Adobe Commerce yourself.
kt: 11420
doc-type: tutorial
audience: all
last-substantial-update: 2023-04-13

---

# Self-hosted Adobe Commerce Overview

When considering the move to an e-commerce platform such as Adobe Commerce, you have the luxury of options. However, with these options come additional costs, risk, and liabilities to consider. Hosting a Commerce site can be done using a packaged solution, such as [Adobe Commerce on cloud infrastructure](https://experienceleague.adobe.com/docs/commerce-learn/tutorials/getting-started/cloud/1-overview.html){target="_blank"}, where the infrastructure, servers, email, SSL certificates and many more are pre-configured and ready for use. Finding a good hosting solution such as Adobe Commerce on cloud infrastructure makes the entire process easier, there are compelling reasons for self-hosting your Commerce site. Within the accompanying pages, there are many topics that provide insight and guidance about the services, techniques, and concepts that self hosting provides. The information here is not exhaustive, and it is not expected that you should implement every suggestion. However, these articles can help you understand the ideas and concepts that can make the Adobe Commerce self hosting as stable and secure as possible.

When you are not going with Adobe Commerce Cloud, the terms used are self-hosted or on-premise, or on-prem for short. On Premise does not only mean in a data center in a building that a company owns. This term should be considered for anything that is not managed support by Adobe Commerce. There are hosting companies that cater to Adobe Commerce, they are also considered as self-hosted or on-prem. 

Regarding Adobe Commerce and Magento Open-source, most of the advice and tips provided works for either version. Even though it may not directly state so, the expectation is that it is applicable for both. Within this topic of self-hosted options for Adobe Commerce, both versions are considered. And finally, most topics are relevant for [Adobe Commerce on cloud infrastructure](https://experienceleague.adobe.com/docs/commerce-learn/tutorials/getting-started/cloud/1-overview.html){target="_blank"} is selected as the hosting provider.

## Terminology level set

The following terms are commonly used throughout Experience League articles, when talking to the DevOps team, and working with company support: 

*   **DevOps** is a term that is used to describe the teams that handle the server setup, configuration, management, SSL certificates and everything else about the actual servers and services used to run an Adobe Commerce site. This term is used to help designate when a developers' responsibility typically ends and where triage and support from an infrastructure team begins. 

*   **Security Concepts** encompass several topics and considerations to make the Adobe Commerce codebase, files, and file system on the servers and any configurations or updates that reduce the attack surface for many known exploit patterns.

*   **Monitoring Tools** covers a few existing tools and services that monitor Adobe Commerce websites. These tools can sometimes provide tips on how to improve things, or uncover issues and security vulnerabilities.

*   **Disaster Recovery** helps provide some concepts and considerations for the unfortunate event of a damaged or exploited project.

*   **Performance tips** provide some pro tips and guidance for making the Adobe Commerce application be as performant as possible.

*   **Bad actor** is the term used for a person or team that is trying to do something malicious or unauthorized. It is not limited to the commerce application but also extends to the infrastructure or any component related to the website.

*   **WAF** Web Application Firewall.  Helps by watching each request heading to the commerce application and blocks known patterns and exploits.  Often a WAF is used in conjunction with custom filters and rules to help manage DDOS attacks.

*   **DDoS** Distributed Denial of Service.  A method of attack to force the servers running the website to be consumed with false requests with enough volume that they no longer can respond to legitimate request.

## What's Next?

These topics are not in any special order or sequence. They are meant to provide talking points with a DevOps engineer, the Commerce Architect, and anyone else involved in making this important decision of where and how to host Adobe Commerce.

{{$include /help/_includes/hosting-related-links.md}}
