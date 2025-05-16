---
title: 'ACSD-63406: Expired persistent quotes not cleared when persistent_clear_expired cron job runs'
description: Apply the ACSD-63406 patch to fix the Adobe Commerce issue where the expired persistent quotes are not cleared by any cron job when the `persistent_clear_expired` cron job runs.
feature: Quotes, Shopping Cart
role: Admin, Developer
exl-id: 795d1ddf-0d5b-406c-870b-36cb92cf07fa
---
# ACSD-63406: Expired persistent quotes not cleared when `persistent_clear_expired` cron job runs

The ACSD-63406 patch fixes the issue where the expired persistent quotes are not cleared by any cron job when the `persistent_clear_expired` cron job runs. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.62 is installed. The patch ID is ACSD-63406. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.7-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4-p9 - 2.4.4-p12, 2.4.5-p8 - 2.4.5-p11, 2.4.6-p6 - 2.4.7-p4

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Expired persistent quotes are not cleared by any cron job when the `persistent_clear_expired` cron job runs.

<u>Steps to reproduce</u>:

1. Create a category and product.
1. Go to **[!UICONTROL Stores]** > **[!UICONTROL Configuration]** > **[!UICONTROL Customers]** > **[!UICONTROL Persistent Shopping Cart]**.
    1. Set all options to *Yes*.
    1. Set **[!UICONTROL Persistence Lifetime (seconds)]** to *60*.
1. Create a customer account on the storefront and log in.
1. Add a product to the cart.
1. Sign out, wait 60 seconds, and log in again.

<u>Expected results</u>: 

The `persistent_clear_expired` cron job should delete persistent quotes based on the persistence lifetime settings in the configuration.

<u>Actual results</u>:

The `is_persistent` value for the customer quote remains *1* in the quote table.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.


## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
