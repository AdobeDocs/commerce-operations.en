---
title: 'ACSD-48059: merchants cannot save [!UICONTROL Match product by rule] for Categories attribute.'
description: Apply the ACSD-48059 patch to fix the Adobe Commerce issue where merchants cannot save the [!UICONTROL Match product by rule] for the Categories attribute.
exl-id: 97213157-1b54-4634-9c76-c9ab8fa96e17
feature: Admin Workspace, Attributes, Categories, Products
role: Admin
---
# ACSD-48059: Merchants cannot save the *[!UICONTROL Match product by rule]* for the categories attribute

The ACSD-48059 patch fixes the issue where merchants cannot save the *[!UICONTROL Match product by rule]* for the categories attribute in [!DNL Visual Merchandiser]. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.27 is installed. The patch ID is ACSD-48059. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.5

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) >=2.3.7 <2.4.7

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Merchants cannot save the *[!UICONTROL Match product by rule]* for categories attribute in [!DNL Visual Merchandiser].

<u>Steps to reproduce</u>:

1. Go to **[!UICONTROL Stores]** > **[!UICONTROL Configuration]** > **[!UICONTROL Catalog]** > **[!UICONTROL Visual Merchandiser]** > **[!UICONTROL Visible Attributes for Category Rules]**, add categories.
1. Go to the Adobe Commerce Admin > **[!UICONTROL Catalog]** > **[!UICONTROL Categories]**.
    * Go to the [!UICONTROL Products in Category] section. 
    * Add a new *[!UICONTROL Match products by rule]* condition with the categories attribute.

<u>Expected results</u>:

The category is saved successfully.

<u>Actual results</u>:

* You are not able to save the category with the new rule and condition.
* *Something went wrong while saving the category* error is displayed.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
