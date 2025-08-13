---
title: 'ACSD-66153: Page returns 500 due to incorrect layout structure being cached'
description: Apply the ACSD-66153 patch to fix the Adobe Commerce fixed then issue when a page would return a 500 error code, due to an incorrect layout structure being cached in the layout.
feature: Catalog Management
role: Admin, Developer
---

# ACSD-66153: Page returns 500 due to incorrect layout structure being cached

The ACSD-66153 patch fixes the issue where a page returns a 500 error due to an incorrect layout structure being cached. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.69 is installed. The patch ID is ACSD-66153. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.4.9.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.5-p10

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.8-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Issue where a page returns a 500 error due to an incorrect layout structure being cached.

<u>Steps to reproduce</u>:

1. Install `2.4-develop` 
1. Create and install a custom module
    1. This module should add a custom block to the `catalog_category_view` layout.
    1. The custom block injects `Magento\Framework\View\Result\Layout` via its constructor.
1. Create a category "shop"
1. Open **two terminal windows**:
    1. **Terminal 1**: Repeatedly clean the layout cache:
    {noformat}
    for i in {1..200}; do
      bin/magento cache:clean layout
    done{noformat}
    1. **Terminal 2**: Simulate concurrent requests to a category page:
    {noformat}
    for i in {1..200}; do
      curl -s -o /dev/null -w "Request $i: HTTP %{http_code}\n" "http://your_magento_base_url/shop.html?req=$i"
    done {noformat}
1. It can be observed that some requests randomly fails with 500 status code
and  `var/log/support_report.log` contains errors like: 
{noformat}
report.CRITICAL: The element with the "root" ID wasn't found. Verify the ID and try again. [] []{noformat}

<u>Expected results</u>:

All requests should return 200 OK.

<u>Actual results</u>:

Some requests intermittently return 500 Internal Server Error.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.