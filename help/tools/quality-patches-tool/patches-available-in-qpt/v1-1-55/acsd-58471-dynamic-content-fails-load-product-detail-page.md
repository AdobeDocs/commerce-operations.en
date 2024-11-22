---
title: "ACSD-58471: dynamic content fails to load on the product detail page, when the associated catalog price rules were scheduled"
description: Apply the ACSD-58471 patch to fix the Adobe Commerce issue where where dynamic content fails to load on the product detail page, when the associated catalog price rules were scheduled.
feature: Catalog Management
role: Admin, Developer
---

# ACSD-58471: dynamic content fails to load on the product detail page, when the associated catalog price rules were scheduled

The ACSD-58471 patch solves the issue where dynamic content fails to load on the product detail page, when the associated catalog price rules were scheduled. The system now correctly displays dynamic content associated with scheduled catalog price rules on the product detail page. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.55 is installed. The patch ID is ACSD-58471. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.5.0.

## Affected products and versions

**The patch is created for Adobe Commerce version:**
* Adobe Commerce (all deployment methods) 2.4.5-p4

**Compatible with Adobe Commerce versions:**
* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.7-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

<u>Steps to reproduce</u>:

1. Create a Dynamic Block in the Commerce Admin > **[!UICONTROL Content]** > **[!UICONTROL Dynamic Blocks]**.
1. Create a Static Block in [!UICONTROL Admin] > **[!UICONTROL Content]** >  **[!UICONTROL Blocks]**. Use widgets to add content.
1. Create a product and add the CMS block to the description.
1. Create a catalog rule with a scheduled update and assign the product and the created dynamic block in **[!UICONTROL Marketing]** > Promotions > **[!UICONTROL Catalog Products Rules]**.
1. Run the cron and check that the product details page shows the dynamic content after the scheduled start time.
1. Create a catalog rule without a scheduled update and assign the product and the created dynamic block in **[!UICONTROL Marketing]** > Promotions > **[!UICONTROL Catalog Products Rules]**.
1. Run the cron and check if the product detailed page displays the dynamic content after the scheduled time.


<u>Expected results</u>:

Dynamic content loads after the scheduled start time.

<u>Actual results</u>:

Dynamic content does not load.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.


## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
