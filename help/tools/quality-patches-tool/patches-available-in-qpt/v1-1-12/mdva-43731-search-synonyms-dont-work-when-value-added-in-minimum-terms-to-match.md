---
title: "MDVA-43731: Search Synonyms don't work when value is added in 'Minimum Terms to Match'"
description: The MDVA-43731 patch fixes the issue where Search Synonyms stop working when a value is added in "Minimum Terms to Match". This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) 1.1.12 is installed. The patch ID is MDVA-43731. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.5.
feature: Cache, Marketing Tools, Search
role: Admin
exl-id: 1eada0cd-c0ab-4f0f-b6bf-7c10e1df07ce
---
# MDVA-43731: Search Synonyms don't work when value is added in 'Minimum Terms to Match'

The MDVA-43731 patch fixes the issue where Search Synonyms stop working when a value is added in "Minimum Terms to Match". This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) 1.1.12 is installed. The patch ID is MDVA-43731. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.5.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.3

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.3 - 2.4.3-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches). Use the patch ID as a search keyword to locate the patch.

## Issue

Search Synonyms stop working when a value is added in "Minimum Terms to Match".

<u>Steps to reproduce</u>:

1. Install Adobe Commerce with sample data.
1. Configure ElasticSearch7 as the search engine.
1. Search for the word "Jacket". A list of products will show.
1. Add the parameter [4<60%] in **Configuration** > **Catalog** > **Catalog Search** > **Minimum Terms to Match**.
1. Clear Config Cache and do a reindex.
1. Again search for the word "Jacket" and notice that a list of products is displayed.
1. Go to **Marketing** > **SEO & Search** > **Search Synonyms**.
1. Create Search Synonyms by adding the following synonyms: jacket, bagtecs, express plus.
1. Do a reindex.
1. Do a product search using any of the synonyms. E.g., jacket.

<u>Expected results</u>:

You get the same product list as before in the search results.

<u>Actual results</u>:

No product is shown in the search results.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!DNL Quality Patches Tool] guide.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
