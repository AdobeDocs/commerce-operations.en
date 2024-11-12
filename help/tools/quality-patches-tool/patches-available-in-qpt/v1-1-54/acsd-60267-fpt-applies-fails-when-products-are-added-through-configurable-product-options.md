---
title: 'ACSD-60267: FPT applies fails when products are added through configurable product options'
description: Apply the ACSD-60267 patch to fix the issue where FPT applies correctly when adding simple products directly to the cart, but fails when selecting products through configurable product options..
feature: Taxes
role: Admin, Developer
---
# ACSD-60267: FPT applies fails when products are added through configurable product options

The ACSD-60267 patch fixes the issue where FPT applies fails when products are added through configurable product options. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) 1.1.54 is installed. The patch ID is ACSD-60267. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.6-p5

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.7-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

*Fixed Product Tax* (FPT) works properly when simple products with FPT are added to the cart, but FPT isn't added when products are added via configurable product selection.

<u>Steps to reproduce</u>:

1. Enable *Fixed Product Taxes* in **Admin** > **Configuration** > **Sales**> **Tax** > **Fixed Product Taxes**.
1. Create an *FPT attribute* and assign it to an **attribute set**.
1. Open **Stores** > **Attributes** > **Product**.
1. For Default Label, enter a label that identifies the attribute.
1. Set **Catalog Input** for Store Owner to *Fixed Product Tax*.
1. Create a new tax and zone and assign it to a new **Tax Rule**.
1. Create a **[!UICONTROL Configurable product]** with two simple products.
1. Now assign two different FPT values to those simple products.
1. Reindex and check the prices on the **Storefront**.
1. Add the products to the cart and check the sub-totals.

<u>Expected results</u>:

The **catalog** page shows the prices including FPT value. Subtotals in the cart include the FPT.

<u>Actual results</u>:

The **catalog** page doesn't show the prices including FPT value. Invalid subtotals and summary.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!UICONTROL Quality Patches Tool] guide.


For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
