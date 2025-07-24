---
title: 'ACSD-65331: Selected store in [!UICONTROL Pick in Store] cleared after returning to checkout'
description: Apply the ACSD-65331 patch to fix the Adobe Commerce issue where the selected store under the [!UICONTROL Pick In Store] option is cleared when users repeatedly return to the checkout page.
feature: Inventory
role: Admin, Developer
type: Troubleshooting
exl-id: 10aaf898-feca-4485-90f6-6b3a9ea013b2
---
# ACSD-65331: Selected store in **[!UICONTROL Pick in Store]** cleared after returning to checkout

The ACSD-65331 patch fixes the issue where the selected store under the **[!UICONTROL Pick In Store]** option is cleared when users repeatedly return to the checkout page. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.65 is installed. The patch ID is ACSD-65331. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.4.9.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.7-p3

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.7-p5

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The selected store under the **[!UICONTROL Pick In Store]** option is cleared when users repeatedly return to the checkout page. 

<u>Steps to reproduce</u>:

1. Enable **[!UICONTROL In-Store Delivery]** by navigating to **[!UICONTROL Stores]** > **[!UICONTROL Configuration]** > **[!UICONTROL Sales]** > **[!UICONTROL Delivery Methods]** > **[!UICONTROL In-Store Delivery]**.
1. Configure a valid [!DNL Google] API key for [!UICONTROL Google Distance Provider] by navigating to **[!UICONTROL Stores]** > **[!UICONTROL Configuration]** > **[!UICONTROL Catalog]** > **[!UICONTROL Inventory]** > **[!UICONTROL Google Distance Provider]**.
1. Go to **[!UICONTROL Stores]** > **[!UICONTROL Sources]** > **[!UICONTROL Add New Source]** to add a new source with the following details:

    * **[!UICONTROL Latitude]**: *41.917344*
    * **[!UICONTROL Longitude]**: *-88.102569*
    * **[!UICONTROL Use as Pickup Location]**: *Yes*
    * **[!UICONTROL Country]**: *United States*
    * **[!UICONTROL State]**: *Illinois*
    * **[!UICONTROL City]**: *Carol Stream*
    * **[!UICONTROL Street]**: *565 E. Fullerton Ave.*
    * **[!UICONTROL Postcode]**: *60188*

1. Go to **[!UICONTROL Stores]** > **[!UICONTROL Stocks]** > **[!UICONTROL Add New Stock]** to create a new stock.

    Assign the newly created source and the main website to this stock.
1. Edit any product and:

    1. Assign it to the newly created source.
    1. Set its status to *[!UICONTROL In Stock]* and quantity to greater than 0.

1. Run your reindexers.
1. On the storefront, create a new customer and set a California address as the default billing and shipping address.
1. Add an additional Illinois address to the same customer (non-default).
1. Add the configured product to the cart and proceed to **[!UICONTROL Checkout]**.
1. Select the Illinois address, choose **[!UICONTROL Pick In Store]** as the shipping method, and click **[!UICONTROL Next]**.
1. Wait for the source to load and click **[!UICONTROL Next]**.
1. Navigate back to the homepage.
1. Revisit the **[!UICONTROL Checkout]** page.

<u>Expected results</u>:

The selected store should remain available under **[!UICONTROL Pick In Store]**.

<u>Actual results</u>:

The shipping step starts to load and redirects to **[!UICONTROL Pick In Store]**, but no store is visible.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
