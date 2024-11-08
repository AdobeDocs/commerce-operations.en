---
title: 'ACSD-45424: Incorrect reservation compensation created after partial refund'
description: The ACSD-45424 patch fixes the issue where an incorrect reservation compensation is created after a partial refund. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) 1.1.17 is installed. The patch ID is ACSD-45424. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.6.
feature: Orders
role: Admin
exl-id: 94435816-9f4a-40f9-be80-05836ed7781f
---
# ACSD-45424: Incorrect reservation compensation created after partial refund

The ACSD-45424 patch fixes the issue where an incorrect reservation compensation is created after a partial refund. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) 1.1.17 is installed. The patch ID is ACSD-45424. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.6.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.3.4 - 2.4.4

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches). Use the patch ID as a search keyword to locate the patch.

## Issue

Incorrect reservation compensation is created after a partial refund.

<u>Steps to reproduce</u>:

1. Enable in-store delivery shipping method.
1. Create three inventory sources and make sure the pickup location is active in each (source1, source2, source3).
1. Create a new stock and assign the three sources to the new stock.
    * This stock should be assigned to the main website.
1. Create a simple product, P3, and assign all the sources to it.
1. Add the following quantities for the sources of the simple product and enable backorders:
    * Default source - 100
    * source1 - 0
    * source2 - 10
    * source3 - 0
1. Add the simple product to the cart from the frontend and proceed to shipping form.
1. Select "source1" as the shipping location.
1. Complete the order and execute the following query in the database:

    ```sql
    SELECT * FROM inventory_reservation WHERE sku = 'P3';
    ```

    You will get the order placed record in the `inventory_reservation` table. The quantity is 10, which is correct.
1. Invoice this order from the backend.
1. Now create a credit memo for only one product. DO NOT select the *Return to Stock* checkbox.
1. Execute the same query from Step 8.

<u>Expected results</u>:

If you did not select the *Return to Stock* during the credit memo creation, the `inventory_reservation` table will not have a record corresponding to the credit memo.

<u>Actual results</u>:

Even though you didn't select the *Return to Stock* during the credit memo creation, it adds a record to `inventory_reservation` table with `creditmemo_created` event type. Also, the credit memo record added in the `inventory_reservation` table has a quantity of 10 even though you created the credit memo for only one quantity.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!DNL Quality Patches Tool] guide.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
