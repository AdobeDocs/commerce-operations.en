---
title: 'ACSD-52202: Default stock salable qty changes to 0 in error when non-default stock set to 0 qty in order'
description: Apply the ACSD-52202 patch to fix the Adobe Commerce issue where a default stock salable quantity changes to 0 in error when non-default stock is set to 0 quantity in an order.
feature: Inventory, Products
role: Admin
exl-id: 8a3b5da4-cf16-41c8-b2d5-b740d638c745
---
# ACSD-52202: Default stock salable quantity changes to 0 in error when non-default stock set to 0 quantity in an order

The ACSD-52202 patch fixes the issue where a default stock salable quantity (qty) changes to 0 in error when non-default stock is set to 0 quantity in an order. This patch is available when the [!DNL Quality Patches Tool (QPT)] 1.1.35 is installed. The patch ID is ACSD-52202. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.5-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.3 - 2.4.6-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Default stock salable quantity changes to 0 in error when non-default stock is set to 0 quantity in an order.

<u>Steps to reproduce</u>:

1. Log in to the [!DNL Admin].
1. Create **website2**.
1. Create custom **source2**.
1. Create custom **stock2**.
1. Assign the **source2** and **stock2** to **website1** and the default source and stock to the default website.
1. Create a simple product and assign **qty** = *10* for default source and **qty** = *1* for the **source2** source.
1. Place an order with **qty** = *1* for **website2**.
1. Create an invoice and a shipment.
1. Check the simple product **salable quantity**.

<u>Expected results</u>:

The **salable quantity** = *10* for **source2**.

<u>Actual results</u>:

The **salable quantity** = *0* for both sources.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
