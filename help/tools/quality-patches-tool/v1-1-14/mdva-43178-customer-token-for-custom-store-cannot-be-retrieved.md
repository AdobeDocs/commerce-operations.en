---
title: 'MDVA-43178: Customer token for custom store cannot be retrieved in GraphQL'
description: The MDVA-43178 patch fixes the issue where the customer token for a custom store cannot be retrieved in GraphQL. This patch is available when the [Quality Patches Tool (QPT)](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.14 is installed. The patch ID is MDVA-43178. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.5.
exl-id: b2a8bf96-7534-41d2-b83b-58d8e0b6d076
feature: GraphQL
role: Admin
---
# MDVA-43178: Customer token for custom store cannot be retrieved in GraphQL

The MDVA-43178 patch fixes the issue where the customer token for a custom store cannot be retrieved in GraphQL. This patch is available when the [Quality Patches Tool (QPT)](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.14 is installed. The patch ID is MDVA-43178. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.5.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.3-p1 - 2.4.4

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://devdocs.magento.com/quality-patches/tool.html#patch-grid). Use the patch ID as a search keyword to locate the patch.

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

* Adobe Commerce or Magento Open Source on-premises: [Software Update Guide > Apply Patches](https://devdocs.magento.com/guides/v2.4/comp-mgr/patching/mqp.html) in our developer documentation.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://devdocs.magento.com/cloud/project/project-patch.html) in our developer documentation.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [Patches available in QPT](https://devdocs.magento.com/quality-patches/tool.html#patch-grid) in our developer documentation.
