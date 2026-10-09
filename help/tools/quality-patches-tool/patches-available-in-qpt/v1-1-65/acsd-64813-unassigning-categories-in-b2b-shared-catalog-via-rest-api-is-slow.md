---
title: 'ACSD-64813: Unassigning categories in [!DNL B2B] shared catalog via REST API is slow'
description: Apply the ACSD-64813 patch to fix the Adobe Commerce issue where unassigning categories in a [!DNL B2B] shared catalog via the REST API is slow.
feature: B2B, REST, Categories
role: Admin, Developer
type: Troubleshooting
exl-id: e6fd89c2-d3c0-462f-b328-7a80b456d96d
product_v2:
  - id: eadea719-cf89-469b-a6fd-a236a7138047
    internal-label: Commerce
feature_v2:
  - id: bd989d82-1e15-4534-88db-f1f51dd77ffa
    internal-label: Accounts
  - id: c4f010fa-1478-4300-a88d-706fbc036a7a
    internal-label: APIs and SDKs
  - id: c18ed297-2187-4aec-affb-9d9654eca6fc
    internal-label: Catalog management
subfeature_v2:
  - id: f56d26ed-050b-4fb7-b29b-8e6e994e80a2
    internal-label: B2B
  - id: e0ca0e7a-9738-48d1-b98b-615468ab4aaf
    internal-label: REST API
  - id: e91a50b1-0b31-436e-9033-00e4776e94cb
    internal-label: Categories
role_v2:
  - id: c66ffd68-0f65-42bb-aa23-b4020f12e0bd
    internal-label: Admin
  - id: ff6a42d2-313e-452e-93a6-792e4fad9ff8
    internal-label: Developer
level_v2:
  - id: d378ca77-2da1-4f39-ad92-1917fe974a38
    internal-label: Experienced
---
# ACSD-64813: Unassigning categories in [!DNL B2B] shared catalog via REST API is slow

The ACSD-64813 patch fixes the issue where unassigning categories in a [!DNL B2B] shared catalog via the REST API is slow. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.65 is installed. The patch ID is ACSD-64813. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.4.9.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.7-p3

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.8

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Unassigning categories in a [!DNL B2B] shared catalog via the REST API is slow.

<u>Steps to reproduce</u>:

1. Enable **[!UICONTROL B2B]**, **[!UICONTROL Company]**, and **[!UICONTROL Shared Catalog]**.
1. Generate 30,000 active, in-stock products.
1. Create a [custom shared catalog](https://experienceleague.adobe.com/en/docs/commerce-admin/b2b/shared-catalogs/catalog-shared#actions-controls) and assign all products to it.
1. Create a new category under the default root category and assign a few products to it.
1. Use the admin token to call the REST API endpoint `rest/all/V1/sharedCatalog/<shared_catalog_id>/assignCategories` with the new category ID.

    ```json
    {
      "categories": [
        { "id": <new category id> }
      ]
    }
    ```
   
1. Confirm the response is *true*.
1. Run `bin/magento cron:run` twice or perform a reindex.
1. Use the admin token to call the REST API endpoint `rest/all/V1/sharedCatalog/<shared_catalog_id>/unassignCategories` with the new category ID.

    ```json
    {
      "categories": [
        { "id": <new category id> }
      ]
    }
    ```

<u>Expected results</u>:

The operation should complete in a reasonable time (under a couple of minutes).

<u>Actual results</u>:

The execution takes about 30 minutes or results in a timeout error.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/en/docs/commerce-on-cloud/user-guide/develop/upgrade/apply-patches) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
