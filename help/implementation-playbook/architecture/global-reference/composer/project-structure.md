---
title: Composer project structure
description: Learn how to set up and maintain the separate packages option described in the global reference architecture examples.
feature: Best Practices
role: Developer
exl-id: 8757d5b8-8309-452f-bfb3-1188a816d14f
---
# Composer project structure

This guide describes how to set up and maintain the [separate packages option](../examples.md#option-1-separate-packages) described in the global reference architecture (GRA) examples.

## Prerequisites

Before you begin, verify the following:

- You have a Git repository
- You have a Composer repository (this topic highlights Private Packagist)
- You have configured your Composer repository to mirror the `repo.magento.com` and `packagist.org` repositories

## Main Git project repository

The main Git project repository should contain only a Composer project. You can manage everything else with Composer packages. The main project should never contain anything other than the following file structure because Composer installs all other packages through dependencies:

```tree
./
├─ .git/
├─ .gitignore
├─ composer.json
└─ composer.lock
```

Add the following content to the `.gitignore` file:

```tree
/*
!/composer.json
!/composer.lock
```

## Initialize the main project

1. Create a Git repository called `project-<region/country/brand>`.

1. Create `composer.json` and `composer.lock` files:

   ```bash
   composer create-project --no-install --repository-url=https://repo.magento.com/ magento/project-enterprise-edition project-<region/country/brand>
   cd <install-directory-name>
   printf '/*\n!/composer.json\n!/composer.lock\n!/.gitignore' > .gitignore
   composer config --unset version
   composer config name '<client>/project-<region/country/brand>'
   composer config description '<client> <region/country/brand> main composer project'
   composer config repositories.private-packagist composer https://repo.packagist.com/<client>/
   composer config repositories.packagist.org false
   composer config --unset repositories.0
   composer install
   git init
   git add --all
   git commit -m 'initialize project'
   git remote add origin git@bitbucket.org:<client>/project-<region/country/brand>.git
   git push -u origin master
   ```

## Save non-module files

1. Add the `app/etc/config.xml` file to the Git repository.

   You can use the module that you are going to create to install other region or brand-specific files, such as `.htaccess`, Google or Bing authentication text files, executables, or other static files that are not managed by Adobe Commerce modules.
   
   Use `magento2-component` type packages to create a file mapping to copy files into the main Git repository during `composer install` and `composer update` operations.

1. Create a Git repository that follows the naming convention `component-environment-<region/country/brand>`:

   ```bash
   bin/magento module:enable --all
   cd ../
   mkdir component-environment-<region/country/brand>
   cd component-environment-<region/country/brand>
   composer init --no-interaction \
    --name='<client>/component-environment-<region/country/brand>' \
    --description='<client> <region/country/brand> environment files' \
    --type=magento2-component \
    --require="magento/magento-composer-installer:*"
   mkdir -p app/etc
   cp ../project-<region/country/brand>/app/etc/config.php app/etc/
   composer config -e
   ```

1. Add the `app/etc/config.php` file as a mapping in the `extra.map` attribute of your `composer.json` file:

   ```json
   {
       "name": "example-client/component-environment-emea",
       "description": "Example client EMEA environment files",
       "type": "magento2-component",
       "require": {
           "magento/magento-composer-installer": "*"
       },
       "extra": {
           "map": [
               [
                   "app/etc/config.php",
                   "app/etc/config.php"
               ]
           ]
       }
   }
   ```

1. Validate your `composer.json` file and commit it to the Git repository:

   ```bash
   composer validate
   git init
   git add --all
   git commit -m 'initialize component'
   git remote add origin git@bitbucket.org:<client>/component-environment-<region/country/brand>.git
   git push -u origin master
   git tag 0.1.0 -m "0.1.0"
   git push --tags
   ```

## Set up metapackages

1. Create the following Git repositories: 

   - `meta-gra`
   - `meta-<region/country/brand>`

1. Set up the following dependency tree:

   ```tree
   client/project-<region/country/brand>
   └─ requires -> client/meta-<region/country/brand>
                  ├─ requires -> client/component-environment-<region/country/brand>
                  └─ requires -> client/meta-gra
                                 └─ requires -> magento/product-enterprise-edition
   ```

1. Create the GRA metapackage:

   ```bash
   cd ..
   mkdir meta-gra
   cd meta-gra
   composer init --no-interaction \
    --name='<client>/meta-gra' \
    --description='<client> GRA meta package' \
    --type=metapackage \
    --require="magento/product-enterprise-edition:<exact.required.version>"
   git init
   git add --all
   git commit -m 'initialize meta package'
   git remote add origin git@bitbucket.org:<client>/meta-gra.git
   git push -u origin master
   git tag 0.1.0 -m "0.1.0"
   git push --tags
   ```

1. Create the brand metapackage:

   ```bash
   cd ..
   mkdir meta-<region/country/brand>
   cd meta-<region/country/brand>
   composer init --no-interaction \
    --name='<client>/meta-<region/country/brand>' \
    --description='<client> <region/country/brand> meta package' \
    --type=metapackage \
    --require="<client>/component-environment-<region/country/brand>:~0.1" \
    --require="<client>/meta-gra:~0.1"
   git init
   git add --all
   git commit -m 'initialize meta package'
   git remote add origin git@bitbucket.org:<client>/meta-<region/country/brand>.git
   git push -u origin master
   git tag 0.1.0 -m "0.1.0"
   git push --tags
   ```

1. Require the collection through dependency management in the main project:

   ```bash
   cd ../project-<region/country/brand>
   rm app/etc/config.php
   composer remove --no-update magento/product-enterprise-edition
   composer require --no-update "<client>/meta-<region/country/brand>:~0.1"
   composer config minimum-stability alpha
   composer config prefer-stable true
   composer update
   git add --all
   git commit -m 'set up GRA dependency tree'
   git push origin master
   git tag 0.1.0 -m "0.1.0"
   git push --tags
   ```

1. Verify that Composer copied the `app/etc/config.php` file from `<client>/component-environment-<region/country/brand>`.

## Deploy code

On the web server, you can deploy code using Composer, but you cannot update the main project. Reinstall the project using Composer with every new deployment, which eliminates the requirement for the production and test servers to have access to Git.
 
## Add other instances and packages

Each instance (region, brand, or otherwise unique Adobe Commerce installation) should get its own **main project** instance, **specific metapackage**, and **environment component package**. The **GRA metapackage** should be **shared** across all instances.

Functional packages (such as Adobe Commerce modules, themes, language packs, and libraries) and third-party packages should be required by either:

- **GRA metapackage**—For installation on _all_ instances
- **instance-specific metapackage**—For installation on a single brand or region

>[!IMPORTANT]
>
>Do not require packages in the main project's `composer.json` file on the `main` or `release` branches.

## Prepare for development

For development, install `develop` versions of all modules that you maintain.

Depending on your branching strategy, you might have `develop`, `qa`, `uat`, and `main` branches. Each branch exists in Composer with a `dev-` prefix. So the `develop` branch can be required through Composer as version `dev-develop`.

1. Create `develop` branches in all modules and project repositories.

   ```bash
   cd ../component-environment-<region/country/brand>
   git checkout master
   git checkout -b develop
   git push -u origin develop
   
   
   cd ../meta-<region/country/brand>
   git checkout master
   git checkout -b develop
   
   git push -u origin develop
 
   
   cd ../meta-gra
   git checkout master
   git checkout -b develop
   git push -u origin develop
   
   
   cd ../project-<region/country/brand>
   git checkout master
   git checkout -b develop
   git push -u origin develop
   
   
   composer require \
   "magento-services/meta-fantasy-corp:dev-develop as 0.999" \
   "magento-services/meta-gra:dev-develop as 0.999" \
   "magento-services/component-environment-fantasy-corp:dev-develop as 0.999"
   ```

   The previous step generates the following lines in your `composer.json` file:

   ```json
   "require": {
       "magento-services/component-environment-fantasy-corp": "dev-develop as 0.999",
       "magento-services/meta-fantasy-corp": "dev-develop as 0.999",
       "magento-services/meta-gra": "dev-develop as 0.999"
   },
   ```

   >[!IMPORTANT]
   >
   >**Do not merge** these `composer.json` file changes to your production branch. Install only stable versions of packages on `release` and `main` branches. You can define these dependencies for `qa` branches and other non-main branches.
