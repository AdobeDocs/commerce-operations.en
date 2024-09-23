---
title: 'ACSD-50949: The price filter in advanced search does not return proper results when used along with the SKU filter'
description: Apply the ACSD-50949 patch to fix the Adobe Commerce issue where the price filter in advanced search does not return proper results when used along with the SKU filter.
feature: Orders, Search
role: Admin
exl-id: 3e1f88dc-07f6-4e10-b4b7-163648076cbc
---
# ACSD-50949: Price filter in advanced search is not returning proper results when used with SKU filter

The ACSD-50949 patch fixes the issue where the price filter in advanced search does not return proper results when used along with the SKU filter. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.33 is installed. The patch ID is ACSD-50949. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7. 

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.5-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.2 - 2.4.6-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](<https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html>). Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Issue

The price filter in advanced search does not return proper results when used along with the SKU filter.

<u>Steps to reproduce</u>:

1. Create several products, for example:

    | SKU | Name      | Price | Quantity |
    |-----|-----------|-------|----------|
    | MJ1 | Product 1 | $10   | 10       |
    | MJ2 | Product 2 | $15   | 10       |
    | MJ3 | Product 3 | $21   | 10       |
    | MJ4 | Product 4 | $32   | 10       |
    | MJ5 | Product 5 | $33   | 10       |
    | MJ6 | Product 6 | $34   | 10       |
    | MJ7 | Product 7 | $44   | 10       |

1. Open the **[!UICONTROL Advanced Search]** on the Storefront and search by SKU: "MJ".
1. Click the **[!UICONTROL Modify your search]** link.
1. Add a price range to the criteria from *1* to *21*, and click the **[!UICONTROL Search]** button.

<u>Expected results</u>:

Only products with prices in the defined range are returned.

<u>Actual results</u>:

Products with prices higher than *$21* are returned.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](<https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html>) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](<https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html>) in the [!DNL Quality Patches Tool] guide.
