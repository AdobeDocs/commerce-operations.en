---
title: "ACSD-49527: GraphQL company roles don't display pagination correctly"
description: Apply the ACSD-49527 patch to fix the Adobe Commerce issue where the GraphQL company roles don't display pagination correctly.
exl-id: e2d50081-8002-490e-9476-a19ba6623bda
feature: B2B, GraphQL, Companies, Roles/Permissions
role: Admin
---
# ACSD-49527: GraphQL company roles don't display pagination correctly

The ACSD-49527 patch fixes the issue where the GraphQL company roles don't display pagination correctly. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.29 is installed. The patch ID is ACSD-49527. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.5

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.2 - 2.4.6

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

GraphQL company roles don't display pagination correctly.

<u>Steps to reproduce</u>:

1. Enable B2B company.
1. On the storefront, create a new company.
1. Create at least two new roles for this company, so there are a total of three roles, as one role is the default.
1. Send GraphQL request to get roles specifying [!UICONTROL pageSize]: 2.

    ```GraphQL
    query {
        company {
            roles(pageSize: 2, currentPage: 1) {
                items {
                    name
                }
                total_count
                page_info {
                    total_pages
                    current_page
                }
            }
        }
    } 
    ```
    
1. Check the GraphQL response.

<u>Expected results</u>:

`total_count: 3` and `total_pages: 2` are returned in the GraphQL response.

<u>Actual results</u>:

`total_count: 2` and `total_pages: 1` are returned in the GraphQL response.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
