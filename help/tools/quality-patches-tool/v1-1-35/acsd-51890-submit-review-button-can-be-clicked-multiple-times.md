---
title: 'ACSD-51890: [!UICONTROL Submit review] button can be clicked multiple times'
description: Apply the ACSD-51890 patch to fix the Adobe Commerce issue where the [!UICONTROL Submit Review] button can be clicked multiple times without [!DNL Google reCAPTCHA v3] validation.
feature: Products
role: Admin
exl-id: f6369a24-24bd-4e5e-a870-a13f507ada94
---
# ACSD-51890: **[!UICONTROL Submit Review]** button can be clicked multiple times without **[!DNL Google reCAPTCHA v3]** validation

>[!NOTE]
>
>This patch is replaced by [ACSD-55112](/help/support-tools/patches-available-in-qpt-tool/v1-1-42/acsd-55112-submit-review-button-can-be-clicked-multiple-times.md). 

The ACSD-51890 patch fixes the issue where the **[!UICONTROL Submit Review]** button can be clicked multiple times without **[!DNL Google reCAPTCHA v3]** validation. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.35 is installed. The patch ID is ACSD-51890. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.5-p2

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.0 - 2.4.6-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The **[!UICONTROL Submit Review]** button can be clicked multiple times without the **[!DNL Google reCAPTCHA v3]** validation.

<u>Steps to reproduce</u>:

1. Enable **[!DNL Google reCAPTCHA v3]** for the product review.
1. Open the product page and navigate to the **[!UICONTROL Review]** section and make sure the [!DNL reCAPTCHA] is visible.
1. Fill out the review form and click the **[!UICONTROL Submit Review]** button multiple times as quickly as possible.
1. Open the **[!UICONTROL Review]** section from the Admin.

<u>Expected results</u>

Duplicate reviews are not created.

<u>Actual results</u>

Duplicate reviews are created.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](<https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html>) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](<https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html>) in the [!DNL Quality Patches Tool] guide.
