---
title: 'ACSD-47004: VAT not applied to billing address without VAT ID'
description: Apply the ACSD-47004 patch to fix the Adobe Commerce issue where VAT is not applied to a billing address without a VAT ID.
exl-id: 04706219-be1d-4d9a-a8bf-f5c24b45076d
feature: Customer Service, Shipping/Delivery, Orders
role: Admin
---
# ACSD-47004: VAT not applied to billing address without VAT ID

The ACSD-47004 patch fixes the issue where VAT is not applied to a billing address without a VAT ID. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md)  1.1.24 is installed. The patch ID is ACSD-47004. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.6.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.4

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.2 - 2.4.5-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

VAT is not applied to a billing address without a VAT ID.

<u>Steps to reproduce</u>:

1. Open the [!UICONTROL Commerce Admin] > **[!UICONTROL Store]** > **[!UICONTROL Configuration]** > **[!UICONTROL Customers]** > **[!UICONTROL Customer Configuration]** > **[!UICONTROL Create New Account Options]** and set the **[!UICONTROL Enable Automatic Assignment to Customer Group]** to *[!UICONTROL Yes]*.
1. Set different groups for VAT ID validations. For example:
![VAT-ID-validations](/help/support-tools/patches-available-in-qpt-tool/assets/vat-id-validations.png)
1. Register a new customer.
1. Add a new default address without VAT. For example:

    ```
    123 N University Dr
    Edmond, 73034
    Germany
    T: 0900000000
    ```

1. Verify that the customer's group remains [!UICONTROL General].
1. Edit this address and add a valid VAT number:

    ```
    123 N University Dr
    Edmond, 73034
    Germany
    T: 0900000000
    VAT: DE329376919
    ```

1. Make sure that the customer's group has changed to [!UICONTROL Retailer].
1. Edit the address and remove the VAT number:

    ```
    123 N University Dr
    Edmond, 73034
    Germany
    T: 0900000000
    ```

<u>Expected results</u>:

The customer group is changed to the default [!UICONTROL General] group automatically.

<u>Actual results</u>:

The customer group is not changed to the default [!UICONTROL General] group automatically.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
