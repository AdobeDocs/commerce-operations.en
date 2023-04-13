---
title: Self-hosted overview.
description: Learn about self-hosted best practices to consider.
landing-page-description: Learn some concepts and things to consider when hosting Adobe Commerce on your own.
short-description: Learn strategies and concepts for hosting Adobe Commerce yourself.
kt: 11420
doc-type: tutorial
audience: all
last-substantial-update: 2023-04-11

---

# Self-hosted Adobe Commerce Overview

When considering the move to an e-commerce platform such as Adobe Commerce, you have the luxury of options. However with these options come additional costs, risk, liability, and many other items that must be considered. Hosting the site can be done using a packaged solution, such as [Adobe Commerce Cloud](https://experienceleague.adobe.com/docs/commerce-learn/tutorials/getting-started/cloud/1-overview.html){target="_blank"}, where the infrastructure, servers, email, SSL certificates and many more are pre-configured and ready for use. However, where Adobe Commerce Cloud a good option for most merchants, it is not the only solution. Whereas finding a good hosting solution such as Adobe Commerce Cloud makes the entire process easier, there are reasons self-hosting would be considered. Within the accompanying pages, there are many topics are covered to provide some insight and guidance to topics, services, techniques, and concepts that should be evaluated. The information provide here is not an exhaustive list, and it is not expected that every item is implemented. However, after you read these articles, you should have several ideas and concepts that can make the Adobe Commerce hosting as stable and secure as possible.

When you are not going with Adobe Commerce Cloud, the terms used are self-hosted or on-premise, or on-prem for short. On Premise does not only mean in a data center in a building that a company owns. This term should be considered for anything that is not managed support by Adobe Commerce. There are hosting companies that cater to Adobe Commerce, they are also considered as self-hosted or on-prem. 

Regarding Adobe Commerce and its open-source version, most the advice and tips provided works for either version. Even though it may not directly state so, the expectation is that it is applicable for both. Within this topic of self-hosted options for Adobe Commerce, both versions are considered. And finally, it should also be noted that most these topics are in place and in use if [Adobe Commerce Cloud](https://experienceleague.adobe.com/docs/commerce-learn/tutorials/getting-started/cloud/1-overview.html){target="_blank"} is selected as the hosting provider.

## Terminology level set

Before you get started, it is important that some terms are explained. It is likely that the following are used in these Experience League articles and also when talking to the DevOps team or perhaps the hosting company support. 

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
