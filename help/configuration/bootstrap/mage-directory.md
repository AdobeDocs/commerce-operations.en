---
title: Customize base directory paths
description: Use the MAGE_DIRS variable to set an array of absolute paths.
exl-id: ee8e1a3a-f1d4-412c-8767-16447113f0cd
---
# Base directory paths

The `MAGE_DIRS` environment variable enables you to specify custom base directory paths and fragments of base URLs that are used by the Commerce application to build absolute paths to various files or for generating URLs.

## Set MAGE_DIRS

Specify an associative array where keys are constants from [\\Magento\\App\\Filesystem\\DirectoryList](https://github.com/magento/magento2/blob/2.4/lib/internal/Magento/Framework/App/Filesystem/DirectoryList.php) and values are absolute paths of directories or their URL paths, respectively.

You can set `MAGE_DIRS` in any of the following ways:

- [Set the value of bootstrap parameters](../bootstrap/set-parameters.md)
- Use a custom entry point script such as the following:

   ```php
   <?php
   /**
    * Copyright [first year code created] Adobe
    * All Rights Reserved.
    */

   use Magento\Framework\App\Bootstrap;
   use Magento\Framework\App\Filesystem\DirectoryList;
   use Magento\Framework\App\Http;

   require __DIR__ . '/app/bootstrap.php';
   $params = $_SERVER;
   $params[Bootstrap::INIT_PARAM_FILESYSTEM_DIR_PATHS] = [
        DirectoryList::PUB => [DirectoryList::URL_PATH => ''],
        DirectoryList::MEDIA => [DirectoryList::PATH => '/mnt/nfs/media', DirectoryList::URL_PATH => ''],
        DirectoryList::STATIC_VIEW => [DirectoryList::URL_PATH => 'static'],
        DirectoryList::UPLOAD => [DirectoryList::URL_PATH => '/mnt/nfs/media/upload'],
        DirectoryList::CACHE => [DirectoryList::PATH => '/mnt/nfs/cache'],
   ];
   $bootstrap = Bootstrap::create(BP, $params);
   /** @var Http $app */
   $app = $bootstrap->createApplication(Http::class);
   $bootstrap->run($app);
   ```

The preceding example sets paths for `[cache]` and `[media]` directories to `/mnt/nfs/cache` and `/mnt/nfs/media`, respectively.

