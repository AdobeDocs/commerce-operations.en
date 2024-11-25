---
title: 'ACSD-60267: FPT applies incorrectly when products are added through configurable product options'
description: Apply the ACSD-60267 patch to fix the Adobe Commerce issue where the fixed product tax (FPT) applies correctly when adding simple products directly to the cart, but fails when selecting the same products through configurable product options.
feature: Taxes
role: Admin, Developer
---
# ACSD-60267: FPT applies incorrectly when products are added through configurable product options

The ACSD-60267 patch fixes the issue where the fixed product tax (FPT) applies correctly when adding simple products directly to the cart, but fails when selecting the same products through configurable product options. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) 1.1.54 is installed. The patch ID is ACSD-60267. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.6-p5

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.7-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Fixed Product Tax (FPT) works properly when simple products with FPT are added to the cart, but FPT isn't added when products are added via configurable product selection.

<u>Steps to reproduce</u>:

1. Set *[!UICONTROL Enable FPT]* to *Yes* by navigating to *Admin* > **[!UICONTROL Configuration]** > **[!UICONTROL Sales]** > **[!UICONTROL Tax]** > **[!UICONTROL Fixed Product Taxes]**.
1. Create an FPT attribute and assign it to an *[!UICONTROL Attribute Set]*.
1. Open **[!UICONTROL Stores]** > **[!UICONTROL Attributes]** > **[!UICONTROL Product]**.
1. For *[!UICONTROL Default Label]*, enter a label that identifies the attribute.
1. Set *[!UICONTROL Catalog Input for Store Owner]* to *[!UICONTROL Fixed Product Tax]*.
1. Create a new tax and zone and assign it to a new **Tax Rule**.
1. Create a configurable product with two simple products.
1. Now assign two different FPT values to those simple products.
1. Reindex and check the prices on the storefront.
1. Add the products to the cart and check the sub-totals.

<u>Expected results</u>:

* The *[!UICONTROL Catalog]* page shows prices including FPT. 
* Subtotals in the cart include FPT.

<u>Actual results</u>:

* The *[!UICONTROL Catalog]* page doesn't show the prices including the FPT value. 
* Subtotals and summary are invalid.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.

