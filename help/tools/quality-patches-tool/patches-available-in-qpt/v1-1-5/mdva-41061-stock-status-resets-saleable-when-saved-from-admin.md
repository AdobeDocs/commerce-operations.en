---
title: 'MDVA-41061: Stock status resets to saleable when product saved from Admin'
description: The MDVA-41061 patch fixes the issue where the stock status resets to saleable when the product is saved from the Admin. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.5 is installed. The patch ID is MDVA-41061. The latest patch version is available in QPT 1.1.15 with MDVA-41061-V3 patch ID. Please note that the issue is fixed in Adobe Commerce 2.4.4.
feature: Admin Workspace, Orders, Products
role: Admin
exl-id: ddbc30ef-bc88-4878-8bd8-6880823819a2
---
# MDVA-41061: Stock status resets to saleable when product saved from Admin

The MDVA-41061 patch fixes the issue where the stock status resets to saleable when the product is saved from the Admin. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.5 is installed. The patch ID is MDVA-41061. The latest patch version is available in QPT 1.1.15 with MDVA-41061-V3 patch ID. Please note that the issue is fixed in Adobe Commerce 2.4.4.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

Adobe Commerce (all deployment methods) 2.4.2-p1

**Compatible with Adobe Commerce versions:**

Adobe Commerce (all deployment methods) 2.4.2 - 2.4.2-p2, 2.4.3 - 2.4.3-p2

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches). Use the patch ID as a search keyword to locate the patch.

## Issue

Stock status resets to saleable when the product is saved from the Admin.

<u>Prerequisites</u>:

Inventory modules is installed.

<u>Steps to reproduce</u>:

1. Create a simple product with Qty = 1.
1. Place an order using the product created in step 1.
1. Run cron - make sure `inventory.reservations.updateSalabilityStatus` queue is executed and product stock status has been changed to zero in the `cataloginventory_stock_status` table.
1. Check product on the frontend. It should be marked as **Out of Stock**.
1. Save product in the Admin without any changes.

<u>Expected results</u>:

* Stock status should not be updated.
* The product should be **Out of Stock** on the frontend.

<u>Actual results</u>:

* Simple product is marked as **In Stock** on the frontend.
* Users get *The requested qty is not available* message when trying to add it to the cart.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!DNL Quality Patches Tool] guide.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
