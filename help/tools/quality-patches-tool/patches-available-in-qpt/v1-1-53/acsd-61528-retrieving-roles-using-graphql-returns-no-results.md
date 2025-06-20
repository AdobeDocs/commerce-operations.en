---
title: 'ACSD-61528: Retrieving roles using GraphQL returns no results'
description: Apply the ACSD-61528 patch to resolve the Adobe Commerce issue where retrieving roles from the company's administrator using GraphQL always returns a null result.
feature: GraphQL, B2B, Companies, Roles/Permissions
role: Admin, Developer
exl-id: 81d78746-e723-4b18-860c-d973158b469c
type: Troubleshooting
---
# ACSD-61528: Retrieving roles using GraphQL returns no results

The ACSD-61258 patch fixes the issue where retrieving roles from the company's administrator using GraphQL always returns a null result. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.53 is installed. The patch ID is ACSD-61528. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

Adobe Commerce (all deployment methods) 2.4.6-p5

**Compatible with Adobe Commerce versions:**

Adobe Commerce (all deployment methods) 2.4.6 - 2.4.7-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

When retrieving roles from the company's administrator using GraphQL, the role result was always null.

<u>Prerequisites:</u>:

Install and enable Adobe Commerce B2B modules.

<u>Steps to reproduce</u>:

1. Create a company.
1. Log in as the company admin on GraphQL with below mutation:
    
    ```GraphQL
       mutation {
           generateCustomerToken(email: "company@admin.com", password: "PASSWORD") {
       token
       }
    }
    ```

1. Add the resulting token to **Authorization** request headers as a `Bearer` token and run below GraphQL query:

    ```GraphQL
       {
       customer {
       email
       role{
        name
        id
       }
     }
    }
    ```
    
<u>Expected results</u>:

The GraphQL query returns the role.

<u>Actual results</u>:

The role for the company is null.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
