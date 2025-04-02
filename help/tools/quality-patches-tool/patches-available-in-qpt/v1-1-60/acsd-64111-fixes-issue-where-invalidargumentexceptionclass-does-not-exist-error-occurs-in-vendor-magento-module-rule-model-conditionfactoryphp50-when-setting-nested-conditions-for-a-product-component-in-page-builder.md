---
title: 'ACSD-64111: Fixes an issue where an *InvalidArgumentException: Class does not exist error* occurs in `vendor/magento/module-rule/Model/ConditionFactory.php:50` when setting nested conditions for a Product component in [!DNL Page Builder]'
feature: Products, Page Builder
role: Admin, Developer
---
# ACSD-64111: Fixes an issue where an *InvalidArgumentException: Class does not exist error* occurs in `vendor/magento/module-rule/Model/ConditionFactory.php:50` when setting nested conditions for a Product component in [!DNL Page Builder]

The ACSD-64112 patch fixes the issue where the error *InvalidArgumentException: Class does not exist* error occurs in `vendor/magento/module-rule/Model/ConditionFactory.php:50*` when setting nested conditions for a Product component in Page Builder. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.60 is installed. The patch ID is ACSD-64111. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods)  2.4.6-p8

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.7-p4

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

 An error *InvalidArgumentException: Class does not exist in /app/<project id\>/vendor/magento/module-rule/Model/ConditionFactory.php* is thrown when adding a *Conditions Combination* in Page Builder Products widget condition.

<u>Steps to reproduce</u>:

1. Log in to the Commerce admin.
1. Go to **[!UICONTROL Content]** > **[!UICONTROL Elements]** > **[!UICONTROL Pages]**.
1. Add a new page (or edit an existing page).
1. Expand the content and click on  **[!UICONTROL Edit with Page Builder]**.
1. Add a new row and then the  **[!UICONTROL Products]** widget.
1. Configure the **[!UICONTROL Products]** widget.
1. Select the **[!UICONTROL  Condition]** under **[!UICONTROL Select Products By]**.
1. Add a new condition and select **[!UICONTROL Conditions Combination]** from the dropdown.

<u>Expected results</u>:

No errors in logs.

<u>Actual results</u>:

The below exception is recorded in the logs:

*report.CRITICAL: InvalidArgumentException: Class does not exist in vendor/magento/module-rule/Model/ConditionFactory.php:50*

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.


## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
