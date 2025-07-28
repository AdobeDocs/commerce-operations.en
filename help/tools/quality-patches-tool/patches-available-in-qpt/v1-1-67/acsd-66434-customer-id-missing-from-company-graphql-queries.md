---
title: 'ACSD-66434: Customer ID missing from company GraphQL queries'
description: Apply the ACSD-66434 patch to fix the Adobe Commerce issue where customer ID is missing from the company GraphQL queries.
feature: B2B, GraphQL
role: Admin, Developer
---

# ACSD-66434: Customer ID missing from company GraphQL queries

The ACSD-66434 patch fixes the issue where customer ID is missing from company GraphQL queries. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.67 is installed. The patch ID is ACSD-66434. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.4.9.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.7-p5

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.6-p10 - 2.4.6-p11, 2.4.7-p3 - 2.4.8-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Issue where customer ID is missing from company GraphQL queries.

<u>Steps to reproduce</u>:

1. Install AC 2.4-develop with [!DNL B2B] and Inventory.
2. Enable and create a test company from Backend.
3. Generate the Bearer token for the previously created company admin using the following GraphQL mutation:

```
mutation {
  generateCustomerToken(email: "admin_email@example.com", password: "admin_password") {
    token
  }
}
```

4. Retrieve the customer's company structure with the token generated above, using the following GraphQL query:

```
query{
 company{
 id
 name
 legal_name
 structure{
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

An ID is expected so that it can then be passed into other mutations or queries.

<u>Actual results</u>:

'null' response in Customer entity for ID.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.