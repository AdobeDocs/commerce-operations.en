---
title: 'ACSD-64592: claim link from email for gift card in non-default stores redirected gift card claim to default website'
description: Apply the ACSD-64592 patch to fix the issue where in a multi-website setup, when a Virtual Gift Card is purchased from the secondary (non-default) website, the Gift Card Code link in the email has the default website URL.
feature: Gift, Products
role: Admin, Developer
---

# ACSD-64592: claim link from email for gift card in non-default stores redirected gift card claim to default website

The ACSD-64592 patch fixes an issue where in a multi-site environment, if a Virtual Gift Card is bought from a secondary (non-primary) website, the email containing the Gift Card Code link will direct users to the default website's URL.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.6-p3

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.7-p4

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

In a multi-website setup, when a Virtual Gift Card is purchased from a secondary (non-default) site, the email containing the Gift Card Code link directs users to the default website's URL.

<u>Steps to reproduce</u>:

1 Create a secondary Website, Store and Store View.
1 Configure different Base URLs for the Base and the secondary website.
1 Create a Virtual Gift Card with some Amount options.
1 Generate a new code pool at **[!UICONTROL Marketing]** > **[!UICONTROL Promotions]** > **[!UICONTROL Gift Card Accounts]**.
1 Place an order with the Gift Card product on the secondary website.
1 Invoice the order in the admin.
1 Check the URL in the Gift Card Code link of the *You've been sent a gift from Two* email.


<u>Expected results</u>:

The Gift Card Code link should have the link to the second website.

<u>Actual results</u>:

The Gift Card Code link has the default website URL, even though the order is placed on the second website

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:
* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
