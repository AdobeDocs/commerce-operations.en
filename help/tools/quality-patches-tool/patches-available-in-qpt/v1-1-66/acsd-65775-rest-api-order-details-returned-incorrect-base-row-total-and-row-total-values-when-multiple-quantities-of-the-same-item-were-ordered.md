---
title: 'ACSD-65775: REST API order details returned incorrect "base_row_total" and "row_total" values when multiple quantities of the same item were ordered'
description: Apply the ACSD-65775 patch to fix the Adobe Commerce issue where "base_row_total" and "row_total" in Order details contain single price in REST api response.
feature: REST
role: Admin, Developer
---

# ACSD-65775: REST API order details returned incorrect "base_row_total" and "row_total" values when multiple quantities of the same item were ordered

The ACSD-65775 patch fixes the issue where the REST API order details returned incorrect "base_row_total" and "row_total" values when multiple quantities of the same item were ordered. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.66 is installed. The patch ID is ACSD-65775. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.4.9.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.8

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.8

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Issue where the REST API order details returned incorrect "base_row_total" and "row_total" values when multiple quantities of the same item were ordered.

<u>Steps to reproduce</u>:

1. Create 2 products:
simple1 - $10
simple2 - $15
2. Create a new customer account
3. Add products to cart
simple1 - qty 2
simple2 - qty 3
4. Place order
5. Get admin token

```
POST rest/V1/integration/admin/token
{
  "username": "admin",
  "password": "123123q"
}
```

6. Get order info - GET rest/default/V1/orders/1

<u>Expected results</u>:

"base_row_total" and "row_total" should have row price - qty*item price

<u>Actual results</u>:

"base_row_total" and "row_total" contains single item price.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.