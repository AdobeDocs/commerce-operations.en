---
title: 'ACSD-54680: B2B Quote for a product with Multiple Assigned Sources cant be processed'
description: Apply the ACSD-54680 patch to fix the Adobe Commerce issue where the B2B Quote for a product with Multiple Assigned Sources can't be processed.
feature: B2B
role: Admin, Developer
exl-id: 4d05714c-d32d-46f3-b857-81704c9e96cd
---
# ACSD-54680: B2B Quote for a product with Multiple Assigned Sources can't be processed.

The ACSD-54680 patch fixes the issue where the B2B Quote for a product with Multiple Assigned Sources can't be processed. This patch is available when the [!DNL Quality Patches Tool (QPT)] 1.1.40 is installed. The patch ID is ACSD-54680. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.6.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.3

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.0 - 2.4.5-p5

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

B2B Quote for a product with Multiple Assigned Sources can't be processed.

<u>Steps to reproduce</u>:

1. Go to **[!UICONTROL Admin]** > **[!UICONTROL Store]** > **[!UICONTROL Sources]** and create two new sources: **Source 1** and **Source 2**. 
1. Go to **[!UICONTROL Admin]** > **[!UICONTROL Store]** > **[!UICONTROL Stocks]** and create a new Stock: **Stock A**, assign it to the main website, and assign **Source 1** and **Source 2** to it.
1. Create a Simple product, assign **Source 1** and **Source 2**, and set Qty = *2* for each source. (the salable qty of the product should be *4* as a result).
1. Create a Company Account.
1. Go to the **[!UICONTROL Storefront]** and log in to the company account.
1. Add the simple product to the shopping cart with qty = *4*.
1. Open the *[!UICONTROL Shopping cart]* and click **[!UICONTROL Request a quote]** button.
1. Add a comment and quote name and click **[!UICONTROL Send a Request]** button.
1. Go to **[!UICONTROL Admin]** > **[!UICONTROL Sales]** > **[!UICONTROL Quotes]**.
1. Open recently submitted quote.

<u>Expected results</u>:

The items quoted contains the ordered product.

<u>Actual results</u>:

The items quoted page section is empty, and it is not possible to process the quote.
`var/log/system.log` contains

```
report.CRITICAL: TypeError: number_format() expects parameter 1 to be float, null given in .../vendor/magento/module-negotiable-quote/Model/QuoteUpdatesInfo.php:232
```

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
