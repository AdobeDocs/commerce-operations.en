---
title: 'ACSD-48212: product import assigns product to wrong source'
description: Apply the ACSD-48212 patch to fix the Adobe Commerce issue where the product import assigns the product to the wrong source.
exl-id: b3426f62-f73a-4b76-8e0e-544a9133720f
feature: Admin Workspace, Data Import/Export, Products
role: Admin
---
# ACSD-48212: product import assigns product to wrong source

The ACSD-48212 patch fixes the issue where the product import assigns the product to the wrong source. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.26 is installed. The patch ID is ACSD-48212. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.4-p2

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.3.7 - 2.4.6

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Product import assigns the product to the wrong source. 

<u>Steps to reproduce</u>:

1. Create a secondary inventory source.
1. Create a product with the default inventory source only.
1. Export the product.
1. Run `bin/magento cron:run`.
1. Open **[!UICONTROL Catalog]** > **[!UICONTROL Prdoucts]**.
1. Select the product from the grid.
1. Unassign the stock using the *[!UICONTROL mass action]* menu.
1. Run `bin/magento cron:run`.
1. Assign the secondary source using the *[!UICONTROL mass action]* menu.
1. Run `bin/magento cron:run`.
1. Delete the product using the *[!UICONTROL mass action]* menu.
1. Run `bin/magento cron:run`.
1. Import the product using the previously exported CSV.
1. Check the source assignment.

<u>Expected results</u>:

The product is assigned to the default source only.

<u>Actual results</u>:

The product is assigned to both default and secondary source.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
