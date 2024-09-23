---
title: 'ACSD-52133: Customer account cannot be saved after an upgrade'
description: Apply the ACSD-52133 patch to fix the Adobe Commerce issue where a customer account cannot be saved after an upgrade.
feature: Customers, Upgrade
role: Admin
exl-id: 0db7c79e-10e1-4850-81b5-4812fb051941
---
# ACSD-52133: Customer account cannot be saved after an upgrade

The ACSD-52133 patch fixes the issue where a customer account cannot be saved after an upgrade. This patch is available when the [!DNL Quality Patches Tool (QPT)] 1.1.35 is installed. The patch ID is ACSD-52133. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.6

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.6 - 2.4.6-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Customer account cannot be saved after an upgrade.

<u>Steps to reproduce</u>:

1. Install Adobe Commerce version 2.4.4.
1. Create a customer.
1. Upgrade Adobe Commerce to 2.4.6 from the earlier version of 2.4.4 where a customer was already created.
1. Set the encryption key as below in `env.php`:

    `d337b914e91ff703b1e94ba4156aadf0`

1. Set the values below into database for any customer under the `customer_entity` table:

    ```
    -> rp_token as incr4869
    -> rp_token_created_at as "2021-04-29 20:06:14"
    ```

1. Go to **[!UICONTROL Admin]** > **[!UICONTROL Customers]** > **[!UICONTROL All Customers]**.
1. Edit the customer for which the above values were updated. 
1. Click on **[!UICONTROL Save Customer]** or **[!UICONTROL Save and Continue Edit]**

<u>Expected results</u>:

The customer is saved successfully without errors.

<u>Actual results</u>:

* The customer record is not saved. 
* The admin sees the following error message: *Something went wrong while saving the customer.*

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
