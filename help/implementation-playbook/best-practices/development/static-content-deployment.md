---
title: Static content deployment best practices
description: Learn how to avoid issues with static content not appearing on your Adobe Commerce storefront.
role: Developer
feature: Best Practices
exl-id: 9f521963-6fe4-4844-b2d1-fd457b706900
---
# Static content deployment best practices

This article talks about static content deploy (SCD) best practices in Adobe Commerce to help avoid issues where the static content would not be available on your website.

## Affected products and versions

[All supported versions](../../../release/versions.md) of:

* Adobe Commerce on cloud infrastructure
* Adobe Commerce on-premises

## Best practices

To avoid an issue with static content not being available on your website, follow these best practices to make sure your static content is both configured and deployed correctly:

1. Make sure to follow deployment guidelines:
    * For Adobe Commerce on-premises (all versions), see [Deployment Overview](../../../configuration/deployment/overview.md) in our developer documentation.
    * For Adobe Commerce on cloud infrastructure (all versions), see [Cloud deployment process](https://experienceleague.adobe.com/en/docs/commerce-cloud-service/user-guide/develop/deploy/process) and [Static content deployment strategies](https://experienceleague.adobe.com/en/docs/commerce-cloud-service/user-guide/develop/deploy/static-content) in our developer documentation.

1. For Adobe Commerce on cloud infrastructure (all versions), ensure that ece-tools is on the newest release. See: [Update ece-tools version](https://experienceleague.adobe.com/en/docs/commerce-cloud-service/user-guide/release-notes/ece-tools-package) in our developer documentation.
1. For Adobe Commerce on cloud infrastructure (all versions), make sure that static content is deployed during the build phase rather than the deployment phase. See: [Configuration management for store settings - Static content deployment performance](https://experienceleague.adobe.com/en/docs/commerce-cloud-service/user-guide/configure-store/store-settings#cloud-confman-scd-over) in our developer documentation.
1. Make sure that you do not have long-running cron jobs and kill any long-running cron processes. Long-running cron jobs can take up CPU resources and potentially greatly increase deployment time.
1. For Adobe Commerce on-premises (all versions), check that the `php` process in CLI has access to the `pub/static` directory. Otherwise, you could face an issue where a static content deploy will be unable to write files to that directory. For more information: [File systems access permissions](https://experienceleague.adobe.com/docs/commerce-operations/configuration-guide/deployment/file-system-permissions.html) in our developer documentation.
1. Ensure the `generated` directory is not a shared directory across builds; otherwise, builds could fail randomly. For more information:
    * Adobe Commerce on-premises (all versions): [Technical Details](https://experienceleague.adobe.com/docs/commerce-operations/configuration-guide/deployment/technical-details.html) in our developer documentation.
    * Adobe Commerce on cloud infrastructure (all versions): [Deployment process - Phase 2: build](https://experienceleague.adobe.com/en/docs/commerce-cloud-service/user-guide/develop/deploy/best-practices#cloud-deploy-over-phases-build) in our developer documentation.

1. Check your SCD strategy. The *quick* strategy is the default. For more information:
    * Adobe Commerce on-premises (all versions): [Static files deployment strategies](https://experienceleague.adobe.com/docs/commerce-operations/configuration-guide/cli/static-view/static-view-file-strategy.html) in our developer documentation.
    * Adobe Commerce on cloud infrastructure (all versions): [Deploy variables - SCD\_STRATEGY](https://experienceleague.adobe.com/en/docs/commerce-cloud-service/user-guide/configure/env/stage/variables-deploy#scd_strategy) in our developer documentation.

## Additional information

In our developer documentation:

* [Static Content Container](https://developer.adobe.com/commerce/admin-developer/pattern-library/containers/static-content/)
* [Static Content Signing](https://experienceleague.adobe.com/docs/commerce-operations/configuration-guide/cache/static-content-signing.html)
* [Deploy variables - STATIC\_CONTENT\_SYMLINK](https://experienceleague.adobe.com/en/docs/commerce-cloud-service/user-guide/configure/env/stage/variables-deploy#static_content_symlink)
* [Deployment flow](../../../performance/deployment-flow.md)
* [Zero downtime deployment](https://experienceleague.adobe.com/en/docs/commerce-cloud-service/user-guide/develop/deploy/reduce-downtime)
* [Optimize cloud deployment](https://experienceleague.adobe.com/en/docs/commerce-cloud-service/user-guide/develop/deploy/optimization)
