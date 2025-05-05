---
title: "MDVA-43718: 'consumer isn't authorized to access resources' error appears when accessing shared catalog"
description: The MDVA-43718 patch solves the issue where the error *consumer isn't authorized to access %resources.* appears when accessing a shared catalog from a custom integration. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) 1.1.15 is installed. The patch ID is MDVA-43718. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.5.
feature: Catalog Management
role: Admin
exl-id: 2ced2177-aeff-4c36-8d34-6028539b66bd
---
# MDVA-43718: 'consumer isn't authorized to access resources' error appears when accessing shared catalog

The MDVA-43718 patch solves the issue where the error *consumer isn't authorized to access %resources.* appears when accessing a shared catalog from a custom integration. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) 1.1.15 is installed. The patch ID is MDVA-43718. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.5.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.3.0 - 2.4.4

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches). Use the patch ID as a search keyword to locate the patch.

## Issue

The following error appears when accessing a shared catalog from a custom integration: *The consumer isn't authorized to access %resources*.

<u>Steps to reproduce</u>:

1. Create a new integration from the Admin > **System** > **Integration** > **Add Integration**.
1. Add access for the following resources and activate the integration:

    * Magento_SharedCatalog::list
    * Magento_SharedCatalog::manage
    * Magento_Catalog::catalog

1. Using the integration access: `rest/default/V1/sharedCatalog/1`

<u>Expected results</u>:

Details of the shared catalog are returned.

<u>Actual results</u>:

The following error is returned:

```JSON
"message": "The consumer isn't authorized to access %resources.",
"resources": "Magento_SharedCatalog::sharedCatalog"
```

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!DNL Quality Patches Tool] guide.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
