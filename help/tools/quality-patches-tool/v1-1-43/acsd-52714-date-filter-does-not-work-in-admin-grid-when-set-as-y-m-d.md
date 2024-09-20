---
title: 'ACSD-52714: Date filter does not work in admin grid when set as y-m-d'
description: Apply the ACSD-52714 patch to fix the Adobe Commerce issue where the date filter does not work in the admin grid when the date format is set as y-m-d.
feature: Attributes
role: Admin, Developer
exl-id: b292ab2c-e12d-40df-a9ad-19f25fbde5a0
---
# ACSD-52714: Date filter does not work in admin grid when set as y-m-d

The ACSD-52714 patch fixes the issue where the date filter doesn't work in the admin grid when the date format is set as y-m-d. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.43 is installed. The patch ID is ACSD-52714. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.5-p2

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.2 - 2.4.6-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The date filter does not work in the admin grid when the date format is set as y-m-d. 

<u>Steps to reproduce</u>:

1. Install clean Adobe Commerce.
1. Edit 
  `/app/code/Magento/Customer/view/adminhtml/ui_component/customer_listing.xml` 
 file and add
   `<dateFormat>Y-MM-dd</dateFormat>`
   to
   `<column name="created_at" class="Magento\Ui\Component\Listing\Columns\Date" component="Magento_Ui/js/grid/columns/date" sortOrder="100">`
   under the tag
    `<dataType>date</dataType>`

1. Flush the cache `bin/magento c:f`.
1. Log in to Admin and create a new customer from **[!UICONTROL Customers]** > **[!UICONTROL All Customers]**.

    * from: current date minus 1 day
    * to: current date

1. Click on **[!UICONTROL Apply Filters]**.

<u>Expected results</u>:

The date filter of the grid works properly, irrespective of the locale set.

<u>Actual results</u>:

The following message appears: *We couldn't find any records*.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
