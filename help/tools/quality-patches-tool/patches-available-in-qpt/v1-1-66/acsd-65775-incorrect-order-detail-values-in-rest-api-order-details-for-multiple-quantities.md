---
title: 'ACSD-65775: Incorrect `base_row_total` and `row_total` values in REST API order details for multiple quantities'
description: Apply the ACSD-65775 patch to fix the Adobe Commerce issue where the REST API order details return incorrect `base_row_total` and `row_total` values when multiple quantities of the same item are ordered.
feature: REST
role: Admin, Developer
type: Troubleshooting
---

# ACSD-65775: Incorrect `base_row_total` and `row_total` values in REST API order details for multiple quantities

The ACSD-65775 patch fixes the issue where the REST API order details return incorrect `base_row_total` and `row_total` values when multiple quantities of the same item are ordered. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.66 is installed. The patch ID is ACSD-65775. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.4.9.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.8

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.8

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The `base_row_total` and `row_total` in the order details REST API response show the unit price instead of the total price when multiple quantities of the same item are ordered.

<u>Steps to reproduce</u>:

1. Create two simple products: simple1 priced at $10 and simple2 priced at $15.
1. Create a new customer account.
1. Add simple1 to the cart with quantity 2 and simple2 with quantity 3.
1. Place the order using the customer account.
1. Obtain an admin token by sending a POST request to `/rest/V1/integration/admin/token` with the following payload:

    ```
    {
      "username": "admin",
      "password": "password"
    }
    ```

1. Retrieve the order details using a GET request to `/rest/default/V1/orders/1`.

<u>Expected results</u>:

`base_row_total` and `row_total` should reflect the total price calculated as quantity multiplied by item price (for example, 2 × $10 = $20 for simple1).

<u>Actual results</u>:

`base_row_total` and `row_total` return only the unit price (for example, $10 for simple1 instead of $20).

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
