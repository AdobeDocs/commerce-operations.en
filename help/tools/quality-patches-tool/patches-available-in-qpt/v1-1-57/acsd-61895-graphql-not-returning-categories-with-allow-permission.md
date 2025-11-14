---
title: 'ACSD-61895: [!DNL GraphQL] categories query fails for private shared catalog with restricted view'
description: Apply the ACSD-61895 patch to fix the Adobe Commerce issue where [!DNL GraphQL] responses for guest customers (using a public shared catalog with all allowed categories) did not return any categories when a private shared catalog with restrictions was created for the same categories.
feature: Categories, GraphQL, Roles/Permissions
role: Admin, Developer
exl-id: ef986fa6-e8bc-4322-80f2-fa0c5d5e8d40
type: Troubleshooting
---
# ACSD-61895: [!DNL GraphQL] `categories` query fails for private shared catalog with restricted view

The ACSD-61895 patch fixes the issue where [!DNL GraphQL] responses for guest customers (using a public shared catalog with all allowed categories) did not return any categories when a private shared catalog with restrictions was created for the same categories. 

After the fix, it returns all categories with allow permissions (public shared catalog) for guest users, even if the root category doesn't have allow permission in the scope of a private shared catalog. 

This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.57 is installed. The patch ID is ACSD-61895. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.7-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.7-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

[!DNL GraphQL] responses for guest customers (using a public shared catalog with all allowed categories) do not return any categories when a private shared catalog with restrictions is created for the same categories. 

<u>Steps to reproduce</u>:

1. Install Adobe Commerce with B2B and sample data.
1. Ensure that B2B features are enabled.
1. Create two shared catalogs: one public and one private.

    * Public Shared Catalog: 
    
        * Assign all categories to the public catalog.

    * Private Shared Catalog: 
    
        * Assign only the `Gear` category and its child categories to the private catalog.
        * Assign the private catalog to a test company.

1. Create a company user:

    * Create a user associated with the test company linked to the private shared catalog.
    * Ensure that the user is only able to access the `Gear` category and its child categories on the frontend when logged in.

1. Query categories via API:

    * Use API client to execute the following [!DNL GraphQL] query without a customer token:

    ```graphql
    query Categories { 
        categories { 
            items { 
                children_count 
                children { 
                    uid 
                    name 
                    children_count 
                    children { 
                    uid 
                    name 
                    } 
                } 
            } 
        } 
    }
    ```

1. Observe the response and verify if the `Gear` category and other categories are returned.
1. Now query categories with a customer token:

    * Log in as the test company user.
    * Execute the same [!DNL GraphQL] category query, but include the customer token for the logged-in user.
    * Observe the response and check if only the `Gear` category and its child categories are returned.


<u>Expected results</u>:

When querying as a guest company user, all categories should be returned (as expected).

<u>Actual results</u>:

The response from the `categories` query shows no categories.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.


## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
