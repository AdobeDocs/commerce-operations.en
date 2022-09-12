---
title: Sample data overview
description: Learn about using sample data for Adobe Commerce and Magento Open Source projects.
---

# Sample data overview

Sample data provides a storefront based on the Luma theme outfitted with products, categories, customer registration, and so on. It functions just like a Commerce storefront and you can manipulate prices, inventory, and promotional pricing rules using the Admin.

You can install sample data either before or after installing the Commerce software. When you're done with the sample data, you can either remove it or you can install it fresh as discussed in [Remove sample data modules or update sample data](remove-or-update.md).

>[!WARNING]
>
>You cannot uninstall sample data. We recommend you use sample data only to learn about how Adobe Commerce and Magento Open Source work. Avoid doing any development in a system in which you installed sample data.

You can install optional sample data in any of the following ways:

|Installation method|Description|Required skill level|
|--- |--- |--- |
|Using Composer|[Run `magento sampledata:deploy` to modify the application's root `composer.json`](composer-packages.md) to enable sample data modules.|Requires Composer knowledge and access to the Commerce file system.|
|Cloning repositories|[Clone the GitHub repository](git-repositories.md) and the sample data repository, then link them together.|For contributing developers only. Everyone else should use one of the preceding methods.|
