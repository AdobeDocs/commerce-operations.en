---
title: 'ACSD-63974: Fixes slow [!UICONTROL Requisition List] load time with pagination'
description: Apply the ACSD-63974 patch to fix the issue where the [!UICONTROL Requisition List] page takes a long time to load when there are too many items.
feature: B2B
role: Admin, Developer
---

# ACSD-63974: Fixes slow [!UICONTROL Requisition List] load time with pagination

The ACSD-63974 patch fixes the issue where the **[!UICONTROL Requisition List]** page takes a long time to load when there are too many items. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.61 is installed. The patch ID is ACSD-63974. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.7-p4

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.7-p4

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The **[!UICONTROL Requisition List]** page takes a long time to load when there are many items (2000+). This is due to the absence of pagination, causing all items to load at once.

<u>Steps to reproduce</u>:

1. Go to the **[!UICONTROL Admin]** > **[!UICONTROL Stores]** > *[!UICONTROL Settings]* > **[!UICONTROL Configuration]** > *[!UICONTROL General]* > **[!UICONTROL B2B features]**.
1. Set **[!UICONTROL Enable Company]** and **[!UICONTROL Enable Requisition List]** to `Yes`.
1. Generate 2000+ products by editing `simple_products` node in `setup/performance-toolkit/profiles/ce/small.xml`.
1. Run the command:

    ```bash
    bin/magento setup:perf:generate-fixtures ./setup/performance-toolkit/profiles/ce/small.xml
    ```

1. Create a customer and log in.
1. Add all products to the **[!UICONTROL Requisition List]**.
1. View the **[!UICONTROL Requisition List]** on the Storefront.


<u>Expected results</u>:

The page should load within a reasonable time.


<u>Actual results</u>:

The Page load time increases with the number of items because all items are loaded at once due to the absence of pagination.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: Upgrades and Patches > Apply Patches in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
