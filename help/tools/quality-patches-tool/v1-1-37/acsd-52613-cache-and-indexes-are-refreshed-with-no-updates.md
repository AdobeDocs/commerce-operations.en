---
title: 'ACSD-52613: Cache and indexes are refreshed with no updates'
description: Apply the ACSD-52613 patch to fix the Adobe Commerce issue where the cache and indexes are refreshed when no updates are made to `Inventory_source` items by [!DNL REST API].
feature: REST
role: Admin
exl-id: 78f23fee-a48e-4ee2-bc75-e98e3dd1ac44
---
# ACSD-52613: Cache and indexes are refreshed even with no updates

The ACSD-52613 patch fixes the issue where the Adobe Commerce issue where the cache and indexes are refreshed when no updates are made to `Inventory_source` items by [!DNL REST API]. This patch is available when the [!DNL Quality Patches Tool (QPT)] 1.1.37 is installed. The patch ID is ACSD-52613. Please note that the issue was fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.6

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.6 - 2.4.7

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Cache and indexes are refreshed when no updates are made to `Inventory_source` items by [!DNL REST API].

<u>Prerequisites</u>:

Inventory modules installed 

<u>Steps to reproduce</u>:

1. Turn developer mode to have `debug.log`.
1. Prepare import file with 100 products - import.csv:

   ```
   sku    name    product_type    attribute_set_code    price
   test_sku_1    test_sku_1    simple    Default    10
   test_sku_2    test_sku_2    simple    Default    10
   ...
   test_sku_100    test_sku_100    simple    Default    10
   ```
   
1. Import products from `import.csv`
1. Create new stock and source called **test_stock** and **test_source**.
1. Assign new stock to the website, and assign source to stock.
1. Create a new integration with access to all, activate it and copy-paste the Access Token.
1. Go to **Stores** > **Configuration** > **Services** > **Oauth** > **Consumer Settings** and enable **Allow OAuth Access Tokens to be used as standalone Bearer tokens**.
1. Flush the cache.
1. Set indexers as **Updated by schedule**
1. Execute API request

   `POST ../rest/V1/inventory/source-items`

   using this as the body 

   ```
   {
    "sourceItems": [
        {
            "sku": "test_sku_1",
            "source_code": "test_source",
            "quantity": 24,
            "status": 1
        },
        {
            "sku": "test_sku_2",
            "source_code": "test_source",
            "quantity": 50,
            "status": 1
        },
        {
            "sku": "test_sku_3",
            "source_code": "test_source",
            "quantity": 50,
            "status": 1
        },
        {
            "sku": "test_sku_4",
            "source_code": "test_source",
            "quantity": 0,
            "status": 0
        },
        {
            "sku": "test_sku_5",
            "source_code": "test_source",
            "quantity": 0,
            "status": 0
        },
        {
            "sku": "test_sku_6",
            "source_code": "test_source",
            "quantity": 19,
            "status": 1
        },
        {
            "sku": "test_sku_7",
            "source_code": "test_source",
            "quantity": 50,
            "status": 1
        },
        {
            "sku": "test_sku_8",
            "source_code": "test_source",
            "quantity": 0,
            "status": 0
        },
        {
            "sku": "test_sku_9",
            "source_code": "test_source",
            "quantity": 0,
            "status": 0
        },
        {
            "sku": "test_sku_10",
            "source_code": "test_source",
            "quantity": 0,
            "status": 0
        },
        {
            "sku": "test_sku_11",
            "source_code": "test_source",
            "quantity": 0,
            "status": 0
        },
        {
            "sku": "test_sku_12",
            "source_code": "test_source",
            "quantity": 0,
            "status": 0
        },
        {
            "sku": "test_sku_13",
            "source_code": "test_source",
            "quantity": 50,
            "status": 1
        },
        {
            "sku": "test_sku_14",
            "source_code": "test_source",
            "quantity": 0,
            "status": 0
        },
        {
            "sku": "test_sku_15",
            "source_code": "test_source",
            "quantity": 0,
            "status": 0
        },
        {
            "sku": "test_sku_16",
            "source_code": "test_source",
            "quantity": 0,
            "status": 0
        },
        {
            "sku": "test_sku_17",
            "source_code": "test_source",
            "quantity": 0,
            "status": 0
        },
        {
            "sku": "test_sku_18",
            "source_code": "test_source",
            "quantity": 0,
            "status": 0
        },
        {
            "sku": "test_sku_19",
            "source_code": "test_source",
            "quantity": 0,
            "status": 0
        },
        {
            "sku": "test_sku_20",
            "source_code": "test_source",
            "quantity": 0,
            "status": 0
        },
        {
            "sku": "test_sku_21",
            "source_code": "test_source",
            "quantity": 0,
            "status": 0
        },
        {
            "sku": "test_sku_22",
            "source_code": "test_source",
            "quantity": 0,
            "status": 0
        },
        {
            "sku": "test_sku_23",
            "source_code": "test_source",
            "quantity": 0,
            "status": 0
        },
        {
            "sku": "test_sku_24",
            "source_code": "test_source",
            "quantity": 2,
            "status": 1
        },
        {
            "sku": "test_sku_25",
            "source_code": "test_source",
            "quantity": 0,
            "status": 0
        },
        {
            "sku": "test_sku_26",
            "source_code": "test_source",
            "quantity": 0,
            "status": 0
        },
        {
            "sku": "test_sku_27",
            "source_code": "test_source",
            "quantity": 13,
            "status": 1
        },
        {
            "sku": "test_sku_28",
            "source_code": "test_source",
            "quantity": 0,
            "status": 0
        },
        {
            "sku": "test_sku_29",
            "source_code": "test_source",
            "quantity": 0,
            "status": 0
        },
        {
            "sku": "test_sku_30",
            "source_code": "test_source",
            "quantity": 1,
            "status": 1
        },
        {
            "sku": "test_sku_31",
            "source_code": "test_source",
            "quantity": 2,
            "status": 1
        },
        {
            "sku": "test_sku_32",
            "source_code": "test_source",
            "quantity": 1,
            "status": 1
        },
        {
            "sku": "test_sku_33",
            "source_code": "test_source",
            "quantity": 49,
            "status": 1
        },
        {
            "sku": "test_sku_34",
            "source_code": "test_source",
            "quantity": 12,
            "status": 1
        },
        {
            "sku": "test_sku_35",
            "source_code": "test_source",
            "quantity": 0,
            "status": 0
        },
        {
            "sku": "test_sku_36",
            "source_code": "test_source",
            "quantity": 0,
            "status": 0
        },
        {
            "sku": "test_sku_37",
            "source_code": "test_source",
            "quantity": 0,
            "status": 0
        },
        {
            "sku": "test_sku_38",
            "source_code": "test_source",
            "quantity": 10,
            "status": 1
        },
        {
            "sku": "test_sku_39",
            "source_code": "test_source",
            "quantity": 4,
            "status": 1
        },
        {
            "sku": "test_sku_40",
            "source_code": "test_source",
            "quantity": 0,
            "status": 0
        },
        {
            "sku": "test_sku_41",
            "source_code": "test_source",
            "quantity": 0,
            "status": 0
        },
        {
            "sku": "test_sku_42",
            "source_code": "test_source",
            "quantity": 0,
            "status": 0
        },
        {
            "sku": "test_sku_43",
            "source_code": "test_source",
            "quantity": 2,
            "status": 1
        },
        {
            "sku": "test_sku_44",
            "source_code": "test_source",
            "quantity": 0,
            "status": 0
        },
        {
            "sku": "test_sku_45",
            "source_code": "test_source",
            "quantity": 4,
            "status": 1
        },
        {
            "sku": "test_sku_46",
            "source_code": "test_source",
            "quantity": 0,
            "status": 0
        },
        {
            "sku": "test_sku_47",
            "source_code": "test_source",
            "quantity": 0,
            "status": 0
        },
        {
            "sku": "test_sku_48",
            "source_code": "test_source",
            "quantity": 0,
            "status": 0
        },
        {
            "sku": "test_sku_49",
            "source_code": "test_source",
            "quantity": 0,
            "status": 0
        },
        {
            "sku": "test_sku_50",
            "source_code": "test_source",
            "quantity": 0,
            "status": 0
        },
        {
            "sku": "test_sku_51",
            "source_code": "test_source",
            "quantity": 0,
            "status": 0
        },
        {
            "sku": "test_sku_52",
            "source_code": "test_source",
            "quantity": 0,
            "status": 0
        },
        {
            "sku": "test_sku_53",
            "source_code": "test_source",
            "quantity": 2,
            "status": 1
        },
        {
            "sku": "test_sku_54",
            "source_code": "test_source",
            "quantity": 1,
            "status": 1
        },
        {
            "sku": "test_sku_55",
            "source_code": "test_source",
            "quantity": 0,
            "status": 0
        },
        {
            "sku": "test_sku_56",
            "source_code": "test_source",
            "quantity": 0,
            "status": 0
        },
        {
            "sku": "test_sku_57",
            "source_code": "test_source",
            "quantity": 0,
            "status": 0
        },
        {
            "sku": "test_sku_58",
            "source_code": "test_source",
            "quantity": 0,
            "status": 0
        },
        {
            "sku": "test_sku_59",
            "source_code": "test_source",
            "quantity": 0,
            "status": 0
        },
        {
            "sku": "test_sku_60",
            "source_code": "test_source",
            "quantity": 0,
            "status": 0
        },
        {
            "sku": "test_sku_61",
            "source_code": "test_source",
            "quantity": 16,
            "status": 1
        },
        {
            "sku": "test_sku_62",
            "source_code": "test_source",
            "quantity": 0,
            "status": 0
        },
        {
            "sku": "test_sku_63",
            "source_code": "test_source",
            "quantity": 2,
            "status": 1
        },
        {
            "sku": "test_sku_64",
            "source_code": "test_source",
            "quantity": 0,
            "status": 0
        },
        {
            "sku": "test_sku_65",
            "source_code": "test_source",
            "quantity": 0,
            "status": 0
        },
        {
            "sku": "test_sku_66",
            "source_code": "test_source",
            "quantity": 0,
            "status": 0
        },
        {
            "sku": "test_sku_67",
            "source_code": "test_source",
            "quantity": 0,
            "status": 0
        },
        {
            "sku": "test_sku_68",
            "source_code": "test_source",
            "quantity": 0,
            "status": 0
        },
        {
            "sku": "test_sku_69",
            "source_code": "test_source",
            "quantity": 0,
            "status": 0
        },
        {
            "sku": "test_sku_70",
            "source_code": "test_source",
            "quantity": 0,
            "status": 0
        },
        {
            "sku": "test_sku_71",
            "source_code": "test_source",
            "quantity": 16,
            "status": 1
        },
        {
            "sku": "test_sku_72",
            "source_code": "test_source",
            "quantity": 0,
            "status": 0
        },
        {
            "sku": "test_sku_73",
            "source_code": "test_source",
            "quantity": 3,
            "status": 1
        },
        {
            "sku": "test_sku_74",
            "source_code": "test_source",
            "quantity": 0,
            "status": 0
        },
        {
            "sku": "test_sku_75",
            "source_code": "test_source",
            "quantity": 4,
            "status": 1
        },
        {
            "sku": "test_sku_76",
            "source_code": "test_source",
            "quantity": 50,
            "status": 1
        },
        {
            "sku": "test_sku_77",
            "source_code": "test_source",
            "quantity": 0,
            "status": 0
        },
        {
            "sku": "test_sku_78",
            "source_code": "test_source",
            "quantity": 0,
            "status": 0
        },
        {
            "sku": "test_sku_79",
            "source_code": "test_source",
            "quantity": 0,
            "status": 0
        },
        {
            "sku": "test_sku_80",
            "source_code": "test_source",
            "quantity": 0,
            "status": 0
        },
        {
            "sku": "test_sku_81",
            "source_code": "test_source",
            "quantity": 2,
            "status": 1
        },
        {
            "sku": "test_sku_82",
            "source_code": "test_source",
            "quantity": 0,
            "status": 0
        },
        {
            "sku": "test_sku_83",
            "source_code": "test_source",
            "quantity": 0,
            "status": 0
        },
        {
            "sku": "test_sku_84",
            "source_code": "test_source",
            "quantity": 0,
            "status": 0
        },
        {
            "sku": "test_sku_85",
            "source_code": "test_source",
            "quantity": 0,
            "status": 0
        },
        {
            "sku": "test_sku_86",
            "source_code": "test_source",
            "quantity": 0,
            "status": 0
        },
        {
            "sku": "test_sku_87",
            "source_code": "test_source",
            "quantity": 4,
            "status": 1
        },
        {
            "sku": "test_sku_88",
            "source_code": "test_source",
            "quantity": 0,
            "status": 0
        },
        {
            "sku": "test_sku_89",
            "source_code": "test_source",
            "quantity": 0,
            "status": 0
        },
        {
            "sku": "test_sku_90",
            "source_code": "test_source",
            "quantity": 0,
            "status": 0
        },
        {
            "sku": "test_sku_91",
            "source_code": "test_source",
            "quantity": 0,
            "status": 0
        },
        {
            "sku": "test_sku_92",
            "source_code": "test_source",
            "quantity": 4,
            "status": 1
        },
        {
            "sku": "test_sku_93",
            "source_code": "test_source",
            "quantity": 4,
            "status": 1
        },
        {
            "sku": "test_sku_94",
            "source_code": "test_source",
            "quantity": 3,
            "status": 1
        },
        {
            "sku": "test_sku_95",
            "source_code": "test_source",
            "quantity": 0,
            "status": 0
        },
        {
            "sku": "test_sku_96",
            "source_code": "test_source",
            "quantity": 0,
            "status": 0
        },
        {
            "sku": "test_sku_97",
            "source_code": "test_source",
            "quantity": 0,
            "status": 0
        },
        {
            "sku": "test_sku_98",
            "source_code": "test_source",
            "quantity": 0,
            "status": 0
        },
        {
            "sku": "test_sku_99",
            "source_code": "test_source",
            "quantity": 0,
            "status": 0
        },
        {
            "sku": "test_sku_100",
            "source_code": "test_source",
            "quantity": 0,
            "status": 0
        }
    ]
   }
   ```

1. Remove all the logs from `var/log`
1. Run the [!DNL REST API] request again.
1. Check the `var/log/debug.log`.

<u>Expected results</u>:

Cache should not be cleaned and the indexes should not be executed after the second run since nothing was changed.

<u>Actual results</u>:

The `var/log/debug.log` contains the entry related to the cache clear.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
