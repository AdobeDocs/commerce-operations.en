---
title: 'ACSD-52786: Catalog rule *[!UICONTROL SKU is]* applies to all products starting with the SKU'
description: Apply the ACSD-52786 patch to fix the Adobe Commerce issue where the catalog rule condition *[!UICONTROL SKU is]* applies to all the products starting with the given SKU.
feature: Price Rules
role: Admin
exl-id: af373b6c-5944-412b-a544-cc6fc3f209d3
---
# ACSD-52786: Catalog rule "*[!UICONTROL SKU is]*" applies to all products starting with the SKU

The ACSD-52786 patch fixes the issue where the catalog rule condition *[!UICONTROL SKU is]* applies to all the products starting with the given SKU. This patch is available when the [!DNL Quality Patches Tool (QPT)] 1.1.35 is installed. The patch ID is ACSD-52786. Please note that the issue was fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.5-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.5 - 2.4.5-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Catalog rule condition *[!UICONTROL SKU is]* applies to all products starting with the given SKU.

<u>Steps to reproduce</u>:

1. Create two products, one with SKU "24" and another with SKU "24-MB01".
1. Navigate to **[!UICONTROL Marketing]** > **[!UICONTROL Catalog Price Rule]** > **[!UICONTROL Add New Rule]**.
1. Apply the following condition:
    * *[!UICONTROL If **ALL** of these conditions are **TRUE**]* : *[!UICONTROL SKU is 24]*
1. Set any discount amount in actions.
1. Click **[!UICONTROL Save and Apply]**.
1. Flush cache.
1. Go to the storefront, and check the price of 24-MB01.

<u>Expected results</u>:

Catalog rule is applied only to a single product with SKU equal to 24.

<u>Actual results</u>:

Catalog rule condition *[!UICONTROL SKU is]* applies to all products starting with the given SKU.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
