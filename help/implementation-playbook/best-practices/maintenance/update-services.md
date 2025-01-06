---
title: Update services best practices
description: Learn how to keep your Adobe Commerce on cloud infrastructure technology stack updated.
role: Developer
feature: Best Practices
exl-id: 62aeffe3-b5a6-49f8-a39b-3219b46cd486
---
# Update services best practices

This article provides recommendations to keep your Adobe Commerce on cloud infrastructure technology stack updated and provides links to helpful resources. 

## Affected products and versions

Adobe Commerce on cloud infrastructure 2.4.x and later

## Update services

Upgrade the services and components used by Adobe Commerce before they reach or are close to the end of life date. This helps keep up with PCI compliance and decrease security vulnerabilities. 

Customers on Starter plans can self-serve on services upgrades. Refer to [Change service version](https://experienceleague.adobe.com/en/docs/commerce-cloud-service/user-guide/configure/service/services-yaml#change-service-version) for details on how to do this.  

Customers on Pro plans can only self-serve on services upgrades in their [Integration environment](https://experienceleague.adobe.com/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/integration-environment-enhancement-request-pro-and-starter.html). For services upgrades on Production, you must [submit a support ticket](https://experienceleague.adobe.com/docs/commerce-knowledge-base/kb/help-center-guide/magento-help-center-user-guide.html#submit-ticket) requesting the upgrade.

>[!WARNING]
>
>Service upgrades cannot be pushed to a production environment without 48 business hours' notice to Adobe's infrastructure team. This is required so that Adobe can ensure that an infrastructure support engineer is available to update your configuration within a desired timeframe with minimal downtime to your production environment. Adobe recommends putting your site in maintenance mode during the service upgrade.

You can view the list of service versions and end-of-life dates in the following file: [https://github.com/magento/ece-tools/blob/develop/config/eol.yaml](https://github.com/magento/ece-tools/blob/develop/config/eol.yaml).

>[!NOTE]
>
>This file cannot be considered a single source of truth. Refer to the official vendor websites for these technologies if in doubt.

## Additional information

[System requirements](../../../installation/system-requirements.md)
