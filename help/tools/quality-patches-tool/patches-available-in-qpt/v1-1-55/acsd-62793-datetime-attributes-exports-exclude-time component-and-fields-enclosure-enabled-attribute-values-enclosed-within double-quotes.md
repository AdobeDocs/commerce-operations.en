---
title: "ACSD-62793: Datetime attributes in exports exclude time component and if **[!UICONTROL Fields Enclosure]** enabled, attribute values enclosed within double-quotes"
description: Apply the ACSD-62793 patch to fix the Adobe Commerce issue where datetime attributes in exported data don't include the time component. Additionally if **[!UICONTROL Fields Enclosure]** is enabled, attribute values in the additional_attributes column will be enclosed within double-quotes.
feature: Attributes, Data Import/Export
role: Admin, Developer
---

# ACSD-62793: Datetime attributes in exports exclude time component and if **[!UICONTROL Fields Enclosure]** enabled, attribute values enclosed within double-quotes

The ACSD-62793 patch fixes the issue where  datetime attributes in exported data exclude the time component. Additionally if **[!UICONTROL Fields Enclosure]** is enabled, attribute values in the additional_attributes column will be enclosed within double-quotes. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.55 is installed. The patch ID is ACSD-62793. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.8. 

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.7-p2

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.7 - 2.4.7-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Datetime attributes in exported data don't include the time component. Additionally if  **[!UICONTROL Fields Enclosure]** is enabled, attribute values in the additional_attributes column will be enclosed within double-quotes.

<u>Steps to reproduce</u>:

Create a product attribute with **[!UICONTROL Catalog Input Type for Store Owner]** = Date and Time.

1. Create a product attribute with **[!UICONTROL Catalog Input Type for Store Owner]** = Date and Time. 
1. Assign the attribute to the **[!UICONTROL Default]** attribute set.
1. Create a simple product with a date and time value for the new attribute.
1. Export the product to a CSV file from **[!UICONTROL System]** > Data Transfer > **[!UICONTROL Export]**.
1. Check the attribute value in the additional_attributes column. It only has the date part, but not time.
1. Update the attribute value to use the time, e.g. "11/26/22, 4:00 PM".
1. Import the CSV file.
1. Check the catalog_product_entity_datetime table.

<u>Expected results</u>:

the date and time are exported and imported properly.

<u>Actual results</u>:

Only the date part is exported and imported.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.


## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
