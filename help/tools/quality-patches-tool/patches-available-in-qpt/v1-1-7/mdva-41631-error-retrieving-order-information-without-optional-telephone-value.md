---
title: 'MDVA-41631: Error retrieving order information without optional "telephone" value'
description: The MDVA-41631 patch fixes the issue where users get an error retrieving order information without optional "telephone" value through [!DNL GraphQL]. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.7 is installed. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.4.
feature: Orders
role: Admin
exl-id: e56cea59-ffc1-4520-85ca-136cda613884
---
# MDVA-41631: Error retrieving order information without optional "telephone" value

The MDVA-41631 patch fixes the issue where users get an error retrieving order information without optional "telephone" value through [!DNL GraphQL]. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.7 is installed. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.4.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

Adobe Commerce (all deployment methods) 2.4.2-p1

**Compatible with Adobe Commerce versions:**

Adobe Commerce (all deployment methods) 2.4.1 - 2.4.3-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches). Use the patch ID as a search keyword to locate the patch.

## Issue

Users get an error retrieving order information without optional "telephone" value through [!DNL GraphQL].

<u>Steps to reproduce</u>:

1. Go to **Store** > **Configuration** > **Customers** > **Customer Configuration** > **Name and Address Options** > **Show Telephone** and set the phone number as optional.
1. Place an order using [!DNL GraphQL API] as a logged-in customer.
    * Don't set the telephone number when setting the billing and shipping addresses. Follow the instructions given in [[!DNL GraphQL] Checkout Tutorial](https://developer.adobe.com/commerce/webapi/graphql/tutorials/checkout/) in our developer documentation.
1. Retrieve the order using the [!DNL GraphQL] [`customerOrders` query](https://developer.adobe.com/commerce/webapi/graphql/schema/customer/queries/orders/).

<pre>
<code class="language-graphql">
{
  customer {
    firstname
    lastname
    suffix
    email

    orders(filter:{number:{eq:"000000001"}}){
        items{
          billing_address {
firstname
lastname
street
city
region
region_id
postcode
telephone
country_code
}
shipping_address {
firstname
lastname
street
city
region
region_id
postcode
telephone
country_code
}
        }
    }
  }
}
</code>
</pre>

<u>Expected results</u>:

Users get the order information.

<u>Actual results</u>:

Users get the following error: *"message": "Internal server error",*

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about the [!DNL Quality Patches Tool], refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!DNL Quality Patches Tool] guide.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
