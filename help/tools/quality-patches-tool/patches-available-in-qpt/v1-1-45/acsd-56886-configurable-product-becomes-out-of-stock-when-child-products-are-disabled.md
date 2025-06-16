---
title: 'ACSD-56886: Configurable product becomes out of stock when child products disabled'
description: Apply the ACSD-56886 patch to fix the Adobe Commerce issue where the configurable product becomes out of stock child when products are disabled.
feature: Products
role: Admin, Developer
exl-id: 5e9c1fd4-b56a-42c0-83e7-75e868213124
---
# ACSD-56886: Configurable product becomes out of stock when child products are disabled 

The ACSD-56886 patch fixes the issue where the configurable product becomes out of stock when child products are disabled. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.45 is installed. The patch ID is ACSD-56886. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.5-p5

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.2 - 2.4.6-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The configurable product becomes out of stock when child products are disabled.

<u>Steps to reproduce</u>:

1. Log in as Admin.
1. Set all indexers in the **[!UICONTROL Update By Schedule]** mode.
1. Create the following configurable product:

    * Name = *TEST CONFIGURABLE 1*
    * Attribute = *color*
    * Values = *red* and *black*
    * Price of the **red**  child product = *$100*;
    * Price of the "black" child product = *$200*.

1. Create the following scheduled update for the configurable product:

    * Start Date = *3* minutes from now.
    * End Date = *5* minutes after Start Date.
    * Product Name = *TEST CONFIGURABLE 1 edited*.
    * Disable the **red** child product in **Configurable** section.

1. Wait for the Start Date.
1. Open the configurable product details on the Storefront.

<u>Expected results</u>:

The configurable product is displayed as **In Stock** with the **As low as 200** label.

<u>Actual results</u>:

The configurable product is displayed as **Out Of Stock**.
 
## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!UICONTROL Quality Patches Tool] guide.


For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
