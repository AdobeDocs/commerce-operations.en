---
title: Disable module output
description: Learn how to disable module output.
exl-id: af556bf5-8454-4d65-8ac8-4a64c108f092
---
# Disable module output

By default, all modules are configured so that module output can be written to a view. Turning off output offers a way to essentially disable a module that cannot be disabled due to hard dependencies.

For example, the `Customer` module depends on the `Review` module, so the `Review` module cannot be disabled. However, if you do not want customers to provide reviews, you could turn off output from the `Review` module.

>[!INFO]
>
>If a merchant used the Admin to disable module output in a previous release, you must manually configure the system to migrate these settings.

The Output disabling is performed in following classes:

- [\Magento\Framework\View\Element\AbstractBlock::toHtml](https://github.com/magento/magento2/blob/36097739bbb0b8939ad9a2a0dadee64318153dca/lib/internal/Magento/Framework/View/Element/AbstractBlock.php#L651)
- [\Magento\Backend\Block\Template::isOutputEnabled](https://github.com/magento/magento2/blob/0c786907ffe03d0e2990612eec16ee58b00379c5/app/code/Magento/Backend/Block/Template.php#L96)

>[!WARNING]
>
>Disabling the module output does not disable the module. The module remains enabled and working, but no block, page, or field is rendered on the frontend or backend.

## Disable module output in a pipeline deployment

To disable module output in the pipeline deployment or any other deployment, with multiple instances of the Commerce application:

1. Edit the `Backend` module's `config.xml` file.
1. Export the configuration changes.

### Edit the `Backend` module `config.xml` file

1. Archive the original `config.xml` file.
1. Add lines similar to the following to the `<Magento_install_dir>/vendor/magento/module-backend/etc/config.xml` file, directly under the `<default>` element:

   ```xml
   <advanced>
       <modules_disable_output>
           <Magento_Newsletter>1</Magento_Newsletter>
       </modules_disable_output>
   </advanced>
   ```

   Here:

   -  `<modules_disable_output>` contains a list of modules.
   -  `<Magento_Newsletter></Magento_Newsletter>` specifies which module to disable output for.
   -  `1` is the flag that disables output for the `Magento_Newsletter` module.

As a sample result of this configuration, customers can no longer sign up to receive newsletters.

### Export the configuration changes

Run the following command to export the configuration changes:

```bash
bin/magento app:config:dump
```

The results are written to the `<Magento_install_dir>/app/etc/config.php` file.

Next, clear the cache to enable the new setting:

```bash
bin/magento cache:clean config
```

See [Export the configuration](../cli/export-configuration.md).

## Disable module output in a simple deployment

The procedure for disabling module output on a single instance of Commerce is easier because the changes do not have to be distributed.

1. Archive the original `<Magento_install_dir>/app/etc/config.php` file.
1. Add the `advanced` and `modules_disable_output` sections to the `config.php` file (if they do not exist):

   ```php
   'system' =>
     array (
       'websites' =>
       array (
         'base' =>
         array (
           'advanced' =>
           array (
             'modules_disable_output' =>
             array (
               'Magento_Review' => '1',
             ),
           ),
         ),
       ),
     ),
   ```

In this example, output for the `Magento_Review` module has been disabled and customers can no longer review products.

### Re-enable module output

To re-enable output, set the value for the module to `0`, or remove the line/module from the `config.php` file
