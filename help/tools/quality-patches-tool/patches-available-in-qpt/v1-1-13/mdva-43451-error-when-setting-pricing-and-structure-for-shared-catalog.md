---
title: 'MDVA-43451: Error when setting Pricing and Structure for shared catalog'
description: The MDVA-43451 patch solves the issue where the user is unable to set the Pricing and Structure for a shared catalog. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.13 is installed. The patch ID is MDVA-43451. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.5.
feature: Catalog Management
role: Admin
exl-id: 2cddfca2-ee32-4e73-9ef6-78125fbaa13d
type: Troubleshooting
---
# MDVA-43451: Error when setting Pricing and Structure for shared catalog

The MDVA-43451 patch solves the issue where the user is unable to set the Pricing and Structure for a shared catalog. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.13 is installed. The patch ID is MDVA-43451. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.5.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.3-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.3 - 2.4.4

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches). Use the patch ID as a search keyword to locate the patch.

## Issue

The user is unable to set Pricing and Structure for a shared catalog. The following message is displayed: *The store that was requested wasn't found. Verify the store and try again.*

<u>Steps to reproduce</u>:

1. Create a custom website. The ids of the websites should be 0, 1, 2.
1. Create one store under the above website. The ids of the stores should be 0,1,2.
1. Create three store views for the above store. The ids of the store views should be 0,1, 2, 3, 4.
1. Delete the store view with id 2. Now the store table should look similar to the below table.

    ```bash
    MariaDB [m24devinvb2b]> SELECT store_id,code,website_id,group_id,name FROM store;
    +----------+----------------+------------+----------+--------------------+
    | store_id | code           | website_id | group_id | name               |
    +----------+----------------+------------+----------+--------------------+
    |        0 | admin          |          0 |        0 | Admin              |
    |        1 | default        |          1 |        1 | Default Store View |
    |        3 | web1storeview2 |          2 |        2 | web1storeview2     |
    |        4 | web1storeview3 |          2 |        2 | web1storeview3     |
    +----------+----------------+------------+----------+--------------------+
    ```

1. Create a new shared catalog.
1. When configuring Price and Structure, select the store created in Step 2.
1. Save the shared catalog.

<u>Expected results</u>:

The shared catalog is saved without any issue.

<u>Actual results</u>:

You are unable to save the shared catalog. The following error is displayed:
*The store that was requested wasn't found. Verify the store and try again.*

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!DNL Quality Patches Tool] guide.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
