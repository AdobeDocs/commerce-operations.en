---
title: 'ACSD-56023: Widget content is not updating on the CMS page'
description: Apply the ACSD-56023 patch to fix the Adobe Commerce issue where the widget content is not updating on the CMS page
feature: CMS
role: Admin, Developer
exl-id: 2ff33b1c-ae92-4c59-83d2-e252bf543bab
---
# ACSD-56023: Widget content is not updating on the CMS page

The ACSD-56023 patch fixes the issue where the widget content is not updating on the CMS page. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.44 is installed. The patch ID is ACSD-56023. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.5-p5

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.2 - 2.4.6-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Widget content is not updating on the CMS page. 

<u>Steps to reproduce</u>:

1. Create a few products.
1. Create the new CMS page and add new products widget to the content:

    ```
       {{widget type="Magento\Catalog\Block\Product\Widget\NewWidget" display_type="new_products" show_pager="1" products_per_page="5" products_count="10" template="product/widget/new/content/new_grid.phtml" page_var_name="pnetpm"}} 
    ```

1. Open the created page on the storefront. Make sure to cache it.
1. From the Admin, open **[!UICONTROL Catalog]** > **[!UICONTROL Products]**.
1. Pick any product for edit and switch **[!UICONTROL Set Product as New]** to *Yes*.
1. Go to the created *CMS page* on the storefront again.

<u>Expected results</u>:

The page contains *New Products widget* with the products.

<u>Actual results</u>:

The page does not contain *New Products widget*, and the new products do not appear.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
