---
title: "ACSD-46618: product list widget shows incorrect cached prices for logged-in customer"
description: Apply a patch to fix the Adobe Commerce issue where the product list widget shows incorrect cached prices for a logged-in customer.
exl-id: 8b182822-1d3d-4793-871b-cdf4565d0712
feature: Cache, Orders, Products
role: Admin
---
# ACSD-46618: Product list widget shows incorrect cached prices for a logged-in customer

The ACSD-46618 patch solves the issue where the product list widget shows incorrect cached prices for a logged-in customer. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](https://experienceleague.adobe.com/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.html) 1.1.21 is installed. The patch ID is ACSD-46618. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.6. 

## Affected products and versions

**The patch is created for Adobe Commerce version:**
* Adobe Commerce (all deployment methods) 2.4.4

**Compatible with Adobe Commerce versions:**
* Adobe Commerce (all deployment methods) 2.4.0 - 2.4.5

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The ACSD-46618 patch solves the issue where the product list widget shows incorrect cached prices for a logged-in customer.

<u>Steps to reproduce</u>:

1. In the Adobe Commerce Admin, select **[!UICONTROL Stores]**, then **[!UICONTROL Configuration]**, expand **[!UICONTROL Sales]**, and select **[!UICONTROL Tax]**. Update the tax settings to show prices including and excluding taxes. 
1. Set **[!UICONTROL Enable Cross Border Trade]** = _Yes_.
1. Create a tax rule that only applies to the US.
1. Add a widget to the home page including more than one product.
1. Create two customers with a US address and a non US address.
1. Log in using the US customer from the storefront. Make sure that the page is cached.
1. Observe the price displayed in the home page widget.
1. Log out and log in using the non-US customer.

<u>Expected results</u>:

The price displayed in the home page widget corresponds to the customer's address.

<u>Actual results</u>:

 The home page widget shows prices using the tax for non-US customers.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://devdocs.magento.com/cloud/project/project-patch.html) in our developer documentation.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For information about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
