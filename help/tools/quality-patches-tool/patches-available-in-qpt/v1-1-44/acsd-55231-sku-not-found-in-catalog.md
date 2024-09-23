---
title: 'ACSD-55231: SKU not found error while using quick order functionality'
description: Apply the ACSD-55231 patch to fix the Adobe Commerce issue where you get *'The SKU was not found in the catalog'* error when trying to add a product to the cart using quick order functionality.
feature: Products, Checkout, B2B
role: Admin, Developer
exl-id: 463c2c07-39ec-4b03-81f7-ec2f71f5af76
---
# ACSD-55231: SKU not found error while using quick order functionality

The ACSD-55231 patch fixes the issue where you get *'The SKU was not found in the catalog'* error when trying to add a product to the cart using quick order functionality. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.44 is installed. The patch ID is ACSD-55231. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.4-p3

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.3 - 2.4.6-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Getting *'the SKU was not found in the catalog'* error when searching for products to add to the cart using quick order functionality. 

<u>Steps to reproduce</u>:

1. Install Adobe Commerce with B2B modules.
1. Navigate to **[!UICONTROL Admin]** > **[!UICONTROL Stores]** > **[!UICONTROL Configuration]** > **[!UICONTROL B2B Features]** and set:
    * **[!UICONTROL Enable company]**: *Yes*
    * **[!UICONTROL Enable Shared Catalog]**: *Yes*
    * **[!UICONTROL Enable Quick Order]**: *Yes*
1. Save the above configuration.
1. Go to **[!UICONTROL Catalog]** > **[!UICONTROL Shared Catalogs]** and create a new shared catalog.
1. Navigate to **[!UICONTROL Customers]** > **[!UICONTROL All Customers]** and create a new customer:
    * In the group field, choose the recently created shared catalog and set *[!UICONTROL Allow remote shopping assistance]* to *Yes*.
1. Generate a simple product with SKU *p12*, associate it with the category *c1*, and then opt for the newly created shared catalog in the [!UICONTROL Product in Shared Catalog] section.
1. Run:

    ```
    bin/magento ind:rei 
    bin/magento c:f 
    bin/magento cron:run (multiple times)
    ```

1. Refresh the admin page.
1. Navigate to **[!UICONTROL Customers]** > **[!UICONTROL All Customers]** and edit the customer created previously.
1. Click **[!UICONTROL Login as customer]**.
1. Go to **[!UICONTROL Quick order]**.
1. Search the *p12* SKU and click on the **[!UICONTROL Product Suggestion]**.
1. Add this product to cart and place the order.
1. Return to **[!UICONTROL Quick Order]**, search for SKU *p12* again, and click on **[!UICONTROL Product Suggestion]**.

<u>Expected results</u>:

You are able to add the product to the cart using quick order functionality.

<u>Actual results</u>:

You are not able to add the product to the cart using the quick order functionality and get *'The SKU was not found in the catalog'* error when searching for the product SKU.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
