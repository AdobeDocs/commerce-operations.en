---
title: 'ACSD-65164: Error message when reordering configurable product with a single checkbox custom option selected'
description: Apply the ACSD-65164 patch to fix the Adobe Commerce issue where the error message *Some of the selected item options are not currently available* occurs when reordering a configurable product with a single selected checkbox custom option.
feature: Products, Orders
role: Admin, Developer
---

# ACSD-65164: Error message when reordering configurable product with a single checkbox custom option selected

The ACSD-65164 patch fixes the issue where the error message *Some of the selected item options are not currently available* occurs when reordering a configurable product with a single selected checkbox custom option. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.62 is installed. The patch ID is ACSD-65164. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.6-p8

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.6 - 2.4.7-p4

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

When reordering a configurable product with a single selected checkbox custom option, the system returns an error message: *Some of the selected item options are not currently available*.

### Steps to replicate:

1. In the Admin Panel, go to **[!UICONTROL Catalog]** > **[!UICONTROL Products]** > **[!UICONTROL Add Product]** > **[!UICONTROL Simple Product]**. 
1. Under **[!UICONTROL Customizable Options]**, add a *Checkbox* option.
    * Set the checkbox option as *Required*.
    * Add two option values.
1. Navigate to the Storefront and log in as a registered customer.
1. Add the product to the cart with one checkbox option selected.
1. Go to the **[!UICONTROL Cart]** > **[!UICONTROL Proceed to Checkout]** > **[!UICONTROL Place an Order]**.
1. Go to **[!UICONTROL My Account]** > **[!UICONTROL Orders]** >  **[!UICONTROL Reorder]** to add the same product.

**Expected Results:**

The product should be added to the shopping cart successfully.

**Actual Results:**

An error message is displayed:

```
Could not add the product with SKU "24-MB01" to the shopping cart: Some of the selected item options are not currently available.
```


## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
