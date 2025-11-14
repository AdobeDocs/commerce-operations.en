---
title: 'ACSD-51240: Uploaded file missing while registering via company registration form'
description: Apply the ACSD-51240 patch to fix the Adobe Commerce issue where the uploaded file missing while registering via company registration form.
exl-id: 78e339d6-435e-4856-9f57-98bb955d093c
type: Troubleshooting
---
# ACSD-51240: Uploaded file missing while registering via company registration form

>[!NOTE]
>
>This patch is replaced by [ACSD-55628](/help/tools/quality-patches-tool/patches-available-in-qpt/v1-1-42/acsd-55628-upload-file-company-registration-form-replace-file-customer-attribute-storefront.md).

The ACSD-51240 patch fixes the issue where the uploaded file is missing while registering via company registration form. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.33 is installed. The patch ID is ACSD-51240. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7. 

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.5-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 < 2.4.6-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](<https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html>). Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Issue

Uploaded is file missing while registering via company registration form.

<u>Steps to reproduce</u>:

1. Set **[!UICONTROL Admin]** > **[!UICONTROL Store]** > **[!UICONTROL Configuration]** > **[!UICONTROL General]** > **[!UICONTROL B2B >Company]** > **[!UICONTROL Enable]** = *Yes*.
1. Create a new customer attribute of **[!UICONTROL File]** type, set **[!UICONTROL Show in StoreFront]** = *Yes*, and select **[!UICONTROL all forms]**.
1. Create a new company on the Storefront and upload an image for the new attribute.
Open the company and admin user on the Storefront.

<u>Expected results</u>:

The uploaded file is displayed.

<u>Actual results</u>:

The uploaded file is not displayed on the company page nor on the admin customer page in the [!UICONTROL Commerce Admin].

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!UICONTROL Quality Patches Tool] guide.


For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
