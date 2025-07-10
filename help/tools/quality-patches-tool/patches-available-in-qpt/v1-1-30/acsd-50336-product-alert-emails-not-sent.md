---
title: 'ACSD-50336: Product alert emails not sent'
description: Apply the ACSD-50336 patch to fix the Adobe Commerce issue where the product alert emails are not sent when a product is back in stock or the price is changed.
feature: Communications, Personalization, Products
role: Admin
exl-id: 45dd12af-a3b2-4cfa-be90-af1c7b5f74b3
type: Troubleshooting
---
# ACSD-50336: Product alert emails not sent

The ACSD-50336 patch fixes the issue where product alert emails are not sent when a product is back in stock or the price is changed. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.30 is installed. The patch ID is ACSD-50336. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.4-p2

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4-p1 - 2.4.4-p2

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Product alert emails are not sent when a product is back in stock or the price is changed.

<u>Prerequisites</u>:

Set up product alerts for when a product is added back to stock.

<u>Steps to reproduce</u>:

1. Log in as a customer on the storefront.
1. Open a product that is not in stock.
1. Subscribe to receive a notification when the product is *back in stock*.
1. Update the product from [!UICONTROL Admin] to be _back in stock_.

<u>Expected results</u>:

An email notification about the product being *back in stock* is sent to the customer.

<u>Actual results</u>:

The customer does not receive an email notification about the product being *back in stock*. The following error appears in the log:

```
report. CRITICAL: Magento\ProductAlert\Model\Mailing\ErrorEmailSender::execute(): Argument #2 ($storeId) must be of type int, string given, called in vendor/magento/module-product-alert/Model/Mailing/AlertProcessor.php on line 130 [] [] 
```

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!UICONTROL Quality Patches Tool] guide.


For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
