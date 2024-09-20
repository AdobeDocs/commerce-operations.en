---
title: 'ACSD-56635: Imported customers are duplicated when account sharing is set to [!DNL Global]'
description: Apply the ACSD-56635 patch to fix the Adobe Commerce issue where the imported customer is duplicated with the same email address when the import is used with account sharing set to [!DNL Global].
feature: Customers, Attributes
role: Admin, Developer
exl-id: abd542a1-6764-4385-97a6-b46015363b42
---
# ACSD-56635: Imported customers are duplicated with same email address when account sharing set to [!DNL Global]

The ACSD-56635 patch fixes the issue where the imported customer is duplicated with the same email address when the import is used with account sharing set to [!DNL Global]. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.48 is installed. The patch ID is ACSD-56635. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.6-p3

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.6 - 2.4.6-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Imported customers are duplicated with the same email address when account sharing is set to [!DNL Global]. 

<u>Steps to reproduce</u>:

1. Under the Adobe Commerce (2.4-develop b2b) **[!UICONTROL Admin]**, access **[!UICONTROL Stores]** > **[!UICONTROL Settings]** > **[!UICONTROL Configuration]** > **[!UICONTROL Customers]** > **[!UICONTROL Customer Configuration]** > **[!UICONTROL Account Sharing Options]**.
1. Set the *[!UICONTROL Share Customer Accounts]* setting to *[!DNL Global]*.
1. Create multiple websites and stores:

    * ws1 > s11, s12 > sw111, sw122
    * ws2 > s21, s22 > sw211, sw212

1. Create a new customer under the *main website* from admin with email address used as <adb@yormail.com>.
1. Under **[!UICONTROL Admin]**, navigate to **[!UICONTROL System]** > **[!UICONTROL Import]**.
1. Select **[!UICONTROL Customer Entity Type]** as *[!UICONTROL Customers Main File]*.
1. Use the same email address as <adb@yormail.com> on a different website, for example, ws1. Refer to the sample CSV file customer.csv given below.
1. Complete the import to see the new user created under the *ws1* website with the same email address.
   
customer.csv content:
                                      
```
email,_website,_store,confirmation,created_at,created_in,disable_auto_group_change,dob,firstname,gender,group_id,lastname,middlename,password_hash,prefix,rp_token,rp_token_created_at,store_id,suffix,taxvat,updated_at,website_id,password
adb@yopmail.com,ws1,sv111,,09/01/24 12:49,Default Store View,0,,newjon,,1,newDoe,,d708be3fe0fe0120840e8b13c8faae97424252c6374227ff59c05814f1aecd79:mgLqkqgTwLPLlCljzvF8hp67fNOOvOZb:1,,07e71459c137f4da15292134ff459cba,30/10/15 12:49,1,,,09/01/24 12:49,1,
```

<u>Expected Results</u>:

The imported customer with the same email address is updated instead of being duplicated.

<u>Actual Results</u>:

Duplicate customers are created with the same email address when using the customer import. 

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
