---
title: 'ACSD-64137: Searching for pickup locations by zip code does not work properly for Dutch localization'
description: Apply the ACSD-64137 patch to fix the issue where searching for pickup locations by zip code does not work properly for Dutch localization.
feature: Shipping/Delivery
role: Admin, Developer
---

# ACSD-64137: searching for pickup locations by zip code did not work properly for Dutch localization

The ACSD-64137 patch fixes the issue where searching for pickup locations by zip code does not work properly for Dutch localization. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.60 is installed. The patch ID is ACSD-64137. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.7-p2

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.7-p4

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Fixes the issue where searching for pickup locations by zip code does not work properly for Dutch localization. After the fix, the pickup location search will provide results based on zip code.

<u>Steps to reproduce</u>:

1. Install clean instance with inventory modules.
1. Create a custom Stock.
1. Create two sources with Netherlands addresses and assign to the stock (post code 7311ER and 7311AE).
1. Create a simple product and add inventory.
1. Enable In-Store Delivery navigating to **[!UICONTROL Stores]** > **[!UICONTROL Configuration]** > **[!UICONTROL Sales]** > **[!UICONTROL Delivery Methods]**
1. **[!UICONTROL Enable Offline Calculation Stores]** > **[!UICONTROL Configuration]** > **[!UICONTROL Catalog]** > **[!UICONTROL Inventory]** > **[!UICONTROL Distance Provider for Distance Based SSA]**.
1. Run below command to import geo names for NL country.

    ```bash
    bin/magento inventory-geonames:import NL
    ```

1. Add the product to cart and go to shipping step.
1. Select [!UICONTROL Pickup] in **[!UICONTROL Store]** and select the button to select other stores.
1. Type *7311* or *7311AE* in the **[!UICONTROL Select Store model]**.


**Expected results**: 

* Matched stores should be populated

**Actual results**:

* No Results found

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.


## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
