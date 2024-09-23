---
title: 'ACSD-53309: Incomplete tax application for customizable options and [!UICONTROL Regular Price] label'
description: Apply the ACSD-53309 patch to fix the Adobe Commerce issue where tax is not fully applied in the '[!UICONTROL Regular Price]' label when a customizable option is selected.
feature: Taxes, Shipping/Delivery
role: Admin, Developer
exl-id: de9b151e-6f92-4231-9e9f-4818c2961782
---
# ACSD-53309: Incomplete tax application for customizable options and '[!UICONTROL Regular Price]' label

The ACSD-53309 patch fixes the issue where tax is not fully applied in the '[!UICONTROL Regular Price]' label when a customizable option is selected. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.43 is installed. The patch ID is ACSD-53309. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.5-p2

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.2 - 2.4.6-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Tax is not fully reflected in the '[!UICONTROL Regular Price]' label when a customizable option is chosen.

<u>Steps to reproduce</u>:

1. Log in to the Admin panel.
1. Navigate to **[!UICONTROL Stores]** > **[!UICONTROL Configuration]** > **[!UICONTROL Sales]** > **[!UICONTROL Tax]** to configure tax settings.

    * [!UICONTROL Tax Classes]:

        * [!UICONTROL Tax Class for Shipping] = [!UICONTROL Taxable Goods]
        * [!UICONTROL Tax Class for Gift Options] = [!UICONTROL Taxable Goods]

    * [!UICONTROL Calculation Settings]:

        * [!UICONTROL Catalog Prices] = [!UICONTROL Including Tax]
        * [!UICONTROL Shipping Prices] = [!UICONTROL Including Tax]
        * [!UICONTROL Apply Discount On Prices] = [!UICONTROL Including Tax]

    * [!UICONTROL Default Tax Destination Calculation]:

        * [!UICONTROL Default Post Code] = *
    
    * [!UICONTROL Price Display Settings]:

        * [!UICONTROL Display Product Prices In Catalog] = [!UICONTROL Including Tax]
        * [!UICONTROL Display Shipping Prices] = [!UICONTROL Including Tax]
    
    * [!UICONTROL Shopping Cart Display Settings]:

        * [!UICONTROL Display Prices] = [!UICONTROL Including Tax]
        * [!UICONTROL Display Subtotal] = [!UICONTROL Including Tax]
        * [!UICONTROL Display Shipping Amount] = [!UICONTROL Including Tax]

1. Set **[!UICONTROL Shipping Settings]** > **[!UICONTROL Origin]** > **[!UICONTROL Country]** = *United Kingdom*.

1. Create the following *[!UICONTROL Tax Rate]* and *[!UICONTROL Tax Rules]*:

    * [!UICONTROL Country] = United States
    * [!UICONTROL Zip Code] = *
    * [!UICONTROL State] = *
    * [!UICONTROL Rate] = 20%
1. Create a simple product and set the following:
    * [!UICONTROL Price = 110]
    * [!UICONTROL Special Price = 100]
    * In the drop-down, set type to custom option with price set to 15%
1. Go to the product page for the simple item made on the storefront.
1. Choose the custom option created, *15%*.

<u>Expected results</u>:

* 20% tax is applied on the selected custom option.
* '[!UICONTROL Regular Price]' = 151.80.
    
<u>Actual results</u>:

* 20% tax is not applied on the selected custom option.
* '[!UICONTROL Regular Price]' = 148.50.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
