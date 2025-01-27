---
title: "ACSD-63182: Error occurs while saving a product after bundle product duplication"
description: Apply the ACSD-63182 patch to fix the Adobe Commerce issue where an error occurs while saving a product after a bundle product is duplicated with MSI enabled.
feature: Inventory, Catalog Management
Role: Admin, Developer
---

# ACSD-63182: Error occurs while saving a product after bundle product duplication

The ACSD-63182 patch fixes the issue where a simple product used as a bundle option could not be saved after the bundle product duplication. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.58 is installed. The patch ID is ACSD-63182. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.7-p3

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.7-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

An error occurs when saving a simple product used as a bundle option after duplicating the bundle product.

<u>Steps to reproduce</u>:

1. Create a new MSI source and stock.
1. Create two simple products: **p1** and **p2**.
1. Create a bundle product **b1** with **p1** and **p2** as bundled options.
1. Edit the **bundle product b1** and click ***[!UICONTROL Save and Duplicate]***.
1. Edit the **simple product p1** and click **[!UICONTROL Save]**. 

<u>Expected results</u>:

The product is saved without error.

<u>Actual results</u>:

The following error is displayed:
*Exception: Item (Magento\Catalog\Model\Product\Interceptor) with the same ID 'XXX' already exists.*

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
