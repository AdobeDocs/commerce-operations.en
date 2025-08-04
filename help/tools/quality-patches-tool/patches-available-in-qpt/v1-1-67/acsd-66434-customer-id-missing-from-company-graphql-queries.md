---
title: 'ACSD-66434: [!UICONTROL Customer ID] missing from company [!DNL GraphQL] queries'
description: Apply the ACSD-66434 patch to fix the Adobe Commerce issue where [!UICONTROL Customer ID] is missing from the company [!DNL GraphQL] queries.
feature: B2B, GraphQL
role: Admin, Developer
type: Troubleshooting
---

# ACSD-66434: [!UICONTROL Customer ID] missing from company [!DNL GraphQL] queries

The ACSD-66434 patch fixes the issue where **[!UICONTROL Customer ID]** is missing from company [!DNL GraphQL] queries. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.67 is installed. The patch ID is ACSD-66434. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.4.9.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.7-p5

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.6-p10 - 2.4.6-p11, 2.4.7-p3 - 2.4.8-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The [!DNL GraphQL] company query returns `null` for the **[!UICONTROL Customer ID]** in the company structure.

<u>Steps to reproduce</u>:

1. Install Adobe Commerce 2.4-develop with B2B and Inventory modules.
1. From the Admin, enable B2B features and create a test company.
1. Generate a bearer token for the company admin using the following [!DNL GraphQL] mutation:

```
mutation {
  generateCustomerToken(email: "admin_email@example.com", password: "admin_password") {
    token
  }
}
```

1. Use the generated token to retrieve the customer's company structure with the following [!DNL GraphQL] query:

```
query {
  company {
    id
    name
    legal_name
    structure {
      items {
        entity {
          __typename
          ... on Customer {
            firstname
            lastname
            email
            job_title
            id
          }
        }
      }
    }
  }
}
```

<u>Expected results</u>:

**[!UICONTROL Customer ID]** should be returned in the company [!DNL GraphQL] query.

<u>Actual results</u>:

**[!UICONTROL Customer ID]** returns as `null` in the company [!DNL GraphQL] query.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
