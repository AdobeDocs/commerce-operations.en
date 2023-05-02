---
title: Static content deployment best practices
description: Learn how to avoid issues with static content not appearing on your Adobe Commerce or Magento Open Source storefront.
role: Developer
feature: Best Practices
feature-set: Commerce
exl-id: 9f521963-6fe4-4844-b2d1-fd457b706900
---
# Static content deployment best practices

This article talks about static content deploy (SCD) best practices in Adobe Commerce to help avoid issues where the static content would not be available on your website.

## Affected products and versions

[All supported versions](../../../release/versions.md) of:

* Adobe Commerce on cloud infrastructure
* Adobe Commerce on-premises
* Magento Open Source

## Best practices

To avoid an issue with static content not being available on your website, follow these best practices to make sure your static content is both configured and deployed correctly:

1. Make sure to follow deployment guidelines:
    * For Adobe Commerce on-premises and Magento Open Source (all versions), see [Deployment Overview](../../../configuration/deployment/overview.md) in our developer documentation.
    * For Adobe Commerce on cloud infrastructure (all versions), see [Cloud deployment process](https://devdocs.magento.com/cloud/deploy/cloud-deployment-process.html) and [Static content deployment strategies](https://devdocs.magento.com/cloud/deploy/static-content-deployment.html) in our developer documentation.

1. For Adobe Commerce on cloud infrastructure (all versions), ensure that ece-tools is on the newest release. See: [Update ece-tools version](https://devdocs.magento.com/cloud/release-notes/ece-release-notes.html) in our developer documentation.
1. For Adobe Commerce on cloud infrastructure (all versions), make sure that static content is deployed during the build phase rather than the deployment phase. See: [Configuration management for store settings - Static content deployment performance](https://devdocs.magento.com/cloud/live/sens-data-over.html#cloud-confman-scd-over) in our developer documentation.
1. Make sure that you do not have long-running cron jobs and kill any long-running cron processes. Long-running cron jobs can take up CPU resources and potentially greatly increase deployment time.
1. For Adobe Commerce on-premises and Magento Open Source (all versions), check that the `php` process in CLI has access to the `pub/static` directory. Otherwise, you could face an issue where a static content deploy will be unable to write files to that directory. For more information: [File systems access permissions](https://experienceleague.adobe.com/docs/commerce-operations/configuration-guide/deployment/file-system-permissions.html) in our developer documentation.
1. Ensure the `generated` directory is not a shared directory across builds; otherwise, builds could fail randomly. For more information:
    * Adobe Commerce on-premises and Magento Open Source (all versions): [Technical Details](https://experienceleague.adobe.com/docs/commerce-operations/configuration-guide/deployment/technical-details.html) in our developer documentation.
    * Adobe Commerce on cloud infrastructure (all versions): [Deployment process - Phase 2: build](https://devdocs.magento.com/cloud/reference/discover-deploy.html#cloud-deploy-over-phases-build) in our developer documentation.

1. Check your SCD strategy. The *quick* strategy is the default. For more information:
    * Adobe Commerce on-premises and Magento Open Source (all versions): [Static files deployment strategies](https://experienceleague.adobe.com/docs/commerce-operations/configuration-guide/cli/static-view/static-view-file-strategy.html) in our developer documentation.
    * Adobe Commerce on cloud infrastructure (all versions): [Deploy variables - SCD\_STRATEGY](https://devdocs.magento.com/cloud/env/variables-deploy.html#scd_strategy) in our developer documentation.

## Additional information

In our developer documentation:

* [Static Content Container](https://developer.adobe.com/commerce/admin-developer/pattern-library/containers/static-content/)
* [Static Content Signing](https://experienceleague.adobe.com/docs/commerce-operations/configuration-guide/cache/static-content-signing.html)
* [Deploy variables - STATIC\_CONTENT\_SYMLINK](https://devdocs.magento.com/cloud/env/variables-deploy.html#static_content_symlink)
* [Deployment flow](../../../performance/deployment-flow.md)
* [Zero downtime deployment](https://devdocs.magento.com/cloud/deploy/reduce-downtime.html)
* [Optimize cloud deployment](https://devdocs.magento.com/cloud/deploy/optimize-cloud-deployment.html)
