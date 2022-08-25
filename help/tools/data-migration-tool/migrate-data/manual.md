---
title: Data that requires manual migration
description: Learn about data that must be manually migrated during a Magento 1 to Magento 2 data migration and how to do it. 
---

# Data that requires manual migration

There are four kinds of data that need to be migrated manually:

*  Media

*  [Storefront](https://glossary.magento.com/storefront) design

*  [Admin](https://glossary.magento.com/admin) user accounts

*  Access Control Lists (ACLs)

## Media

This section discusses how to manually migrate media files.

### Media files stored in the database

>[!WARNING]
>
>The database media storage method is deprecated as of Magento 2.4.3.4


This section applies to you *only* if you store media files in the Magento database. This step should be performed before [migration of data](data.md):

1. Log in to the Magento 1 Admin Panel as an administrator.

1. Click **System** > **Configuration** > ADVANCED > **System**.

1. In the right pane, scroll to **Storage Configuration for Media**.

1. From the **Select Media Database** list, click the name of your [media storage](https://glossary.magento.com/media-storage) database.

1. Click **Synchronize**.

Then, repeat the same steps in your Magento 2 Admin panel.

### Media files in the file system

All media files (images for products, categories, the [WYSIWYG](https://glossary.magento.com/wysiwyg) editor, and so on) should be copied manually from `<your Magento 1 install dir>/media` to `<your Magento 2 install dir>/pub/media`.

However, do *not* copy the `.htaccess` files located in the Magento 1 `media` folder. Magento 2 has its own `.htaccess` that should be preserved.

## Storefront design

*  Design in files (CSS, JS, templates, [XML](https://glossary.magento.com/xml) layouts) changed its location and format

*  [Layout](https://glossary.magento.com/layout) Updates stored in database. Placed through Magento 1 Admin in [CMS](https://glossary.magento.com/cms) Pages, CMS Widgets, [Category](https://glossary.magento.com/category) Pages and Product Pages

## Access Control Lists (ACLs)

You must manually re-create all:

*  credentials for web service APIs (SOAP, XML-RPC, and REST)

*  administrative user accounts and associate them with access privileges

>[!NOTE]
>
>You may adjust the time zone for a database entity using the `\Migration\Handler\Timezone` handler. See the [follow-up](follow-up.md) section for more details.
