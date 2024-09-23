---
title: 'ACSD-59229: Customer group data misallocation due to an outdated X-Magento-Vary value'
description: Apply the ACSD-59229 patch to fix the Adobe Commerce issue where customer group-related information is saved in the wrong segment because of an outdated X-Magento-Vary value in the request.
feature: Customers, Personalization, Marketing Tools
role: Admin, Developer
exl-id: 090b674a-5103-48cd-9426-41166bf9272c
---
# ACSD-59229: Customer group data misallocation due to an outdated X-Magento-Vary value

The ACSD-59229 patch fixes the issue where customer group-related information is saved in the wrong segment because of an outdated X-Magento-Vary value in the request. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.50 is installed. The patch ID is ACSD-59229. Please note that the issue is fixed in 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.4-p8

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.6-p7

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Customer group-related information is saved in the wrong segment because of an outdated X-Magento-Vary value in the request.

<u>Prerequisites</u>:

Ensure that Adobe Commerce B2B with sample data is installed and [!DNL Varnish] is configured.

<u>Steps to reproduce</u>:

1. Set up advanced pricing for the [!DNL SKU 24-MB01]:
    1. [!UICONTROL Regular price] = *9999$*
    1. [!UICONTROL Catalog and Tier Price]:
        * *Wholesale* = *$200* 
         * *Retailer* = *$30* 

1. Create two customer accounts.
1. Assign both customers to the **Wholesale** group.
1. Open two different browser sessions and log in with each customer.
1. Navigate to the **[!UICONTROL 24-MB01]** product page for each customer and verify that the price displayed is *$200*.
1. Change the customer group for one of the customers to **Retail**.
1. Clear the cache using the command: `bin/magento cache:flush full_page`.
1. Refresh the product page for each customer.

<u>Expected results</u>:

1. The retail customer can see the correct price of *$30* for the product.
1. The wholesale customer can see the correct price of *$200* for the product.

<u>Actual results</u>:

1. The retail customer can see the correct price of *$30* for the product.
1. The wholesale customer sees an incorrect price of *$30* (retail price) for the product.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
