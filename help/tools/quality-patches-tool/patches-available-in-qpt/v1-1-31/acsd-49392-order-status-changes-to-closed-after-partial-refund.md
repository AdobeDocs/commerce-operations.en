---
title: 'ACSD-49392: Order status changes to closed after partial refund'
description: Apply the ACSD-49392 patch to fix the Adobe Commerce issue where the order status changes to closed after a partial refund for a bundled product.
feature: Orders
role: Admin
exl-id: e12cbf2d-219e-4cb5-a226-6c7ae4929549
type: Troubleshooting
---
# ACSD-49392: Order status changes to closed after partial refund

>[!NOTE]
>
>The patch ACSD-49392 was replaced with patch [ACSD-57003](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/patches-available-in-qpt/v1-1-46/acsd-57003-order-status-changed-to-complete-instead-of-processing) for versions 2.4.6-p7 to 2.4.6-p10.

The ACSD-49392 patch fixes the issue where the order status changes to closed after a partial refund for a bundled product. This patch is available when the [!DNL Quality Patches Tool (QPT)] 1.1.31 is installed. The patch ID is ACSD-49392. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.5-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.3.7 - 2.3.7-p4 and 2.4.1 - 2.4.6-p6

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Order status changes to closed after a partial refund for a bundled product.

<u>Steps to reproduce</u>:

1. Log in to Adobe Commerce and create any bundled product or use the existing bundled product.
1. Place an order with this bundled product with a quantity greater than 1.
1. Go to admin, and open the order created in step 2 from **[!UICONTROL Sales]** > **[!UICONTROL Order]** and create an invoice. Observe the order status. It will be in processing.
1. Create a partial credit memo (do not refund for all products in the bundle).
1. Check the order status.

<u>Expected results</u>

After creating a partial credit memo for the bundled product, the order status is in processing.

<u>Actual results</u>

After creating a partial credit memo for the bundled product, the order status is complete.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!UICONTROL Quality Patches Tool] guide.


For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
