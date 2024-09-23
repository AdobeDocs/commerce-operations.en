---
title: 'ACSD-54660: New input attribute sort to sort customer orders in [!DNL GraphQL]'
description: Apply the ACSD-54660 patch to fix the Adobe Commerce issue where a new input attribute `sort` added to sort customer orders in [!DNL GraphQL] by `sort_field` and `sort_direction`.
feature: GraphQL, Orders
role: Admin, Developer
exl-id: 29869139-e5e2-4b00-a090-e2c6673ff9ca
---
# ACSD-54660:  New input attribute sort added to sort customer orders in [!DNL GraphQL]

The ACSD-54660 patch fixes the issue where a new input attribute `sort` added to sort customer orders in [!DNL GraphQL] by `sort_field` and `sort_direction`. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.39 is installed. The patch ID is ACSD-54660. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.6.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.5-p2

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.5-p5

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

New input attribute `sort` added to sort customer orders in [!DNL GraphQL] by `sort_field` and `sort_direction`.

<u>Steps to reproduce</u>:

Query customer orders using [!DNL GraphQL]:

```
  {
    customerOrders {
      items {
        order_number
        id
        created_at
        grand_total
        status
      }
    }
  }
```

<u>Expected results</u>:

This patch adds `sort` and `sort_direction` arguments to `customer.orders`.

<u>Actual results</u>:

It's not possible to sort the orders using [!DNL GraphQL].

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
