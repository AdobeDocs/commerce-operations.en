---
title: 'ACP2E-3918: Checkout failed for logged-in company customers using in-store pickup without a default billing address'
description: Apply the ACP2E-3918 patch to fix the Adobe Commerce issue where checkout would fail if a logged-in company customer without any default addresses attempted to create a purchase order with in-store pickup.
feature: [!DNL B2B], Company, Purchase Order
role: Admin, Developer
---

# ACP2E-3918: Checkout failed for logged-in company customers using in-store pickup without a default billing address

The ACP2E-3918 patch fixes the issue where checkout failed for logged-in company customers using in-store pickup without a default billing address. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.66 is installed. The patch ID is ACP2E-3918. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.4.9.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.7-p4

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.5 - 2.4.8

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Issue where checkout failed for logged-in company customers using in-store pickup without a default billing address.

<u>Steps to reproduce</u>:

1. Enable Purchase Orders:
1. Create a Company and enable Purchase Orders for it
1. Create a Company User Without Saved Addresses:
1. Enable the In-Store Delivery shipping method
1. Add Inventory Source
1. Add Inventory Stock
1. Assign Inventory to a Product:
1. On frontend login as company user
1. Add Products to Cart
1. Proceed to Checkout:
1. Select In-Store pick up on shipping step
1. Proceed to the payment step

<u>Expected results</u>:

Checkout payment step should be opened
No errors should be present in browser console

<u>Actual results</u>:

Checkout payment step is not opened
The following JS error could be observed in browser console:

```
        Uncaught TypeError: Unable to process binding "text: function(){return currentBillingAddress().street.join(', ') }"
        Message: Cannot read properties of undefined (reading 'join')
```

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.