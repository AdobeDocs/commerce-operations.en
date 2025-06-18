---
title: 'ACSD-65822: Bundle and configurable product quantities not reflected correctly in "Shopping Cart"'
description: Apply the ACSD-65822 patch to fix the Adobe Commerce issue where the quantity was showing as 0 in the Admin customer shopping cart section when adding bundle products.
feature: Admin Workspace, Checkout, Orders
role: Admin, Developer
---

# ACSD-65822: Bundle and configurable product quantities not reflected correctly in "Shopping Cart"

The ACSD-65822 patch fixes the issue where bundle and configurable product quantities don't display correctly in the "Shopping Cart" section under Customer Activities. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.65 is installed. The patch ID is ACSD-65822. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.4.9.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.7-p5

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.7-p5

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Issue where bundle and configurable product quantities don't display correctly in the "Shopping Cart" section under Customer Activities.

<u>Steps to reproduce</u>:

1. Create a user in Frontend
2. Create Bundle product
3. As logged in user, add the bundle products to the shopping cart with some quantity
4. Go to admin > customer and select the customer created in step1
5. click on new order
6. On left hand side you can see the customer activities Shopping cart section and you will be able to see the bundle products  qty

<u>Expected results</u>:

Bundle item qty should show be same as frontend

<u>Actual results</u>:

Bundle item qty showing as 0

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.