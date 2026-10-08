---
title: 'ACSD-61528: Retrieving roles using GraphQL returns no results'
description: Apply the ACSD-61528 patch to resolve the Adobe Commerce issue where retrieving roles from the company's administrator using GraphQL always returns a null result.
feature: GraphQL, B2B, Companies, Roles/Permissions
role: Admin, Developer
exl-id: 81d78746-e723-4b18-860c-d973158b469c
type: Troubleshooting
product_v2:
  - id: eadea719-cf89-469b-a6fd-a236a7138047
    internal-label: Commerce
feature_v2:
  - id: e9004f3c-09ae-5d24-acd2-fa0987fdb66e
    internal-label: Companies
  - id: e439352c-5b67-587d-b34e-d2a0aa5a0242
    internal-label: Roles/Permissions
  - id: c32adafa-ed01-4b31-997e-2413013911b0
    internal-label: Integrations
  - id: bd989d82-1e15-4534-88db-f1f51dd77ffa
    internal-label: Accounts
subfeature_v2:
  - id: e396cff5-f586-484c-89f0-7f1da3308f92
    internal-label: GraphQL
  - id: f56d26ed-050b-4fb7-b29b-8e6e994e80a2
    internal-label: B2B
role_v2:
  - id: c66ffd68-0f65-42bb-aa23-b4020f12e0bd
    internal-label: Admin
  - id: ff6a42d2-313e-452e-93a6-792e4fad9ff8
    internal-label: Developer
level_v2:
  - id: d378ca77-2da1-4f39-ad92-1917fe974a38
    internal-label: Experienced
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
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/en/docs/commerce-on-cloud/user-guide/develop/upgrade/apply-patches) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
