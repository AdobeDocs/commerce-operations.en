---
title: 'ACSD-61103: Failure count not reset to zero after successful customer login through API'
description: Apply the ACSD-61103 patch to fix the Adobe Commerce issue where the failure count in the `customer_entity` table is not reset to zero after a customer successfully logs in through API endpoints.
feature: GraphQL, REST, Customers
role: Admin, Developer
exl-id: 9f5aac1f-c8a3-4255-8ebc-2268283b3384
type: Troubleshooting
---
# ACSD-61103: Failure count not reset to zero after successful customer login through API

The ACSD-61103 patch solves the issue where the failure count in the `customer_entity` table is not reset to zero after a customer successfully logs in through API endpoints. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.54 is installed. The patch ID is ACSD-61103. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.8. 

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.6-p3

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.6 - 2.4.6-p8

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The failure count in the `customer_entity` table does not reset to zero even after a customer logs in successfully through API endpoints. 

<u>Steps to reproduce</u>:

1. Create a customer account.
1. Generate a customer token via API, using incorrect details.
1. Check the `failures_num` column in the `customer_entity` DB table for the customer above.
1. Generate a customer token via API, using the correct details.
1. Check the `failures_num` column in the `customer_entity` DB table for the customer above.

<u>Expected results</u>:

The `failures_num` column should be reset to 0 after using the correct credentials to generate a customer token via API.

<u>Actual results</u>:

The `failures_num` column is not reset to 0 after using the correct credentials to generate a customer token via API.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
