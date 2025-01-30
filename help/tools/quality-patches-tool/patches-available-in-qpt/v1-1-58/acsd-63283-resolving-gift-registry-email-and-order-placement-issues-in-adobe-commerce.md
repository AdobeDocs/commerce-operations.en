---
title: 'ACSD-63283: Resolving [!UICONTROL Gift Registry] email and order placement issues in Adobe Commerce'
description: Apply the ACSD-63283 patch to fix the Adobe Commerce issue where ordering items from the [!UICONTROL Gift Registry] causes an exception and ensures [!UICONTROL Gift Registry Updates] include only the correct items.
feature: Gift, Shopping Cart
role: Admin, Developer
exl-id: cff5b9e6-56ee-4df2-961a-6d90ec83c0c2
---
# ACSD-63283: Resolving [!UICONTROL Gift Registry] email and order placement issues in Adobe Commerce

The ACSD-63283 patch fixes the issue where ordering items from the [!UICONTROL Gift Registry] causes an exception and ensures [!UICONTROL Gift Registry Updates] include only the correct items. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.58 is installed. The patch ID is ACSD-63283. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.8.

>[!NOTE] 
>This patch replaces and extends the [ACSD-56280](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/patches-available-in-qpt/v1-1-44/acsd-56280-gift-registry-purchases-are-not-completed) QPT patch.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

Adobe Commerce (all deployment methods)  2.4.6-p3

**Compatible with Adobe Commerce versions:**

Adobe Commerce (all deployment methods) 2.4.4 - 2.4.7-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The [!UICONTROL Gift Registry] functionality in Adobe Commerce is impacted by two significant issues:

* When a customer places an order for items from their [!UICONTROL Gift Registry], the process fails due to an exception being triggered. 
* Additionally, the [!UICONTROL Gift Registry Updates] email sent to the registry owner incorrectly includes items from all gift registries, rather than restricting the updates to items in the specific registry being updated. 

<u>Steps to reproduce</u>:

1. Create two products: Product A and Product B.
1. Create two customers: Customer A and Customer B.
1. Log in as Customer A and create a new [!UICONTROL Gift Registry].
1. Navigate to Product A’s product page and add it to the [!UICONTROL Wishlist]. Open the [!UICONTROL Wishlist Page] and move Product A to the [!UICONTROL Gift Registry] using [!UICONTROL Add to Gift Registry].
1. Log in as Customer B, create a new [!UICONTROL Gift Registry], and add Product B to it.
1. As Customer B, share the [!UICONTROL Gift Registry] via email: **[!UICONTROL My Account] > [!UICONTROL Gift Registry] > [!UICONTROL Share]**.
1. Log out as Customer B.
1. Click on the link received in the email. Add Product B to the [!UICONTROL Cart] and place an order.

<u>Expected results</u>:

Customer B receives the email with updated items only from their gift registry.

<u>Actual results</u>:

Customer B receives the email with items from all gift registries.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.


## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
