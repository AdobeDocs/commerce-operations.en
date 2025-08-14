---
title: 'ACSD-66153: Page returns 500 error due to cached incorrect layout structure'
description: Apply the ACSD-66153 patch to fix the Adobe Commerce issue where a page returns a 500 error code due to a cached incorrect layout structure.
feature: Catalog Management
role: Admin, Developer
type: Troubleshooting
---

# ACSD-66153: Page returns 500 error due to cached incorrect layout structure

The ACSD-66153 patch fixes the issue where a page returns a 500 error code due to a cached incorrect layout structure. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.69 is installed. The patch ID is ACSD-66153. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.4.9.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.5-p10

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.8-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

A page returns a 500 error because of a cached incorrect layout structure.

<u>Steps to reproduce</u>:

1. Install `2.4-develop.
1. Create and install custom module
    1.1 Add a custom block to the `catalog_category_view` layout.
    1.1 Inject `Magento\Framework\View\Result\Layout` into the custom block through its constructor.
1. Create the category **[!UICONTROL shop]**.
1. Open **[!UICONTROL two terminal windows]**:
    1. **Terminal 1**: Continuously clean the layout cache:

   ```
    for i in {1..200}; do
      bin/magento cache:clean layout
    done
   ```
   
    1. **Terminal 2**: Simulate concurrent requests to the category page:

   ```
   for i in {1..200}; do
      curl -s -o /dev/null -w "Request $i: HTTP %{http_code}\n" "http://your_magento_base_url/shop.html?req=$i"
    done
   ```
1. Some requests randomly fail with a 500 status code. The var/log/support_report.log file shows errors like: 
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
