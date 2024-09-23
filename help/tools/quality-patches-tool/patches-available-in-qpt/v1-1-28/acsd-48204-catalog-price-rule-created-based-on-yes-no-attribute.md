---
title: "ACSD-48204: Catalog price rule created based on *Yes/No* attribute doesn't consider selected scope"
description: Apply the ACSD-48204 patch to fix the Adobe Commerce issue where the catalog price rule created based on *Yes/No* attribute doesn't consider the selected scope.
exl-id: 9b0b4d62-c4c5-40d7-a279-52f59ee7ac42
feature: Admin Workspace, Attributes, Catalog Management, Orders, Price Rules
role: Admin
---
# ACSD-48204: Catalog price rule created based on *Yes/No* attribute doesn't consider selected scope

The ACSD-48204 patch fixes the issue where the catalog price rule created based on *Yes/No* attribute doesn't consider the selected scope. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.28 is installed. The patch ID is ACSD-48204. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.2-p2

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.3.7 - 2.4.2-p2

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The catalog price rule created based on *Yes/No* attribute doesn't consider the selected scope.

<u>Steps to reproduce</u>:

1. Create two websites (Default and W2).
1. Create a product attribute of *Yes/No* type.
    * Set [!UICONTROL Default value] = [!UICONTROL No]
    * [!UICONTROL Scope] = [!UICONTROL Website]
    * [!UICONTROL Use for Promo Rule Conditions] = [!UICONTROL Yes]
1. Create a configurable product based on any attribute with two variations (V1 and V2).
    * Add the *Yes/No* attribute to the configurable variations attribute set
    * For one of the variations (V1), set the value to *[!UICONTROL Yes]* on the non-default website (W2)
1. Create a catalog rule:
    * Applied to both websites
    * Condition: *Yes/No* attribute value is *[!UICONTROL Yes]*
    * Discount = 50%
1. Open the configurable product on the non-default website (W2).
1. Check that the V1 variation has the 50% discount applied.
1. Open the V1 variation in the Adobe Commerce Admin.
    * Switch to the default website
    * Make no changes and save the product
1. Refresh the configurable product storefront page.

<u>Expected results</u>:

The V1 variation still has the 50% discount applied as no changes were made.

<u>Actual results</u>:

The discount disappears.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
