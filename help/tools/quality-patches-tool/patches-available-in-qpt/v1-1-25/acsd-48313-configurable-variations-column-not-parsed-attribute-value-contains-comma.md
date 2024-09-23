---
title: 'ACSD-48313: [!UICONTROL configurable_variations] column not parsed if attribute value contains comma'
description: Apply the ACSD-48313 patch to fix the Adobe Commerce issue where the [!UICONTROL configurable_variations] column is not parsed if the attribute value contains a comma.
exl-id: 0ac3f8da-4da3-4308-bea4-98a5b6926b0d
feature: Attributes, Configuration
role: Admin
---
# ACSD-48313: **[!UICONTROL configurable_variations]** column not parsed if attribute value contains comma

The ACSD-48313 patch solves the issue where **[!UICONTROL configurable_variations]** column is not parsed if the attribute value contains a comma. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.25 is installed. The patch ID is ACSD-48313. The version where this issue will be fixed is not yet available.

## Affected products and versions

**The patch is created for Adobe Commerce version:**
* Adobe Commerce (all deployment methods) 2.4.4

**Compatible with Adobe Commerce versions:**
* Adobe Commerce (all deployment methods) 2.4.0 - 2.4.4-p5

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

After exporting configurable products, the resulting file cannot be imported again because of a formatting issue with the **[!UICONTROL configurable_variations]** attribute. This happens when there are attribute options which include a comma.

<u>Steps to reproduce</u>:

1. Go to **[!UICONTROL Stores]** > **[!UICONTROL Attributes]** > **[!UICONTROL Product]** and create a new attribute _Size_:
1. Catalog Input Type for Store Owner: **[!UICONTROL Dropdown]**.
  1. Create options that include a comma, e.g.:
      * 10,2cm
      * 15,5cm
1. **[!UICONTROL Advanced Attribute Properties]** - Scope: _Global_.
1. Create a new configurable product using the Create Configurations functionality.
1. Select the above attribute _Size_ and the two options that include the comma.
1. Go to **[!UICONTROL System]** > **[!UICONTROL Data Transfer]** > **[!UICONTROL Export]** and create a new Products export (execute the cron to trigger the generation of the CSV file).
1. Go to **[!UICONTROL System]** > **[!UICONTROL Data Transfer]** > **[!UICONTROL Import]** and try to reimport the same CSV file created above.

<u>Expected results</u>:

User should be able to import file.

<u>Actual results</u>:

```
1. Column configurable_variations: Attribute with code "2cm" does not exist or is missing from product attribute set in row(s): 3
2. Column configurable_variations: Attribute with code "5cm" does not exist or is missing from product attribute set in row(s): 3
3. Column configurable_variations: Invalid option value for attribute "size" in row(s): 3
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
