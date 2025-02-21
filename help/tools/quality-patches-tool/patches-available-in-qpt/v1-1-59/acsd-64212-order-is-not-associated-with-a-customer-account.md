---
title: 'ACSD-64212: [!UICONTROL Order] is not associated with a customer account when the account is created via [!DNL GraphQL] after placing the order'
description: Apply the ACSD-64212 patch to fix the Adobe Commerce issue where [!UICONTROL Order] is not associated with a customer account when the account is created via [!DNL GraphQL] after placing the order.
feature: GraphQL, Checkout, Customers
role: Admin, Developer
---
# ACSD-64212: [!UICONTROL Order] is not associated with a customer account when the account is created via [!DNL GraphQL] after placing the order

The ACSD-64212 patch fixes the issue where **[!UICONTROL Order]** is not associated with a customer account when the account is created via [!DNL GraphQL] after placing the order. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.59 is installed. The patch ID is ACSD-64212. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

Adobe Commerce (all deployment methods)  2.4.7-p3

**Compatible with Adobe Commerce versions:**

Adobe Commerce (all deployment methods) 2.4.5 - 2.4.7-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

**[!UICONTROL Order]** is not associated with a customer account when the account is created via [!DNL GraphQL] after placing the order.

<u>Steps to reproduce</u>:

1. Place a guest order on the frontend.
1. Send the following request to create the account:

```
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

```
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
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.


## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
