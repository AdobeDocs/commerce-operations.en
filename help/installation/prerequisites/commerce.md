---
title: Get the Adobe Commerce software
description: Learn how to download the Adobe Commerce software.
exl-id: 7a769d5b-5397-4572-8db5-7602068e6aad
---
# Get the Adobe Commerce software

You are among the 240,000 merchants worldwide who put their trust in our eCommerce software. We have gathered some information to help you get started with your installation.

## How to get the software

Check the availability of exciting new features and releases and learn how you can get them on our [product availability page](https://experienceleague.adobe.com/en/docs/commerce-operations/release/product-availability).

Consult the following table for getting started with installing Adobe Commerce.

<table>
    <tbody>
        <tr>
            <th>User needs</th>
            <th>Description</th>
            <th>High-level installation and upgrade steps</th>
            <th>Get started link</th>
        </tr>
    <tr>
        <td><p>Integrator, packager</p></td>
        <td><p>Wants full control over all components installed, has access to the application server, highly technical, might repackage Magento Open Source with other components.</p>
        </td>
        <td><ol><li>Creates a Composer <em>project</em> that contains the list of components to use.</li>
            <li>Uses Composer to update package dependencies; uses <code>composer create-project</code> to get the Composer metapackage.</li>
            <li>Installs the application using the <a href="../advanced.md">command line</a>.</li>
        <li>Upgrades the application and extensions using the  <a href="../../upgrade/implementation/perform-upgrade.md">command line</a>.</li></ol></td>
        <td><p><a href="../composer.md">Get the metapackage</a></p></td>
    </tr>
    <tr>
        <td><p>Contributing developer</p></td>
        <td><p>Contributes to the Magento Open Source codebase, files bugs, and customizes the application. Highly technical, has their own development server, understands Composer and GitHub.</p>
            <p>You <em>cannot</em> use the application in a production environment.</p>
      <p>You must upgrade using <a href="../../upgrade/developer/git-installs.md">Composer and Git commands</a>.</p></td>
        <td><ol><li>Clones the GitHub repository.</li>
            <li>Uses Composer to update package dependencies.</li>
            <li>Installs the application using <a href="../advanced.md">command line</a>.</li>
            <li>Upgrades the application using <a href="../../upgrade/developer/git-installs.md">Composer and Git commands</a>.</li>
            <li>Customizes code under the <code>app/code</code> directory.</li></ol></td>
        <td><p><a href="https://developer.adobe.com/commerce/contributor/guides/install/clone-repository/">Clone the GitHub repository</a></p></td>
    </tr>
    </tbody>
</table>

## Useful information

Use the links on the left side of the page to navigate topics in each part of the installation.

## Required server permissions

UNIX systems require `root` privileges to install and configure software like a web server, PHP. If you need to install this software, make sure you have `root` access.

Do *not* install the application in the web server docroot as the `root` user because the web server might not be able to interact with those files.

You need `root` privileges to create the [file system owner](file-system/overview.md) and add that owner to the web server's group. You use the file system owner to run `bin/magento` commands from the command line and to set up cron jobs, which schedule tasks for you.
