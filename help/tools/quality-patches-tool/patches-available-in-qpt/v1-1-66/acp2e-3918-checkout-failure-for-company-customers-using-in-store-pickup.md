---
title: 'ACP2E-3918: Checkout failure for company customers using in-store pickup'
description: Apply the ACP2E-3918 patch to fix the Adobe Commerce issue where checkout fails for logged-in company customers using in-store pickup without a default billing address.
feature: B2B, Company, Purchase Order
role: Admin, Developer
type: Troubleshooting
---

# ACP2E-3918: Checkout failure for company customers using in-store pickup

The ACP2E-3918 patch fixes the issue where checkout fails for logged-in company customers using in-store pickup without a default billing address. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.66 is installed. The patch ID is ACP2E-3918. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.4.9.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.7-p4

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.5 - 2.4.8

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Issue where checkout fails when a logged-in company customer without a default address attempts to place a purchase order using in-store pickup.

<u>Steps to reproduce</u>:

1. Enable Purchase Orders in the Admin.
1. Create a Company and enable Purchase Orders for it.
1. Create a Company User without any saved addresses.
1. Enable the In-Store Delivery shipping method.
1. Add an Inventory Source and Inventory Stock.
1. Assign Inventory to a product.
1. On the frontend, log in as the company user.
1. Add products to the cart and proceed to Checkout.
1. Select In-Store Pickup during the shipping step.
1. Proceed to the payment step.

<u>Expected results</u>:

The payment step should load successfully during checkout, and no errors should appear in the browser console.

<u>Actual results</u>:

The payment step does not load, and the browser console displays the following JavaScript error:

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
