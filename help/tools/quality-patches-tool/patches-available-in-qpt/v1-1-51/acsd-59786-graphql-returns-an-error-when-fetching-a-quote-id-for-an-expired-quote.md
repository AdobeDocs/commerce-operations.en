---
title: 'ACSD-59786: GraphQL returns an error when fetching a `quote_id` for an expired quote'
description: Apply the ACSD-59786 patch to fix the Adobe Commerce issue where a GraphQL query returns an error when fetching a `quote_id` for an expired quote.
feature: GraphQL, Quotes, Companies
role: Admin, Developer
exl-id: 3c7aaa99-a2e0-44fe-9426-b24095615915
---
# ACSD-59786: GraphQL returns an error when fetching a `quote_id` for an expired quote

The ACSD-59786 patch fixes the issue where a GraphQL query returns an error when fetching a `quote_id` for an expired quote. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.51 is installed. The patch ID is ACSD-59786. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.6-p3

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.6 - 2.4.7-p3 

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

A GraphQL query returns an error when fetching a `quote_id` for an expired quote.

<u>Steps to reproduce</u>:

1. Enable **[!UICONTROL Companies]** and **[!UICONTROL Purchase Orders]**.
     * **[!UICONTROL Stores]** > **[!UICONTROL Configuration]** > **[!UICONTROL General]** > **[!UICONTROL B2B Features]** and set **[!UICONTROL Enable Company]** to *Yes*.
     * **[!UICONTROL Stores]** > **[!UICONTROL Configuration]** > **[!UICONTROL General]** > **[!UICONTROL B2B Features]** > **[!UICONTROL Order Approval Configuration]** and set **[!UICONTROL Enable Purchase Orders]** to *Yes*.
1. Create a new company and set **[!UICONTROL Enable Purchase Orders]** to *Yes* for the same.
1. Create a simple product and assign it to a category.
1. Log in to Storefront using the company Admin account and create a new order using **[!UICONTROL Purchase Order]** as the payment method.
1. Change the **[!UICONTROL Quote Lifetime (days)]**.
    * **[!UICONTROL Stores]** > **[!UICONTROL Configuration]** > **[!UICONTROL Sales]** > **[!UICONTROL Checkout]** > **[!UICONTROL Shopping Cart]** > **[!UICONTROL Quote Lifetime (days)]** = *0*.
1. Run the command `bin/magento c:f`.
1. Go to the DB `quote_table` and change the `created_at` and `updated_at` values with one day in the past.
1. Run the command `bin/magento cron:run --group="sales_clean_quotes`.
1. Execute the GraphQL request given below using an authorized token for the Admin who creates the **[!UICONTROL Purchase Order]**:

   ```GraphQL
   {
       customer {
           purchase_order(uid: "MQ==") {
               quote {
                   id
               }
           }
       }
   } 
   ```

<u>Expected results</u>:

The GraphQL query returns the `quote_id`.

<u>Actual results</u>:

The GraphQL query returns an internal server error.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!UICONTROL Quality Patches Tool] guide.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
