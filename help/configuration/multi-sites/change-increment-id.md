---
title: Change increment ID
description: Change the increment ID for a Commerce database entity.
exl-id: 039fc34c-d9cf-42f4-af5d-16a26a3e8171
---
# Change increment ID

This article discusses how to change the increment ID for a Commerce database (DB) entity (order, invoice, credit memo, and so on) on a particular Commerce store using the `ALTER TABLE` SQL statement.

## Affected versions

- Adobe Commerce (on premises): 2.x.x
- Adobe Commerce on cloud infrastructure: 2.x.x
- MySQL: [any supported version](../../installation/prerequisites/database/mysql.md)

## When would you need to change increment ID

You might need to change the increment ID for new DB entities in these cases:

- After a hard backup restore on a Live site
- Some order records have been lost, but their IDs are already being used by payment gateways (like PayPal) for your current Merchant account. Such being the case, the payment gateways stop processing new orders that have the same IDs, returning the "Duplicate invoice id" error

>[!INFO]
>
>You may also fix the payment gateway issue for PayPal by allowing multiple payments per invoice ID in PayPal's Payment Receiving Preferences. See [PayPal gateway rejected request - duplicate invoice issue](https://experienceleague.adobe.com/docs/commerce-knowledge-base/kb/troubleshooting/payments/paypal-gateway-rejected-request-duplicate-invoice-issue.html) in the _Knowledge Base_.

## Prerequisite steps

1. Find stores and entities for which the new increment ID should be changed.
1. Connect to your MySQL DB.
   For Adobe Commerce on cloud infrastructure, at first, you need to connect using SSH to your environment.
1. Check the current `auto_increment` value for the entity sequence table using the following query:

   ```sql
   SHOW TABLE STATUS FROM `{database_name}` WHERE `name` LIKE 'sequence_{entity_type}_{store_id}';
   ```

If you are checking an auto increment for an order on the store with ID=1, the table name would be 'sequence_order_1'.

If the value of the `auto_increment` column is '1234', the next order placed at the store with `ID=1` will have the ID '#100001234'.

## Update entity to change increment ID

Update the entity using the following query:

```sql
ALTER TABLE sequence_{entity_type}_{store_id} AUTO_INCREMENT = {new_increment_value};
```

>[!INFO]
>
>Important: The new increment value must be greater than the current one.

After executing the following query:

```sql
ALTER TABLE sequence_order_1 AUTO_INCREMENT = 2000;
```

The next order placed at the store with `ID=1` will have the ID '#100002000'.

## Additional recommended steps on cloud production environments

Before executing the `ALTER TABLE` query on a production environment of Adobe Commerce on cloud infrastructure, we strongly recommend performing these steps:

-  Test the entire procedure of changing the increment ID on your staging environment
-  [Create a DB backup](https://support.magento.com/hc/en-us/articles/360003254334) to restore your Production DB in case of failure

