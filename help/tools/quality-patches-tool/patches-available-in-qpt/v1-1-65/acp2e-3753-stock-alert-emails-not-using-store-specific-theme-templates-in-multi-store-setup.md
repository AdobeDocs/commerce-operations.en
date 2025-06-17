---
title: 'ACP2E-3753: Stock alert emails not using store-specific theme templates in multi-store setup'
description: Apply the ACP2E-3753 patch to fix the Adobe Commerce issue where product alert emails in a multi-store setup are always sent using the default theme, regardless of the store or theme configuration.
feature: Themes, Personalization
role: Admin, Developer
---

# ACP2E-3753: Stock alert emails not using store-specific theme templates in multi-store setup

The ACP2E-3753 patch fixes the issue where product alert emails in a multi-store setup were always sent using the default theme, regardless of the store or theme configuration. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.65 is installed. The patch ID is ACP2E-3753. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.4.9.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.5-p11

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.7-p5

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Product alert emails in a multi-store setup are always sent using the default theme, regardless of the store or theme configuration.

<u>Steps to reproduce</u>:

1. Create two websites, stores and store views.
1. Create two separate themes and assign these to different stores.
1. Product alert setting is the default scope that runs every minute.
1. Override/add some content to the `stock.phtml` file for both themes. Example of the file location:

    ```
    app\design\frontend\Adobe\Taiwan\Magento_ProductAlert\templates\email\stock.phtml
    app\design\frontend\Adobe\Japan\Magento_ProductAlert\templates\email\stock.phtml
    ```

 1. Create a user for each store and subscribe to the product stock alert.
 1. Trigger the product stock alert to send the emails.

<u>Expected results</u>:

The email should include the theme-level changes.

<u>Actual results</u>:

The emails don't include the templates set in the respective website/store.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
