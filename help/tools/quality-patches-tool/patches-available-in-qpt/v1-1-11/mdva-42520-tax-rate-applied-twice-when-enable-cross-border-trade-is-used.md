---
title: 'MDVA-42520: Tax rate applied twice when "Enable Cross Border Trade" is used'
description: The MDVA-42520 patch fixes the issue where the tax rate is applied twice when the **Enable Cross Border Trade** is used. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.11 is installed. The patch ID is MDVA-42520. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.5.
feature: Catalog Management, Orders, Taxes
role: Admin
exl-id: 34c101fd-3a47-4877-8a41-ccaeaa010969
type: Troubleshooting
---
# MDVA-42520: Tax rate applied twice when "Enable Cross Border Trade" is used

The MDVA-42520 patch fixes the issue where the tax rate is applied twice when the **Enable Cross Border Trade** is used. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.11 is installed. The patch ID is MDVA-42520. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.5.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.3-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.3 - 2.4.3-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches). Use the patch ID as a search keyword to locate the patch.

## Issue

The tax rate is applied twice when the **Enable Cross Border Trade** is used.

<u>Steps to reproduce</u>:

1. Enable **Company**, **Shared Catalog**, and **Quote**
1. Configure taxes according to the screenshot. Make sure you enable **Cross Border Trade**.

    ![tax settings](/help/assets/tools/tax_settings_1.png){width="700"}

1. Create a tax rate for Germany (10%).
1. Create a tax rule to apply the tax rate.
1. Create a company and a custom shared catalog.
1. Create a product with a price of 100 and include it in the custom shared catalog with a price discount of 20%.
1. Create a customer with a German address and assign it to the company
1. Add 10 products to the card as the customer.
1. Go to the shopping cart and request a quote.
1. Open this quote on the backend and try to add an additional 10% discount.

<u>Expected results</u>:

Quote Subtotal (Including Tax) and Quote Grand Total (Including Tax) = $720

<u>Actual results</u>:

Quote Subtotal (Including Tax) and Quote Grand Total (Including Tax) = $649.50.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!DNL Quality Patches Tool] guide.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
