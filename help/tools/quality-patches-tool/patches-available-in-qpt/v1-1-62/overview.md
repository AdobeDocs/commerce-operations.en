---
title: 'Overview: [!DNL Quality Patches Tool] (QPT) v1.1.62'
description: This sub-section provides a detailed description of the issues fixed by the patches available in [!DNL Quality Patches Tool] (QPT) v1.1.62.
feature: Tools and External Services
role: Admin, Developer
---
# Overview: [!DNL Quality Patches Tool] (QPT) v1.1.62

This sub-section provides a detailed description of the issues fixed by the patches available in [!DNL Quality Patches Tool] (QPT) v1.1.62.

QPT v1.1.62 includes the following patches:

1. **ACSD-63406**: Fixes the issue where expired persistent quotes are not cleared by any cron job when the `persistent_clear_expired` cron job runs.
1. **ACSD-63520**: Fixes the issue where images added through **[!UICONTROL Configurations]** in the admin panel do not adhere to the maximum upload size limit.
1. **ACSD-64523**: Fixes the issue where it was possible to create new products without a name through the import process (admin or API), which would break the admin interface and result in invalid products.
1. **ACSD-64532**: Fixes the issue where an ENV variable set to *false* is treated as a string *false* instead of a boolean false.
1. **ACSD-64592**: Fixes the issue where the claim link from the email for a gift card in non-default stores always redirected the gift card claim to the default website.
1. **ACSD-65164**: Fixes the issue where the error message *Some of the selected item options are not currently available* occurs when reordering a configurable product with a single selected checkbox custom option.
1. **ACSD-64732**: Fixes the issue where third-party controllers were not cached correctly with customer segments.

Use the menu on the left to navigate to a specific patch page.
