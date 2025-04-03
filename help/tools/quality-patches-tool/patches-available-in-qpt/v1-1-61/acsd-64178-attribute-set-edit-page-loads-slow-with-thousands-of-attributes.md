---
title: 'ACSD-64178: [!UICONTROL Edit Attribute Set] page loads slowly with thousands of product attributes'
description: Apply the ACSD-64178 patch to fix the Adobe Commerce issue where the [!UICONTROL Edit Attribute Set] page loads slowly if there are thousands of product attributes.
feature: Catalog Management
role: Admin, Developer
---
# ACSD-64178: **[!UICONTROL Edit Attribute Set]** page loads slowly with thousands of product attributes

The ACSD-64178 patch fixes the issue where the **[!UICONTROL Edit Attribute Set]** page loads slowly if there are thousands of product attributes. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.61 is installed. The patch ID is ACSD-64178. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.7-p4

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.7 - 2.4.7-p4

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The **[!UICONTROL Edit Attribute Set]** page loads slowly if there are thousands of product attributes.

<u>Steps to reproduce</u>:

1. Create at least 4200 attributes unassigned to any of the attribute sets.
1. On the Admin sidebar, go to **[!UICONTROL Stores]** > **[!UICONTROL Attributes]** and edit any attribute set.

<u>Expected results</u>: 

The page loads in a reasonable time.

<u>Actual results</u>:

It takes several minutes to load the page.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.


## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
