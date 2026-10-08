---
title: 'ACSD-53658: **[!UICONTROL Recently Viewed Product]** data not updated properly in store view'
description: Apply the ACSD-53658 patch to fix the Adobe Commerce issue where **[!UICONTROL Recently Viewed Product]** data is not updated properly in the store view.
feature: CMS, Personalization
role: Admin, Developer
exl-id: a91fac3d-cb6f-4f65-aec2-d28cee4fd39f
type: Troubleshooting
product_v2:
  - id: eadea719-cf89-469b-a6fd-a236a7138047
    internal-label: Commerce
feature_v2:
  - id: ddbd0f6e-b569-5a04-8a70-55058777c373
    internal-label: CMS
  - id: f37757d8-3174-5335-b977-1161792f965d
    internal-label: Personalization
role_v2:
  - id: c66ffd68-0f65-42bb-aa23-b4020f12e0bd
    internal-label: Admin
  - id: ff6a42d2-313e-452e-93a6-792e4fad9ff8
    internal-label: Developer
level_v2:
  - id: d378ca77-2da1-4f39-ad92-1917fe974a38
    internal-label: Experienced
---
# ACSD-53658: **[!UICONTROL Recently Viewed Product]** data not updated properly in the store view

The ACSD-53658 patch fixes the issue where **[!UICONTROL Recently Viewed Product]** data is not updated properly in the store view. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.42 is installed. The patch ID is ACSD-53658. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.5-p3

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.6-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The **[!UICONTROL Recently Viewed Product]** data is not updated properly in the store view.

<u>Steps to reproduce</u>:

1. Log in to the Admin panel.
1. Create a second store view for the default website.
1. Create a simple product.
1. Set a different product name for the new store view.
1. Create a **[!UICONTROL Recently Viewed Product]** widget.
1. Configure this widget to display on the Home page.
1. Open the product page on the Storefront from the default store view.
1. Open the Home page.
1. By using the store switcher, switch to the second store view.

<u>Expected results</u>:

The product name is updated in the widget.

<u>Actual results</u>:

The product name is not updated in the widget.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/en/docs/commerce-on-cloud/user-guide/develop/upgrade/apply-patches) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!UICONTROL Quality Patches Tool] guide.


For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
