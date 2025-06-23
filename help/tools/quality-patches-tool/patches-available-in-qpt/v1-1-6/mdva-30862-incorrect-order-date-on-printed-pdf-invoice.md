---
title: 'MDVA-30862: Incorrect order date on printed PDF invoice'
description: The MDVA-30862 patch fixes the issue where an incorrect order date is printed on the PDF invoice. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.6 is installed. The patch ID is MDVA-30862. Please note that the issue was fixed in Adobe Commerce 2.4.0.
feature: Invoices, Orders
role: Admin
exl-id: 26ecf821-61e7-4e30-8ee4-66134e84a9dd
type: Troubleshooting
---
# MDVA-30862: Incorrect order date on printed PDF invoice

The MDVA-30862 patch fixes the issue where an incorrect order date is printed on the PDF invoice. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.6 is installed. The patch ID is MDVA-30862. Please note that the issue was fixed in Adobe Commerce 2.4.0.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

Adobe Commerce (all deployment methods) 2.3.4

**Compatible with Adobe Commerce versions:**

Adobe Commerce (all deployment methods) 2.3.4 - 2.3.7-p2

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches). Use the patch ID as a search keyword to locate the patch.

## Issue

Incorrect order date is printed on the PDF invoice.

<u>Steps to reproduce</u>:

1. Go to **Sales** > **Orders**.
1. Select an order and print the invoice.

<u>Expected results</u>:

The date matches the purchase date.

<u>Actual results</u>:

The date (including month/year) does not match the purchase date.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!DNL Quality Patches Tool] guide.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
