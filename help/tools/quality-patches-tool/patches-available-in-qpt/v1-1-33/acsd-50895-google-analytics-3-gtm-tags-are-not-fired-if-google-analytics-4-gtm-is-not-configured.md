---
title: 'ACSD-50895: [!DNL Google Analytics] 3 GTM tags are not fired if [!DNL Google Analytics] 4 GTM is not configured'
description: Apply the ACSD-50895 patch to fix the Adobe Commerce issue where [!DNL Google Analytics] 3 GTM tags are not fired if [!DNL Google Analytics] 4 GTM is not configured.
role: Admin
exl-id: 871e2ca1-dc10-435c-9325-62f5b9b673ad
type: Troubleshooting
---
# ACSD-50895: [!DNL Google Analytics] 3 GTM tags are not fired if [!DNL Google Analytics] 4 GTM is not configured

The ACSD-50895 patch fixes the issue where [!DNL Google Analytics] 3 GTM tags are not fired if [!DNL Google Analytics] 4 GTM is not configured. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.33 is installed. The patch ID is ACSD-50895. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7. 

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.5-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.5 - 2.4.6-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

[!DNL Google Analytics] 3 GTM tags are not fired if [!DNL Google Analytics] 4 GTM is not configured.

<u>Steps to reproduce</u>:

1. Log in as an admin user.
1. Enable **[!DNL Google Analytics 3]** and **[!DNL Google Tag Manager]** in **Admin** > **Store** > **Configuration** > **Sales** > **Google API** > **Google Analytics**.
1. Do not enable the **[!DNL Google Analytics 4]** and **[!DNL Google Tag Manager]**.
1. Open the product page on the Storefront.

<u>Expected results</u>:

The GTM tags are fired when only **[!DNL Google Analytics]** 3 GTM is enabled.

<u>Actual results</u>:

The GTM tags are not fired when **[!DNL Google Analytics]** 4 GTM is disabled.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!UICONTROL Quality Patches Tool] guide.


For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
