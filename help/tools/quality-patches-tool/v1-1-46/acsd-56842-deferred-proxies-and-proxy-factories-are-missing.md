---
title: 'ACSD-56842: Deferred proxies and proxy factories are missing after running `setup:di:compile`'
description: Apply the ACSD-56842 patch to fix the Adobe Commerce issue where the deferred proxies and proxy factories are missing after running `setup:di:compile`.
feature: Deploy, Catalog Management
role: Admin, Developer
exl-id: 2d12e36c-d8b7-4253-91d8-28b50477ccd9
---
# ACSD-56842: Deferred proxies and proxy factories are missing after running `setup:di:compile`

The ACSD-56842 patch fixes the issue where the deferred proxies and proxy factories are missing after running `setup:di:compile`. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.46 is installed. The patch ID is ACSD-56842. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.4-p6

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.2 - 2.4.6-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The deferred proxies and proxy factories are missing after running `setup:di:compile`.

<u>Steps to reproduce</u>:

1. Create a custom module named *Magento_CustomModule*.
1. In the *[!UICONTROL etc]* folder of the module, create a `di.xml` with this content:
   
    ```xml
     <?xml version="1.0"?>
      <config xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="urn:magento:framework:ObjectManager/etc/config.xsd">
         <type name="Magento\Catalog\Model\ProductLink\CollectionProvider">
            <arguments>
               <argument name="providers" xsi:type="array">
                  <item name="crosssell" xsi:type="object">
                       Magento\Catalog\Model\ProductLink\CollectionProvider\Crosssell\Proxy
                  </item>
                    <item name="upsell" xsi:type="object">Magento\Catalog\Model\ProductLink\CollectionProvider\Upsell\Proxy</item>
                      <item name="related" xsi:type="object">Magento\Catalog\Model\ProductLink\CollectionProvider\Related\Proxy</item>
               </argument>
            </arguments>
          </type>
             <type name="Magento\Catalog\Model\Product">
                <arguments>
                   <argument name="catalogProductStatus" xsi:type="object">
                    Magento\Catalog\Model\Product\Attribute\Source\Status\Proxy
                   </argument>
                    <argument name="productLink" xsi:type="object">
                      Magento\Catalog\Model\Product\Link\Proxy
                    </argument>
                </arguments>
              </type>
      </config>
    ```

1. Set the [!UICONTROL Production] mode: `bin/magento deploy:mode:set production`.
1. Delete the generated folder from the magento root. 
1. Run the command `bin/magento setup:di:compile`.
1. Check the generated folder.

<u>Expected results</u>:

* Proxy files are successfully created after compilation.
* Factory files are successfully created after compilation.

<u>Actual results</u>:

In the generated folder, the proxy file is generated for proxy arguments that are given without a line break, and not for the arguments that are given with a line break.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
