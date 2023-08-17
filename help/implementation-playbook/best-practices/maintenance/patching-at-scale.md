---
title: Best practices for distributing patches at scale
description: Guarantee the security and stability of your Adobe Commerce stores (includes code samples).
role: Developer
feature: Best Practices
badge: label="Contributed by Anton Evers, Sr. Technical Architect, Adobe Consulting Services" type="Informative" url="https://www.linkedin.com/in/anton-evers/" tooltip="Contributed by Anton Evers"
---

# Best practices for distributing Adobe Commerce patches at scale

If you only own only one Adobe Commerce installation, applying patches is simple. But the more patches you apply and the more installations you maintain, the more daunting it becomes to ensure that all installations contain all necessary patches.

## Affected products and versions

[All supported versions](../../../release/versions.md) of:

- Adobe Commerce on cloud infrastructure
- Adobe Commerce on premises

## Overview

When you first learn to drive, each element requires your attention – steering, shifting gears, braking, and controlling your speed. Initially, your instructor may do some of these for you, but over time you can do all of them without even thinking about it. And after some time, you can even drive nearly any other car without actively thinking about the whole routine of operating the car. Why? Because your brain does an excellent job at automation. Routine tasks become part of muscle memory and they are automated in a way that translates well to similar situations, such as other types of cars.

![Diagram that illustrates the complexity of manual patching]()

Developers have a similar responsibility. Any routine job that can be automated, should be automated, so that you reduce the chance of mistakes, such as metaphorically forgetting to shift gears when you step into another car.

We can compare the many manual operations of first driving a car with manually maintaining and applying patches in a code base.

## Centralized patching

Centralized patching is an essential part of Global Reference Architecture.

![Diagram that illustrates the simplicty of centralized patching]()

Centralized patching is an essential part of Global Reference Architecture. On all projects, it is critical to make sure that the right patches are always installed, on all the installations. This article explains how to achieve centralized patch distribution, for all the types of patches that the Adobe Commerce ecosystem knows.

Adobe brings out a new version of Adobe Commerce at least once a year, delivering improvements and new features. Then roughly twice as often, security and functional patches are released in the form of a patch release which can be recognized by a -p1 or -p2 after the main release number. They are planned well in advance. You can prepare for these releases using Adobe's [release schedule](../../../release/schedule.md).

So far so good. No matter how many stores you own, if you are on the latest version of a supported release line of Adobe Commerce, then you have all the necessary security patches and functional patches installed. Right? Mostly right. Let's look at all the other types of patches that exist in the Adobe Commerce ecosystem first.

## Patches

Apart from the security and functional patches there are several other types of patches. Let's go over them.

![Infographic that describes the different types of Adobe Commerce patches]()

### Security and functional patches

These are small scale releases, only addressing functional and security issues, and not adding new functionality. Generally, their impact on your code is small. They come in the form of a 2.x.x-p1 or 2.x.x-p2 release and they are intended both for Adobe Commerce Cloud as well as on-premises installations.

### Required patches

Required patches are all patches that are hosted in [`magento/magento-cloud-patches`](https://github.com/magento/magento-cloud-patches). They are automatically installed if you are running Adobe Commerce Cloud. This repository is a way for the Adobe Commerce Cloud team to quickly address issues for all cloud customers, between security and functional patch releases. If you are not on Adobe Commerce Cloud, then use the quality patches instead.

### Quality patches

Quality patches are optional, and you can find them in [`magento/quality-patches`](https://github.com/magento/quality-patches). They are provided by Adobe support and the Magento OS community. These patches target specific issues that might or might not apply to you. The general recommendation is to only install what you absolutely need, because the more patches you apply, the greater the risk of patch collisions and the more complex your code management becomes.

Quality patches are used by the required patches package, and in fact, most of the patches that are automatically installed for our cloud customers, are coming from the quality patches package. So even if you are not on Adobe Commerce Cloud, but on-premises, then you can still install the same patches through this quality patches package.

For a full list of all optional quality patches, see the [complete patch listing](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) where you can see exactly what they are for and which Adobe Commerce version they were built for. After all, many of these patches make it into the core of Adobe Commerce eventually and become part of the regular releases.

### Custom patches

Adobe Commerce Cloud installs all patch files that it finds inside the /m2-hotfixes directory automatically during deployment. This is a way for you to install patches that you might have made yourself. For instance, to include a resolution for a functional issue, that you have seen in the next release candidate, but which is not part of your current version of Adobe Commerce.

>[!TIP]
>
>The more patches you make, the higher your TCO.

Be careful with this one though. Because every patch you make will need to be manually evaluated with every Adobe Commerce upgrade. So, the more patches you make, the higher your TCO. Whenever possible, check if your problem is mentioned in the [full patch list](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) of quality patches first, or file a bug report with Adobe Commerce support.

The `/m2-hotfixes` directory and the script that installs patches out of that directory are part of [`magento/magento-cloud-patches`](https://github.com/magento/magento-cloud-patches) and this will only work for Adobe Commerce Cloud. If you use Adobe Commerce on-premises, see Composer patches.

### Support patches

When you file a support request with Adobe Commerce support, chances are that you will receive a patch file to remedy your issue. Again, most issues that are remedied by Adobe Commerce support will find their way to the quality patches, and later on become part of the main release. But before that time, as an Adobe Commerce Cloud customer, you can place support patches in the `/m2-hotfixes` directory too.

### Composer patches

If you use Adobe Commerce on-premises, or if you want to patch any other composer package outside of the Adobe Commerce codebase, then [`cweagans/composer-patches`](https://packagist.org/packages/cweagans/composer-patches) is your friend. Keep in mind that you must maintain these patches yourself and that there is no support from Adobe for the patches you create. Creating many patches this way increases your TCO, as it further increases code complexity, and every patch needs to be evaluated manually after an Adobe Commerce upgrade.

### Everything else

Of course, there are many other ways to patch code in composer packages and you might have built your own deployment script that takes care of this. We'll treat this as everything else. The same caveats apply as for composer patches. But we will ignore those scenarios in this blog post because they are rarely seen.

## Patching strategy

With 6 different sources for patches, and 5 different ways of applying them, how will you know which patch will be applied first? After all, the more patches you have, the larger the chance that they will apply to the same file, or to the same line of code. In this case it is nice to know which method of applying takes precedence.

With 6 different sources for patches, and 5 different ways of applying them, how will you know which patch will be applied first?

This is the order in which the 5 ways of patching are applied:

1. **Security patches** are part of the static code base of an Adobe Commerce release.
1. **Composer patches** through composer install and composer update
1. All **required patches** included in the Cloud Patches for Commerce package.
1. Selected **quality patches** included in the Quality Patches Tool.
1. **Custom patches** and support patches in the /m2-hotfixes directory in alphabetical order by patch name.

This insight can help you know where to look in case a patch that always used to work, no longer applies.

## Patching at scale

If you are using Adobe Commerce at enterprise scale, or if you are an Adobe Commerce partner that must maintain multiple installations for multiple clients, how will you make sure that all the Adobe Commerce instances have the same set of patches installed? After all, each installation has their own repository, and their own /m2-hotfixes directory and composer.json file. The only guarantee you have is that the **security patches** and **required patches** for cloud users are all installed as part of your main Adobe Commerce version.

So far, there appears to be no single centralized solution for this problem, but luckily Composer offers a way to bridge the gap. The [`cweagans/composer-patches`](https://packagist.org/packages/cweagans/composer-patches) package allows you to [apply patches from dependencies](https://github.com/cweagans/composer-patches#allowing-patches-to-be-applied-from-dependencies). Simply create a composer package, that installs all your patches. Then require this package in all your projects.

That covers **security patches**, **required patches**, and **Composer patches**, but what about quality patches and the contents of `/m2-hotfixes`?

### Patching quality patches and m2-hotfixes at scale

When your goal is to centrally manage all quality patches and m2-hotfixes across all of your Adobe Commerce installations, a simple composer plugin can achieve this for you.

Basically, we need to do two things:

1. Copy m2-hotfixes into all our installations during deployment
1. Execute `vendor/bin/magento-patches` apply for all of our installations with the same list of quality patches.

Step one is easily solved. Just create a composer package which is of the type "magento2-component" with a "map" attribute in the "extra" section of composer.json. The "map" contains files to copy from this package into the project root. Create an m2-hotfixes directory inside your package, and add it to the map. Presto. Your packages m2-hotfixes will now be copied into the project on composer install. Since the cloud deployment applies m2-hotfixes after composer install, it will find your patches from this package in the main project and install all of them. You can find an example of this code after the next paragraph.

>[!NOTE]
>
>See the complete code example below.

Step two, installing quality patches, is a little more complicated. You can install quality patches in Adobe Commerce cloud by listing them in your project's .magento.env.yaml, or on-premises by running vendor/bin/magento-patches apply. However the on-premises approach will also work for cloud installations. And we can use that to our advantage. All we need to do is ensure that the vendor/bin/magento-patches apply command runs after composer install, with a list of quality patches that we define in our package. So we can add a list of patches to apply in composer.json and create a new composer package of the type "composer-plugin" that contains a composer plugin which fires after update and after install. It can take care of running the vendor/bin/magento-patches apply command right after every installation or update. See the complete code example below.

#### Package 1: centralized-patcher

`composer.json`

```json
{
    "name": "magento-services/centralized-patcher",
    "version": "0.0.1",
    "description": "Centralized patcher for patching multiple web stores from a central place",
    "type": "magento2-component",
    "license": [
        "OSL-3.0",
        "AFL-3.0"
    ],
    "require": {
        "magento-services/centralized-patcher-composer-plugin": "~0.0.1"
    },
    "require-dev": {
        "composer/composer": "^2.0"
    },
    "extra": {
        "map": [
            [
                "m2-hotfixes",
                "m2-hotfixes"
            ]
        ],
        "quality-patches": [
            "MDVA-30106",
            "MDVA-12304"
        ]
    }
}
```

Note the quality-patches section that contains 2 patches from the [full patch list](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) as an example. These will be installed in every project that requires this package. The contents of the `m2-hotfixes` directory of this module will also be copied recursively into the `m2-hotfixes` directory of any project that requires this package. During Adobe Commerce cloud deployment those hotfixes will be installed by the deployment mechanism.

For testing purposes we can create an example patch in `m2-hotfixes/EXAMPLE-PATCH_2.4.6.patch`. But you should place your own patches in this directory, together with patches you received from Adobe Commerce support.

```diff
diff --git a/vendor/magento/framework/Mview/View/Subscription.php b/vendor/magento/framework/Mview/View/Subscription.php
index 03a3bf9..681e0b0 100644
--- a/vendor/magento/framework/Mview/View/Subscription.php
+++ b/vendor/magento/framework/Mview/View/Subscription.php
@@ -16,6 +16,7 @@ use Magento\Framework\Mview\ViewInterface;
 
 /**
  * Mview subscription.
+ * Test Patch File
  */
 class Subscription implements SubscriptionInterface
 {
```

#### Package 2: composer plugin

`composer.json`

```json
{
    "name": "magento-services/centralized-patcher-composer-plugin",
    "version": "0.0.1",
    "description": "Centralized patcher composer plugin to apply quality patches from the centralized patcher",
    "type": "composer-plugin",
    "license": [
        "OSL-3.0",
        "AFL-3.0"
    ],
    "require": {
        "symfony/process": "^4.1 || ^5.1",
        "magento/magento-cloud-patches": "~1.0.20",
        "magento/framework": "~103.0.5-p1",
        "composer-plugin-api": "^2.0"
    },
    "require-dev": {
        "composer/composer": "^2.0"
    },
    "suggest": {
        "magento-services/centralized-patcher": "~0.0.1"
    },
    "autoload": {
        "psr-4": {
            "MagentoServices\\CentralizedPatcherComposerPlugin\\": ""
        }
    },
    "extra": {
        "class": "MagentoServices\\CentralizedPatcherComposerPlugin\\Patcher"
    }
}
```

The Patcher class simply reads the quality patches list from the centralized-patcher package, and installs them right after every composer install and composer update:

**Patcher class**

```php
<?php
declare(strict_types=1);

namespace MagentoServices\CentralizedPatcherComposerPlugin;

use Composer\Composer;
use Composer\EventDispatcher\EventSubscriberInterface;
use Composer\IO\IOInterface;
use Composer\Plugin\PluginInterface;
use Composer\Script\ScriptEvents;
use Symfony\Component\Process\Exception\ProcessFailedException;
use Symfony\Component\Process\Process;

class Patcher implements PluginInterface, EventSubscriberInterface
{
    /**
     * @var Composer $composer
     */
    protected $composer;

    /**
     * @var IOInterface $io
     */
    protected $io;

    /**
     * @param Composer $composer
     * @param IOInterface $io
     * @return void
     */
    public function activate(Composer $composer, IOInterface $io)
    {
        $this->composer = $composer;
        $this->io = $io;
    }

    /**
     * @param Composer $composer
     * @param IOInterface $io
     * @return void
     */
    public function deactivate(Composer $composer, IOInterface $io)
    {
        // Method must exist
    }

    /**
     * @param Composer $composer
     * @param IOInterface $io
     * @return void
     */
    public function uninstall(Composer $composer, IOInterface $io)
    {
        // Method must exist
    }

    /**
     * @return string[]
     */
    public static function getSubscribedEvents()
    {
        return [
            ScriptEvents::POST_UPDATE_CMD => 'installPatches',
            ScriptEvents::POST_INSTALL_CMD => 'installPatches',
        ];
    }

    /**
     * Apply patches from magento-services/centralized-patcher
     *
     * @param \Composer\Script\Event $event
     * @return void
     */
    public function installPatches(\Composer\Script\Event $event)
    {
        $patches = [];
        $this->io->write('Applying centralized quality patches');
        $packages = $this->composer->getLocker()->getLockData()['packages'];
        foreach ($packages as $package) {
            if ($package['name'] !== 'magento-services/centralized-patcher') {
                continue;
            }
            $patches = $package['extra']['quality-patches'] ?? [];
        }
        if (empty($patches)) {
            $this->io->error("No centralized quality patches to install");
            exit(0);
        }
        $command = array_merge(
            ['php','./vendor/bin/magento-patches','apply','--no-interaction'],
             $patches
        );
        $process = new Process($command);
        try {
            $this->io->debug($process->getCommandLine());
            $process->mustRun();
            $this->io->write(
                str_replace("\n\n", "\n", trim($process->getErrorOutput() ?: $process->getOutput(), "\n"))
            );
        } catch (ProcessFailedException $e) {
            $process = $e->getProcess();
            $error = sprintf(
                'The command "%s" failed. %s',
                $process->getCommandLine(),
                trim($process->getErrorOutput() ?: $process->getOutput(), "\n")
            );
            throw new \RuntimeException($error, $process->getExitCode());
        }
    }
}
```

You can see the two packages in an Adobe Commerce Cloud context on GitHub and see it in action. Links at the bottom of the article.

## What to do with project-specific patches?

So what if you need to install 95% of all patches in all projects, but there are a couple of patches that only apply to a specific instance? No problem. The regular way of patching still works; You can use the project's m2-hotfixes directory to store project-specific patches and you can install quality patches per project. Do make sure that you do not commit m2-hotfixes that have been copied into your project by the centralized-patcher though. Because then they will stay in your project, even if you remove them from the centralized-patcher package.

One way of making sure that you do not accidentally commit centralized m2-hotfixes in your local project is to add m2-hotfixes to your .gitignore file. This does mean that you will have to add project-specific m2-hotfixes with git add –force.

## Running different Adobe Commerce versions?

Just make sure that you set the right dependency in the centralized-patcher package, for instance, you may require Adobe Commerce 2.4.5-p2 for a specific version of your package, which only provides patches that are compatible with Adobe Commerce 2.4.5-p2. You may have another version of this package that is compatible with Adobe Commerce 2.4.4.

## Understanding the end result

Like with Adobe Commerce cloud, I am assuming that your deployment process uses composer install, and not composer update or git pull, to deploy new code. The flow of centralized patch installation will then look as follows:

1. Composer install

   - Installs Adobe Commerce including -p1 or -p2 security and functional patches
   - Combines centralized m2-hotfixes and support patches with project specific m2-hotfixes and support patches
   - Applies any patches that are installed through cweagans/composer-patches

1. After composer install

   - Composer plugin installs centralized quality patches

1. Deployment

   - Required patches and project specific quality patches are installed based on .magento.env.yaml
   - Custom patches and support patches from the /m2-hotfixes directory are installed in alphabetical order by patch name.

You will never forget to install an important patch in one of your projects.

This way you can centrally manage all your patches for all your installations. You will never forget to install an important patch in one of your projects. And so you can better guarantee the security and stability of your Adobe Commerce stores.

## Code examples

- [Centralized patches in Magento Open Source](https://github.com/AntonEvers/centralized-patches-on-magento-open-source)
- [Centralized patches in Adobe Commerce Cloud](https://github.com/AntonEvers/centralized-patches-on-adobe-commerce-cloud)
- [Centralized patcher composer plugin](https://github.com/AntonEvers/centralized-patcher-composer-plugin)
- [Centralized patcher component](https://github.com/AntonEvers/centralized-patcher)
