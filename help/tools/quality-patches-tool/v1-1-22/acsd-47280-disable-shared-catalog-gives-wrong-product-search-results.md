---
title: '[!DNL ACSD-47280]: Disable shared catalog gives wrong product search results'
description: Apply the [!DNL ACSD-47280] patch to fix displaying the correct search results when the shared catalog feature is disabled.
exl-id: 98bbae42-fd68-4b54-823d-189d742cc35f
---
# [!DNL ACSD-47280]: Disabling shared catalog gives wrong product search results

The [!DNL ACSD-47280] patch fixes the display of the correct search results when the [!DNL shared catalog] feature is disabled. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.22 is installed. The [!DNL patch ID] is [!DNL ACSD-47280]. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.6.

## Affected products and versions

**The patch is created for Adobe Commerce version:**
* Adobe Commerce (all deployment methods) 2.4.5

**Compatible with Adobe Commerce versions:**
* Adobe Commerce (all deployment methods) 2.4.0 - 2.4.5-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the [!DNL patch ID] as a search keyword to locate the patch.

## Issue

Disabling [!DNL shared catalog] gives wrong product search results.

<u>Prerequisites</u>:

* [!DNL B2B] modules installed

<u>Steps to reproduce</u>:

1. Create a second website.
1. Assign a product to the second website.
1. Check products on the **second website** using [!DNL GraphQL]:

    ```GraphQL
    {
      products(search: "bag", pageSize: 2) {
        total_count
        items {
          name
          sku
        }
        page_info {
          page_size
          current_page
        }
      }
    }
    ```

1. Enable **[!UICONTROL Shared Catalog]** on default [!DNL scope].
1. The [!DNL GraphQL] request does not show any products for the second website anymore, which is the correct result.
1. Go to the [!DNL scope] of second website and disable **[!UICONTROL Company]**.

<u>Expected results</u>:

The [!DNL GraphQL] request still should show products for the second website.

<u>Actual results</u>:

The [!DNL GraphQL] request does not show any products for the second website.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
