---
title: 'ACSD-64813: Unassigning categories in [!DNL B2B] shared catalog via REST API is slow'
description: Apply the ACSD-64813 patch to fix the Adobe Commerce issue where unassigning categories in a [!DNL B2B] shared catalog via the REST API is slow.
feature: B2B, REST, Categories
role: Admin, Developer
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

Unassigning categories in a [!DNL B2B] shared catalog via the REST API takes a long time.

<u>Steps to reproduce</u>:

1. Enable [!DNL B2B], Company, and Shared Catalog.
1. Generate 30,000 active, in-stock products.
1. Create a [custom shared catalog](https://experienceleague.adobe.com/en/docs/commerce-admin/b2b/shared-catalogs/catalog-shared#actions-controls) and assign all products to it.
1. Create a new category under the Default root category and assign a few products to it.
1. Use the admin token to call the REST API endpoint `rest/all/V1/sharedCatalog/<shared_catalog_id>/assignCategories` with the new category ID.

	  ```
	  {
	    "categories": [
	      { "id": <new category id> }
	    ]
	  }
	  ```
1. Confirm the response is *true*.
1. Run `bin/magento cron:run` twice or perform a reindex.
1. Use the admin token to execute the following REST API call with the new category ID: `rest/all/V1/sharedCatalog/<shared_catalog_id>/unassignCategories`.

	  ```
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
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
