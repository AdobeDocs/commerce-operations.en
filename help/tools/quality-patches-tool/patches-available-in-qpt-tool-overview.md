---
title: Patches available in QPT tool overview
description: This article provides an overview of [!DNL Quality Patches Tool] (QPT) and links to resources explaining how to use it.
exl-id: ac1c6088-44fe-452c-a39b-3c35697e1cc3
feature: Support, Tools and External Services
role: Admin
---
# Patches available in QPT tool overview

This article provides an overview of [!DNL Quality Patches Tool] (QPT) and links to resources explaining how to use it.

## Affected products and versions

* Adobe Commerce on-premises, all [supported versions](https://www.adobe.com/content/dam/cc/en/legal/terms/enterprise/pdfs/Adobe-Commerce-Software-Lifecycle-Policy.pdf)
* Adobe Commerce on cloud infrastructure, all [supported versions](https://www.adobe.com/content/dam/cc/en/legal/terms/enterprise/pdfs/Adobe-Commerce-Software-Lifecycle-Policy.pdf)

## What is the Quality Patches Tool?

The [[!DNL Quality Patches Tool]](https://github.com/magento/quality-patches) (QPT) is a tool allowing you to apply individual quality patches developed by Adobe and the Magento Open Source community.

It allows you to:

* apply quality patches included to the package
* revert previously applied patches
* view the general information about quality patches available for the installed version of Adobe Commerce.

Here's an example of the status table you can get to view the available patches:

![Magento_patches_list](assets/status_table.png)

The tool is aimed to enable you to self-serve with patches for issues you might experience with Adobe Commerce, or easily apply patches suggested by Adobe Commerce support.

>[!NOTE]
>
>QPT is for quality patches only. Security patches are available in the [Release notes for Adobe Commerce and Magento Open Source](https://experienceleague.adobe.com/docs/commerce-operations/release/notes/overview.html).

## Patches available in the [!DNL Quality Patches Tool]

In this section of the Adobe Commerce Support Knowledge Base, you will find detailed descriptions of the issues, solved by QPT patches, grouped by QPT release version.
You can also see a list of available QPT patches and filter the by component, using the dynamically generated table on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in our support knowledge base.

## How to install and use the [!DNL Quality Patches Tool]

The installation and usage commands are different for Adobe Commerce on-premises and Adobe Commerce on cloud infrastructure, because for cloud the QPT package is included to the ece-tools package.

### How to install and use QPT for Adobe Commerce on-premises

Please refer to [Commerce > Tools > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in our developer documentation for details on how to install and use QPT for applying and reverting patches.

### How to install and use QPT for Adobe Commerce on cloud infrastructure

Please refer to [Commerce on Cloud Infrastructure Guide > Apply patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in our developer documentation for details on how to install and use QPT for applying and reverting patches on Adobe Commerce on cloud infrastructure.

## Related reading

* [[!DNL Quality Patches Tool] release notes](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/release-notes.html) in our developer documentation.
