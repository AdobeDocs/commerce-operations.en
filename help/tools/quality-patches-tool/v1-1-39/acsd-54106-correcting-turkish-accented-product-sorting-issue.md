---
title: 'ACSD-54106: Rectifying Turkish accented character sorting in product category'
description: Apply the ACSD-54106 patch to fix the Adobe Commerce issue where category product sorting by name for Turkish accented characters is incorrect.
feature: Categories, Products, Search
role: Admin
exl-id: 80386ded-4ada-4822-b073-f477ca123093
---
# ACSD-54106: Rectifying Turkish accented character sorting in product category

The ACSD-54106 patch fixes the issue where category product sorting by name for Turkish accented characters is incorrect. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.39 is installed. The patch ID is ACSD-54106. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.4-p3

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.1 - 2.4.4-p5

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The sorting of products within categories by name is incorrect for Turkish accented characters.

<u>Steps to reproduce</u>:

1. Log in to the admin panel.
1. Create simple products named as follows and assign them to any category:

* Name A
* Name Ç
* Name D
* Name Ğ
* Name M
* Name Ö
* Name Ü
* Name Y
* Name Z

1. Navigate to the storefront and access the category containing the products.
1. Modify the sorting order to *[!UICONTROL By Name]*.

<u>Expected results</u>:

Products are correctly sorted in the following order:

* Name A
* Name Ç
* Name D
* Name Ğ
* Name M
* Name Ö
* Name Ü
* Name Y
* Name Z

<u>Actual results</u>:

Products are incorrectly sorted in the following order:

* Name A
* Name D
* Name M
* Name Y
* Name Z
* Name Ç
* Name Ö
* Name Ü
* Name Ğ

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
