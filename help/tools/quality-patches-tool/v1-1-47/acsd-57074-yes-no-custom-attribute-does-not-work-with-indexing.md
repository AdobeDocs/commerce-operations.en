---
title: "ACSD-57074: *Yes/No* custom attribute with `price_*` prefix in `attribute_code` attribute doesn't work with indexing"
description: Apply the ACSD-57074 patch to fix the Adobe Commerce issue where the *Yes/No* custom attribute with `price_*` prefix in the `attribute_code` attribute doesn't work with indexing.
feature: Products, Categories, Catalog Management
role: Admin, Developer
exl-id: c620722f-a66d-4cae-9614-becec589a78c
---
# ACSD-57074: *Yes/No* custom attribute with `price_*` prefix in `attribute_code` attribute doesn't work with indexing

The ACSD-57074 patch fixes the issue where the *Yes/No* custom attribute with `price_*` prefix in the `attribute_code` attribute doesn't work with indexing. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.47 is installed. The patch ID is ACSD-57074. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.6-p3

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.6 - 2.4.6-p4

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The *Yes/No* custom attribute with `price_*` prefix in the `attribute_code` attribute doesn't work with indexing.

<u>Steps to reproduce</u>:

1. Create a custom product attribute with the following options:
    * *[!UICONTROL Catalog Input Type]*: *Yes/No*
    * *[!UICONTROL Scope]*: *StoreView*
    * *[!UICONTROL Use in Search]*: *Yes*
1. Assign the attribute to the default attribute set.
1. Create a product with the attribute we created.
1. Assign the product we just created to a category.
1. Run full reindex.

<u>Expected results</u>:

The product is displayed in the assigned category.

<u>Actual results</u>:

The product does not appear on the front category page.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
