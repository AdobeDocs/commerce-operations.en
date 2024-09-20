---
title: "ACSD-47875: Can't add product to cart for store view scope with inventory management"
description: Apply the ACSD-47875 patch to fix the Adobe Commerce issue where a product cannot be added to a customer cart from Admin for a particular store view scope with inventory management.
feature: Inventory, Shopping Cart, Products
role: Admin, Developer
exl-id: fa5ecd65-704f-49bd-b3cc-3d60ff7e1dce
---
# ACSD-47875: Can't add product to cart for store view scope with inventory management

The ACSD-47875 patch fixes the issue where a product cannot be added to a customer cart from the Admin for a particular store view scope with inventory management. This patch is available when the [!DNL Quality Patches Tool (QPT)] 1.1.36 is installed. The patch ID is ACSD-47875. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.4-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.3.7 - 2.4.6-p2

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Admin users are unable to add a product to a customer cart using the **[!UICONTROL Manage Shopping Cart]** feature in the Admin for a particular store view scope with MSI installed.

<u>Prerequisites</u>:

[!DNL Adobe Commerce Inventory Management (MSI)] modules are installed and enabled.

<u>Steps to reproduce</u>:

1. Create a website, a store, and a store view.
1. Create an additional source other than *Default*.
1. Create a new stock, and assign it to the new website and the new source.
1. Create a new customer for the new website.
1. Assign a product to the new website only; unassign from the default website. 

    * Assign the new source and set Qty *above 0* for the new source and *0* for the default source.

1. Go to the **[!UICONTROL Customer Edit]** page in the Admin. Click **[!UICONTROL Manage Shopping Cart]**.
1. Change the store view scope to the new store view.
1. Go to the **[!UICONTROL Products]** section and search for the product.
1. Select the product and click **[!UICONTROL Add selections to my cart]**.

<u>Expected results</u>:

The product is added to the cart.

<u>Actual results</u>:

* The following error is thrown: *Product that you are trying to add is not available.*
* The product is not added to the shopping cart.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
