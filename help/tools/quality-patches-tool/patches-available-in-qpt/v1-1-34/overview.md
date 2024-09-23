---
title: 'Overview: [!DNL Quality Patches Tool] (QPT) v1.1.34'
description: This sub-section provides a detailed description of the issues fixed by the patches available in [!DNL Quality Patches Tool] (QPT) v1.1.34.
feature: Tools and External Services
role: Admin
exl-id: 79998832-26cb-4c11-a505-08c3382f86d4
---
# Overview: [!DNL Quality Patches Tool] (QPT) v1.1.34

This sub-section provides a detailed description of the issues fixed by the patches available in [!DNL Quality Patches Tool] (QPT) v1.1.34.

QPT v1.1.34 includes the following patches:

1. **ACSD-52277**: Fixes the issue where an admin user is not redirected properly after selecting store view when creating a new order in the admin.
1. **ACSD-50813**: Fixes the issue where an admin is not able to add bundled products containing a slash in the SKU with the [!UICONTROL Add Products by SKU] functionality to the admin order.
1. **ACSD-51630**: Fixes the issue where a large amount of system messages slows the downloading of admin pages.
1. **ACSD-51853**: Fixes the issue where copied text styles are not applied when using [!DNL Page Builder].
1. **ACSD-52160**: Fixes the issue where a product validation result against the cart price rule was not properly evaluated, based on the rule condition *If an item is FOUND/NOT FOUND in the cart with All/Any of these conditions true*.
1. **ACSD-51636**: Fixes the issue where an admin can't add new users from the customer account section despite having all the necessary roles and permissions.
1. **ACSD-51739**: Fixes the issue where an error is returned when the `structure_id` is requested in a `CompanyTeam` GraphQL request.
1. **ACSD-51857**: Fixes the issue where slow performance of `aggregate_sales_report_bestsellers_data` cron report affects large `sales_order` and `sales_order_item` database tables.
1. **ACSD-48448**: Fixes the issue where there is a race condition issue happening during order cancelations, which cause duplicated entry in the *inventory_reservation* table.
1. **ACSD-52689**: Fixes the issue where images can't be uploaded to [!DNL Amazon S3] storage using REST API.

Use the menu on the left to navigate to a specific patch page.
