---
title: 'ACSD-62971: Stock sources import with non-numeric quantity values results in the quantity being set to 0'
description: Apply the ACSD-62971 patch to fix the Adobe Commerce issue where importing stock sources with non-numeric values in the 'quantity' column results in the quantity being set to 0.
feature: Data Import/Export, Inventory
role: Admin, Developer
---

# ACSD-62971: Stock sources import with non-numeric quantity values results in the quantity being set to 0

The ACSD-62971 patch fixes the issue where importing stock sources with non-numeric values in the 'quantity' column results in the quantity being set to 0. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.56 is installed. The patch ID is ACSD-62971. Please note that the issue was is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.7

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.7-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Fixes the issue where importing stock sources with non-numeric values in the **[!UICONTROL Quantity]** column results in the quantity being set to 0.

<u>Steps to reproduce</u>:

1. Create **[!UICONTROL Simple Product]** with qty=100
1. Do a **[!UICONTROL "Stock Sources"]** import using the file which has an incorrect quantity ("abc")

    ```table
    source_code    sku    status    quantity
      default     simple    1         abc
    ```

1. Check the quantity after the import.

<u>Expected results</u>:
The import data validation should fail.

<u>Actual results</u>:
The quantity of simple product has become 0, and the product is updated as [!UICONTROL "out of stock"].

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.

