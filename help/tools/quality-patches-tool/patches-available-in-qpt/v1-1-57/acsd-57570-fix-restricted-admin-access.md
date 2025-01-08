---
title: 'ACSD-57570: Fix for restricted admin user access to shared catalogs'
description: Apply the ACSD-57570 patch to fix the Adobe Commerce issue where a restricted admin user with access to a particular store cannot consistently view all shared catalogs assigned to products or save customer information, leading to system inconsistencies.
feature: B2B, Companies, Roles/Permissions
role: Admin, Developer
---

# ACSD-57570: Fix for restricted admin user access to shared catalogs

The ACSD-57570 patch fixes the issue where a restricted admin user with access to a particular store cannot consistently view all shared catalogs assigned to products or save customer information, leading to system inconsistencies. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.57 is installed. The patch ID is ACSD-57570. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.5.0.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.4-p3

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.3 - 2.4.4-p9

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

A restricted admin user with access to a particular store cannot always see all shared catalogs or save customers, leading to inconsistencies. With multiple stores, the restricted admin cannot see new companies or custom shared catalogs.

<u>Steps to reproduce</u>:

1. Set up stores in the following order:
    * Create a new website named W2.
    * Create a new store view for the default website.
    * Create a new store named W2S2 for website W2.
    * Create a new store view named W2S2SV1 for the store W2S2.
    * Create another new store view named W2S2SV2 for the store W2S2.
    * Create a company for W2.
1. Assign products:
    * Assign some products to W1 only.
    * Assign some products to W2 only.
    * Assign some products to both W1 and W2.
1. Create a custom shared catalog and assign all products to it.
1. Create a custom admin role with access to only **W2S2**, not **W2**.
1. Assign the restricted admin user to the new custom admin role.
1. Log in as the restricted admin user.
1. Verify access:
    * Check which companies you can see.
    * Check which shared catalogs you can see.
    * Open the products list and verify if you can see all the shared catalogs to which the products are assigned.

<u>Expected results</u>:

The behavior should be consistent.

<u>Actual results</u>:

If you create only one additional website, store, and store view, the restricted admin user can see the company, the shared catalog, and both shared catalogs in the product list. With the above setup, the restricted admin cannot see the new company or the custom shared catalog, and only the Default shared catalog is displayed in the product list.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
