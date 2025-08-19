---
title: 'ACP2E-3731: Product exports with [!UICONTROL Catalog, Search] visibility include records from other store views'
description: Apply the ACP2E-3731 patch to fix the Adobe Commerce resolves an issue where product exports with visibility filter set to [!UICONTROL Catalog, Search] included incorrect rows in multi-store setups due to store-scoped attribute variations.
feature: Data Import/Export
role: Admin, Developer
type: Troubleshooting
---

# ACP2E-3731: Product exports with [!UICONTROL Catalog, Search] visibility include records from other store views

The ACP2E-3731 patch fixes the issue where product exports with *[!UICONTROL Catalog, Search]* visibility incorrectly include records from other store views in multi-store environments. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.69 is installed. The patch ID is ACP2E-3731. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.4.9.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.6-p9

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.8-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Product exports with visibility filter set to *[!UICONTROL Catalog, Search]* included incorrect rows in multi-store setups due to store-scoped attribute variations.

<u>Steps to reproduce</u>:

1. In the Admin panel, go to **[!UICONTROL Stores]** > *[!UICONTROL Settings]* **[!UICONTROL All Stores]** to create an additional website, store, and store view.
1. Go to **[!UICONTROL Stores]** > *[!UICONTROL Attributes]* **[!UICONTROL Attribute Set]**. Click **[!UICONTROL Add Attribute Set]** to create an attribute. Set **[!UICONTROL Based On]** to *Default*.
1. Create a product and assign it to both the main website and the secondary website.
1. Set a text value for the newly created attribute with **[!UICONTROL Scope]** set to *All Store Views*.
1. Change the scope to the secondary store view and update the attribute with a different value.
1. Change the scope to the default store view and the secondary store view. Then, set the product visibility to *Not Visible Individually*.
1. Go to **[!UICONTROL System]** > **[!UICONTROL Export]**, and select *Products* from the dropdown menu.
1. Set a filter where **[!UICONTROL Visibility]** = *[!UICONTROL Catalog, Search]*, and click **[!UICONTROL Continue]**.
1. Run the following command to process the export:

    ```
    php bin/magento queue:consumers:start exportProcessor
    ```

1. Check the exported file.

<u>Expected results</u>:

Only the filtered records are exported.

<u>Actual results</u>:

The exported file includes a row for the secondary store view, which doesn't match the filter criteria set during export.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
