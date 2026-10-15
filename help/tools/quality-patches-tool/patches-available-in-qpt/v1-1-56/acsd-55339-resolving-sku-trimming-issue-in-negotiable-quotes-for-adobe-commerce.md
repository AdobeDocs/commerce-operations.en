---
title: 'ACSD-55339: Resolving SKU trimming issue in negotiable quotes for Adobe Commerce'
description: Apply the ACSD-55339 patch to fix the Adobe Commerce issue where product SKUs with leading zeros are trimmed, causing negotiation errors.
feature: B2B, Quotes
role: Admin, Developer
exl-id: 7a9f92df-fb3e-4723-b731-155c6c4fc431
type: Troubleshooting
product_v2:
  - id: eadea719-cf89-469b-a6fd-a236a7138047
    internal-label: Commerce
feature_v2:
  - id: 792a7e9b-6519-5e99-a913-56c3dd2408da
    internal-label: Quotes
  - id: bd989d82-1e15-4534-88db-f1f51dd77ffa
    internal-label: Accounts
subfeature_v2:
  - id: f56d26ed-050b-4fb7-b29b-8e6e994e80a2
    internal-label: B2B
role_v2:
  - id: c66ffd68-0f65-42bb-aa23-b4020f12e0bd
    internal-label: Admin
  - id: ff6a42d2-313e-452e-93a6-792e4fad9ff8
    internal-label: Developer
level_v2:
  - id: d378ca77-2da1-4f39-ad92-1917fe974a38
    internal-label: Experienced
---
# ACSD-55339: Resolving SKU trimming issue in negotiable quotes for Adobe Commerce

The ACSD-55339 patch fixes the issue where product SKUs with leading zeros are trimmed, resulting in errors during the negotiation process. This patch is available when the [!DNL Quality Patches Tool (QPT)] 1.1.56 is installed. The patch ID is ACSD-55339. Please note that the issue is scheduled to be fixed in Adobe Commerce B2B 1.5.0.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

Adobe Commerce (all deployment methods) 2.4.5-p1

**Compatible with Adobe Commerce versions:**

Adobe Commerce (all deployment methods) 2.4.4 - 2.4.7-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Numeric product SKUs with leading zeros are trimmed when used in negotiable quotes, resulting in errors that prevent updating quantities or setting prices.

<u>Steps to reproduce</u>:

1. Navigate to the product creation section in the admin panel.
1. Set the [!UICONTROL SKU] for the product as 01910.
1. Log in to the storefront and perform the following operations:
    1. Add product to the cart.
    1. View and edit the cart.
    1. Request a quote.
1. Go to [!UICONTROL admin] > [!UICONTROL Quote] > [!UICONTROL View] and [!UICONTROL Add Products by SKU] - 01910.

**Note:** The SKU is displayed as *1910* instead of *01910*. This discrepancy prevents the user from updating the quantity or setting prices, as no product with the SKU 1910 exists in the catalog.

<u>Expected results</u>:

The negotiable quote should be updated successfully without any errors.

<u>Actual results</u>:

A warning message is displayed indicating that the product does not exist.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/en/docs/commerce-on-cloud/user-guide/develop/upgrade/apply-patches) in the Commerce on Cloud Infrastructure guide.


## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
