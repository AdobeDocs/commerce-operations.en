---
title: 'ACSD-54739: *[!UICONTROL Product Stock]* status not applied for *[!UICONTROL Related Product Rules]*'
description: Apply the ACSD-54739 patch to fix the Adobe Commerce issue where *[!UICONTROL Product Stock]* status is not applied for *[!UICONTROL Related Product Rules]*.
feature: Products
role: Admin, Developer
exl-id: 7bc106b1-2c97-46a1-8bb6-71b99511e480
---
# ACSD-54739: *[!UICONTROL Product stock]* status not applied for *[!UICONTROL Related Product Rules]*

The ACSD-54739 patch fixes the issue where the *[!UICONTROL Product stock]* status is not applied for *[!UICONTROL Related Product Rules]*. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.43 is installed. The patch ID is ACSD-54739. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.5-p2

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.5 - 2.4.5-p5

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

*[!UICONTROL Product stock]* status is not applied for *[!UICONTROL Related Product Rules]*.

<u>Steps to reproduce</u>:

1. Set the **[!UICONTROL Display Out of Stock Products]** configuration to *Yes*.
1. Go to **[!UICONTROL Admin]** > **[!UICONTROL Stores]** > **[!UICONTROL Attributes]** > **[!UICONTROL Product]** > **[!UICONTROL Search quantity attribute]** and set *Yes* for the promo rule condition.
1. Create the related product rule. Go to **[!UICONTROL Product rule information]** > **[!UICONTROL Products to match]** > Add a condition with attribute quantity (select in stock/out of stock).
1. Check the products at the front end.

<u>Expected results</u>:

The in-stock/out-of-stock product matches by *[!UICONTROL Related Product Rules]*.

<u>Actual results</u>:

The in-stock/out-of-stock product does not match by the *[!UICONTROL Related Product Rules]*.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
