---
title: 'ACSD-54776: Unchecked [!UICONTROL Use Default Value] and non-default product field values are not saved for the second website, store, and store view'
description: Apply the ACSD-54776 patch to fix the Adobe Commerce issue where the unchecked [!UICONTROL Use Default Value] and non-default product field values are not saved for the second website, store, and store view.
feature: Products
role: Admin, Developer
exl-id: 5bdad804-8d7b-48b4-ba3b-c2d5387ef55e
---
# ACSD-54776: Unchecked *[!UICONTROL Use Default Value]* and non-default product field values are not saved

>[!NOTE]
>
>This patch replaces the [ACSD-51984](/help/support-tools/patches-available-in-qpt-tool/v1-1-35/acsd-51984-unchecked-used-default-value-and-non-default-product-field-values-are-not-saved.md) patch released in QPT 1.1.35.

The ACSD-54776 patch fixes the issue where the unchecked **[!UICONTROL Use Default Value]** and non-default product field values are not saved for the second website, store, and store view. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.39 is installed. The patch ID is ACSD-54776. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.6-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.5 - 2.4.5-p4, 2.4.6 - 2.4.6-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Unchecked *[!UICONTROL Use Default Value]* and non-default product field values are not saved for the second website, store, and store view.

<u>Steps to reproduce</u>:

1. Go to the backend and navigate to **[!UICONTROL Stores]** > **[!UICONTROL All Stores]** and create a new website, store, and store view.
1. Go to **[!UICONTROL Catalog]** > **[!UICONTROL Products]**, create a simple product and save it, and assign the product to both websites from the **[!UICONTROL Product in Websites]**. 
1. Change the scope to the newly created store view from step 2.
1. Go to **[!UICONTROL Search Engine Optimization]** and uncheck the **[!UICONTROL Use Default Value]** checkboxes for [!UICONTROL Meta Title], [!UICONTROL Meta Keywords], and [!UICONTROL Meta Description].
1. Clean the text from the fields: *[!UICONTROL Meta Title]*, *[!UICONTROL Meta Keywords]* and *[!UICONTROL Meta Description]*, and click **[!UICONTROL Save]**.
1. Go to **[!UICONTROL Search Engine Optimization]** again.

<u>Expected results</u>

The values for the fields and the checkboxes are saved.

<u>Actual results</u>

The values for the fields and the checkboxes are not saved.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](<https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html>) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](<https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html>) in the [!DNL Quality Patches Tool] guide.
