---
title: 'ACSD-64149: Customer segment with a [!UICONTROL Date range] condition can be saved when only one date is edited'
description: Apply the ACSD-64149 patch to fix the Adobe Commerce issue where customer segment with a **[!UICONTROL Date range]** condition can be saved when only one of the dates is edited.
feature: Customers, Admin Workspace
role: Admin, Developer
---

# ACSD-64149: Customer segment with a [!UICONTROL Date range] condition can be saved when only one date is edited

The ACSD-64149 patch fixes the issue where a customer segment with a date range condition can be saved when only one of the dates is edited. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.60 is installed. The patch ID is ACSD-64149. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.6-p8

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.7-p4

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

When editing an existing customer segment with a condition on products within the shopping cart specified by a date range, the consumer `matchCustomerSegmentProcessor` fails with an SQL error.

<u>Steps to reproduce</u>:

1. Ensure that the consumer `matchCustomerSegmentProcessor` is running:

    ```bash
    $ bin/magento que:cons:st matchCustomerSegmentProcessor
    ```

1. Go to the **[!UICONTROL Magento backend]**.
1. Go to **[!UICONTROL Customers]** > **[!UICONTROL Segments]**.
1. Click on **[!UICONTROL Add Segment]**.
1. Enter a **[!UICONTROL Segment Name]**, select a website under **[!UICONTROL Assigned to Website]**, and ensure the **[!UICONTROL Status]** is set to *Active*.
1. Click **[!UICONTROL Save and Continue Edit]**.
1. Go to the **[!UICONTROL Conditions]** tab and add a new Condition: *Products{} > {}Product List*{*}*.
1. Add a subcondition for the **[!UICONTROL Date range]** and set a valid **[!UICONTROL Date range]**.
1. Click the green confirmation button next to the **[!UICONTROL Date range]**.
1. Click the **[!UICONTROL Date range]** again, select the date chooser, edit one of the date values, and confirm by clicking the green button.

<u>Expected results</u>:

The **[!UICONTROL Date range]** selector should not add time to the date when editing.

<u>Actual results</u>:

* The **[!UICONTROL Date range]** selector adds time to the date:
    * One date only has the date, while the other has both the date and time specified.
* The following error appears in the logs:

    ```
    report.CRITICAL: SQLSTATE[42000]: Syntax error or access violation: 1064 You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ')' at line 2, query was: SELECT `item`.`quote_id` FROM `quote_item` AS `item`
    INNER JOIN `quote` AS `list` ON item.quote_id = list.entity_id WHERE (list.is_active = 1) AND () [] []
    ```


## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: Upgrades and Patches > Apply Patches in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
