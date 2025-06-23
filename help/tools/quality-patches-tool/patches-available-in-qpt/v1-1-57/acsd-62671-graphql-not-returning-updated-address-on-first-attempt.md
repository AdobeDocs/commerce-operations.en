---
title: 'ACSD-62671: [!DNL GraphQL] does not return updated address on first attempt'
description: Apply the ACSD-62671 patch to fix the Adobe Commerce issue where a [!DNL GraphQL] request does not return up-to-date address information on the first attempt.
feature: GraphQL
role: Admin, Developer
exl-id: afd75ad2-e801-4f8a-b68f-526ca5168413
type: Troubleshooting
---
# ACSD-62671: [!DNL GraphQL] doesn't return updated address on first attempt

The ACSD-62671 patch fixes the issue where a [!DNL GraphQL] request does not return up-to-date address information on the first attempt. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) 1.1.57 is installed. The patch ID is ACSD-62671. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.7-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.7 - 2.4.7-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

When using the [!DNL GraphQL Application Server], customer address request does not return the most recent data.

<u>Steps to reproduce</u>:

1. Install and start [!DNL GraphQL Application Server].
1. Ensure `graphQL_query_resolver_result` cache type is enabled.
1. Use [!DNL GraphQL] to:

    * Create a customer.
    * Generate a token.
    * Use the token to create multiple addresses for the above customer.

1. Send [!DNL GraphQL] request to get the customer's addresses.
1. Add a new address to the customer.
1. Repeat the request from Step #4 multiple times while monitoring the returned address count in the response.

<u>Expected results</u>:

[!DNL GraphQL] response contains the correct number of customer addresses.

<u>Actual results</u>:

Occasionally, incorrect number of addresses are returned in the [!DNL GraphQL] response.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
