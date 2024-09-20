---
title: 'ACSD-50621: Tier prices for different websites in shared catalog are not visible'
description: Apply the ACSD-50621 patch to fix the Adobe Commerce issue where the tier prices for different websites in the shared catalog are not visible when editing them in a multi-website environment.
exl-id: 6d6635bc-4f76-4e2f-9bc7-0276cced8ca9
feature: Catalog Management, Orders
role: Admin
---
# ACSD-50621: Tier prices for different websites in shared catalog are not visible

The ACSD-50621 patch fixes the issue where the tier prices for different websites in the shared catalog are not visible when editing them in a multi-website environment. This patch is available when the [!DNL Quality Patches Tool (QPT)] 1.1.32 is installed. The patch ID is ACSD-50621. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.5

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.3.7 - 2.4.6

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Tier prices for different websites in the shared catalog are not visible when editing them in a multi-website environment.

<u>Steps to reproduce</u>:

1. Set the **[!UICONTROL Catalog Price Scope]** to **[!UICONTROL Website]**.
1. Create an additional website, store, and storeview.
1. Create a simple product and assign it to all websites.
1. Create a custom shared catalog.
1. Go to **[!UICONTROL Set Pricing and Structure]** for the custom shared catalog you created.
1. In Step 1: select products for catalog. Add the simple product you created.
1. In step 2: set custom prices and click **[!UICONTROL Configure]**.
1. Set different tier prices for different websites.
1. Select **[!UICONTROL Done]** and click on **[!UICONTROL Generate Catalog]** and then click **[!UICONTROL Save]**.
1. Run cron.
1. Navigate to **[!UICONTROL Set Pricing and Structure]** > **[!UICONTROL Configure]** > **[!UICONTROL Next]** > **[!UICONTROL Configure]** and verify tier price.

<u>Expected results</u>:

All previously configured tier prices for different websites are present.

<u>Actual results</u>:

Tier prices that were previously configured are not present.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
