---
title: 'ACSD-55334: Labels not translated through translation dictionaries in GraphQL response'
description: Apply the ACSD-55334 patch to fix the Adobe Commerce issue where labels are not translated through translation dictionaries in the GraphQL response.
feature: Categories, GraphQL
role: Admin, Developer
exl-id: c22e5007-c661-49d4-90b7-dcee9b97c823
type: Troubleshooting
---
# ACSD-55334: Labels not translated through translation dictionaries in GraphQL response

The ASCD-55334 patch fixes the issue where labels are not translated through translation dictionaries in the GraphQL response. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.43 is installed. The patch ID is ASCD-55334. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.4

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.3 - 2.4.6-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Labels are not translated through translation dictionaries in the GraphQL response.

<u>Steps to reproduce</u>:

1. Install a language pack.
1. Send a GraphQL request like:

    ```GrapQL
    query {
        products(filter: {}, pageSize: 25, sort: {}) {
            aggregations {
                label
            }
            total_count
        }
    }
    ```

1. Check the response.

<u>Expected results</u>:

The label *[!UICONTROL Category]* is translated.

<u>Actual results</u>:

The label *[!UICONTROL Category]* is not translated.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!UICONTROL Quality Patches Tool] guide.


For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
