---
title: Verify the installation
description: Follow these steps to confirm that your on-premises Adobe Commerce or Magento Open Source installation was successful.
exl-id: 0bd7ec01-c616-4384-ae26-db2ce3668caf
---
# Verify the installation

Go to the storefront in a web browser. For example, if your installation base URL is `http://www.example.com`, enter it in your browser's address or location bar.

The following figure shows a sample storefront page. If it displays as follows, your installation was a success!

![Storefront with the Luma theme](../../assets/installation/install-success_store-luma.png)

## Verify the storefront (no sample data)

Go to the storefront in a web browser. For example, if your installation base URL is `http://www.example.com`, enter it in your browser's address or location bar.

The following figure shows a sample storefront page. If it displays as follows, your installation was a success!

![Storefront which verifies a successful installation](../../assets/installation/install-success_store.png)

If the page displays a `404 (Not Found)` error or doesn't display styles, see [troubleshootings](https://support.magento.com/hc/en-us/articles/360032994352).

## Verify the Admin

Go to the Admin in a web browser. For example, if your installation base URL is `http://www.example.com`, and the Admin URI is `admin_au1nT`, enter `http://www.example.com/admin_au1nT` in your browser's address or location bar.

(The Admin URI is specified by the value of the `backend-frontname` installation parameter.)

When prompted, log in as an administrator.

The following figure shows a sample Admin page. If it displays as follows, your installation was a success!

![Admin which verifies a successful installation](../../assets/installation/install_success_admin.png)

If the page does not display styles, see [troubleshooting](https://support.magento.com/hc/en-us/articles/360032994352).

If you get a 404 (Not Found) error similar to the following, see [PHP version error or 404 when accessing Adobe Commerce in browser](https://support.magento.com/hc/en-us/articles/360033117152).

`The requested URL /magento2index.php/admin/admin/dashboard/index/key/0c81957145a968b697c32a846598dc2e/ was not found on this server.`
