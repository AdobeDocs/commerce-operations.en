---
title: 'MDVA-31763: Catalog price rules are reverted until manual reindex'
description: The MDVA-31763 patch solves the issue where catalog price rules are reverted until manual reindex. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.5 is installed. The patch ID is MDVA-31763. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.4.
feature: Catalog Management, Orders, Price Rules
role: Admin
exl-id: 1d144bfc-c26b-43d0-a80c-26a9c2d8ef32
type: Troubleshooting
---
# MDVA-31763: Catalog price rules are reverted until manual reindex

The MDVA-31763 patch solves the issue where catalog price rules are reverted until manual reindex. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.5 is installed. The patch ID is MDVA-31763. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.4.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.3.5-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.3.0 - 2.4.3-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches). Use the patch ID as a search keyword to locate the patch.

## Issue

When `catalogrule_product` partial indexer is executed on configurable products, catalog rules get disappeared.

<u>Steps to reproduce</u>:

1. Log in to the Admin backend.
1. Go to **Stores** > **Attributes** > **Product** and search for the "manufacturer" attribute.
    * Add a few options and set "Use for Promo Rule Conditions" to *Yes*.
1. Go to **Stores** > **Attributes** > **Attribute Sets**.
    * Select the default attribute set and add the "manufacturer" attribute to it.
1. Create a configurable product with a couple of variations.
1. Set "manufacturer" attribute value for previously created configurable product.
1. Create catalog rules:
    * Active = Yes
    * Websites = Main Website
    * Customer Groups = NOT LOGGED IN
    * Conditions: manufacturer = \<selected value for configurable product>
    * Actions: Any discount
1. Do a full index.
1. Check product price on PDP and make sure the price is correct.
1. Update the "weight" attribute of the created configurable product.
1. Check product price on PDP.

<u>Expected results</u>:

The catalog price rules set on configurable products are not removed during partial reindex.

<u>Actual results</u>:

The catalog price rules set on configurable products are disappeared during partial reindex.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!DNL Quality Patches Tool] guide.

For info about other patches available in QPT, refer to the [Patches available in QPT](https://support.magento.com/hc/en-us/sections/360010506631-Patches-available-in-MQP-tool-) section.
