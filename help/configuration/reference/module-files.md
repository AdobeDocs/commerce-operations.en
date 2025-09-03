---
title: Module configuration files
description: Learn how to customize a module using configuration types.
exl-id: 87433c28-8e3d-43d0-b77e-3ff9a680af5f
---
# Overview of module configuration files

The responsibilities of the `config.xml` configuration file used in earlier versions of Commerce is now divided between several files, located in various module directories. Commerce's multiple configuration files load on demand only when a module requests a specific configuration type.

You can use these files—also referred to as _configuration types_—to customize specific aspects of your module's behavior.

Multiple modules can declare configuration files that affect the same configuration type (for example, events), and these multiple configuration files are merged.

Following are common terms used in this topic:

- **Configuration object**—The Commerce library or class that is responsible for defining and validating the configuration type. For example, the configuration object for `config.xml` is [Magento\Framework\App\Config](https://github.com/magento/magento2/blob/2.4/lib/internal/Magento/Framework/App/Config.php).

- **Configuration stage**—Stages are defined as _primary_, _global_, and _area_. Each stage determines when configuration type is loaded and merged with same-named configuration types. For example, `module.xml` files are merged with other `module.xml` files.

- **Configuration scope**—Complementary to configuration stages, a scope defines the configuration type model. For example, `adminhtml` is an area scope that is loaded with at the stage with other modules' `adminhtml` configurations. For more information, see [Modules and areas](https://developer.adobe.com/commerce/php/architecture/modules/areas/).

## Configuration load and merge

This section discusses how configuration files are loaded and merged.

### How Commerce loads configuration files

Commerce loads configuration files in the following order (all paths are relative to your Commerce installation directory):

- Primary configuration ([app/etc/di.xml](https://github.com/magento/magento2/blob/2.4/app/etc/di.xml)). This file is used to bootstrap Commerce.
- Global configurations from modules (`<your component base dir>/<vendorname>/<component-type>-<component-name>/etc/*.xml`). Collects certain configuration files from all modules and merges them together.
- Area-specific configuration from modules (`<your component base dir>/<vendorname>/<component-type>-<component-name>/etc/<area>/*.xml`). Collects configuration files from all modules and merges them into the global configuration. Some area-specific configurations can override or extend the global configuration.

where

- `<your component base dir>` is the base directory in which your component is located. Typical values are `app/code` or `vendor` relative to the Commerce installation directory.
- `<vendorname>` is the component's vendor name; for example, Commerce's vendor name is `magento`.
- `<component-type>` is one of the following:

  - `module-`: An extension or module.
  - `theme-`: Theme.
  - `language-`: Language package.

>[!INFO]
>
>Currently, themes are located under `<magento_root>/app/design/frontend` or `<magento_root>/app/design/adminhtml`.

- `<component-name>`: Name of your component as defined in [composer.json](https://github.com/magento/magento2/blob/2.4/composer.json).

### Configuration file merge

Nodes in configuration files are merged based on their fully qualified XPaths, which has a special attribute defined in `$idAttributes` array declared as its identifier. This identifier must be unique for all nodes nested under the same parent node.

Commerce application merge algorithm:

- If node identifiers are equal (or if there is no identifier defined), all underlying content in the node (attributes, child nodes, and scalar content) is overridden.
- If node identifiers are not equal, the node is a new child of the parent node.
- If the original document has multiple nodes with the same identifier, an error is triggered because the identifiers cannot be distinguished.

After configuration files are merged, the resulting document contains all nodes from the original files.

>[!INFO]
>
>You can use [\Magento\Framework\Config\Reader\Filesystem](https://github.com/magento/magento2/blob/2.4/lib/internal/Magento/Framework/Config/Reader/Filesystem.php) class for debugging and understanding the logic behind [configuration files loader](https://github.com/magento/magento2/blob/2.4/lib/internal/Magento/Framework/Config/Reader/Filesystem.php#L125) and [merge configs](https://github.com/magento/magento2/blob/2.4/lib/internal/Magento/Framework/Config/Reader/Filesystem.php#L144) process.

## Configuration types, objects, and interfaces

The following sections provide information about configuration types, their corresponding configuration objects, and interfaces that you can use to work with the objects:

### Configuration types and objects

The following table shows each configuration type and the Commerce configuration object to which it relates.

| Configuration file|Description|Stage|Configuration object |
| --- | --- | --- | --- |
| `address_formats.xml`|Address format declaration|primary, global|[\Magento\Customer\Model\Address\Config](https://github.com/magento/magento2/blob/2.4/app/code/Magento/Customer/Model/Address/Config.php) |
| `acl.xml`|[Access Control List](https://developer.adobe.com/commerce/webapi/get-started/authentication/#relationship-between-aclxml-and-webapixml)|global|[\Magento\Framework\Acl\AclResource\Provider](https://github.com/magento/magento2/blob/2.4/lib/internal/Magento/Framework/Acl/AclResource/Provider.php) |
| `analytics.xml`|[Advanced reporting](https://developer.adobe.com/commerce/php/development/advanced-reporting/data-collection/)|primary, global|[\Magento\Analytics\Model\Config\Reader](https://github.com/magento/magento2/blob/2.4/app/code/Magento/Analytics/Model/Config/Reader.php) |
| `cache.xml`|Cache type declaration|primary, global|[\Magento\Framework\Cache\Config\Data](https://github.com/magento/magento2/blob/2.4/lib/internal/Magento/Framework/Cache/Config/Data.php) |
| `catalog_attributes.xml`|Catalog attributes configuration|global|[\Magento\Catalog\Model\Attribute\Config\Data](https://github.com/magento/magento2/blob/2.4/app/code/Magento/Catalog/Model/Attribute/Config/Data.php) |
| `config.php` and `env.php`|[Deployment configuration](../reference/deployment-files.md)|These files are readable/writeable by the internal config processor.|Has no object, cannot be customized|
| `config.xml`|System configuration|primary, global|[\Magento\Framework\App\Config](https://github.com/magento/magento2/blob/2.4/lib/internal/Magento/Framework/App/Config.php) |
| `communication.xml`| [Defines aspects of the message queue system](https://developer.adobe.com/commerce/php/development/components/message-queues/configuration/#communicationxml)| global | [\Magento\WebapiAsync\Code\Generator\Config\RemoteServiceReader\Communication](https://github.com/magento/magento2/blob/2.4/app/code/Magento/WebapiAsync/Code/Generator/Config/RemoteServiceReader/Communication.php) |
| `crontab.xml`|[Configures cron groups](../cron/custom-cron-reference.md#configure-cron-groups)| global | [\Magento\Cron\Model\Config\Data](https://github.com/magento/magento2/blob/2.4/app/code/Magento/Cron/Model/Config/Data.php) |
| `cron_groups.xml`|[Specifies cron group options](../cron/custom-cron-reference.md)| global | [\Magento\Cron\Model\Groups\Config\Data](https://github.com/magento/magento2/blob/2.4/app/code/Magento/Cron/Model/Groups/Config/Data.php) |
| `db_schema.xml`|[Declarative schema](https://developer.adobe.com/commerce/php/development/components/declarative-schema/configuration/)|global|[Magento\Framework\Setup\Declaration\Schema](https://github.com/magento/magento2/blob/2.4/lib/internal/Magento/Framework/Setup/Declaration/Schema/SchemaConfig.php) |
| `di.xml`|[Dependency injection](https://developer.adobe.com/commerce/php/development/components/dependency-injection/) configuration|primary, global, area|[\Magento\Framework\ObjectManager\Config](https://github.com/magento/magento2/blob/2.4/lib/internal/Magento/Framework/ObjectManager/Config/Config.php) |
| `eav_attributes.xml`| Provides EAV attributes configuration | global | [\Magento\Eav\Model\Entity\Attribute\Config](https://github.com/magento/magento2/blob/2.4/app/code/Magento/Eav/Model/Entity/Attribute/Config.php) |
| `email_templates.xml`| Email templates configuration | global | [\Magento\Email\Model\Template\Config\Data](https://github.com/magento/magento2/blob/2.4/app/code/Magento/Email/Model/Template/Config/Data.php) |
| `esconfig.xml`| [Search engine locale stopwords config](../search/search-stopwords.md#create-stopwords-for-a-new-locale) | global | [\Magento\Elasticsearch\Model\Adapter\Index\Config\EsConfig](https://github.com/magento/magento2/blob/2.4/app/code/Magento/Elasticsearch/Model/Adapter/Index/Config/EsConfig.php) |
| `events.xml`|Event/observer configuration|global, area|[\Magento\Framework\Event](https://github.com/magento/magento2/blob/2.4/lib/internal/Magento/Framework/Event.php) |
| `export.xml`| Export entity configuration | global | [\Magento\ImportExport\Model\Export\Config](https://github.com/magento/magento2/blob/2.4/app/code/Magento/ImportExport/Model/Export/Config.php) |
| `extension_attributes.xml`|[Extension attributes](https://developer.adobe.com/commerce/php/development/components/attributes/#extension-attributes)| global | [\Magento\Framework\Api\ExtensionAttribute\Config](https://github.com/magento/magento2/blob/2.4/lib/internal/Magento/Framework/Api/ExtensionAttribute/Config.php) |
| `fieldset.xml`| Defines fieldsets | global | [\Magento\Framework\DataObject\Copy\Config\Reader](https://github.com/magento/magento2/blob/2.4/lib/internal/Magento/Framework/DataObject/Copy/Config/Reader.php) |
| `indexer.xml`| [Declares indexers](https://developer.adobe.com/commerce/php/development/components/indexing/custom-indexer/) | global | [\Magento\Framework\Indexer\Config\Reader](https://github.com/magento/magento2/blob/2.4/lib/internal/Magento/Framework/Indexer/Config/Reader.php) |
| `import.xml`| Declares import entities | global | [\Magento\ImportExport\Model\Import\Config](https://github.com/magento/magento2/blob/2.4/app/code/Magento/ImportExport/Model/Import/Config.php) |
| `menu.xml`| Defines menu items for the Admin | adminhtml | [\Magento\Backend\Model\Menu\Config\Reader](https://github.com/magento/magento2/blob/2.4/app/code/Magento/Backend/Model/Menu/Config/Reader.php) |
| `module.xml`| Defines module config data and soft dependency | primary, global | [\Magento\Framework\Module\ModuleList\Loader](https://github.com/magento/magento2/blob/2.4/lib/internal/Magento/Framework/Module/ModuleList/Loader.php) |
| `mview.xml`| [MView configuration](https://developer.adobe.com/commerce/php/development/components/indexing/custom-indexer/#mview-configuration) | primary, global | [\Magento\Framework\Mview\Config\Data](https://github.com/magento/magento2/blob/2.4/lib/internal/Magento/Framework/Mview/Config/Data.php) |
| `payment.xml`| Payment module configuration | primary, global | [\Magento\Payment\Model\Config](https://github.com/magento/magento2/blob/2.4/app/code/Magento/Payment/Model/Config.php) |
| `persistent.xml`| [Magento_Persistent](https://developer.adobe.com/commerce/php/module-reference/module-persistent/) configuration file | global | [\Magento\Persistent\Helper\Data](https://github.com/magento/magento2/blob/2.4/app/code/Magento/Persistent/Helper/Data.php) |
| `pdf.xml`| PDF settings | global | [\Magento\Sales\Model\Order\Pdf\Config\Reader](https://github.com/magento/magento2/blob/2.4/app/code/Magento/Sales/Model/Order/Pdf/Config/Reader.php) |
| `product_options.xml`| Provides product options configuration | global | [\Magento\Catalog\Model\ProductOptions\Config](https://github.com/magento/magento2/blob/2.4/app/code/Magento/Catalog/Model/ProductOptions/Config.php) |
| `product_types.xml`| Defines product type | global | [\Magento\Catalog\Model\ProductTypes\Config](https://github.com/magento/magento2/blob/2.4/app/code/Magento/Catalog/Model/ProductTypes/Config.php) |
| `queue_consumer.xml`|[Defines the relationship between an existing queue and its consumer](https://developer.adobe.com/commerce/php/development/components/message-queues/configuration/#queue_consumerxml) | global | [\Magento\Framework\MessageQueue\Consumer\Config\Xml\Reader](https://github.com/magento/magento2/blob/2.4/lib/internal/Magento/Framework/MessageQueue/Consumer/Config/Xml/Reader.php) |
| `queue_publisher.xml`|[Defines the exchange where a topic is published.](https://developer.adobe.com/commerce/php/development/components/message-queues/configuration/#queue_publisherxml)| global | [\Magento\WebapiAsync\Code\Generator\Config\RemoteServiceReader\Publisher](https://github.com/magento/magento2/blob/2.4/app/code/Magento/WebapiAsync/Code/Generator/Config/RemoteServiceReader/Publisher.php) |
| `queue_topology.xml`|[Defines the message routing rules, declares queues and exchanges](https://developer.adobe.com/commerce/php/development/components/message-queues/configuration/#queue_topologyxml)| global | [\Magento\Framework\MessageQueue\Topology\Config\Xml\Reader](https://github.com/magento/magento2/blob/2.4/lib/internal/Magento/Framework/MessageQueue/Topology/Config/Xml/Reader.php) |
| `reports.xml`| [Advanced reports](https://developer.adobe.com/commerce/php/development/advanced-reporting/report-xml/) | global | [\Magento\Analytics\ReportXml\Config](https://github.com/magento/magento2/blob/2.4/app/code/Magento/Analytics/ReportXml/Config.php) |
| `resources.xml`| Defines module resource | global | [\Magento\Framework\App\ResourceConnection\Config\Reader](https://github.com/magento/magento2/blob/2.4/lib/internal/Magento/Framework/App/ResourceConnection/Config/Reader.php) |
| `routes.xml`|[Route](https://developer.adobe.com/commerce/php/development/components/routing/) configuration|area|[Magento\Framework\App\Route\Config](https://github.com/magento/magento2/blob/2.4/lib/internal/Magento/Framework/App/Route/Config.php) |
| `sales.xml`| Defines sales total configuration | global | [\Magento\Sales\Model\Config\Data](https://github.com/magento/magento2/blob/2.4/app/code/Magento/Sales/Model/Config/Data.php) |
| `search_engine.xml`| Provides search engine configuration | global | [Magento\Search\Model\SearchEngine\Config](https://github.com/magento/magento2/blob/2.4/app/code/Magento/Search/Model/SearchEngine/Config.php) |
| `search_request.xml`| Defines catalog search configuration | global | [\Magento\Framework\Search\Request\Config](https://github.com/magento/magento2/blob/2.4/lib/internal/Magento/Framework/Search/Request/Config.php) |
| `sections.xml` | Defines actions that trigger cache invalidation for private content blocks | frontend | [SectionInvalidationConfigReader](https://github.com/magento/magento2/blob/2.4/app/code/Magento/Customer/etc/di.xml#L137-L148) |
| `system.xml`| Defines options for system configuration page | adminhtml | [\Magento\Framework\App\Config](https://github.com/magento/magento2/blob/2.4/lib/internal/Magento/Framework/App/Config.php) |
| `validation.xml`| Module validation configuration file | global | [\Magento\Framework\Validator\Factory](https://github.com/magento/magento2/blob/2.4/lib/internal/Magento/Framework/Validator/Factory.php) |
| `view.xml`| Defines Vendor_Module view config values | global | [\Magento\Framework\View\Config](https://github.com/magento/magento2/blob/2.4/lib/internal/Magento/Framework/View/Config.php) |
| `webapi.xml`| [Configures a web API](https://developer.adobe.com/commerce/php/development/components/web-api/services/) | global | [\Magento\Webapi\Model\Config](https://github.com/magento/magento2/blob/2.4/app/code/Magento/Webapi/Model/Config.php) |
| `webapi_async.xml`| [Defines REST custom routes](https://developer.adobe.com/commerce/php/development/components/web-api/custom-routes/) | global | [\Magento\WebapiAsync\Model\ServiceConfig](https://github.com/magento/magento2/blob/2.4/app/code/Magento/WebapiAsync/Model/ServiceConfig.php) |
| `widget.xml`| Defines widgets | global | [\Magento\Widget\Model\Config\Reader](https://github.com/magento/magento2/blob/2.4/app/code/Magento/Widget/Model/Config/Reader.php) |
| `zip_codes.xml`| Defines zip code format for each country | global | [\Magento\Directory\Model\Country\Postcode\Config\Data](https://github.com/magento/magento2/blob/2.4/app/code/Magento/Directory/Model/Country/Postcode/Config/Data.php) |

### Configuration interfaces

You can interact with configuration files using interfaces under [Magento\Framework\Config](https://github.com/magento/magento2/tree/2.4/lib/internal/Magento/Framework/Config).

You can use these interfaces if you [create a configuration type](../reference/config-create-types.md#create-configuration-types).

`Magento\Framework\Config` provides the following interfaces:

- [Framework\Config\ConverterInterface](https://github.com/magento/magento2/blob/2.4/lib/internal/Magento/Framework/Config/ConverterInterface.php), which converts the XML into an in-memory array representation of the configurations.
- [Framework\Config\DataInterface](https://github.com/magento/magento2/blob/2.4/lib/internal/Magento/Framework/Config/DataInterface.php), which retrieves the configuration data in a specified scope.
- [Framework\Config\FileResolverInterface](https://github.com/magento/magento2/blob/2.4/lib/internal/Magento/Framework/Config/FileResolverInterface.php), which identifies the location of files to be read by [Magento\Framework\Config\ReaderInterface](https://github.com/magento/magento2/blob/2.4/lib/internal/Magento/Framework/Config/ReaderInterface.php).
- [Framework\Config\ReaderInterface](https://github.com/magento/magento2/blob/2.4/lib/internal/Magento/Framework/Config/ReaderInterface.php), which reads the configuration data from storage and selects the storage from which it reads.

That is, the file system, database, other storage merges the configuration files according to the merging rules, and validates the configuration files with the validation schemas.

- [Framework\Config\SchemaLocatorInterface](https://github.com/magento/magento2/blob/2.4/lib/internal/Magento/Framework/Config/SchemaLocatorInterface.php), which locates the XSD schema.
- [Framework\Config\ScopeListInterface](https://github.com/magento/magento2/blob/2.4/lib/internal/Magento/Framework/Config/ScopeListInterface.php), which returns a list of scopes.
- [Framework\Config\ValidationStateInterface](https://github.com/magento/magento2/blob/2.4/lib/internal/Magento/Framework/Config/ValidationStateInterface.php), which retrieves the validation state.
