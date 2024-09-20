---
title: 'ACSD-48417: SQL error after creating a schedule change'
description: Apply the ACSD-48417 patch to fix the Adobe Commerce issue where an SQL error appears after creating a schedule change for a product and saving another product.
exl-id: 2bbf3bb5-dec8-43b3-81f1-be0dc53d1f46
feature: Storage
role: Admin
---
# ACSD-48417: SQL error after creating a schedule change

The ACSD-48417 patch fixes the issue where an SQL error appears after creating a schedule change for a product and saving another product. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.26 is installed. The patch ID is ACSD-48417. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.1-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.5 - 2.4.6

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

An SQL error appears after creating a schedule change for a product and saving another product.

<u>Steps to reproduce</u>:

1. Install Magento 2.4-develop EE + Sample Data.
1. Go to the admin panel > **[!UICONTROL Catalog]** > **[!UICONTROL Products]**.
1. Edit any product (e.g., Joust Duffle Bag [SKU: 24-MB01]).
1. Schedule a new update:
    * Select **[!UICONTROL Save as a New Update]**
    * Update name: "Update 1"
    * Start Date: current time +1 min
    * End Date: current time +1 hour
    * Modify Product name to: "Joust Duffle Bag 2"
    * Save the product.
1. Go to CLI and execute cron and wait till the schedule is applied.

    ```
    bin/magento cron:run && bin/magento cron:run
    ```

1. Again, go to **[!UICONTROL Catalog]** > **[!UICONTROL Products]** and edit any configurable product (e.g., Chaz Kangeroo Hoodie [SKU: MH01]).

    * Disable all variants. Go to the Actions column > **[!UICONTROL Select]** > **[!UICONTROL Disable Product]**.
    * Save the configurable one.

<u>Expected results</u>:

No error upon saving the product.

<u>Actual results</u>:

The following error occurs:

```SQL
SQLSTATE[23000]: Integrity constraint violation: 1048 Column 'sku' cannot be null, query was: INSERT INTO `catalog_product_entity` (`entity_id`, `sku`, `row_id`, `created_in`, `updated_in`) VALUES (?, ?, ?, ?, ?)
```

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
