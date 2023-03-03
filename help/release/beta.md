---
title: Beta releases
description: Learn about the Adobe Commerce beta releases and how to participate.
---

# Adobe Commerce beta releases

Beginning in June 2023 and going forward, Adobe will release public betas for patch releases ("beta releases"). Beta releases are available to all Adobe Commerce customers and partners prior to general availability (GA) and include security, compliance, performance, and high-priority quality fixes.

>[!IMPORTANT]
>
>Beta releases may contain defects and are provided "AS IS" without warranty of any kind. Adobe will have no obligation to maintain, correct, update, change, modify or otherwise support (via Adobe Support Services or otherwise) the beta releases. Customers are advised to use caution and not to rely in any way on the correct functioning or performance of the beta releases and/or any accompanying documentation or materials. Accordingly, any use of the beta releases is entirely at the customer's own risk. 

## Release contents

Each Adobe Commerce beta release includes all the changes delivered to Adobe Commerce core code by the scheduled release date, including, but not limited to the following functional areas: 

-  Latest security fixes  
-  Performance improvements  
-  GraphQL improvements 
-  General quality bug fixes  
-  Community contributions  
-  Changes required to support compatibility with [Adobe Commerce services](https://experienceleague.adobe.com/docs/commerce-merchant-services/user-guides/home.html)

## Naming convention and schedule

Adobe will release beta patches twice a year. The first beta patch is typically released three months after general availability of a new core application patch release.

Beta release packages have a `-betaX` suffix. For example, the Adobe Commerce 2.4.7 beta release packages use the following naming convention:

-  `2.4.7-beta1`
-  `2.4.7-beta2`

See the [release schedule](schedule.md) for the list of upcoming public beta release dates.

## Benefits of participating

The earlier you see the code that we are developing, the sooner you can prepare your technology and merchants for the upcoming upgrade.

While things may change, engaging with the beta releases will enable you to start understanding where in the codebase changes are happening and begin preparing in advance of the GA release date.

## Beta release access

Adobe Commerce beta releases are distributed in the same way as any other Adobe Commerce patch release: as Composer metapackages on `https://repo.magento.com`. The source code is avilable on [GitHub](https://github.com/magento/magento2).

See [Composer installation quick start](../installation/composer.md) for more details.

## Issue reporting

Adobe does not provide the standard Adobe Support Service for beta releases.

To submit feedback related to beta releases, follow our [regular issue reporting flow](https://developer.adobe.com/commerce/contributor/guides/code-contributions/) on [GitHub](https://github.com/magento/magento2). 

Our internal teams will monitor all critical issues reported against the latest beta release and prioritize them to be resolved prior to the GA release date.
