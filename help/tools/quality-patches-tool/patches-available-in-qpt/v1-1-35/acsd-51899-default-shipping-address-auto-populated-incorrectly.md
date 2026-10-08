---
title: 'ACSD-51899: Default shipping address auto-populated incorrectly'
description: Apply the ACSD-51899 patch to fix the Adobe Commerce issue where the default shipping address is auto-populated with a wrong address.
feature: Checkout
role: Admin
exl-id: 14e48613-6af8-476c-978d-87c27a0b0d15
type: Troubleshooting
product_v2:
  - id: eadea719-cf89-469b-a6fd-a236a7138047
    internal-label: Commerce
feature_v2:
  - id: 8cd50456-5eb0-5364-922a-f14161feb828
    internal-label: Checkout
role_v2:
  - id: c66ffd68-0f65-42bb-aa23-b4020f12e0bd
    internal-label: Admin
level_v2:
  - id: d378ca77-2da1-4f39-ad92-1917fe974a38
    internal-label: Experienced
---
# ACSD-51899: Default shipping address auto-populated incorrectly

The ACSD-51899 patch fixes the issue where the the default shipping address is auto-populated with a wrong address. This patch is available when the [!DNL Quality Patches Tool (QPT)] 1.1.35 is installed. The patch ID is ACSD-51899. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.4-p3

**Compatible with Adobe Commerce versions:** 

* Adobe Commerce (all deployment methods) 2.4.0 - 2.4.6-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The default shipping address is auto-populated with a wrong address

<u>Steps to reproduce</u>:

1. Enable **In Store Pickup** under shipping method.
1. Create *stock* and *source*.
1. Create product and assign the product to the source.
1. Add a product to cart.
1. Click on **Proceed to Checkout** from mini-cart.
1. Enter test email address and select **Pick In Store**.
1. Click the **Select Store** button, and select a store location to pick from.
1. Click on the **next** button.
1. Navigate to the **Home Page** by clicking on the store logo.
1. Open te **Mini cart**.
1. Click on the bottom hyperlink named **View and Edit Cart**.
1. Click **Proceed to Checkout**.
1. Click on the shipping button in shipping page.

<u>Expected results</u>

The shipping address field remains empty except for *Country, Region, and Postal Code*.

<u>Actual results</u>

The default shipping address is auto-populated with *In-Store pickup* address after refreshing the page.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/en/docs/commerce-on-cloud/user-guide/develop/upgrade/apply-patches) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!UICONTROL Quality Patches Tool] guide.


For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
