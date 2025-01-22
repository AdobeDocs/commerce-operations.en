---
title: Best practices for distributing patches at scale
description: Learn how centralized patching for Adobe Commerce can help you manage enterprise projects.
role: Developer
feature: Best Practices
badge: label="Contributed by Tony Evers, Sr. Technical Architect, Adobe" type="Informative" url="https://www.linkedin.com/in/evers-tony/" tooltip="Contributed by Tony Evers"
exl-id: 08c38dc5-3dc2-49ee-b56f-59e1718e12b5
---
# Best practices for distributing Adobe Commerce patches at scale

If you manage multiple Adobe Commerce installations, [patching](../../../upgrade/patches/apply.md) can be a complex process. _Centralized patching_ is a best practice for enterprises. It helps you apply the right patches on all your Adobe Commerce installations. This topic explains how to achieve centralized patch distribution for all types of Adobe Commerce [patches](../../../upgrade/patches/overview.md).

>[!NOTE]
>
>The following content was originally published in the [Distributing Adobe Commerce Patches at Scale](https://blog.developer.adobe.com/distributing-adobe-commerce-patches-at-scale-137412e05a20) post on the Adobe Tech Blog. It's been modified to focus on the steps and code samples for implementing a centralized patching strategy. See the original post for more details about the different types of patches described here.

## Affected products and versions

[All supported versions](../../../release/versions.md) of:

- Adobe Commerce on cloud infrastructure
- Adobe Commerce on premises

## Strategy

Since there are many different types of patches and many ways to apply them, how do you know which patch is applied first? The more patches you have, the greater the chance that they will apply to the same file or to the same line of code. Patches are applied in the following order:

1. **Security patches** are part of the static code base of an Adobe Commerce release.
1. **Composer patches** through `composer install` and `composer update` plugins such as [cweagans/composer-patches](https://packagist.org/packages/cweagans/composer-patches).
1. All **required patches** included in the [Cloud Patches for Commerce](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/release-notes/cloud-patches.html) package.
1. Selected **quality patches** included in the [!DNL [Quality Patches Tool]](../../../tools/quality-patches-tool/usage.md).
1. **Custom patches** and Adobe Commerce Support patches in the `/m2-hotfixes` directory in alphabetical order by patch name.

   >[!IMPORTANT]
   >
   >The more patches you apply, the more complex your code becomes. Complex code can make upgrading to a new version of Adobe commerce more difficult and increase your total cost of ownership.

If you are responsible for maintaining multiple installations of Adobe Commerce, ensuring that all instances have the same set of patches installed can be challenging. Each installation has its own git repository, `/m2-hotfixes` directory, and `composer.json` file. The only guarantee that you have is that the **security patches** and **required patches** for cloud users are all installed as part of your main Adobe Commerce version.

Currently, there is no single centralized solution for this problem, but Composer offers a way to bridge the gap. The [`cweagans/composer-patches`](https://packagist.org/packages/cweagans/composer-patches) package allows you to [apply patches from dependencies](https://github.com/cweagans/composer-patches/tree/1.x#allowing-patches-to-be-applied-from-dependencies). You can create a Composer package that installs all your patches, then require that package in all of your projects.

That covers **security patches**, **required patches**, and **Composer patches**, but what about quality patches and the contents of the `/m2-hotfixes` directory?

## Apply quality patches and hotfixes

You can install quality patches on both cloud infrastructure and on-premises installations using the `vendor/bin/magento-patches apply` command. You must ensure that the `vendor/bin/magento-patches apply` command runs after `composer install` operations.

>[!NOTE]
>
>On cloud infrastructure, you can also install quality patches by listing them in your project's `.magento.env.yaml` file. The example described here requires using the `vendor/bin/magento-patches apply` command.

You can specify the patches to apply in the `composer.json` file of a custom Composer component package, then create a plugin package that runs the command after `composer install` operations.

To summarize, this centralized patching example requires you to create two custom Composer packages:

- **Component package:** `centralized-patcher`

   - Defines the list of quality patches and `m2-hotfixes` to install
   - Requires the `centralized-patcher-composer-plugin` package, which runs the `vendor/bin/magento-patches apply` command after `composer install` operations

- **Plugin package:** `centralized-patcher-composer-plugin`

   - Defines a `CentralizedPatcher` PHP class that reads the quality patches list from the `centralized-patcher` package
   - Runs the `vendor/bin/magento-patches apply` command to install the list of quality patches after `composer install` operations

### `centralized-patcher`

You can create a Composer component package (`centralized-patcher`) to centrally manage all quality patches and `/m2-hotfixes` across all of your Adobe Commerce installations.

The component package must:

- Copy the contents of the `/m2-hotfixes` directory into all your installations during deployment.
- Define the list of quality patches to install.
- Run the `vendor/bin/magento-patches` command to install the same list of quality patches across all installations (using the [`centralized-patcher-composer-plugin`](#centralized-patcher-composer-plugin) plugin package as a dependency).

To create the `centralized-patcher` component package:

1. Create a `composer.json` file with the following contents:

   >[!NOTE]
   >
   >The `require` attribute in the following example shows a `require` dependency on the [plugin package](#centralized-patcher-composer-plugin) that you must create later this example.

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
        ],
   }
   ```

1. Create an `/m2-hotfixes` directory inside your package and add it to the `map` attribute in your `composer.json` file. The `map` attribute contains files to copy from this package into the root of the target project that you want to patch.

   ```json
   {
    ...
    "extra": {
        "map": [
            [
                "/m2-hotfixes",
                "/m2-hotfixes"
            ]
        ],
   }
   ```

   >[!NOTE]
   >
   >The `centralized-patcher` package copies the contents of the `/m2-hotfixes` directory into the m2-hotfixes directory of the target project on `composer install`.  Since the cloud deployment scripts apply m2-hotfixes after `composer install`, all hotfixes are installed by the deployment mechanism.

1. Define the quality patches to install in the `quality-patches` attribute.

   ```json
   {
   ...
    "extra": {
        "map": [
            [
                "/m2-hotfixes",
                "/m2-hotfixes"
            ]
        ],
        "quality-patches": [
            "MDVA-30106",
            "MDVA-12304"
        ]
   }
   ```


The `quality-patches` attribute in the preceding code sample contains two patches from the [full patch list](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) as an example.  These  quality patches are installed on every project that requires the `centralized-patcher` package using the `vendor/bin/magento-patches apply` command.

For testing purposes, you can create an example patch (`/m2-hotfixes/EXAMPLE-PATCH_2.4.6.patch`).

>[!NOTE]
>
>You should place your own patches in the `m2-hotfixes` directory together with patches you receive directly from Adobe Commerce Support.

An example patch file (`/m2-hotfixes/EXAMPLE-PATCH_2.4.6.patch`):

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

### `centralized-patcher-composer-plugin`

Since this example uses the on-premises method to install quality patches, you must ensure that the `vendor/bin/magento-patches apply` command runs after `composer install` operations. This plugin is triggered after `composer install` operations, which runs the `vendor/bin/magento-patches apply` command.

To create the `centralized-patcher-compose-plugin` component package:

1. Create a `composer.json` file with the following contents:

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

1. Create a PHP file and define a `CentralizedPatcher` class to read the quality patches list from the [`centralized-patcher`](#centralized-patcher) component package and install them immediately after every `composer install` operation.

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

>[!TIP]
>
>Refer to the [code-examples](#code-examples) to see the two packages described in this example in action.


## What to do with project-specific patches

You may have a scenario where only 95% of the patches are required in all projects, while a few patches apply only to a specific instance. The regular way to apply patching still works. You can keep project-specific patches in the `/m2-hotfixes` directory and install quality patches per project.

If you use this approach, **do not** commit any patches in the `/m2-hotfixes` directory that have been copied into your project by the `centralized-patcher` component package. You can prevent accidental commits by adding `/m2-hotfixes` to your `.gitignore` file. After updating the `.gitignore` file, remember that any project-specific `/m2-hotfixes` must be added using the `git add –force` command.

## Running different Adobe Commerce versions

Make sure that you set the right dependency in the `centralized-patcher` component package. For example, you may require Adobe Commerce 2.4.5-p2 for a specific version of your package, which only provides patches that are compatible with Adobe Commerce 2.4.5-p2. You may have another version of this package that is compatible with Adobe Commerce 2.4.4.

## Understanding the result

Like with Adobe Commerce on cloud infrastructure, this article assumes that your deployment process uses the `composer install` command and not `composer update` or `git pull` to deploy new code to your servers. The flow of centralized patch installation will then look as follows:

1. Composer install

   - Installs Adobe Commerce, including -p1 or -p2 security and functional patches
   - Combines centralized `/m2-hotfixes` and support patches with project-specific `/m2-hotfixes` and support patches
   - Applies any patches that are installed with the `cweagans/composer-patches` Composer package

1. After `composer install`

   - Composer plugin installs centralized quality patches

1. Deployment

   - Required patches and project-specific quality patches are installed based on the `.magento.env.yaml` file (Adobe Commerce on cloud infrastructure projects only).
   - Custom patches and support patches from the `/m2-hotfixes` directory are installed in alphabetical order by patch name.

This way you can centrally manage all your patches for all your installations and you can better guarantee the security and stability of your Adobe Commerce stores. Use the following methods to check patch status:

- [Cloud infrastructure projects](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html#view-available-patches-and-status)
- [On-premises projects](../../../tools/quality-patches-tool/usage.md#view-individual-patches)

## Code examples

- [Centralized patches in Magento Open Source](https://github.com/AntonEvers/centralized-patches-on-magento-open-source)
- [Centralized patches in Adobe Commerce on cloud infrastructure](https://github.com/AntonEvers/centralized-patches-on-adobe-commerce-cloud)
- [Centralized patcher Composer plugin](https://github.com/AntonEvers/centralized-patcher-composer-plugin)
- [Centralized patcher component](https://github.com/AntonEvers/centralized-patcher)
