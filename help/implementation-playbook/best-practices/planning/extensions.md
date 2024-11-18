---
title: Extensions best practices
description: Learn how to avoid performance issues caused by third-party Adobe Commerce extensions.
role: Admin
feature: Best Practices, Extensions
exl-id: 95d2c7bf-fd2f-4c98-8293-96d69b86341f
---
# Extensions best practices

Adobe Commerce third-party extensions (modules) have the potential to cause various issues that can negatively impact storefront performance. You can avoid these issues by following these best practices:

- Consider developing your Commerce integrations and customizations using [out-of-process extensibility](https://developer.adobe.com/commerce/extensibility/) wherever possible to ease maintenance and upgradability.
- Download and purchase third-party extensions from a trusted source, like the [Commerce Marketplace](https://marketplace.magento.com/extensions.html).
- Update all third-party extensions to the latest version. 
- If you cannot keep your third-party extensions updated, consider using different extensions.
- When planning an upgrade to a new version of Adobe Commerce, verify that installed third-party extensions are compatible with the new version, and upgrade the extensions if required.

>[!NOTE]
>
> All extensions available in the Adobe Commerce Marketplace are required to maintain compatibility with new Commerce releases. See [Release compatibility](https://developer.adobe.com/commerce/marketplace/guides/sellers/compatibility/releases/).

## Affected products and versions

[All supported versions](../../../release/versions.md) of:

- Adobe Commerce on cloud infrastructure
- Adobe Commerce on-premises

## Additional information

- [Best practices for planning upgrades](../../../upgrade/prepare/best-practices.md)
- Using third-party extensions with Adobe Commerce on cloud infrastructure
  - [Technologies and requirements - Development and testing](https://experienceleague.adobe.com/en/docs/commerce-cloud-service/user-guide/develop/overview#cloud-req-devtest)
  - [Why test fully in Integration and Staging?](https://experienceleague.adobe.com/en/docs/commerce-cloud-service/user-guide/launch/overview#why-test-fully-in-integration-staging-and-production)
