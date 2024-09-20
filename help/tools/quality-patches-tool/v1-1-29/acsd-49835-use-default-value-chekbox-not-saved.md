---
title: 'ACSD-49835: [!UICONTROL Use Default Value] checkbox is not saved'
description: Apply the ACSD-49835 patch to fix the Adobe Commerce issue where the [!UICONTROL Use Default Value] checkbox is not saved correctly on a store level for a multi-select attribute.
exl-id: 84270551-c8a9-4b08-a055-ffdcc538c33d
feature: Storefront
role: Admin
---
# ACSD-49835: [!UICONTROL Use Default Value] checkbox is not saved

The ACSD-49835 patch fixes the issue where the [!UICONTROL Use Default Value] checkbox is not saved correctly on a store level for a multi-select attribute. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.29 is installed. The patch ID is ACSD-49835. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods)  2.4.5-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.5 - 2.4.6

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The [!UICONTROL Use Default Value] checkbox is not saved correctly on a store level for a multi-select attribute.

<u>Steps to reproduce</u>:

1. Create a **[!UICONTROL Multiple-select Attribute]** in **[!UICONTROL Stores]** > **[!UICONTROL Attributes]** > **[!UICONTROL Product]** and add it to an attribute set.
1. Go to a **[!UICONTROL Product]** and save **[!UICONTROL Values]** in **[!UICONTROL All Store Views (Default Scope)]**.
1. Go to a specific **[!UICONTROL Store View Scope]** and save the product.
1. Go to **[!UICONTROL Store View Scope]** and check the **[!UICONTROL Use Default Value]** checkbox. 

<u>Expected results</u>:

Multi-select attribute values are properly saved when checking the [!UICONTROL Use Default Value] checkbox in the [!UICONTROL Store View Scope].

<u>Actual results</u>:

Multi-select attribute values are not properly saved when checking the [!UICONTROL Use Default Value] checkbox in the [!UICONTROL Store View Scope].

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
