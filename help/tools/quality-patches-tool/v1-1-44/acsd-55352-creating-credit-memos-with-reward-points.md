---
title: 'ACSD-55352: Creating credit memos with reward points'
description: Apply the ACSD-55352 patch to fix the Adobe Commerce issue where after creating a partial credit memo with customer reward points, the order status changes to *closed* and credit memo options disappear from the admin order page.
feature: Checkout, Orders
role: Admin, Developer
exl-id: 33ceb2e9-3cd5-4472-941a-e06c5c534f4a
---
# ACSD-55352: Creating credit memos with reward points

The ACSD-55352 patch fixes the issue where after creating a partial credit memo with customer reward points, the order status changes to *closed* and credit memo options disappear from the admin order page. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.44 is installed. The patch ID is ACSD-55352. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.6-p2

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.2 - 2.4.6-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

After creating a partial credit memo with customer reward points, the order status changes to *closed* and credit memo options disappear from the admin order page.

<u>Steps to reproduce</u>:

1. Log in to the Adobe Commerce Admin.
2. Go to **[!UICONTROL Stores]** > **[!UICONTROL Other Setting]** > **[!UICONTROL Reward Exchange Rates]** > **[!UICONTROL Add New Rate]**.
3. Add two rates:
    * *[!UICONTROL First]*:
        * *[!UICONTROL Direction]* = *Points to Currency* 
        * *[!UICONTROL Rate]* = *100*
        * *[!UICONTROL Upper Boundary]* = *100*
    * *[!UICONTROL Second]*:
        * *[!UICONTROL Direction]* = *Currency to Points*
        * *[!UICONTROL Rate]* = *100*
        * *[!UICONTROL Upper Boundary]* = *100* 
4. Create a simple product with the price of *$100* and with *Qty* : *100*.
5. Create a customer from the storefront.
6. Go to the backend again : **[!UICONTROL Customers]** > **[!UICONTROL All Customers]** > **[!UICONTROL Edit]** > **[!UICONTROL Reward Points]** > **[!UICONTROL Update Points]** > Add *100* and save the customer.
7. Go to the storefront and log in as the customer created previously.
8. Add the product to cart with *Qty* : *10*.
9. Go to **[!UICONTROL Checkout]** and use the available *100* reward points when prompted and place the order.
10. Go to **[!UICONTROL Admin]** > **[!UICONTROL Sales]** > **[!UICONTROL Orders]** > **[!UICONTROL Invoice]** and ship that order.
11. Go to [!UICONTROL Credit Memo] and update the *Qty to Refund* to *8*.
12. Tick the **[!UICONTROL Refund Reward Points]** checkbox and  click **[!UICONTROL Refund offline]**.
13. Try to refund the other two remaining products from the order, using the [!UICONTROL Credit Memo].

<u>Expected results</u>:

* The Admin creates [!UICONTROL Credit Memo] to return the remaining two products.
* The order status is *Completed*.

<u>Actual results</u>:

* Cannot create more [!UICONTROL Credit Memo].
* The order status is *Closed*.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
