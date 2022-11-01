---
title: Best practices for configuring sites, stores, and store views
description: Learn best practices for configuring sites, stores, and store view to maximize site performance
role: Admin
feature: Best Practices
feature-set: Commerce
---

# Best practice for configuring sites, stores, and store view

For best site performance, configure a maximum of 50 sites, 50 stores, and 50 store views for Adobe Commerce on cloud infrastructure projects.

>[!NOTE]
>
>For Adobe Commerce on cloud infrastructure, the best practices apply specifically to the Production environment (and possibly Staging on Pro architecture, subject to resource constraints) which would have more resources than the integration and development environments. For integration (Pro and Starter) and Staging environments (Starter), reduce the number of store views to less than 5 or 10 (subject to technical review).

## Affected products and versions

[All supported versions](../../../release/versions.md) of:

- Adobe Commerce on cloud infrastructure
- Adobe Commerce on-premises

## Strategies to improve performance

If your project requires many sites, stores, or store views, you can use the following strategies to improve performance:

- Restructure catalog by shifting logic to categories
- Separate price lists from catalog data by using external price and a Price Management System (PMS).
- Use an alternative noSQL data storage like Elasticsearch

## Potential performance impacts

Websites and stores are multipliers for catalog data, so having many websites and stores can negatively affect site performance in the following ways:

- Larger index tables increase time required to complete indexing operations [Price index].
- Increased time to retrieve application configuration degrades storefront response time for non-cached catalog pages. 
- Significant increases in the time required to complete Save operations in the Admin since the data is saved separately for each website.


## Additional information

- [Understanding websites, stores, and store views](https://devdocs.magento.com/cloud/configure/configure-best-practices.html#sites)
- [Set up multiple websites or stores](https://devdocs.magento.com/cloud/project/project-multi-sites.html)

