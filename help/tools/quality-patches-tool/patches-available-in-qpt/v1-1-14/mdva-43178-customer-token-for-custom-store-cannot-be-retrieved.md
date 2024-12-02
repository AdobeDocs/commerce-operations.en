---
title: 'MDVA-43178: Customer token for custom store cannot be retrieved in GraphQL'
description: The MDVA-43178 patch fixes the issue where the customer token for a custom store cannot be retrieved in GraphQL. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) 1.1.14 is installed. The patch ID is MDVA-43178. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.5.
feature: GraphQL
role: Admin
exl-id: 8dd9c9e7-573c-4c7a-8fd0-3b3886649af3
---
# MDVA-43178: Customer token for custom store cannot be retrieved in GraphQL

The MDVA-43178 patch fixes the issue where the customer token for a custom store cannot be retrieved in GraphQL. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) 1.1.14 is installed. The patch ID is MDVA-43178. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.5.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.3-p1 - 2.4.4

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches). Use the patch ID as a search keyword to locate the patch.

## Issue

Customer token for a custom store cannot be retrieved in GraphQL.

<u>Steps to reproduce</u>:

1. Create two Store Views for the default store.
1. Create a new Website, one Store, and one Store View. Name this Store View 'test3'.
1. Create a customer for the new website.
1. Generate API admin token:

    `http://domain/rest/all/V1/integration/admin/token`

    <pre>
    <code class="language-graphql">
    {
      "username": "login",
      "password": "password"
    }
    </code>
    </pre>

1. Send GraphQL to retrieve customer token as an admin, use the admin token for authorization, with "store" = "test3" in the header:

    <pre>
    <code class="language-graphql">
    mutation{
      generateCustomerTokenAsAdmin(input: {
        customer_email: "<customer_email>"
        }){
          customer_token
        }
      }
      </code>
      </pre>

<u>Expected results</u>:

Customer token is generated.

<u>Actual results</u>:

Customer token is not generated. Merchants get *Customer email provided does not exist* in response.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!DNL Quality Patches Tool] guide.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
