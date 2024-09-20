---
title: 'ACSD-53176: Product rule with `is one of` condition do not match'
description: Apply the ACSD-53176 patch to fix the Adobe Commerce issue where the related product rule `is one of` condition does not work correctly for "Products to Match".
feature: Marketing Tools
role: Admin
exl-id: 91f05f5b-6a5e-4b93-9dfb-88cbeccb6c9e
---
# ACSD-53176: Product rule with `is one of` condition do not match

The ACSD-53176 patch fixes the issue where the related product rule `is one of` condition does not work correctly for **Products to Match**. This patch is available when the [!DNL Quality Patches Tool (QPT)] 1.1.36 is installed. The patch ID is ACSD-53176. Please note that the issue was fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.4-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.3.7 - 2.4.5-p4

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The related product rule `is one of` condition does not work correctly for **Products to Match**.

<u>Steps to reproduce</u>:

1. Create 3-4 products.
1. Create a new related product rule.

     Set the rule to match two or more products:
    * `SKU is one of "S1,S2".`

    Set the rule to display two or more items:
    * `Product SKU is one of constant value "S2,S3".`

1. Open the S1 product on the Storefront.

<u>Expected results</u>:

The related products "S2" and "S3" are displayed on both product pages "S1" and "S2".

<u>Actual results</u>:

Related products are not displayed on the product pages. 

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
