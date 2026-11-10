---
title: 'ACSD-64212: Order not linked to a customer account created via [!DNL GraphQL] after placing order'
description: Apply the ACSD-64212 patch to fix the Adobe Commerce issue where an order does not get linked to a customer account that is created via [!DNL GraphQL] after placing the order.
feature: GraphQL, Checkout, Customers
role: Admin, Developer
exl-id: be62e635-2a61-41ed-9c1d-b2c54ee01024
type: Troubleshooting
product_v2:
  - id: eadea719-cf89-469b-a6fd-a236a7138047
    internal-label: Commerce
feature_v2:
  - id: 8cd50456-5eb0-5364-922a-f14161feb828
    internal-label: Checkout
  - id: 22bad240-8308-569b-a9d5-578f1ff890ca
    internal-label: Customers
  - id: c32adafa-ed01-4b31-997e-2413013911b0
    internal-label: Integrations
subfeature_v2:
  - id: e396cff5-f586-484c-89f0-7f1da3308f92
    internal-label: GraphQL
role_v2:
  - id: c66ffd68-0f65-42bb-aa23-b4020f12e0bd
    internal-label: Admin
  - id: ff6a42d2-313e-452e-93a6-792e4fad9ff8
    internal-label: Developer
level_v2:
  - id: d378ca77-2da1-4f39-ad92-1917fe974a38
    internal-label: Experienced
---
# ACSD-64212: Order not linked to a customer account created via [!DNL GraphQL] after placing order

The ACSD-64212 patch fixes the issue where an order does not get linked to a customer account that is created via [!DNL GraphQL] after placing the order. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.59 is installed. The patch ID is ACSD-64212. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

Adobe Commerce (all deployment methods)  2.4.7-p3

**Compatible with Adobe Commerce versions:**

Adobe Commerce (all deployment methods) 2.4.5 - 2.4.7-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Order is not linked to a customer account when the account is created via [!DNL GraphQL] after placing the order.

<u>Steps to reproduce</u>:

1. Place a guest order on the frontend.
1. Send the following request to create the account:

  ```graphql
  mutation CreateAccountAfterCheckout(
  $email: String!
  $firstname: String!
  $lastname: String!
  $password: String!
  $is_subscribed: Boolean!
  ) {
    createCustomer(
      input: {
        email: $email
        firstname: $firstname
        lastname: $lastname
        password: $password
        is_subscribed: $is_subscribed
      }
    ) {
      customer {
        email
        __typename
      }
      __typename
    }
  }

  ```

  ```json
  {
    "email": "guest@example.com",
    "firstname": "first",
    "lastname": "last",
    "password": "password",
    "is_subscribed": false
  }
  ```

<u>Expected results</u>:

The guest order is associated with the customer after the customer account is created.

<u>Actual results</u>:

Customer account was created, but the guest order is not associated with the customer.


## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/en/docs/commerce-on-cloud/user-guide/develop/upgrade/apply-patches) in the Commerce on Cloud Infrastructure guide.


## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
