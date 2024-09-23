---
title: 'ACSD-55031: `Type "mixed" cannot be nullable` error during compilation'
description: Apply the ACSD-55031 patch to fix the Adobe Commerce issue where the  the *Type "mixed" cannot be nullable* error during compilation after installing a custom extension.
feature: Extensions
role: Admin, Developer
exl-id: 5259c744-eb8a-44a9-b6c5-7c50abe5d092
---
# ACSD-55031: `Type "mixed" cannot be nullable` error during compilation

The ACSD-55031 patch fixes the issue where the `Type "mixed" cannot be nullable` error during compilation after installing a custom extension. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.40 is installed. The patch ID is ACSD-55031. Please note that the issue was fixed in Adobe Commerce 2.4.6.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.5-p4

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.5 - 2.4.5-p5

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The `Type "mixed" cannot be nullable` error occurs during compilation.

<u>Steps to reproduce</u>:

1. Install a custom extension.
1. Run the command `bin/magento setup:di:compile`.

<u>Expected results</u>:

No errors occur during compilation.

<u>Actual results</u>:

The `var/log/system.log` file contains the error:

```
report.ERROR: Type "mixed" cannot be nullable
```

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
