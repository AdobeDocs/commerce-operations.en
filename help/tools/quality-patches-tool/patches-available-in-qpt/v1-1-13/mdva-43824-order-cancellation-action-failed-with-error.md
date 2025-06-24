---
title: 'MDVA-43824: Order cancellation action failed with error "You have not cancelled the item"'
description: 'The MDVA-43824 patch solves the issue where the order cancellation action failed with the error: *You have not cancelled the item*. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.13 is installed. The patch ID is MDVA-43824. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.5.'
feature: Orders
role: Admin
exl-id: 8c2d15a0-2f53-4583-bdf2-86746f61160f
type: Troubleshooting
---
# MDVA-43824: Order cancellation action failed with error "You have not cancelled the item"

The MDVA-43824 patch solves the issue where the order cancellation action failed with the error: *You have not cancelled the item*. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.13 is installed. The patch ID is MDVA-43824. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.5.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.3-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.3.6 - 2.3.7-p3, 2.4.1 - 2.4.4

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches). Use the patch ID as a search keyword to locate the patch.

## Issue

Order placed by a logged-in customer cannot be cancelled. The order cancellation action failed with the following error:

```
Zend_Db_Statement_Exception: SQLSTATE[23000]: Integrity constraint violation: 1452 Cannot add or update a child row: a foreign key constraint fails (`mer33515_ee24developpbdevelop`.`salesrule_customer`, CONSTRAINT `SALESRULE_CUSTOMER_RULE_ID_SEQUENCE_SALESRULE_SEQUENCE_VALUE` FOREIGN KEY (`rule_id`) REFERENCES `sequence_salesrule` (`sequen), query was: INSERT INTO `salesrule_customer` () VALUES (){code}
```

<u>Steps to reproduce</u>:

1. Create a sales rule (coupon type is either "Specific Coupon" or "No Coupon").
1. Go to the storefront and log in as a customer and add a product to the cart.
1. Go to the cart and apply the cart price rule if the cart price rule has a coupon as "Specific Coupon". The cart price rule should be applied successfully.
1. Go to checkout and place the order with any payment method.
1. Go to the Commerce Admin > **Sales** > **Orders**.
1. Open the order placed in Step 4.
1. Click on the **Cancel** button.

<u>Expected results</u>:

The order is cancelled successfully without any error.

<u>Actual results</u>:

The order cancellation action failed with the following error: *You have not cancelled the item.*

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!DNL Quality Patches Tool] guide.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
