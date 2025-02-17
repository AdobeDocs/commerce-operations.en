---
title: 'ACSD-63454: Default value for a Dropdown and Multiple Select attributes is not saved properly in the database'
description: Apply the ACSD-63454 patch to fix the Adobe Commerce issue where the default value for a Dropdown and Multiple Select attributes is not saved properly in the database.
feature: Attributes, Products
role: Admin, Developer
---

# ACSD-63454: Default value for a [!UICONTROL Dropdown] and [!UICONTROL Multiple Select] attributes is not saved properly in the database

The ACSD-63454 patch fixes the issue where the default value for a [!UICONTROL Dropdown] and [!UICONTROL Multiple Select] attributes is not saved properly in the database. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.59 is installed. The patch ID is ACSD-63454. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.7-p2

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.7 - 2.4.7-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The default value for [!UICONTROL Dropdown] and [!UICONTROL Multiple Select] attributes is not saved correctly in the database; instead of updating the default value, the new value is appended to the old one, separated by a comma.

<u>Steps to reproduce</u>:

1. Login to the backend, go to **[!UICONTROL Stores]** > [!UICONTROL Attributes] > **[!UICONTROL Product]**.
1. Click **[!UICONTROL Add New Attribute]**. 
1. In the **[!UICONTROL Properties]** tab, set the following:
    * [!UICONTROL Default Label] = test
    * [!UICONTROL Catalog Input Type for Store Owner]= [!UICONTROL Multiple Select]
    * [!UICONTROL Manage Options]: Add 2 options without selecting **[!UICONTROL Is Default]**.
1. Click **[!UICONTROL Save Attribute]**.
1. Check in the databasse that the *default_value* column is empty.

    `select attribute_code, default_value from eav_attribute where attribute_code = 'test';`

1. Go back and set one of the two options as **[!UICONTROL Is Default]**.
1. Check the database again to ensure that *default_value* now contains the selected option ID.
1. Go back and change the default option by selecting the other option.

<u>Expected results</u>:

The new default value should replace the old value in the database.

<u>Actual results</u>:

Instead of replacing the default value with the new one, it appends the new value to the old value, separated by a comma.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
