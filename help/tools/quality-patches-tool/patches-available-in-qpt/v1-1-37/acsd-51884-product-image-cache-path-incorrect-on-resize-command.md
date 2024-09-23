---
title: 'ACSD-51884: Product image cache path incorrect on resize command'
description: Apply the ACSD-51884 patch to fix the Adobe Commerce issue where the product image cache path becomes incorrect after running the resize command.
feature: Products
role: Admin
exl-id: cf542c4b-07b1-4f05-95bc-82bc098bcd4d
---
# ACSD-51884: Product image cache path incorrect on resize command

The ACSD-51884 patch fixes the issue where an internal error where the product image cache path becomes incorrect after running the resize command. This patch is available when the [!DNL Quality Patches Tool (QPT)] 1.1.37 is installed. The patch ID is ACSD-51884. Please note that the issue was fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.5-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.3.7- 2.4.7

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Product image cache path becomes incorrect on resize command.

<u>Steps to reproduce</u>:

1. Create new website/store/storeview.
1. Create a product and assign it to both websites and upload the product image.
1. Create a new theme (see attached Adobe.zip).
1. In `app/design/Adobe/theme/etc/view.xml` change:

```
<vars module="Magento_Catalog">
           <var name="product_image_white_borders">1</var>
</vars>
```

to

```
<vars module="Magento_Catalog">
           <var name="product_image_white_borders">0</var>
</vars>
```

1. Apply the theme to the previously created storeview.
1. Check the product page on the 2nd website. The product image is displayed correctly.
1. Use Flush cache:
`bin/magento cache:flush`
1. Check the product page on the 2nd website.

<u>Expected results</u>:

The product image displays correctly.

<u>Actual results</u>:

The product image does not exist.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
