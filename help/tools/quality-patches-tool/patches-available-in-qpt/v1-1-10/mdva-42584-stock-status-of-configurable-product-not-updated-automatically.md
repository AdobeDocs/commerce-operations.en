---
title: 'MDVA-42584: Stock status of configurable product not updated automatically'
description: The MDVA-42584 patch solves the issue where the stock status of the configurable product is not updated automatically when its simple product is updated. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.10 is installed. The patch ID is MDVA-42584. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.5.
feature: Configuration, Orders, Products
role: Admin
exl-id: 6311f069-f08f-4d58-9f4b-fa1246c02640
type: Troubleshooting
---
# MDVA-42584: Stock status of configurable product not updated automatically

The MDVA-42584 patch solves the issue where the stock status of the configurable product is not updated automatically when its simple product is updated. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.10 is installed. The patch ID is MDVA-42584. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.5.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.2-p2

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.2 - 2.4.2-p2

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches). Use the patch ID as a search keyword to locate the patch.

## Issue

Stock status of the configurable product in the backend is not updated automatically when its simple product is set to **In Stock** through API or import.

<u>Prerequisites</u>:

MSI installed.

<u>Steps to reproduce</u>:

1. Create a configurable product, **InvCheck001**, with two options: **InvCheck001-M** and **InvCheck001-L**.
1. Both the simple products should have Quantity and they should be **In Stock** so that the configurable product is also **In Stock** in the backend.
1. Now, update both simple products and set Quantity to **0** and Stock Status to **Out of Stock**.
1. Refresh the configurable product and verify the stock status is updated to **Out of Stock**.
1. Use the following API endpoint and set the simple product **InvCheck001-M** to **In Stock** with Quantity > 0.

    ```JSON
    /rest/V1/inventory/source-items

    {
      "sourceItems":
      [
        {
          "sku": "InvCheck001-M",
          "source_code": "default",
          "quantity": 10,
          "status": 1
        }
      ]
    }
    ```
    
1. Go to the backend and verify the quantity and stock status of the simple product **InvCheck001-M**. It is updated to **In stock**.
1. Refresh the configurable product and check the stock status.

<u>Expected results</u>:

The stock status of the configurable product **InvCheck001** in the backend is updated automatically to **In Stock**.

<u>Actual results</u>:

The stock status of the configurable product is still **Out of Stock**.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!DNL Quality Patches Tool] guide.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
