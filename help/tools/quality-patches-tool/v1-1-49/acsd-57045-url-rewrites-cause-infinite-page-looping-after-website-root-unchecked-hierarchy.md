---
title: 'ACSD-57045: URL rewrites cause infinite page looping after [!UICONTROL Website Root] unchecked from [!UICONTROL Hierarchy]'
description: Apply the ACSD-57045 patch to fix the Adobe Commerce issue where URL rewrites cause infinite page looping after [!UICONTROL Website Root] is unchecked from [!UICONTROL Hierarchy].
feature: CMS
role: Admin, Developer
---

# ACSD-57045: URL rewrites cause infinite page looping after [!UICONTROL Website Root] unchecked from [!UICONTROL Hierarchy]

The ACSD-57045 patch fixes the issue where URL rewrites cause infinite page looping after **[!UICONTROL Website Root]** is unchecked from **[!UICONTROL Hierarchy]**. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.49 is installed. The patch ID is ACSD-57045. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.5.0.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.6-p2

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.5 - 2.4.6-p7

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

URL rewrites cause infinite page looping  after **[!UICONTROL Website Root]** is deselected from **[!UICONTROL Hierarchy]**.

<u>Steps to reproduce</u>:

1. Create a CMS page named *Test-Parent*.
1. Create a page named *Test-Child*, and in the **[!UICONTROL Hierarchy]** section, select **[!UICONTROL Website Root]** > **[!UICONTROL Parent]** and save.
1. Go to **[!UICONTROL Marketing]** > **[!UICONTROL URL Rewrites]**.
1. Notice that there are two new rewrites:
   * Request path to *Test-Parent* that points to *cms/page/view/page_id/ID_NUMBER_FOR_PAGE*
   * Request path to *Test-Child* that points to *cms/page/view/page_id/ID_NUMBER_FOR_PAGE*
1. Visit the storefront and add *test-child* to the URL. You should see the child page.
1. Do the same thing, but add *test-parent/test-child/* to the URL and see the same page.
1. Go to **[!UICONTROL Marketing]** > **[!UICONTROL URL Rewrites]** and select **[!UICONTROL Add URL Rewrite]**. Choose the following settings:
   * Type: *Custom*
   * Request path: *test-parent/test-child*
   * Target path: *test-child*
   * Redirect Type: *Permanent (301)*
1. Visit the *test-parent/test-child* path and you should be redirected to *test-child*.
1. Edit the Child page (**[!UICONTROL Content]** > **[!UICONTROL Elements]** > **[!UICONTROL Pages]** > Pick Child and select **[!UICONTROL Edit]**).
1. Under the **[!UICONTROL Hierarchy]** section, keep *Test-Parent* selected but unselect **[!UICONTROL Website Root]** and save.
1. Go to **[!UICONTROL Marketing]** > **[!UICONTROL URL Rewrites]** and notice that the original *test-child* to *cms/page/view/page_id* redirect is missing, and at that point it is substituted by a path that points the *test-child* to *test-parent/test-child*.
1. Visit the storefront and try to visit the *Test-Child* page.

<u>Expected results</u>:

The *Test-Child* page is opened.

<u>Actual results</u>:

The *Test-Child* page is not opened. The browser tries to open the *test-parent/test-child* page in an infinite loop.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
