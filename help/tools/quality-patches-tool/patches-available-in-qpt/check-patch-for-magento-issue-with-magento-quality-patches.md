---
title: Check patch for Adobe Commerce issue with Quality Patches Tool
description: This article provides an overview of Quality Patches Tool (QPT) and links to resources explaining how to use it.
feature: Tools and External Services
role: Admin
exl-id: 4d651c3c-95ad-4b53-bf77-92758acb795d
type: Troubleshooting
---
# Check patch for Adobe Commerce issue with Quality Patches Tool

This article provides an overview of Quality Patches Tool (QPT) and links to resources explaining how to use it.

## Affected products and versions

* Adobe Commerce on-premises, all [supported versions](https://www.adobe.com/content/dam/cc/en/legal/terms/enterprise/pdfs/Adobe-Commerce-Software-Lifecycle-Policy.pdf)
* Adobe Commerce on cloud infrastructure, all [supported versions](https://www.adobe.com/content/dam/cc/en/legal/terms/enterprise/pdfs/Adobe-Commerce-Software-Lifecycle-Policy.pdf)

## What are Quality Patches Tool

The [Quality Patches Tool](https://github.com/magento/quality-patches) (QPT) are individual patches developed by Adobe and the Magento Open Source community.

It allows you to:

* apply quality patches included to the package
* revert previously applied patches
* view the general information about quality patches available for the installed version of Adobe Commerce.

Here's an example of the status table you can get to view the available patches:

![Magento_patches_list](/help/assets/tools/status_table.png)

The tool is aimed to enable you to self-serve with patches for issues you might experience with Adobe Commerce, or easily apply patches suggested by Adobe Commerce support.

>[!NOTE]
>
>QPT is for quality patches only. Security patches are available in the [Magento Security Center](https://experienceleague.adobe.com/en/docs/commerce-operations/release/notes/overview).

## Patches available in Quality Patches Tool

Please refer to [Quality Patches Tool](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in our developer documentation for the list of available patches.

## How to install and use Quality Patches Tool

The installation and usage commands are different for Adobe Commerce on-premises and Adobe Commerce on cloud infrastructure, because for cloud the QPT package is included to the ece-tools package.

### How to install and use QPT for Adobe Commerce on-premises

Please refer to [Software Update Guide > Patching](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/usage) in our developer documentation for details on how to install and use QPT for applying and reverting patches.

### How to install and use QPT for Adobe Commerce on cloud infrastructure

Please refer to [Cloud for Adobe Commerce > Apply patches](https://experienceleague.adobe.com/en/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches) in our developer documentation for details on how to install and use QPT for applying and reverting patches on Adobe Commerce on cloud infrastructure.

## Related reading

* [Quality Patches Tool release notes](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/release-notes) in our developer documentation.
* [How to apply composer patches provided by Adobe](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/how-to/how-to-apply-a-composer-patch-provided-by-magento) in the support knowledge base.
