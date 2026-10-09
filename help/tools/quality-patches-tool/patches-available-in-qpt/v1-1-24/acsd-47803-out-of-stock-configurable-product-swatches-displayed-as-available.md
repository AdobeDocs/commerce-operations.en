---
title: 'ACSD-47803: out-of-stock configurable product swatches displayed as available'
description: Apply the ACSD-47803 patch to fix the Adobe Commerce issue where out-of-stock configurable product swatches displayed as available.
feature: Configuration, Orders, Products
role: Admin
exl-id: c1b80949-65ed-4a44-8be4-25decda32142
type: Troubleshooting
product_v2:
  - id: eadea719-cf89-469b-a6fd-a236a7138047
    internal-label: Commerce
feature_v2:
  - id: dac87252-6066-4d6e-a9d2-f6d84c323de7
    internal-label: Configuration
  - id: 4820f335-ec9f-5611-8fe3-f5b7e3e56967
    internal-label: Orders
  - id: 4067ab89-2e97-5de1-8d98-de8318461a8d
    internal-label: Products
role_v2:
  - id: c66ffd68-0f65-42bb-aa23-b4020f12e0bd
    internal-label: Admin
level_v2:
  - id: d378ca77-2da1-4f39-ad92-1917fe974a38
    internal-label: Experienced
---
# ACSD-47803: out-of-stock configurable product swatches displayed as available

The ACSD-47803 patch fixes the issue where out-of-stock configurable product swatches are displayed as available. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.24 is installed. The patch ID is ACSD-47803. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.6. 

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.4

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.0 - 2.4.5-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Out-of-stock configurable product swatches are displayed as available.

<u>Steps to reproduce</u>:

>[!NOTE]
>
>The steps below refer to sample data as an example.

1. In the [!UICONTROL Commerce] Admin, go to **[!UICONTROL Stores]** > **[!UICONTROL Configuration]** > **[!UICONTROL Catalog]** > **[!UICONTROL Inventory]** > **[!UICONTROL Stock Options]** and set the **[!UICONTROL Display Out of Stock Products]** to *Yes*.
1. Again, from the Admin, navigate to **[!UICONTROL Catalog]** > **[!UICONTROL Products]** and edit a configurable product in the product edit page (for example, "WB04" SKU, if you are using sample data):
    * For one of the configuration variants, set the quantity to *0* (for example, for "WB04-M-Purple").
1. Now open the configurable product on the storefront.
1. Select the product size for the configurable variant with zero stock (that is "M").

<u>Expected results</u>:

The out-of-stock options are disabled and marked as [!UICONTROL Out of Stock].

<u>Actual results</u>:

All color swatches are enabled, even the one that is [!UICONTROL Out of Stock].

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/en/docs/commerce-on-cloud/user-guide/develop/upgrade/apply-patches) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!UICONTROL Quality Patches Tool] guide.


For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
