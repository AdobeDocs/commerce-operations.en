---
title: 'ACSD-54324: GraphQL requisition_lists request does not consider pagination settings'
description: Apply the ACSD-54324 patch to fix the Adobe Commerce issue where the GraphQL `requisition_lists` request does not consider pagination settings and returns all results.
feature: B2B, Customers, GraphQL
role: Admin, Developer
exl-id: 85297eae-bedf-4624-9758-0b68452d131b
---
# ACSD-54324: GraphQL `requisition_lists` request doesn't consider pagination settings

The ACSD-54324 patch fixes the issue where the GraphQL `requisition_lists` request does not consider pagination settings and returns all results. This patch is available when the [!DNL Quality Patches Tool (QPT)] 1.1.41 is installed. The patch ID is ACSD-54324. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.6

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.5 - 2.4.6-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The GraphQL `requisition_lists` request does not consider pagination settings and returns all results.

<u>Steps to reproduce</u>:

1. Log in to admin, and navigate to **[!UICONTROL Admin]** > **[!UICONTROL Store]** > **[!UICONTROL Configuration]** > **[!UICONTROL General]** > **[!UICONTROL B2B Features]**.

    * Set *[!UICONTROL Enable Requisition List]* to *Yes*.

1. Log in to the frontend, and go to **[!UICONTROL My Requisition Lists]** from the top menu or from **[!UICONTROL My Account]**, and create multiple requisitions (example: 7).
1. After generating a customer token, run the below GraphQL `requisition_lists` query for the customer.

    * Ensure that the page size is less than the total number of requisition lists created by you (example: 4)

    ```
    {
    customer {
    requisition_lists(pageSize: 4, currentPage: 1) {
    items

    { uid name description updated_at items_count }
    total_count
    }
    }
    }
    ```

1. Observe that the value of the `total_count` field shows 7, when it should show 4. 

    The number of items also shows 7 when it should be the same as the *page size*. 

<u>Expected results</u>:

* The number listed as *page size* is returned under `total_count` and not the total number of records. 
* The number of items is the same as the *page size*.

<u>Actual results</u>:

The total number of records is returned under `total_count`, even if *page size* is mentioned.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
