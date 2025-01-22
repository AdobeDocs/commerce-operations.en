---
title: 'ACSD-62951: Fixes missing items and totals in [!UICONTROL Credit Memo] emails sent via REST API'
description: Apply the ACSD-62951 patch to fix the Adobe Commerce issue where the[!UICONTROL Credit Memo] email is sent without including the order items and totals.
feature: REST
role: Admin, Developer
---
# ACSD-62951: Fixes missing items and totals in *[!UICONTROL Credit Memo]* emails sent via REST API

The ACSD-62951 patch fixes the issue where the[!UICONTROL Credit Memo] email is sent without including the order items and totals. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.57 is installed. The patch ID is ACSD-62951. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

Adobe Commerce (all deployment methods) 2.4.5-p10

**Compatible with Adobe Commerce versions:**

Adobe Commerce (all deployment methods) 2.4.4 - 2.4.7-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The *[!UICONTROL Credit Memo]* email sent when a credit memo is created via the REST API `POST V1/order/:orderId/refund` does not include the order items and totals.

<u>Steps to reproduce</u>:

1. Create an order with any product.
1. Ship and invoice the order. Ensure that the invoice email is sent, and it includes the product details.
1. Generate an Admin Token using the API client.
1. Use the token to create a credit memo via the REST API.
    1. Endpoint: `POST V1/order/:orderId/refund`
    1. Request payload: 

        ```
        {  
            "notify": true,  
            "items": [  
                {  
                    "order_item_id": 1,  
                    "qty": 1  
                }  
            ]  
        }  
        ```

<u>Expected results</u>:

The *[!UICONTROL Credit Memo]* email should include the refunded items and totals

<u>Actual results</u>:

The *[!UICONTROL Credit Memo]* email does not contain any items or totals, resulting in incomplete information.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.


## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
