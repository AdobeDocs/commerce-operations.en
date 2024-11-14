---
title: 'ACSD-47076: [!DNL Vimeo] videos cannot be played on the storefront'
description: Apply the ACSD-47076 patch to fix the Adobe Commerce issue where [!DNL Vimeo] videos cannot be played on the storefront.
feature: Storefront
role: Admin
exl-id: 156b961b-e507-44fe-9b26-d73136e336a9
---
# ACSD-47076: [!DNL Vimeo] videos cannot be played on the storefront

The ACSD-47076 patch fixes the issue where [!DNL Vimeo] videos cannot be played on the storefront. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) 1.1.21 is installed. The patch ID is ACSD-47076. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.6.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.3-p2

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.1 - 2.4.3-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

[!DNL Vimeo] videos cannot be played on the storefront.

<u>Steps to reproduce</u>:

1. Add a [!DNL Vimeo] video to a product in the Commerce [!UICONTROL Admin] > **[!UICONTROL Catalog]** > **[!UICONTROL Products]** > product edit page > **[!UICONTROL Images and Videos]**.
1. Open the product on the storefront and play the video.

<u>Expected results</u>:

The [!DNL Vimeo] video can be played.

<u>Actual results</u>:

The [!DNL Vimeo] video cannot be played on the storefront.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!UICONTROL Quality Patches Tool] guide.


For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
