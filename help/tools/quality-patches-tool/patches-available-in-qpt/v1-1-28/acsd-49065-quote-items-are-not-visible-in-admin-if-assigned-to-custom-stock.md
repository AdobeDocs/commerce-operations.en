---
title: 'ACSD-49065: Quote items are not visible in admin'
description: Apply the ACSD-49065 patch to fix the Adobe Commerce issue where the quote items are not visible in the admin if they are only assigned to the custom stock.
feature: Admin Workspace, B2B, Orders, Quotes
role: Admin
exl-id: fc3bea92-305b-4598-9915-3422d61c76ec
---
# ACSD-49065: Quote items are not visible in admin

The ACSD-49065 patch fixes the issue where the quote items are not visible in the admin if they are only assigned to the custom stock. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.28 is installed. The patch ID is ACSD-49065. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.4-p2

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.3 - 2.4.6

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The quote items are not visible in the admin if they are only assigned to the custom stock.

Prerequisites:

**[!UICONTROL B2B]** and **[!UICONTROL Inventory]** modules must be installed.

<u>Steps to reproduce</u>:

1. Enable **[!UICONTROL Company]** and **[!UICONTROL B2B Quote]** under **[!UICONTROL Stores]** > **[!UICONTROL Configuration]** > **[!UICONTROL General]** > **[!UICONTROL B2B Features]**.
1. Create a secondary **[!UICONTROL Inventory Source]** and assign it to a secondary **[!UICONTROL Inventory Stock]**.
1. Create a new product by assigning only the secondary (non-default) **[!UICONTROL Inventory Source]**.
1. Go to the storefront and create a new company account. Log in as the **[!UICONTROL Company Admin]**, and add the created product to the cart.
1. Navigate to the cart and *[!UICONTROL Request a Quote]*.
1. Go to the admin and view the requested quote at **[!UICONTROL Sales]** > **[!UICONTROL Quotes]**.

<u>Expected results</u>:

Items are visible in the new quote created with new products without re-saving the products.

<u>Actual results</u>:

The *[!UICONTROL Items Quoted]* section is empty. If you re-save the newly created product, the items will appear.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!UICONTROL Quality Patches Tool] guide.


For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
