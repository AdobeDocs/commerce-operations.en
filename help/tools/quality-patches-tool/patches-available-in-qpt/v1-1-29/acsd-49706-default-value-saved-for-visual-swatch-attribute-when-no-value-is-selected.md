---
title: 'ACSD-49706: Default value saved for visual swatch attribute when no value is selected'
description: Apply the ACSD-49706 patch to fix the Adobe Commerce issue where a default value is saved for a visual swatch attribute when no value is selected.
exl-id: fe6071df-f2a4-443a-acfa-67f3d253c5e4
feature: Admin Workspace, Attributes
role: Admin
---
# ACSD-49706: Default value saved for visual swatch attribute when no value is selected

The ACSD-49706 patch fixes the issue where a default value is saved for a visual swatch attribute when no value is selected. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.29 is installed. The patch ID is ACSD-49706. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.5-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.3.7 - 2.4.6

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

A default value is saved for a visual swatch attribute when no value is selected.

<u>Steps to reproduce</u>:

1. Go to **[!UICONTROL Stores]** > **[!UICONTROL Attributes]** > **[!UICONTROL Product]**.
1. Click **[!UICONTROL Add New Attribute]**.
1. Fill in the fields.
    
    * For example, choose input type *[!UICONTROL Visual Swatch]*, and add multiple options (such as *Red*, *Green*). Make sure to choose one of these options as default.
    * Click **[!UICONTROL Save Attribute]**. 

1. Go to **[!UICONTROL Stores]** > **[!UICONTROL Attributes]** > **[!UICONTROL Attribute Set]**.
1. Edit the *[!UICONTROL Default]* attribute set.
1. Move *[!UICONTROL New Attribute]* from the column *[!UICONTROL Unassigned Attributes]* to the *[!UICONTROL Product Details]* folder in the middle column.

    * Click **[!UICONTROL Save]**.

1. Create a new product using the *[!UICONTROL Default]* attribute set.

    * Leave the *[!UICONTROL New Attribute]* empty and save it.
    
1. Once saved, a value appears in *[!UICONTROL New Attribute]*.

<u>Expected results</u>: 

No value is assigned to *[!UICONTROL New Attribute]* by default.

<u>Actual results</u>:

A default value is applied to the attribute upon saving a product.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
