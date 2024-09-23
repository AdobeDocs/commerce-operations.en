---
title: "ACSD-46581: Estimated tax total is not updated after selecting a country in the shopping cart"
description: Apply the ACSD-46581 patch to solve the Adobe Commerce issue where the tax rate does not get updated after switching the country in the shopping cart.
exl-id: 17334f7b-e5a2-4091-8196-eff80875c003
feature: Orders, Shopping Cart
role: Admin
---
# ACSD-46581: Estimated tax total is not updated after selecting a country in the shopping cart

This ACSD-46581 patch solves the issue where the tax rate does not get updated after switching the country in the shopping cart. It updates only after selecting the shipping method. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.21 is installed. The patch ID is ACSD-46581. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.6.  

## Affected products and versions

**The patch is created for Adobe Commerce version:**
* Adobe Commerce (all deployment methods) 2.4.1-p1

**Compatible with Adobe Commerce versions:**
* Adobe Commerce (all deployment methods) 2.4.0 - 2.4.5

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Tax rate does not get updated after switching the country in the shopping cart.

<u>Steps to reproduce</u>:

1. In the Adobe Commerce Admin, go to **[!UICONTROL Stores]** > **[!UICONTROL Tax Zone and Rates]**. 
1. Create a new tax rate for **[!UICONTROL Country]** = _United States_, **[!UICONTROL State]** = _*_, **[!UICONTROL Rate]** = _8.25_.
1. Create a new tax rate for **[!UICONTROL Country]** = _India_, **[!UICONTROL State]** = _*_, **[!UICONTROL Rate]** = _10_.
1. Create a tax rule with both tax rates for US and India.
1. Go to **[!UICONTROL Configuration]** > **[!UICONTROL Sales]** > **[!UICONTROL Shipping Methods]** and enable more than one shipping method (_Flat Rate_ and _Free Shipping_ for example).
1. Create a simple product with the **[!UICONTROL Taxable Goods]** tax class.
1. Add product to the cart on the store front.
1. Open the shopping cart and check the tax amount.
1. The default tax settings for the United States are applied and the tax is calculated based on an 8.25% rate.
1. Switch the country to India.

<u>Expected results</u>:

The tax amount changed to 10% when switching the country to India.

<u>Actual results</u>:

The tax amount remains the same in the total section of the shopping cart.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://devdocs.magento.com/cloud/project/project-patch.html) in our developer documentation.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For information about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
