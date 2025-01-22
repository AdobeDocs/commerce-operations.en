---
title: 'ACSD-61622: [!DNL FedEx] account specific rates are missing in REST API response'
description: Apply the ACSD-61622 patch to fix the Adobe Commerce issue where [!DNL FedEx] account specific rates are missing from the REST API response.
feature: Shipping/Delivery
role: Admin, Developer
exl-id: 59e33dc4-3f9b-4590-95b6-e98c77e750ee
---
# ACSD-61622: [!DNL FedEx] account specific rates are missing in REST API response

The ACSD-61622 patch resolves the issue where [!DNL FedEx's] account specific rates are missing from the REST API response. It adds the `ACCOUNT` rate request type to the REST API request sent from Adobe Commerce to [!DNL FedEx], which returns a response similar to SOAP API response. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.57 is installed. The patch ID is ACSD-61622. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.6-p5

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.6-p1 - 2.4.6-p8

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

[!DNL FedEx's] account specific rates are missing from the REST API response.

<u>Steps to reproduce</u>:

1. Install a clean Adobe Commerce instance.
1. Create a simple product with a weight of 5 lbs.
1. Configure [!DNL FedEx] for REST API.
1. Enable [!DNL FedEx] shipping method and clear the cache.
1. Start observing the log file: `var/log/shipping.log`
1. Add a simple product to the cart and go to the shipping page on checkout. Example of customer data:
    
    * Postcode: 58601
    * Names: John Doe
    * Address: 196 Eulalia Burg
    * Country: US
    * State: North Dakota
    * Phone number: 187-563-3627

<u>Expected results</u>:

`PAYOR_ACCOUNT_PACKAGE` rates are available in the REST API response, similar to SOAP API responses.

<u>Actual results</u>:

Only `PAYOR_LIST_PACKAGE` rates are available in the response, which means there are no negotiated (account) rates from [!DNL FedEx].

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
