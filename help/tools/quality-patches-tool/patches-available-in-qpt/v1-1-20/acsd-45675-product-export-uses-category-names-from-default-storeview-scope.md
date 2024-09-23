---
title: 'ACSD-45675: Product export uses category names from default store view scope'
description: The ACSD-45675 patch fixes the issue where the product export uses category names from the default store view scope. This patch is available when the [Quality Patches Tool (QPT)](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.20 is installed. The patch ID is ACSD-45675. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.6.
exl-id: 9edd718e-4c0c-44dd-b802-07c9ec7c182a
feature: Categories, Data Import/Export, Products
role: Admin
---
# ACSD-45675: Product export uses category names from default store view scope

The ACSD-45675 patch fixes the issue where the product export uses category names from the default store view scope. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.20 is installed. The patch ID is ACSD-45675. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.6.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.3

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.0 - 2.4.5

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Product export uses category names from the default store view scope.

<u>Steps to reproduce</u>:

1. Create a custom store view **[!UICONTROL Thai]** inside the main store.
1. Make **[!UICONTROL Thai]** the default store view of the main website.
1. Create the following category structure under **[!UICONTROL Default Category]**:

    *[!UICONTROL Default category/Tea/Black]*

1. Select the category **[!UICONTROL Tea]** and change the **[!UICONTROL Scope]** to **[!UICONTROL Thai]**.
1. Set the **[!UICONTROL Category Name]** as **[!UICONTROL ชาดำ]**.
1. Create a simple product **[!UICONTROL SP001]** and assign the category **[!UICONTROL Black]**.
1. Make sure the cron does not run.
1. Do a product export. Filter by SKU and select **[!UICONTROL SP001]**.
1. Check the **[!UICONTROL categories]** column in the exported CSV.

<u>Expected results</u>:

As no store was selected during export, you should get a category path like the following: *[!UICONTROL Default Category/Tea/Black]*.

<u>Actual results</u>:

Category path has mixed languages: *[!UICONTROL Default Category/ชาดำ/Black]*.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tools] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the Quality Patches Tool guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://devdocs.magento.com/cloud/project/project-patch.html) in our developer documentation.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](https://experienceleague.adobe.com/docs/commerce-knowledge-base/kb/support-tools/patches/check-patch-for-magento-issue-with-magento-quality-patches.html) in our support knowledge base.

For info about other patches available in [!DNL QPT], refer to [Patches available in [!DNL QPT]](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the Quality Patches Tool guide.
