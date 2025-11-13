---
title: 'Overview: [!DNL Quality Patches Tool] (QPT) v1.1.64'
description: This sub-section provides a detailed description of the issues fixed by the patches available in [!DNL Quality Patches Tool] (QPT) v1.1.64.
feature: Tools and External Services
role: Admin, Developer
exl-id: e86b8557-a14a-40e2-a181-56efa4383a1c
type: Troubleshooting
---
# Overview: [!DNL Quality Patches Tool] (QPT) v1.1.64

This sub-section provides a detailed description of the issues fixed by the patches available in [!DNL Quality Patches Tool] (QPT) v1.1.64.

QPT v1.1.64 includes the following patches:

1. **ACP2E-3838**: Fixes the issue where [!DNL Page Builder] CORS errors prevent saving changes in the Admin panel in production mode.
1. **ACP2E-3841**: Fixes the issue where cart price rules for multi-shipping products do not apply correctly when `subselect` conditions are used and **[!UICONTROL Free Shipping]** is enabled.
1. **ACSD-63139**: Fixes the issue where product export fails when product attributes contain thousands of option values.
1. **ACSD-65100**: Fixes the issue where removing the values for **[!UICONTROL Maximum Width]** and **[!UICONTROL Maximum Height]** in the **[!UICONTROL Media Gallery Image Optimization]** configuration causes an error during the image optimization process.
1. **ACSD-65127**: Fixes the issue where enabling JavaScript minification in production mode causes [!DNL TinyMCE] 6 to generate errors in the browser console, affecting functionality and user experience.
1. **ACSD-65787**: Fixes the issue where the `SchemaBuilder` class crashes during schema creation or updates due to an undefined array key *column* when processing table data.
1. **ACSD-65223**: Fixes the issue where manually selected terms and agreements for [!DNL B2B] purchase orders result in an error.
1. **ACSD-65540**: Fixes the issue where an SQL syntax error occurs due to the absence of the `REGEXP_LIKE` function when updating the `company_structure` table.
1. **ACSD-65684**: Fixes the performance issue where upgrading the `Magento_Company` module after updating to [!DNL B2B] 1.5.2 took an excessively long time when processing a large number of records (~100,000+) in the `company_structure` table.

Use the menu on the left to navigate to a specific patch page.
