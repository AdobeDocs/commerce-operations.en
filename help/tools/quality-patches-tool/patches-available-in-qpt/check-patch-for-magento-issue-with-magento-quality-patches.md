---
title: Check patch for Adobe Commerce issue with Quality Patches Tool
description: This article provides an overview of Quality Patches Tool (QPT) and links to resources explaining how to use it.
feature: Tools and External Services
role: Admin
exl-id: 4d651c3c-95ad-4b53-bf77-92758acb795d
type: Troubleshooting
product_v2:
  - id: eadea719-cf89-469b-a6fd-a236a7138047
    internal-label: Commerce
feature_v2:
  - id: 125c1f49-aefd-5f34-a252-288937f95f6b
    internal-label: Marketing Tools
subfeature_v2:
  - id: 618ab558-d6ad-5352-99d6-d5702c6fdf80
    internal-label: Tools and External Services
role_v2:
  - id: c66ffd68-0f65-42bb-aa23-b4020f12e0bd
    internal-label: Admin
level_v2:
  - id: d378ca77-2da1-4f39-ad92-1917fe974a38
    internal-label: Experienced
---
# Check patch for Adobe Commerce issue with Quality Patches Tool

This article provides an overview of Quality Patches Tool (QPT) and links to resources explaining how to use it.

## Affected products and versions

* Adobe Commerce on-premises, all [supported versions](https://www.adobe.com/content/dam/cc/en/legal/terms/enterprise/pdfs/Adobe-Commerce-Software-Lifecycle-Policy.pdf)
* Adobe Commerce on cloud infrastructure, all [supported versions](https://www.adobe.com/content/dam/cc/en/legal/terms/enterprise/pdfs/Adobe-Commerce-Software-Lifecycle-Policy.pdf)

## What is Quality Patches Tool

The [Quality Patches Tool](https://github.com/magento/quality-patches) (QPT) are individual patches developed by Adobe and the Magento Open Source community.

It allows you to:

* apply quality patches included to the package
* revert previously applied patches
* view the general information about quality patches available for the installed version of Adobe Commerce.

Here's an example of the status table you can get to view the available patches:

![Quality Patches Tool status table showing available patches and their installation status](/help/assets/tools/status_table.png)

The tool is aimed to enable you to self-serve with patches for issues you might experience with Adobe Commerce, or easily apply patches suggested by Adobe Commerce support.

>[!NOTE]
>
>QPT is for quality patches only. Security patches are available in the [Magento Security Center](/help/release/release-notes/overview.md).

## Patches available in Quality Patches Tool

Please refer to [Quality Patches Tool](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in our developer documentation for the list of available patches.

## How to install and use Quality Patches Tool

The installation and usage commands are different for Adobe Commerce on-premises and Adobe Commerce on cloud infrastructure, because for cloud the QPT package is included to the ece-tools package.

### How to install and use QPT for Adobe Commerce on-premises

Please refer to [Software Update Guide > Patching](/help/tools/quality-patches-tool/usage.md) in our developer documentation for details on how to install and use QPT for applying and reverting patches.

### How to install and use QPT for Adobe Commerce on cloud infrastructure

Please refer to [Cloud for Adobe Commerce > Apply patches](https://experienceleague.adobe.com/en/docs/commerce-on-cloud/user-guide/develop/upgrade/apply-patches) in our developer documentation for details on how to install and use QPT for applying and reverting patches on Adobe Commerce on cloud infrastructure.

## Related reading

* [Quality Patches Tool release notes](/help/tools/quality-patches-tool/release-notes.md) in our developer documentation.
* [How to apply composer patches provided by Adobe](https://experienceleague.adobe.com/en/docs/support-resources/adobe-support-tools-guide/adobe-commerce-support/how-to-apply-a-composer-patch-provided-by-magento) in the support knowledge base.
