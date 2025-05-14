---
title: "ACSD-64753: The pre-selected store in 'Pickup in Store' doesn't update when the shipping address changes, even if it is outside the store's radius"
description: Apply the ACSD-64753 patch to fix the Adobe Commerce issue where the pre-selected store did not update when a new shipping address was entered outside the selected store's service radius.
feature: Inventory
role: Admin, Developer
---

# ACSD-64753: The pre-selected store in "Pickup in Store" doesn't update when the shipping address changes, even if it is outside the store's radius

The ACSD-64753 patch fixes the issue where the pre-selected store did not update when a new shipping address was entered outside the selected store's service radius. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.63 is installed. The patch ID is ACSD-64753. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.4.9.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.7-p3

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.7-p4

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The pre-selected store did not update when a new shipping address was entered outside the selected store's service radius.

<u>Steps to reproduce</u>:

1. Enable In-Store Delivery (**[!UICONTROL Stores]** > **[!UICONTROL Settings]** > **[UICONTROL Configuration]** > **[!UICONTROL Sales]** > **[!UICONTROL Delivery Methods]** > **[!UICONTROL In-Store Delivery]**).
1. Provide a valid Google API Key for Google Distance Provider (**[!UICONTROL Stores]** > **[!UICONTROL Configuration]** > **[!UICONTROL Catalog]** > **[!UICONTROL Inventory]** >  **[!UICONTROL Google Distance Provider]**).
1. Add a new source (**[!UICONTROL Stores]** > **[!UICONTROL Sources]** > **[!UICONTROL Add New Source]**):
    * Latitude 41.917344
    * Longitude -88.102569
    * Use as Pickup Location Yes
    * Country United States
    * State Illinois
    * City Carol Stream
    * Postcode 60188
1. Add a new Stock (**[!UICONTROL Stores]** > **[!UICONTROL Stock]** > **[!UICONTROL Add New Stock]**), assign the new source and the main website to it.
1. Edit any product, assign the product to the new Source, In Stock and qty > *0*.
1. Wait until the reindex is complete.
1. On the storefront, create a new customer, and then add a California address as default billing and shipping.
1. Add another non-default Illinois address to this customer.
1. Add the product to the cart and proceed to checkout.
1. Leave the California shipping address selected and choose **[!UICONTROL Pick in Store]** shipping method, and then **[!UICONTROL Next]**.

<u>Expected results</u>:

Since the California address is outside of the maximum search radius (200km), the Illinois Source should not be available to the customer.

<u>Actual results</u>:

The Illinois source can be picked and the customer can proceed to checkout.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
