---
title: 'ACSD-63578: Clicking [!UICONTROL Delete] in [!UICONTROL Add to Order by SKU] does not remove SKU'
description: Apply the ACSD-63578 patch to fix the Adobe Commerce issue where clicking [!UICONTROL Delete] in [!UICONTROL Add to Order by SKU] in the Admin does not remove the SKU.
feature: Orders
role: Admin
---

# ACSD-63578: ACSD-63578: Clicking **[!UICONTROL Delete]** in *[!UICONTROL Add to Order by SKU]* does not remove SKU

The ACSD-63578 patch fixes the issue where clicking **[!UICONTROL Delete]**in *[!UICONTROL Add to Order by SKU]* in the Admin does not remove the SKU. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.58 is installed. The patch ID is ACSD-63578. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.6-p7

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.7-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Clicking **[!UICONTROL Delete]** in *[!UICONTROL Add to Order by SKU]* in the Admin does not remove the SKU from the order.

<u>Steps to reproduce</u>:

1. Go to Admin > **[!UICONTROL Sales]** > **[!UICONTROL Orders]** > [!UICONTROL Create new order].
1. Choose a customer and add to [!UICONTROL Order by SKU].
1. Click **[!UICONTROL Add to Order by SKU]**. 
    * Enter an SKU.
    * Click **[!UICONTROL Add another]** button.
1. Click the garbage icon.

<u>Expected results</u>:

* Products are added and removed from an order in the Admin.

<u>Actual results</u>:

* The delete icon doesn't work.
* There's an error in the console:

    `jquery.js:130 Refused to execute inline script because it violates the following Content Security Policy directive`

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
