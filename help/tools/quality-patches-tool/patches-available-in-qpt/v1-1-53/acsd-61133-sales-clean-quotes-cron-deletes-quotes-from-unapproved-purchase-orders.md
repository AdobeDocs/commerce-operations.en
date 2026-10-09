---
title: 'ACSD-61133: `sales_clean_quotes` cron deletes quotes from unapproved purchase orders'
description: Apply the ACSD-61133 patch to fix the Adobe Commerce issue where `sales_clean_quotes` cron deletes quotes from unapproved purchase orders.
feature: B2B, Purchase Orders
role: Admin, Developer
exl-id: 06979d4b-08ea-40fe-a211-3d950c9afb47
type: Troubleshooting
product_v2:
  - id: eadea719-cf89-469b-a6fd-a236a7138047
    internal-label: Commerce
feature_v2:
  - id: bd989d82-1e15-4534-88db-f1f51dd77ffa
    internal-label: Accounts
  - id: 4820f335-ec9f-5611-8fe3-f5b7e3e56967
    internal-label: Orders
subfeature_v2:
  - id: f56d26ed-050b-4fb7-b29b-8e6e994e80a2
    internal-label: B2B
  - id: 2d6d41d4-a5c1-5baf-8dbe-bf7300b68bb3
    internal-label: Purchase Orders
role_v2:
  - id: c66ffd68-0f65-42bb-aa23-b4020f12e0bd
    internal-label: Admin
  - id: ff6a42d2-313e-452e-93a6-792e4fad9ff8
    internal-label: Developer
level_v2:
  - id: d378ca77-2da1-4f39-ad92-1917fe974a38
    internal-label: Experienced
---
# ACSD-61133: `sales_clean_quotes` cron deletes quotes from unapproved purchase orders

The ACSD-61133 patch fixes the issue where the `sales_clean_quotes` cron deletes quotes from unapproved purchase orders. This patch is available when the [!DNL Quality Patches Tool (QPT)] 1.1.53 is installed. The patch ID is ACSD-61133. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

Adobe Commerce (all deployment methods) 2.4.7-p1

**Compatible with Adobe Commerce versions:**

Adobe Commerce (all deployment methods) 2.4.4-p5 - 2.4.4-p11, 2.4.5-p4 - 2.4.5-p10, and 2.4.6-p2 - 2.4.7-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

`sales_clean_quotes` cron deletes quotes from unapproved purchase orders. The *[B2B Purchase Order]* can't be converted into the order of the quote associated with the purchased order as the cron deletes it.

<u>Prerequisites</u>:

Adobe Commerce [!UICONTROL B2B] modules are installed and enabled.

<u>Steps to reproduce</u>:

1. Enable *[!UICONTROL B2B Purchase Order]* functionality.
1. Create a company.
1. Create a *[!UICONTROL Purchase Order]*.
1. Wait until the quote expires and is deleted by the cron. Quote expiration period can be set with **[!UICONTROL Stores]** > **[!UICONTROL Configuration]** > **[!UICONTROL Sales]** > **[!UICONTROL Quotes]** > **[!UICONTROL General]** > **[!UICONTROL Default Expiration Period configuration]**.
1. Convert *[!UICONTROL Purchase Order]* to the order via *[!UICONTROL My Purchase Order in Customer Dashboard]* or with [!DNL GraphQL] `placeOrderForPurchaseOrder` mutation.

<u>Expected results</u>:

The quote associated with active *[!UICONTROL Purchase Order]* isn't deleted as expired by the cron. The order is successfully placed either on storefront or via [!DNL GraphQL].

<u>Actual results</u>:

The order is not placed, and an error is displayed on the storefront or returned in the [!DNL GraphQL] response.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/en/docs/commerce-on-cloud/user-guide/develop/upgrade/apply-patches) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
