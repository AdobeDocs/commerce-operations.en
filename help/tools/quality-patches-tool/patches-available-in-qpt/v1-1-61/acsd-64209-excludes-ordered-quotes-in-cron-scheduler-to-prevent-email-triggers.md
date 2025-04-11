---
title: 'ACSD-64209: Cron scheduler retrieves negotiable quotes without excluding [!UICONTROL Ordered] quotes'
description: Apply the ACSD-64209 patch to fix the Adobe Commerce issue where the cron scheduler retrieves all negotiable quotes without excluding those with the status [!UICONTROL Ordered], causing an email or emails to be triggered.
feature:  B2B, Communications
role: Admin, Developer
---
# ACSD-64209: Cron scheduler retrieves negotiable quotes without excluding [!UICONTROL Ordered] quotes

The ACSD-64209 patch fixes the issue where the cron scheduler retrieves all negotiable quotes without excluding those with the status [!UICONTROL Ordered], causing an email or emails to be triggered. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.61 is installed. The patch ID is ACSD-64209. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.7-p3

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.7-p4

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The cron scheduler retrieves all negotiable quotes without excluding those with the status *[!UICONTROL Ordered]*, causing an email or emails to be triggered.

<u>Steps to reproduce</u>:


1. On the *Admin* sidebar, go to **[!UICONTROL Stores]** > *[!UICONTROL Settings]* > **[!UICONTROL Configuration]** > **[!UICONTROL B2B Features]** and enable Company and B2B Quote. 
1. Set **[!UICONTROL Default Expiration Period]** to *1* in *Admin* > **[!UICONTROL Stores]** > *[!UICONTROL Settings]* > **[!UICONTROL Configuration]** > **[!UICONTROL Sales]** > **[!UICONTROL Quotes]** > **[!UICONTROL General]**.
1. Create a company, activate it, and log in as the company admin.
1. Add a product to the cart.
1. Request a quote.
1. On the *Admin* sidebar, go to **[!UICONTROL Sales]** > **[!UICONTROL Quotes]**.
1. Select the created quote, and click **[!UICONTROL Send]** to send the quote back to the buyer.
1. Log in as the company admin on the storefront.
1. Select the quote and click **[!UICONTROL Proceed to checkout]** to complete the purchase.
1. Check that the status of the quote is **[!UICONTROL Ordered]** and no more actions are possible on the storefront.
1. Trigger the *negotiable_quote_send_emails* cron job.


<u>Expected results</u>: 

Since the quote has been ordered and no further actions can be taken, no emails about the quote expiration should be sent.

<u>Actual results</u>:

An email *Quote expires soon* is sent.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
