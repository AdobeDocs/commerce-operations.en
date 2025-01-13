# Adobe Commerce Glossary

## A

### above the fold

_adjective_

In a browser window, the content that is immediately visible after a web page loaded and before a user scrolled down the page.
When designing your layout, use flexible formats to best display the highest priority products, features, sales, notifications, options, and so on, in this area.

With mobile and tablets, the area of above the fold greatly differs, especially on the size and dimensions of the screen and orientation when viewing (portrait vs landscape).
Using responsive themes and testing can help find the right mix of content and layout.

_Term attributes:_

* _Field: design_

### active branch

_noun_

An active branch or environment is one that is connected to a deployed or running instance with access to services.
When you deactivate, the connection to the services and to the running instance is removed, but the code is preserved.
It becomes an ordinary git branch.

_Term attributes:_

* _Field: cloud_

### adapter

_noun_

A class that enables two otherwise incompatible systems to work together without modifying the systems' source code.
Examples include database adapters, cache adapters, filesystem adapters, post-processor libraries adapters, and other types of computing adapters.

_Term attributes:_

* _Field: programming_

### admin

_noun_

In software, a user role with full administrator privileges to manage all functionality.
In Adobe Commerce, admin users have full permissions and access to all features, options, and capabilities in the Admin.
They can also create users and roles.

Learn more: [Adding Users](https://experienceleague.adobe.com/docs/commerce-admin/systems/user-accounts/permissions-users-all.html)

_Term attributes:_

* _Field: commerce software_
* _Synonyms: administrator, super user_
* _Related terms: commerce admin_

### Admin area

_noun_

The password-protected back office of your store where orders, catalog, content, and configurations are managed.
Users access the Admin area to manage the store, including products, orders, shipments, CMS content, design of the storefront, customer information, and so on.
Admin users have an associated role with permissions that controls access to features, options, and capabilities.

Learn more: [Adobe Commerce User Guide](https://experienceleague.adobe.com/docs/commerce-admin/user-guides/home.html)

_Term attributes:_

* _Field: commerce software_
* _Synonyms: Admin, Admin Panel, backend, Administration Interface, Admin UI_
* _Related terms: admin_

### ADMIN variables

_noun_

ADMIN variables are project environment variables to override the configuration settings for the Admin user account to access the Admin UI.

Learn more: [ADMIN variables](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/configure/env/stage/variables-admin.html)

_Term attributes:_

* _Field: admin, cloud_

### adminhtml

_noun_

The internal area name assigned to the Admin.

Learn more: [Adobe Commerce User Guide](https://experienceleague.adobe.com/docs/commerce-admin/user-guides/home.html)

_Term attributes:_

* _Field: commerce software_
* _Related terms: area, commerce admin_

### area

_noun_

Area is an abstract term for a Magento application scope.
Areas are logical components that organize code for optimized request processing.
Areas reduce the memory demands of configuration objects accessed from the storefront, and they streamline web service calls by loading only the required dependent code.
Each area can contain completely different code to process URLs and requests.

Adobe Commerce areas include:

* Admin (adminhtml)
* Storefront
* Web API REST (webapi_rest)

_Term attributes:_

* _Field: commerce software_
* _Related terms: commerce component, storefront_

### attribute

_noun_

A characteristic or property of a product that describes some aspect of the product.
Adobe Commerce users can create custom attributes to add to the default attribute set or a custom attribute set.
Create these attributes through the Admin or programmatically.
Examples: color, size, weight, price, age, gender, and so on.

Custom attributes are a type of Entity-Attribute-Value (EAV) attribute.

For integrations like Google Shopping ads Channel and Amazon Sales Channel, you map Commerce attributes to attributes in the third-party to properly display and sell products, display ads.

Learn more: [EAV and extension extension_attributes](https://developer.adobe.com/commerce/php/development/components/attributes/)

_Term attributes:_

* _Field: commerce software, product_
* _Synonyms: product attribute, custom attribute_
* _Related terms: extension attribute_

### attribute group

_noun_

A logical grouping of attributes within an attribute set.

_Term attributes:_

* _Field: commerce software_
* _Related terms: attribute_

### attribute set

_noun_

A collection of attribute groups, customized for a specific product.
Example: A T-shirt attribute set might include color, size, gender, and brand.

_Term attributes:_

* _Field: commerce software, product_
* _Related terms: attribute_

### average inventory cost

_noun_

Product price, less coupons, or discounts, plus freight and applicable taxes.
The average is determined by adding the beginning cost of inventory each month, plus the ending cost of inventory for the last month of the period.

_Term attributes:_

* _Field: product, pricing, inventory_

## B

### base currency

_noun_

The primary currency that is used per store view for all online payments.
Stores can accept currencies from more than 200 countries around the world.
The store front provides a currency selector for multiple accepted currencies for a specific country or locale.
Currency symbols appear in product prices and sales documents such as orders and invoices.
You can customize the currency symbols as needed and set the display of the price separately for each store or view.

Learn more: [Currency](https://experienceleague.adobe.com/docs/commerce-admin/stores-sales/site-store/currency/currency.html)

_Term attributes:_

* _Field: pricing_

### batch processing

_noun_

To perform a task or change multiple items all at once, without manual repetition.

_Term attributes:_

* _Field: programming_
* _Synonyms: bulk operations_

### block

_noun_

A unit of page output that renders some distinctive content - a piece of information, a user interface element - anything visually tangible for the end-user.
[Blocks](https://experienceleague.adobe.com/docs/commerce-admin/content-design/elements/blocks/blocks.html) are implemented and provided by modules.
Blocks use templates to generate HTML.
Examples of blocks include a category list, a mini cart, product tags, and product listing.

[Dynamic blocks](https://experienceleague.adobe.com/docs/commerce-admin/content-design/elements/dynamic-blocks/dynamic-blocks.html) provide content based on logic, such as price rules.

Page Builder expands on the interactivity and creation of [blocks](https://experienceleague.adobe.com/docs/commerce-admin/page-builder/add-content/block.html) and [dynamic blocks](https://experienceleague.adobe.com/docs/commerce-admin/page-builder/add-content/dynamic-block.html).

_Term attributes:_

* _Field: commerce software_
* _Synonyms: Dynamic Blocks_
* _Related terms: cms block, static block, container, layout_

### brand

_noun, verb_

A unique identity that defines a particular product or group of products by the manufacturer or Designer.
These include name brands for clothing, appliances, luxury items, and so on.
Your company may also be the brand, selling products under multiple brands based on the business unit, target audience, and so on.

Use custom attributes to save brand information for products.

Some extensions and integrations may use or require a brand for your products, such as Google Shopping ads Channel and Amazon Sales Channel.

_Term attributes:_

* _Field: business_

### brick-and-mortar

_adjective_

A retail business with a permanent physical location, as opposed to businesses that function virtually or solely through the internet.

For [Inventory Management](https://experienceleague.adobe.com/docs/commerce-admin/inventory/sources/sources-manage.html) and [Order Management](#oms), this store is a source for tracking product quantities, shipping orders, and supporting in-store pickup.

_Term attributes:_

* _Field: business, inventory_

### bulk operations

_noun_

Bulk operations are actions that are performed on a large scale.
Example bulk operations tasks include importing or exporting items, changing prices on a mass scale, and assigning products to a warehouse.

Learn more: [DevDocs Bulk Operations](https://developer.adobe.com/commerce/php/development/components/message-queues/bulk-operations/)

_Term attributes:_

* _Field: programming_

### bundle product

_noun_

Lets customers assemble a "build your own" customizable product from various options and configurations.
Each item in the bundle is either a separate simple or virtual product.

Learn more: [Configurable Products](https://experienceleague.adobe.com/docs/commerce-admin/catalog/products/types/product-create-configurable.html)

_Term attributes:_

* _Field: commerce software, product_
* _Related terms: simple product, virtual product, product types_

### bundled extension

_noun_

The code that extends or customizes Adobe Commerce behavior is considered a Bundled Extension.
It can include modules, themes, and language packs.

_Term attributes:_

* _Field: bundled extension, extension_
* _Synonyms: extension_
* _Related terms: extension, vendor bundled extension_

## C

### cache backend

_noun_

Stores cache records into a two-level backend system within Zend's default framework.
A first-level cache is fast — for example, an APC or Memcached backend — but it is limited and does not support tagging and grouping of cache entries.
A second-level cache — for example, a file system or a Redis backend — is slower but supports tagging and grouping.

_Term attributes:_

* _Field: programming_
* _Related terms: backend_

### cache frontend

_noun_

Specifies what kind of data is stored in the cache backend.

_Term attributes:_

* _Field: programming_
* _Related terms: frontend_

### cache type

_noun_

A cache stores data so that future calls for that data load faster.

Adobe Commerce includes these types:
* Configuration
* Layouts
* Block HTML output
* Collections Data
* Reflection Data
* Database DDL operations
* Compiled Config
* EAV types and attributes
* Customer Notification
* Integrations Configuration
* Integrations API Configuration
* Page Cache (the most well-known)
* Web Services Configuration
* Translations
* Target Rule
* Google Product Cache
* Vertex

Other types can be created and defined.

_Term attributes:_

* _Field: programming_

### capture

_verb_

The process of converting an authorized order amount into a billable transaction.
Transactions cannot be captured until authorized, and authorizations cannot be captured until the goods or services have been shipped.

_Term attributes:_

* _Field: business_
* _Related terms: authorization, order status_

### cardholder

_noun_

A person who is authorized by a financial institution to make purchases on a credit card account.

_Term attributes:_

* _Field: business, order_

### cart rules

_noun_

Price rules that are applied to the shopping cart and trigger an action in response to a set of conditions.
Used to create promotions.

_Term attributes:_

* _Field: commerce software, pricing, product_
* _Related terms: catalog rules, shopping cart_

### catalog

_noun_

For merchants, the catalog represents their product inventory.
Within Adobe Commerce architecture, the catalog consists of categories, products, and product attributes.

Each Commerce store has only one product catalog, which is shared by all store views.
In a multi-store installation, each store can have a separate catalog, or share the catalog.
The current store catalog is determined by the default root category, visible to the user in the top navigation (main menu) of the store.
(The term "root category"  may be confusing, because the "root category" isn't really a category at all, but a container for the menu, which consists of categories and subcategories.)

You can create as many root categories as you want, but only one (the default) can be used at a time.

_Term attributes:_

* _Field: commerce software, pricing, product_
* _Related terms: shared catalog, catalog rule_

### catalog rules

_noun_

Price rules that are applied to specific products and trigger an action in response to a set of conditions.
Used to create promotions.

_Term attributes:_

* _Field: commerce software, pricing, product_
* _Related terms: cart rules, catalog_

### category

_noun_

A group of products that have something in common.
The main menu of the store is organized into categories and subcategories of products.

_Term attributes:_

* _Field: commerce software, product_

### checkout

_noun_

The process of gathering the payment and shipping information that is necessary to complete the purchase of items in the shopping cart.
After the customer reviews the information and submits the order, an email confirmation is sent to the customer.

Checkout has many options and configuration out-of-the-box and through extension.

Learn more: [Checkout Tutorial](https://developer.adobe.com/commerce/php/tutorials/frontend/custom-checkout/)

_Term attributes:_

* _Field: business, design, order, product, programming_

### cloud variables

_noun_

Cloud variables are environment variables specific to Adobe Commerce on cloud infrastructure and use the **`MAGENTO_CLOUD`** prefix.

Learn more: [Cloud variables](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/configure/env/stage/variables-cloud.html)

_Term attributes:_

* _Field: cloud_

### CMS block

_noun_

A special variant of [block](https://experienceleague.adobe.com/docs/commerce-admin/content-design/elements/blocks/blocks.html) that can only be created in the Admin and cannot be referenced through layout files.

_Term attributes:_

* _Field: commerce software_
* _Related terms: block, static block_

### complex data

_noun_

Data that is associated with multiple product options.

_Term attributes:_

* _Field: programming_

### component

_noun_

Used to refer to a module, theme, or language package in Adobe Commerce.

_Term attributes:_

* _Field: commerce software_
* _Synonyms: component_
* _Related terms: ui component_

### configurable product

_noun_

A configurable product looks like a single product with drop-down lists of options for each variation.
Each option is actually a separate simple product with a unique SKU, which makes it possible to track inventory for each product variation.
To achieve a similar effect, a simple product can be used with custom options, but without the ability to track inventory for each variation.
Products with multiple options are sometimes referred to as composite products.

Although a configurable product uses more SKUs, and may initially take a little longer to set up, it can save you time in the end.
If you plan to grow your business, the configurable product type might be a better choice for a product with multiple options.

Example: T-shirts that are available in two colors and three sizes.
Six variants must be created as individual products (each with its own SKU).
Then, all variants are added to a configurable product where customers can choose the size and color, and then add it to their cart.

_Term attributes:_

* _Field: commerce software, product_
* _Related terms: product types_

### conversion rate

_noun_

The percentage of visitors who are converted into buyers.

_Term attributes:_

* _Field: business, order_

### core tier scaling

_noun_

Core tier scaling consists of three service nodes for data storage, cache and services, such as OpenSearch, Elasticsearch, MariaDB, Redis.

_Term attributes:_

* _Field: cloud_

### credit memo

_noun_

A document issued by the merchant to a customer to write off an outstanding balance because of overcharge, rebate, or return of goods.
The memo restores funds to the customer's account.

_Term attributes:_

* _Field: business, order_

### credit memo comment

_noun_

Details why a credit memo amount was credited to the customer.

_Term attributes:_

* _Field: business, order_

### credit memo item

_noun_

An invoiced item for which a merchant creates a credit memo.

_Term attributes:_

* _Field: business, order_

### cross-sell

_noun, adjective, verb_

A product that appears next to the shopping cart.
When a customer navigates to the shopping cart page, these products are displayed as cross-sells to the items already in the shopping cart.
They are similar to impulse buys, like magazines and candy at the cash registers in grocery stores.

_Term attributes:_

* _Field: business, product_
* _Related terms: upsell_

### CVM

_noun_

An abbreviation for "Cardholder Verification Method".
A way to verify the identity of the customer by confirming a 3-digit or 4-digit credit card security code with the payment processor.

_Term attributes:_

* _Field: business, order_
* _Synonyms: Cardholder Verification Method_
* _Related terms: security code_

## D

### database schema

_noun_

The structure of data in a database.
Defines how data is organized and how data relationships are governed, including all constraints applied to the data.
A module can contain fragments of the database schema if that module has data that must be stored in the database.

_Term attributes:_

* _Field: programming_
* _Synonyms: schema_

### dependency injection

_noun_

A software design pattern that allows a class to specify its dependencies without having to construct them.
This class delegates the responsibility of injecting the dependency to the calling class.
Used to make testing easier.
To define dependencies for classes, edit the di.xml configuration file.

_Term attributes:_

* _Field: programming_

### deploy key

_noun_

A deploy key is your project SSH public key and enables read-only or read-write (if enabled) access to a Git repository.

Learn more: [Secure connections](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/secure-connections.html)

_Term attributes:_

* _Field: cloud_

### double opt-in

_noun, verb_

An email verification process that requires potential subscribers to complete a second step that confirms their intention to subscribe.

_Term attributes:_

* _Field: business_

### downloadable product

_noun_

A digitally downloadable product that consists of one or more files that are downloaded, such as an eBook, music, video, software application, or an update.
You can offer an album for sale and sell each song individually.
A downloadable product can deliver an electronic version of your product catalog.

Downloadable files can reside on your server or be provided as URLs to any other server or content delivery network.

_Term attributes:_

* _Field: commerce software, product_
* _Related terms: product types_

### dynamic content

_noun_

Content that is generated by code rather than read from a static template.
After dynamic content is initially rendered when a user visits a page, sometimes the content can be cached and reused without requiring another dynamic call upon a revisit.

_Term attributes:_

* _Field: design_
* _Related terms: php_

### dynamic media URL

_noun_

A URL address that is generated dynamically by the system to reference an image or other media.
The address links directly to assets stored on a server or a content delivery network.
To use a static URL, change the configuration setting.
However, if dynamic media URLs are included in your catalog when you disable the setting, each reference in your catalog becomes a broken link.
Links can be restored by again enabling dynamic media URLs.
Using dynamic media URLs can affect catalog search performance.

Code format: media url="path/to/image.jpg"

_Term attributes:_

* _Field: programming_
* _Related terms: content delivery network, url_

## E

### ece-tools package

_noun_

A set of scripts and tools designed to manage and deploy the Commerce application. This package simplifies many Adobe Commerce on cloud infrastructure processes, including deploying to a Docker environment, managing crons, verifying project configuration, and applying Adobe patches.

Learn more: [ece-tools package](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/dev-tools/ece-tools/package-overview.html)

_Term attributes:_

* _Field: cli, cloud, deploy_

### entity

_noun_

A unique unit or object in programming.
Contains attributes or parameters that can be modified.
Examples include staging — where an update can change entities such as price rules, products, or categories — and database records — where service contracts include data structures that are sent and received.

_Term attributes:_

* _Field: commerce software_
* _Related terms: attribute, cart rules, catalog rules_

### entity attribute value

_noun_

For database entities, a data model that efficiently encodes entities.
Stores the entity id, attribute name, and value as a triple, which allows new entity attribute names to be created at any time.
In encoding, the number of attributes that can be used to describe entities can scale extensively, but the number that applies to a given entity is minimized.
This data model is flexible, but can be slow.

Learn more: [EAV and extension extension_attributes](https://developer.adobe.com/commerce/php/development/components/attributes/)

_Term attributes:_

* _Field: programming_
* _Synonyms: eav_

### evergreen content

_noun_

Content that has a long shelf life or content that can be reused.

_Term attributes:_

* _Field: business_

### extension

_noun_

Code that extends or customizes Adobe Commerce behavior.
You can optionally package and distribute an extension on Commerce Marketplace or another extension distribution system.
A Commerce extension can include modules, themes, and language packs.

_Term attributes:_

* _Field: commerce software_
* _Related terms: component, module, package_

### extension attribute

_noun_

Extend functionality and often use more complex data types than custom attributes. These attributes do not appear on the GUI.

Learn more: [Adding extension attributes to entity](https://developer.adobe.com/commerce/php/development/components/add-attributes/)

_Term attributes:_

* _Field: commerce software_
* _Related terms: attribute, entity attribute value_

## F

### freight on board

_noun_

In international shipping, this term means that the receiving party is responsible for the shipping charges.
FOB can be based on the place of origin or destination, and be designated as either freight collect or freight prepaid.

_Term attributes:_

* _Field: business, order, pricing_
* _Synonyms: fob_

### frontend

_adjective_

In a client-server application, there is the backend and frontend.
The frontend component, or client, is an interface that enables users to manipulate or interact with the underlying backend code.
Backend code runs on a server.
A user cannot directly access backend code.
A user interacts with the storefront, which in turn uses code running on the Commerce server.

Note: In the past, the storefront has been referred to as the "frontend", and the Admin has been referred to as the "backend". This usage is no longer supported.

_Term attributes:_

* _Field: design, programming_
* _Synonyms: client side_
* _Related terms: backend, storefront, cache frontend_

### frontend properties

_noun_

Properties that determine the presentation and behavior of an attribute from the standpoint of the customer in your store.

_Term attributes:_

* _Field: design, programming_

### fulfillment

_noun_

The process of managing customer shipments.

_Term attributes:_

* _Field: business_

## G

### gift card

_noun_

A prepaid card or gift certificate that can be used to make purchases in the store.
Each gift card is assigned a unique code which is entered at checkout.
The value of the gift card is reflected in the gift card account balance.
There are three types of gift cards:

* "Physical" gift cards can be produced from plastic or card stock, shipped to the customer.
* "Virtual" gift cards are sent by email.
* "Combined" gift cards are a combination of the two, shipped to the recipient as a physical card and also delivered by email.
Gift cards are configurable, including options for product eligibility and selection of open or fixed amounts.

A gift card can also be redeemed by the store administrator on customer request when the order is being created in the backend.

Gift cards also help promotions, as store administrators can manually create the gift card accounts in the backend and send the gift card codes to the specific customer segment.
Gift cards can serve as a loyalty program targeted at the most active customers who make numerous purchases from the web store or a specific promotional campaign during the holidays.

_Term attributes:_

* _Field: commerce software_
* _Related terms: product types_

### gross margin

_noun_

The difference between the cost and price of a product.

_Term attributes:_

* _Field: business_

### grouped product

_noun_

A product type with several similar, standalone products grouped on a single page.
Can be offered with variations of a single product or by grouping them by season or theme to create a coordinated set.
Each product can be purchased separately, or as part of the group.

For example, for a knife that is available in four sizes, all four knives can be displayed within a grouped product page.
Customers can select the sizes they want and add them to the cart from this page.

_Term attributes:_

* _Field: commerce software, product_
* _Related terms: simple product, product types_

## H

### handle

_noun_

Generally, a handle is a way to reference an object.
In Adobe Commerce, handles are used in many places, most commonly to identify a page.
For page handles, the handle name is derived from the URL, then used to locate and load the layout files for the referenced page.
For example, in the Customer module, there is a layout file called "view/frontend/layout/checkout_cart_index.xml".
Here "frontend" is the area name and "checkout_cart_index" is the handle name, both of which are derived from the URL.

_Term attributes:_

* _Field: programming_
* _Synonyms: page handle_

### horizontal scaling

_noun_

Horizontal scaling (also known as scaling out) is the process of adding additional nodes or machines to your infrastructure to meet growing demand.

_Term attributes:_

* _Field: cloud_

## I

### interception

_noun_

The process of injecting new code before, after, or around an existing public function of a PHP class.

To intercept a function, a plug-in implements the additional code to be invoked.
Plug-ins are associated with interception points by the dependency injection configuration file (di.xml).
If multiple plug-ins are defined on the same function, the dependency injection configuration defines the order in which the plug-ins are invoked, allowing multiple plug-ins to be used without conflict.

_Term attributes:_

* _Field: programming_
* _Related terms: plug in_

## L

### layout

_noun_

In the construction of a Commerce page, a layout is a series of blocks assembled in a hierarchy, representing the structure of the page.

Page layout files focus on the highest level of page structure (header, footer, main content area, left sidebar, and so on).
Layout files then assemble content (blocks) into these different areas on the page.

_Term attributes:_

* _Field: design, commerce software_
* _Related terms: layout instructions, block_

### layout instructions

_noun_

Markup in a layout file that describes changes to be applied to a structured element tree of blocks, containers, and UI components.
A single layout file can contain multiple layout instructions.
Layout instructions are encoded in XML in layout files.

_Term attributes:_

* _Field: design, programming_
* _Related terms: layout, block, container, ui component_

### layout update

_noun_

Used for snippets of code that are added to modify the XML layout or to import the layout instructions from another file.

_Term attributes:_

* _Field: design, commerce software_

### License Owner

_noun_

The License Owner (also known as Account Owner) is the designated person in a business organization that manages payments and other business-related issues for the Adobe Commerce on cloud infrastructure account.
This person serves as the point of contact with Adobe.
After a business purchases an Adobe Commerce on cloud infrastructure subscription, initial project and code access is available only to the person designated as the License Owner.

_Term attributes:_

* _Field: business_

## M

### MAGEID

_noun_

MAGEID is typically the billing contact on the Adobe Commerce account (and may not be the Project Owner of the Adobe Commerce on cloud infrastructure project).
For access entitlement to Adobe Commerce and Adobe Commerce on cloud infrastructure packages, you must use access keys associated with a MAGEID that has been granted access to those packages.

Learn more: [Get your authentication keys](https://experienceleague.adobe.com/docs/commerce-operations/installation-guide/prerequisites/authentication-keys.html)

_Term attributes:_

* _Field: commerce software_

### markup

_noun_

In marketing and retail, a percentage added to the cost of an item to determine the retail price.
[Configure the markup](https://experienceleague.adobe.com/docs/commerce-admin/catalog/products/settings/settings-advanced-custom-options.html), or markdown, of a product through product customizable options.

In development, a computer language that controls the processing, presentation, and formatting of text.
Also, markup tags are snippets of code that add functionality or content to a CMS page or block.

_Term attributes:_

* _Field: business, programming_
* _Synonyms: Markdown_

### master environment

_noun_

On Adobe Commerce on cloud infrastructure, Pro projects use an active Platform as a Service (PaaS) environment called master that includes a copy of your Production environment database and web server.

_Term attributes:_

* _Field: cloud_

### merchant account

_noun_

An account with a bank or financial institution that makes it possible to accept credit card transactions.

_Term attributes:_

* _Field: business_

### MFTF

_noun_

MFTF is a [Functional Testing Framework](https://developer.adobe.com/commerce/testing/functional-testing-framework/).
It provides a testing framework for Commerce developers and software engineers, such as QA specialists, PHP developers, and system integrators.
Developers and QA can write tests to attempt user interactions with web applications, verify functionality, and automate regression testing.

_Term attributes:_

* _Field: commerce software, programming_
* _Related terms: cms block, static block, container, layout_

### module

_noun_

Code that changes or extends features provided by the Magento application.
A module is contained in a directory structure that contains PHP and XML files (configuration, blocks, controllers, helpers, models, and so on) related to a specific functionality to deliver a distinct collection of product features.
The purpose of each module is to provide specific product features by implementing new functionality or extending the functionality of other modules.
Each module is designed to function independently, so the inclusion or exclusion of a particular module does not impact the functionality of other modules.

A module can also implement widgets, which are page elements that can be customized by business users in the Admin.

Modules can be disabled or removed without breaking the consistency of the Magento application.
One exception: When the module depends on other modules, which requires disabling or removing the dependent modules.

_Term attributes:_

* _Field: commerce software_
* _Related terms: php, xml, block_

## O

### OMS

_noun_

OMS is Adobe's Order Management System offering.

>[!IMPORTANT]
>
>Adobe Commerce Order Management (OMS) has reached end-of-life and is no longer supported.

OMS is a flexible and affordable solution for managing, selling, and fulfilling inventory from any sales channel.
OMS provides a seamless customer experience, which increases sales while reducing costs, and accelerates the time to market.

OMS capabilities include:

* Global visibility and management of all inventory
* Ability to ship to and from anywhere
* Easier and more responsive customer service
* Better customer experience and loyalty

Learn more: [Archived OMS Docs site](https://commerce-docs.github.io/oms-documentation-archive/)

_Term attributes:_

* _Field: feature, commerce software, order management_
* _Synonyms: order management, MOM, order management system, Magento Order Management_
* _Related terms: order management_

### origin cloaking

_noun_

Origin cloaking is a security feature that allows Adobe Commerce on cloud infrastructure to block any non-Fastly traffic to prevent DDoS attacks, going to the cloud infrastructure (origin).

Learn more: [Fastly origin cloaking](https://experienceleague.adobe.com/docs/commerce-knowledge-base/kb/faq/fastly-origin-cloaking-enablement-faq.html)

_Term attributes:_

* _Field: security_
* _Related terms: web application firewall_

## P

### Page Builder

_noun_

Page Builder is a Commerce extension for creating content-rich pages by dragging and dropping pre-built controls to define custom layouts.
These controls are also known as "content types".
Merchants can design layouts and pages without coding experience.
Extension support is provided for developers to extend Page Builder.

Learn more: [Page Builder User Guide](https://experienceleague.adobe.com/docs/commerce-admin/page-builder/introduction.html), [Page Builder DevDocs](https://developer.adobe.com/commerce/frontend-core/page-builder/)

_Term attributes:_

* _Field: commerce software, design_
* _Synonyms: Admin, Admin Panel, backend, Administration Interface, Admin UI_
* _Related terms: admin_

### payment gateway

_noun_

A payment gateway is a third-party service that seamlessly processes credit card transactions without the customer leaving the merchant's site.

_Term attributes:_

* _Field: business, order, programming_

## R

### related product

_noun_

A selection of products that is presented as an incentive to purchase additional items.
For example, if the customer is viewing the product page for a camera, the related products might include other comparable cameras, a camera case, and a tripod.

_Term attributes:_

* _Field: commerce software, product_

## S

### sales rules

_noun_

Includes cart and catalog rules, which are used to price a product for promotions.

_Term attributes:_

* _Field: commerce software, product_
* _Related terms: cart rules, catalog rules_

### scope

_noun_

In Adobe Commerce, scope describes the extent of your store hierarchy that a setting can affect.
Scope can apply to the following:

* Global — all websites, stores, and store views
* Website — the selected website and all stores and store views under it
* Store — the selected store and all store views under it
* Store View — the selected store view.

Within the hierarchy, settings applied at a lower level can override some higher-level settings.

_Term attributes:_

* _Field: commerce software_

### service contract

_noun_

A set of PHP interfaces that are defined for a module.
A service contract includes data interfaces, which preserve data integrity, and service interfaces, which hide business logic details from service requestors such as controllers, web services, and other modules.
Web APIs can be bound to service contracts via configuration files.

_Term attributes:_

* _Field: programming_
* _Related terms: php, web api_

### settlement

_noun_

Settlement occurs when the acquiring bank and the issuer exchange funds and the proceeds are deposited into the merchant account.

_Term attributes:_

* _Field: business_

### Shared Catalog

_noun_

A feature that allows merchants to create a catalog that can serve as their entire catalog or a subset of it, and then assign custom prices for one or more products.
Merchants can then assign this catalog to one or more companies.

For example, a B2B merchant has three customers who have negotiated specific rates for the merchant's electronics distribution site.
Using the shared catalog feature, the merchant has:

* A main catalog
* A customer 1 catalog (perhaps it is just three SKUs with heavy discounts on them from the main catalog)
* Customer 2 catalog (could be the entire catalog with 10% off)
* Customer 3 catalog (a few dozen products with discounts off the main catalog ranging from 5% - 60%).

_Term attributes:_

* _Field: commerce software, product_
* _Related terms: catalog, b2b_

### shipment

_noun_

A shipment contains products to be delivered and generates a record of the products in an order that have been shipped.
More than one shipment can be associated with a single order.

_Term attributes:_

* _Field: business, order_

### shipment document

_noun_

A document that accompanies a shipment. The document lists the products and their quantities in the delivery package.

_Term attributes:_

* _Field: business, order_

### shipping carrier

_noun_

A company that transports packages. Common carriers include UPS, FedEx, DHL, and USPS.

_Term attributes:_

* _Field: business, order_

### shopping cart

_noun_

The set of products that a customer has selected to purchase, but has not yet purchased.
Also refers to an area of an ecommerce site where these products can be found to review and checkout.

_Term attributes:_

* _Field: business, design, product, programming_
* _Synonyms: cart, basket_
* _Related terms: cart rules_

### simple product

_noun_

The most basic product type, a physical item with a single SKU.
Simple products have various pricing and input controls which makes it possible to sell variations of the product.
Simple products can be used in association with grouped, bundle, and configurable products.
A simple product with custom options is sometimes referred to as a composite product.

_Term attributes:_

* _Field: commerce software, product_
* _Related terms: product types_

### SKU

_noun_

Abbreviation for Stock Keeping Unit.
A number or code assigned to a product to identify the product, options, price, and manufacturer.

_Term attributes:_

* _Field: business, pricing, product, programming_
* _Related terms: shared catalog_

### splash page

_noun_

A promotional page with a product or advertisement; normally displayed before the home page.

_Term attributes:_

* _Field: design_

### static block

_noun_

A modular unit of content that can be placed by a user in the CMS on a page to display text and images, or execute snippets of code.
Static blocks contain editable content and can act as landing pages for product categories.
Widgets can be added to static blocks to provide additional functionality.

_Term attributes:_

* _Field: commerce software_
* _Related terms: cms block, block_

### static content

_noun_

User-generated content (not generated by code) that does not change frequently.

_Term attributes:_

* _Field: design_
* _Related terms: dynamic content_

### static files

_noun_

The collection of assets, such as CSS, fonts, images, and JavaScript that is used by a theme.

_Term attributes:_

* _Field: commerce software_

### store

_noun_

The Commerce scope level of "store" is the second level of your website's hierarchy, which goes as follows: website > store > store view.
Stores can be organized into one or many. Each store, potentially, has its own root category, and all share catalog and customer data.

Each store can have multiple store views, which are typically used to present the storefront in a different locale and language.

_Term attributes:_

* _Field: commerce software, product_
* _Related terms: store view, website_

### store view

_noun_

The Commerce scope level of "store view" refers to the third level in the hierarchy of websites, stores and store views.
Store views typically present the storefront in a different locale and language.
To change store views, use the store chooser in the header.

_Term attributes:_

* _Field: commerce software, product_
* _Related terms: store, website_

### storefront

_noun_

The online store that customers experience when they visit your Commerce site.

_Term attributes:_

* _Field: commerce software, product_

## T

### tax rule

_noun_

A combination of a product tax class, customer tax class, and tax rate. This rule defines which tax calculation is applied.

_Term attributes:_

* _Field: business_

### template

_noun_

Short for HTML template or PHTML template.
A PHTML file contains a mixture of HTML markup and PHP code to inject dynamic content into the HTML.
Most blocks have at least one PHTML (template) file that contains the static HTML generated by the block.
In the Admin, email and newsletter templates combine text, images, and variables with HTML markup to produce personalized content that is sent by the system.

_Term attributes:_

* _Field: commerce software_
* _Related terms: block_

### theme

_noun_

Contains graphics and appearance information.
Customizes the look and feel of the store.
Adobe Commerce can ship themes in (Composer) packages.
But themes can be placed under app / design, which is not shipped in a package.
Packages are the unit of download for Composer, and — via Commerce Marketplace — Commerce users can download CE or EE as a series of packages, where packages contain modules, themes, or language packs.

_Term attributes:_

* _Field: commerce software_

## U

### UI component

_noun_

A tag designed for Adobe Commerce software to enable simpler and more flexible user interface (UI) rendering.
The goals of the UI component system include the following:

* Simplifying Layout Handle XML files
* Moving Admin user interface elements from HTML+JavaScript to a "pure JavaScript" custom widget system
* Enabling the creation of more complex UI components out of smaller components
* Pre-rendering data for UI components as JSON, binding closely to backend data objects
* Using AJAX to update component data
* Introducing a new DSL for creating the above items

Learn more: [UI Components guide](https://developer.adobe.com/commerce/frontend-core/ui-components/), [Page Builder](https://experienceleague.adobe.com/docs/commerce-admin/page-builder/introduction.html)

_Term attributes:_

* _Field: programming_
* _Related terms: JavaScript, layout, component, page builder_

### UPWARD

_noun_

[PWA Studio](https://github.com/magento/pwa-studio) uses [UPWARD](https://developer.adobe.com/commerce/pwa-studio/guides/packages/upward/) in development.
UPWARD is an acronym for Unified Progressive Web App Response Definition.
An UPWARD definition file describes how a web server delivers and supports a Progressive Web Application.

UPWARD definition files provide details about server behavior using platform-independent, declarative language.
This allows a Progressive Web Application to run on top of an UPWARD-compliant server in any language on any tech stack because the application is only concerned about the HTTP endpoint behavior from the UPWARD server.

An UPWARD server uses a definition file to determine the appropriate process or service for a request from an application shell.
It describes how the server should handle a request and build the response for it.

A PWA project can include an UPWARD definition file to specify its service dependencies.

_Term attributes:_

* _Field: design, commerce software, programming_
* _Synonyms: PWA Studio, Unified Progressive Web App Response Definition_
* _Related terms: pwa_

## V

### Vendor Bundled Extension

_noun_

Vendor-produced code that extends or customizes Commerce behavior and operates as a third-party extension is considered a Vendor Bundled Extension (VBE).
VBEs are thoroughly tested and included with each supported version of Adobe Commerce.
A VBE can include modules, themes, and language packs.

Learn more in the [Vendor Bundled Extension topic](https://experienceleague.adobe.com/docs/commerce-operations/upgrade-guide/modules/upgrade.html).

_Term attributes:_

* _Field: commerce extension, vendor bundled extension, extension, VBE_
* _Synonyms: extension, VBE_
* _Related terms: extension, bundled extension_

### vertical scaling

_noun_

Vertical scaling (scaling up) refers to increasing the processing power of a single server or cluster by adding disk or network I/O, CPUs, or RAM.

_Term attributes:_

* _Field: environment_

### virtual product

_noun_

Represents a non-physical product that can be sold, such as a membership, service, warranty, or subscription.
Virtual products can be sold individually, or included as part of the following product types: grouped product and bundle product.
Does not require shipping or inventory.

The process of creating a virtual product and a simple product is nearly the same.
However, because a virtual product is not shipped, there is no Weight field or option to include a gift card.

_Term attributes:_

* _Field: commerce software, product_
* _Related terms: product types_

### virtual type

_noun_

Virtual types are a way to inject different dependencies into existing PHP classes without affecting other classes and without having to create a class file.
Virtual types can only be referenced by argument overrides in a `<type>` element within di.xml files, never in source code.
They can't be extended and they can't be references as dependencies in a classes constructor.

_Term attributes:_

* _Field: programming_
* _Related terms: php_

## W

### website

_noun_

In the Adobe Commerce software, the highest level of a website hierarchy, above store and store view.
You can have multiple websites, and each website can have a different domain name.
Websites can be set up to share customer data, or to not share data.

_Term attributes:_

* _Field: commerce software, design, product_
* _Related terms: store, store view_

### widget

_noun_

A [widget](https://experienceleague.adobe.com/docs/commerce-admin/content-design/elements/widgets/widgets.html) is a prepared snippet of code that can be used to place blocks, links, and dynamic content at specific locations on store pages.
You can use widgets to create landing pages for marketing campaigns, display promotional content at specific locations throughout the store.
Widgets can also be used to add interactive elements and action blocks for external review systems, video chats, voting, and subscription forms, or to provide navigation elements for tag clouds and image sliders.

_Term attributes:_

* _Field: business, commerce software, design_
* _Related terms: block_
