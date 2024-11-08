---
title: 'ACSD-60326: GraphQL query on customer [!UICONTROL Returns] status gives an error'
description: Apply the ACSD-60326 patch to fix the Adobe Commerce issue where an error occurs in the GraphQL query for customer [!UICONTROL Returns] status.
feature: GraphQL, Returns, Customers
role: Admin, Developer
exl-id: 5cfd7e0d-8703-43a0-86d3-e69612347534
---
# ACSD-60326: GraphQL query on customer [!UICONTROL Returns] status gives an error

The ACSD-60326 patch fixes the issue where an error occurs in the GraphQL query for customer [!UICONTROL Returns] status. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) 1.1.51 is installed. The patch ID is ACSD-60326. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.6-p2

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.7-p2

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

GraphQL query on customer [!UICONTROL Returns] status gives an error.

<u>Steps to reproduce</u>:

1. Initialize a fresh instance with sample data.
1. On the *[!UICONTROL Admin]* sidebar, go to **[!UICONTROL Stores]** > **[!UICONTROL Settings]** > **[!UICONTROL Configuration]** > **[!UICONTROL Sales]** > **[!UICONTROL RMA Settings]** and set **[!UICONTROL Enable RMA on Storefront]** to *Yes*.
1. Go to **[!UICONTROL Sales]** > **[!UICONTROL Shipping Settings]** > **[!UICONTROL Origin]** and fill out the address.
1. Change the password for the customer `roni_cost@example.com`.
1. Log in to the admin panel and place an order for the customer `roni_cost@example.com` with the following products:
    * *WSH12-32-Red*
    * *WSH12-32-Purple*
    * *WSH12-32-Green*
1. Create an *[!UICONTROL Invoice]* and *[!UICONTROL Shipment]* for this order.
1. Select **[!UICONTROL Create Returns]**.
1. Go to **[!UICONTROL Return Items]** > **[!UICONTROL Add Items]** and:
    * Select *WSH12-32-Red* and *WSH12-32-Purple*
    * Click **[!UICONTROL Add Selected Products to returns]**:
        * Set **[!UICONTROL Requested]** = *1*
        * Set **[!UICONTROL Return Reason]** to *Out of Service*
        * Set **[!UICONTROL Item Condition]** to *Opened* 
        * Set **[!UICONTROL Resolution]** to *Refund*
    * Click **[!UICONTROL Submit Returns]**.
1. Open **[!UICONTROL Returns]** and select **[!UICONTROL Return Items]** on the left.
    * Set **[!UICONTROL Authorized]** = *1* for both the products
    * Set **[!UICONTROL Status]** as *Authorized* for *WSH12-32-Purple*
    * Set **[!UICONTROL Status]** as *Denied* for *WSH12-32-Red*
    * Click **[!UICONTROL Save]**
1. Create a new order with the same products.
1. Create an *[!UICONTROL Invoice]*, *[!UICONTROL Shipment]*, and *[!UICONTROL Returns]* for the same products. Authorize both and proceed until the end of the [!UICONTROL Returns] process.
1. Generate a customer token using the following GraphQL query:

    ```GraphQL
     mutation {
      generateCustomerToken(email: "roni_cost@example.com", password: "password") {
        token
       }
    }
    ```

1. Authorize with the received token and perform following query:

    ```
    {
    customer {
        returns(pageSize: 20, currentPage: 1) {
         total_count
            items {
                uid
                number
                status
                created_at
            }
        }
    }
    }
    ```

<u>Expected results</u>:

The query does not show any error. The status of the second return is not *null*.

<u>Actual results</u>:

The query returns an internal server error:

```
    {
    "errors": [
        {
            "message": "Internal server error",
            "locations": [
                {
                    "line": 8,
                    "column": 5
                }
            ],
            "path": [
                "customer",
                "returns",
                "items",
                1,
                "status"
            ]
        }
    ],
    "data": {
        "customer": {
            "returns": {
                "total_count": 2,
                "items": [
                    {
                        "uid": "MQ==",
                        "number": "000000001",
                        "status": "PARTIALLY_AUTHORIZED",
                        "created_at": "2024-07-09 10:35:55"
                    },
                    {
                        "uid": "Mg==",
                        "number": "000000002",
                        "status": null,
                        "created_at": "2024-07-09 10:50:02"
                    }
                ]
            }
        }
    }
    } 
```

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!UICONTROL Quality Patches Tool] guide.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
