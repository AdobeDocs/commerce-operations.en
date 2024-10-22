---
title: "ACSD-59952: Error on deleting shared catalog with same group ID as another shared catalog"
description: Apply the ACSD-59952 patch to fix the Adobe Commerce issue where an error is thrown when deleting a shared catalog with the same `customer_group_id` as another shared catalog.
feature: B2B, REST
role: Admin, Developer
---

# ACSD-59952: Error on deleting shared catalog with same group ID as another shared catalog

The ACSD-59952 patch fixes the error thrown when deleting shared catalogs with the same `customer_group_id` as another shared catalog. It further prevents users from creating such shared catalogs. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) 1.1.52 is installed. The patch ID is ACSD-59952. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.6-p4

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.7-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

A new shared catalog with the same `customer_group_id` as another shared catalog cannot be created. However, on doing so, trying to delete the shared catalog with the same `customer_group_id` throws an error.  

<u>Prerequisites</u>:

Install the Adobe Commerce B2B modules.

<u>Steps to reproduce</u>:

1. Create multiple shared catalogs assigned to the same `customer_group_id` using the following REST API call:

    ```REST
    {
        "sharedCatalog": {
            "name": "test1",
            "description": "test",
            "customer_group_id": 1,
            "type": 0,
            "created_at": "03:11:00",
            "created_by": 1,
            "store_id": 0,
            "tax_class_id": 3
        }
    }
    ```

1. Try to delete any of the shared catalogs using the following Rest API call:

    ```
    /rest/default/V1/sharedCatalog/4
    ```

<u>Expected results</u>:

1. Creating multiple shared catalogs assigned to the same `customer_group_id` is not possible.
1. The shared catalog in the above case is deleted successfully.

<u>Actual results</u>:

1. It is possible to create multiple shared catalogs assigned to the same `customer_group_id`.
1. The following error is returned when trying to delete the shared catalog with the same `customer_group_id`: *Cannot delete shared catalog*.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
