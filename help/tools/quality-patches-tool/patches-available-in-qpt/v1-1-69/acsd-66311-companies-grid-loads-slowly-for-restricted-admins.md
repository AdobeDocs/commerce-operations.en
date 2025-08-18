---
title: 'Adobe Commerce: ACSD-66311 – Companies grid loads slowly for restricted admin users'
description: Apply patch ACSD-66311 to fix the B2B issue in Adobe Commerce that slows down the companies grid for admin users with restricted website access.
role: Admin, Developer
type: Troubleshooting
---

# ACSD-66311: Restricted admins face delays loading the companies grid

The ACSD-66311 patch fixes the issue where the Companies grid loads slowly for admin users with restricted website access. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) version 1.1.69 is installed. The patch ID is ACSD-66311. Adobe will fix this issue in Adobe Commerce 2.4.9.
## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.7-p4

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.7-p4 - 2.4.8-p1

>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Fixes slow loading of the Companies grid for admin users with restricted website access.

<u>Steps to reproduce</u>:

1.Install Adobe Commerce with B2B features.
1. Create two additional websites with stores and views:
    1.1 The main website is created automatically during installation.
    1.1 Create Website 2 with Store 2 and View 2.
    1.1 Create Website 3 with Store 3 and View 3.
1. Create the user role called "Admins in Scope":
    1.1 Limit scope to two stores: ***Main Website*** ** {**}*Website 3/Store 3*{+}.
    1.1 Resources: only ***Dashboard*** ** {*}**Companies+{*}.
1. Create an admin user with the role 'Admins in Scope', for example, **adminscope**.
1. Generate specific distributed customer and company data:
    1. ****Customers assigned to websites****
    ||Website ID||Number of customers||
    |1|600k|
    |2|1500|
    |3|500|
    1. Run the following query to verify the distribution:

```
SELECT website_id, COUNT(*) 
FROM customer_entity 
GROUP BY website_id; 
```

    1. ****Customers assigned to companies****
    ||Number of customers||Number of companies||
    |1|4500|
    |2|~1000|
    |~595k|1|
    1. Run the following query to verify the distribution:

```
SELECT customer_count, COUNT(*) AS number_of_companies
FROM (
    SELECT company_id, COUNT(customer_id) AS customer_count
    FROM company_advanced_customer_entity
    GROUP BY company_id
) AS subquery
GROUP BY customer_count
ORDER BY customer_count; 
```

1. Reindex all data to generate entries in the **customer_grid_flat**.
1. Log in as **adminscope**.
1. Go to {*}Customers > Companies{*}.

<u>Expected results</u>:

The page should load in under 1 second.

<u>Actual results</u>:

The page takes more than 14 minutes to load.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
