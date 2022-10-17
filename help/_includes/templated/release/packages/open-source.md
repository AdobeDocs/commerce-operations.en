# Magento Open Source packages

<!-- The 'packages' variable contains the 'packages' node of the '_data/codebase/open-source/composer_lock.json' file
 -->

<!-- The 'packages-dev' variable contains the 'packages-dev' node of the '_data/codebase/open-source/composer_lock.json' file
 -->

<!-- The 'product' variable contains data of the 'magento/product-community-edition' package
 -->

<!-- The edition variable contains `open-source` value from the _data/names.yml file
 -->

Magento Open Source uses Composer to manage PHP packages.

The `composer.json` file declares the list of packages, whereas the `composer.lock` file stores a complete list of the packages (a full version of each package and its dependencies) used to build an installation of Adobe Commerce or Magento Open Source.

The following reference documentation is generated from the `composer.lock` file, and it covers required packages included in Magento Open Source 2.4.5.

## Dependencies

`magento/product-community-edition 2.4.5` has the following dependencies:

```config
colinmollenhour/cache-backend-file: ~1.4.1
colinmollenhour/cache-backend-redis: 1.14.2
colinmollenhour/credis: 1.13.0
colinmollenhour/php-redis-session-abstract: ~1.4.5
composer/composer: ^1.9 || ^2.0, !=2.2.16
elasticsearch/elasticsearch: ~7.17.0
ext-bcmath: *
ext-ctype: *
ext-curl: *
ext-dom: *
ext-gd: *
ext-hash: *
ext-iconv: *
ext-intl: *
ext-mbstring: *
ext-openssl: *
ext-pdo_mysql: *
ext-simplexml: *
ext-soap: *
ext-sodium: *
ext-xsl: *
ext-zip: *
ezyang/htmlpurifier: ^4.14
guzzlehttp/guzzle: ^7.4.2
laminas/laminas-captcha: ^2.12
laminas/laminas-code: ~4.5.0
laminas/laminas-db: ^2.15.0
laminas/laminas-dependency-plugin: ^2.2.0
laminas/laminas-di: ^3.7.0
laminas/laminas-escaper: ~2.10.0
laminas/laminas-eventmanager: ^3.5.0
laminas/laminas-feed: ^2.17.0
laminas/laminas-http: ^2.15.0
laminas/laminas-mail: ^2.16.0
laminas/laminas-mime: ^2.9.1
laminas/laminas-modulemanager: ^2.11.0
laminas/laminas-mvc: ^3.3.3
laminas/laminas-servicemanager: ^3.11.0
laminas/laminas-soap: ^2.10.0
laminas/laminas-stdlib: ^3.7.1
laminas/laminas-uri: ^2.9.1
laminas/laminas-validator: ^2.17.0
league/flysystem: ~2.4.5
league/flysystem-aws-s3-v3: ^2.4.3
lib-libxml: *
magento/adobe-stock-integration: 2.1.4
magento/composer: ~1.8.0
magento/composer-dependency-version-audit-plugin: ~0.1
magento/framework: 103.0.5
magento/framework-amqp: 100.4.3
magento/framework-bulk: 101.0.1
magento/framework-message-queue: 100.4.5
magento/google-shopping-ads: 4.0.1
magento/inventory-metapackage: 1.2.5
magento/language-de_de: 100.4.0
magento/language-en_us: 100.4.0
magento/language-es_es: 100.4.0
magento/language-fr_fr: 100.4.0
magento/language-nl_nl: 100.4.0
magento/language-pt_br: 100.4.0
magento/language-zh_hans_cn: 100.4.0
magento/magento-composer-installer: >=0.3.0
magento/magento2-base: 2.4.5
magento/module-admin-adobe-ims: 100.4.0
magento/module-admin-analytics: 100.4.4
magento/module-admin-notification: 100.4.4
magento/module-adobe-ims: 2.1.4
magento/module-adobe-ims-api: 2.1.2
magento/module-advanced-pricing-import-export: 100.4.5
magento/module-advanced-search: 100.4.3
magento/module-amqp: 100.4.2
magento/module-analytics: 100.4.5
magento/module-asynchronous-operations: 100.4.5
magento/module-authorization: 100.4.5
magento/module-aws-s3: 100.4.3
magento/module-backend: 102.0.5
magento/module-backup: 100.4.5
magento/module-bundle: 101.0.5
magento/module-bundle-graph-ql: 100.4.5
magento/module-bundle-import-export: 100.4.4
magento/module-cache-invalidate: 100.4.3
magento/module-captcha: 100.4.5
magento/module-cardinal-commerce: 100.4.3
magento/module-catalog: 104.0.5
magento/module-catalog-analytics: 100.4.2
magento/module-catalog-cms-graph-ql: 100.4.1
magento/module-catalog-customer-graph-ql: 100.4.4
magento/module-catalog-graph-ql: 100.4.5
magento/module-catalog-import-export: 101.1.5
magento/module-catalog-inventory: 100.4.5
magento/module-catalog-inventory-graph-ql: 100.4.2
magento/module-catalog-rule: 101.2.5
magento/module-catalog-rule-configurable: 100.4.4
magento/module-catalog-rule-graph-ql: 100.4.2
magento/module-catalog-search: 102.0.5
magento/module-catalog-url-rewrite: 100.4.5
magento/module-catalog-url-rewrite-graph-ql: 100.4.3
magento/module-catalog-widget: 100.4.5
magento/module-checkout: 100.4.5
magento/module-checkout-agreements: 100.4.4
magento/module-checkout-agreements-graph-ql: 100.4.1
magento/module-cms: 104.0.5
magento/module-cms-graph-ql: 100.4.2
magento/module-cms-url-rewrite: 100.4.4
magento/module-cms-url-rewrite-graph-ql: 100.4.3
magento/module-compare-list-graph-ql: 100.4.1
magento/module-config: 101.2.5
magento/module-configurable-import-export: 100.4.3
magento/module-configurable-product: 100.4.5
magento/module-configurable-product-graph-ql: 100.4.5
magento/module-configurable-product-sales: 100.4.2
magento/module-contact: 100.4.4
magento/module-cookie: 100.4.5
magento/module-cron: 100.4.5
magento/module-csp: 100.4.4
magento/module-currency-symbol: 100.4.3
magento/module-customer: 103.0.5
magento/module-customer-analytics: 100.4.2
magento/module-customer-downloadable-graph-ql: 100.4.1
magento/module-customer-graph-ql: 100.4.5
magento/module-customer-import-export: 100.4.5
magento/module-deploy: 100.4.5
magento/module-developer: 100.4.5
magento/module-dhl: 100.4.4
magento/module-directory: 100.4.5
magento/module-directory-graph-ql: 100.4.3
magento/module-downloadable: 100.4.5
magento/module-downloadable-graph-ql: 100.4.5
magento/module-downloadable-import-export: 100.4.4
magento/module-eav: 102.1.5
magento/module-eav-graph-ql: 100.4.2
magento/module-elasticsearch: 101.0.5
magento/module-elasticsearch-6: 100.4.5
magento/module-elasticsearch-7: 100.4.5
magento/module-email: 101.1.5
magento/module-encryption-key: 100.4.3
magento/module-fedex: 100.4.3
magento/module-gift-message: 100.4.4
magento/module-gift-message-graph-ql: 100.4.3
magento/module-google-adwords: 100.4.2
magento/module-google-analytics: 100.4.1
magento/module-google-gtag: 100.4.0
magento/module-google-optimizer: 100.4.4
magento/module-graph-ql: 100.4.5
magento/module-graph-ql-cache: 100.4.2
magento/module-grouped-catalog-inventory: 100.4.2
magento/module-grouped-import-export: 100.4.3
magento/module-grouped-product: 100.4.5
magento/module-grouped-product-graph-ql: 100.4.5
magento/module-import-export: 101.0.5
magento/module-indexer: 100.4.5
magento/module-instant-purchase: 100.4.4
magento/module-integration: 100.4.5
magento/module-jwt-framework-adapter: 100.4.1
magento/module-jwt-user-token: 100.4.0
magento/module-layered-navigation: 100.4.5
magento/module-login-as-customer: 100.4.5
magento/module-login-as-customer-admin-ui: 100.4.5
magento/module-login-as-customer-api: 100.4.4
magento/module-login-as-customer-assistance: 100.4.4
magento/module-login-as-customer-frontend-ui: 100.4.4
magento/module-login-as-customer-graph-ql: 100.4.2
magento/module-login-as-customer-log: 100.4.3
magento/module-login-as-customer-page-cache: 100.4.4
magento/module-login-as-customer-quote: 100.4.3
magento/module-login-as-customer-sales: 100.4.4
magento/module-marketplace: 100.4.3
magento/module-media-content: 100.4.3
magento/module-media-content-api: 100.4.4
magento/module-media-content-catalog: 100.4.3
magento/module-media-content-cms: 100.4.3
magento/module-media-content-synchronization: 100.4.4
magento/module-media-content-synchronization-api: 100.4.3
magento/module-media-content-synchronization-catalog: 100.4.2
magento/module-media-content-synchronization-cms: 100.4.2
magento/module-media-gallery: 100.4.4
magento/module-media-gallery-api: 101.0.4
magento/module-media-gallery-catalog: 100.4.2
magento/module-media-gallery-catalog-integration: 100.4.2
magento/module-media-gallery-catalog-ui: 100.4.2
magento/module-media-gallery-cms-ui: 100.4.2
magento/module-media-gallery-integration: 100.4.4
magento/module-media-gallery-metadata: 100.4.3
magento/module-media-gallery-metadata-api: 100.4.2
magento/module-media-gallery-renditions: 100.4.3
magento/module-media-gallery-renditions-api: 100.4.2
magento/module-media-gallery-synchronization: 100.4.4
magento/module-media-gallery-synchronization-api: 100.4.3
magento/module-media-gallery-synchronization-metadata: 100.4.1
magento/module-media-gallery-ui: 100.4.4
magento/module-media-gallery-ui-api: 100.4.3
magento/module-media-storage: 100.4.4
magento/module-message-queue: 100.4.5
magento/module-msrp: 100.4.4
magento/module-msrp-configurable-product: 100.4.2
magento/module-msrp-grouped-product: 100.4.2
magento/module-multishipping: 100.4.5
magento/module-mysql-mq: 100.4.3
magento/module-new-relic-reporting: 100.4.3
magento/module-newsletter: 100.4.5
magento/module-newsletter-graph-ql: 100.4.2
magento/module-offline-payments: 100.4.3
magento/module-offline-shipping: 100.4.4
magento/module-page-cache: 100.4.5
magento/module-payment: 100.4.5
magento/module-payment-graph-ql: 100.4.0
magento/module-paypal: 101.0.5
magento/module-paypal-captcha: 100.4.2
magento/module-paypal-graph-ql: 100.4.3
magento/module-persistent: 100.4.5
magento/module-product-alert: 100.4.4
magento/module-product-video: 100.4.5
magento/module-quote: 101.2.5
magento/module-quote-analytics: 100.4.4
magento/module-quote-bundle-options: 100.4.1
magento/module-quote-configurable-options: 100.4.1
magento/module-quote-downloadable-links: 100.4.1
magento/module-quote-graph-ql: 100.4.5
magento/module-related-product-graph-ql: 100.4.2
magento/module-release-notification: 100.4.3
magento/module-remote-storage: 100.4.3
magento/module-reports: 100.4.5
magento/module-require-js: 100.4.1
magento/module-review: 100.4.5
magento/module-review-analytics: 100.4.2
magento/module-review-graph-ql: 100.4.1
magento/module-robots: 101.1.1
magento/module-rss: 100.4.3
magento/module-rule: 100.4.4
magento/module-sales: 103.0.5
magento/module-sales-analytics: 100.4.2
magento/module-sales-graph-ql: 100.4.5
magento/module-sales-inventory: 100.4.2
magento/module-sales-rule: 101.2.5
magento/module-sales-sequence: 100.4.2
magento/module-sample-data: 100.4.3
magento/module-search: 101.1.5
magento/module-security: 100.4.5
magento/module-send-friend: 100.4.3
magento/module-send-friend-graph-ql: 100.4.1
magento/module-shipping: 100.4.5
magento/module-sitemap: 100.4.4
magento/module-store: 101.1.5
magento/module-store-graph-ql: 100.4.3
magento/module-swagger: 100.4.4
magento/module-swagger-webapi: 100.4.1
magento/module-swagger-webapi-async: 100.4.1
magento/module-swatches: 100.4.5
magento/module-swatches-graph-ql: 100.4.3
magento/module-swatches-layered-navigation: 100.4.1
magento/module-tax: 100.4.5
magento/module-tax-graph-ql: 100.4.1
magento/module-tax-import-export: 100.4.4
magento/module-theme: 101.1.5
magento/module-theme-graph-ql: 100.4.2
magento/module-translation: 100.4.5
magento/module-ui: 101.2.5
magento/module-ups: 100.4.5
magento/module-url-rewrite: 102.0.4
magento/module-url-rewrite-graph-ql: 100.4.4
magento/module-user: 101.2.5
magento/module-usps: 100.4.4
magento/module-variable: 100.4.3
magento/module-vault: 101.2.5
magento/module-vault-graph-ql: 100.4.1
magento/module-version: 100.4.2
magento/module-webapi: 100.4.4
magento/module-webapi-async: 100.4.3
magento/module-webapi-security: 100.4.2
magento/module-weee: 100.4.5
magento/module-weee-graph-ql: 100.4.2
magento/module-widget: 101.2.5
magento/module-wishlist: 101.2.5
magento/module-wishlist-analytics: 100.4.3
magento/module-wishlist-graph-ql: 100.4.5
magento/page-builder: 1.7.2
magento/security-package: 1.1.4
magento/theme-adminhtml-backend: 100.4.5
magento/theme-frontend-blank: 100.4.5
magento/theme-frontend-luma: 100.4.5
magento/zendframework1: ~1.15.0
monolog/monolog: ^2.7
paypal/module-braintree: 4.4.0
pelago/emogrifier: ^6.0.0
php: ~7.4.0||~8.1.0
php-amqplib/php-amqplib: ~3.2.0
phpseclib/mcrypt_compat: ~2.0.2
phpseclib/phpseclib: ~3.0.13
ramsey/uuid: ~4.2.0
symfony/console: ~4.4.0
symfony/process: ~4.4.0
tedivm/jshrink: ~1.4.0
temando/module-shipping: 2.0.0
tubalmartin/cssmin: 4.1.1
web-token/jwt-framework: ^v2.2.7
webonyx/graphql-php: ~14.11.6
wikimedia/less.php: ^3.0.0
```

## Third-party licenses

### Apache-2.0, LGPL-2.1-only

<table>
  <thead>
    <tr>
      <th>Name</th>
      <th>Type</th>
      <th>Description</th>
    </tr>
  </thead>
  <tbody>
  <tr>
    <td>
      <a href="https://github.com/elastic/elasticsearch-php.git">elasticsearch/elasticsearch</a>
    </td>
    <td>library</td>
    <td>PHP Client for Elasticsearch</td>
  </tr>
  </tbody>
</table>

### Apache-2.0

<table>
  <thead>
    <tr>
      <th>Name</th>
      <th>Type</th>
      <th>Description</th>
    </tr>
  </thead>
  <tbody>
  <tr>
    <td>
      <a href="https://github.com/adobe/stock-api-libphp.git">astock/stock-api-libphp</a>
    </td>
    <td>library</td>
    <td>Adobe Stock API library</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/awslabs/aws-crt-php.git">aws/aws-crt-php</a>
    </td>
    <td>library</td>
    <td>AWS Common Runtime for PHP</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/aws/aws-sdk-php.git">aws/aws-sdk-php</a>
    </td>
    <td>library</td>
    <td>AWS SDK for PHP - Use Amazon Web Services in your PHP project</td>
  </tr>
  <tr>
    <td>
      paypal/module-braintree
    </td>
    <td>metapackage</td>
    <td>Braintree Magento</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/wikimedia/less.php.git">wikimedia/less.php</a>
    </td>
    <td>library</td>
    <td>PHP port of the Javascript version of LESS http://lesscss.org (Originally maintained by Josh Schmidt)</td>
  </tr>
  </tbody>
</table>

### BSD-2-Clause

<table>
  <thead>
    <tr>
      <th>Name</th>
      <th>Type</th>
      <th>Description</th>
    </tr>
  </thead>
  <tbody>
  <tr>
    <td>
      <a href="https://github.com/Bacon/BaconQrCode.git">bacon/bacon-qr-code</a>
    </td>
    <td>library</td>
    <td>BaconQrCode is a QR code generator for PHP.</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/beberlei/assert.git">beberlei/assert</a>
    </td>
    <td>library</td>
    <td>Thin assertion library for input validation in business models.</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/DASPRiD/Enum.git">dasprid/enum</a>
    </td>
    <td>library</td>
    <td>PHP 7.1 enum implementation</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/webimpress/safe-writer.git">webimpress/safe-writer</a>
    </td>
    <td>library</td>
    <td>Tool to write files safely, to avoid race conditions</td>
  </tr>
  </tbody>
</table>

### BSD-3-Clause

<table>
  <thead>
    <tr>
      <th>Name</th>
      <th>Type</th>
      <th>Description</th>
    </tr>
  </thead>
  <tbody>
  <tr>
    <td>
      <a href="https://github.com/colinmollenhour/Cm_Cache_Backend_File.git">colinmollenhour/cache-backend-file</a>
    </td>
    <td>magento-module</td>
    <td>The stock Zend_Cache_Backend_File backend has extremely poor performance for cleaning by tags making it become unusable as the number of cached items increases. This backend makes many changes resulting in a huge performance boost, especially for tag cleaning.</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/colinmollenhour/Cm_Cache_Backend_Redis.git">colinmollenhour/cache-backend-redis</a>
    </td>
    <td>magento-module</td>
    <td>Zend_Cache backend using Redis with full support for tags.</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/colinmollenhour/php-redis-session-abstract.git">colinmollenhour/php-redis-session-abstract</a>
    </td>
    <td>library</td>
    <td>A Redis-based session handler with optimistic locking</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/google/recaptcha.git">google/recaptcha</a>
    </td>
    <td>library</td>
    <td>Client library for reCAPTCHA, a free service that protects websites from spam and abuse.</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/laminas/laminas-captcha.git">laminas/laminas-captcha</a>
    </td>
    <td>library</td>
    <td>Generate and validate CAPTCHAs using Figlets, images, ReCaptcha, and more</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/laminas/laminas-code.git">laminas/laminas-code</a>
    </td>
    <td>library</td>
    <td>Extensions to the PHP Reflection API, static code scanning, and code generation</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/laminas/laminas-config.git">laminas/laminas-config</a>
    </td>
    <td>library</td>
    <td>provides a nested object property based user interface for accessing this configuration data within application code</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/laminas/laminas-db.git">laminas/laminas-db</a>
    </td>
    <td>library</td>
    <td>Database abstraction layer, SQL abstraction, result set abstraction, and RowDataGateway and TableDataGateway implementations</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/laminas/laminas-dependency-plugin.git">laminas/laminas-dependency-plugin</a>
    </td>
    <td>composer-plugin</td>
    <td>Replace zendframework and zfcampus packages with their Laminas Project equivalents.</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/laminas/laminas-di.git">laminas/laminas-di</a>
    </td>
    <td>library</td>
    <td>Automated dependency injection for PSR-11 containers</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/laminas/laminas-escaper.git">laminas/laminas-escaper</a>
    </td>
    <td>library</td>
    <td>Securely and safely escape HTML, HTML attributes, JavaScript, CSS, and URLs</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/laminas/laminas-eventmanager.git">laminas/laminas-eventmanager</a>
    </td>
    <td>library</td>
    <td>Trigger and listen to events within a PHP application</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/laminas/laminas-feed.git">laminas/laminas-feed</a>
    </td>
    <td>library</td>
    <td>provides functionality for creating and consuming RSS and Atom feeds</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/laminas/laminas-http.git">laminas/laminas-http</a>
    </td>
    <td>library</td>
    <td>Provides an easy interface for performing Hyper-Text Transfer Protocol (HTTP) requests</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/laminas/laminas-json.git">laminas/laminas-json</a>
    </td>
    <td>library</td>
    <td>provides convenience methods for serializing native PHP to JSON and decoding JSON to native PHP</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/laminas/laminas-loader.git">laminas/laminas-loader</a>
    </td>
    <td>library</td>
    <td>Autoloading and plugin loading strategies</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/laminas/laminas-mail.git">laminas/laminas-mail</a>
    </td>
    <td>library</td>
    <td>Provides generalized functionality to compose and send both text and MIME-compliant multipart e-mail messages</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/laminas/laminas-mime.git">laminas/laminas-mime</a>
    </td>
    <td>library</td>
    <td>Create and parse MIME messages and parts</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/laminas/laminas-modulemanager.git">laminas/laminas-modulemanager</a>
    </td>
    <td>library</td>
    <td>Modular application system for laminas-mvc applications</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/laminas/laminas-mvc.git">laminas/laminas-mvc</a>
    </td>
    <td>library</td>
    <td>Laminas's event-driven MVC layer, including MVC Applications, Controllers, and Plugins</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/laminas/laminas-recaptcha.git">laminas/laminas-recaptcha</a>
    </td>
    <td>library</td>
    <td>OOP wrapper for the ReCaptcha web service</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/laminas/laminas-router.git">laminas/laminas-router</a>
    </td>
    <td>library</td>
    <td>Flexible routing system for HTTP and console applications</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/laminas/laminas-server.git">laminas/laminas-server</a>
    </td>
    <td>library</td>
    <td>Create Reflection-based RPC servers</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/laminas/laminas-servicemanager.git">laminas/laminas-servicemanager</a>
    </td>
    <td>library</td>
    <td>Factory-Driven Dependency Injection Container</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/laminas/laminas-session.git">laminas/laminas-session</a>
    </td>
    <td>library</td>
    <td>Object-oriented interface to PHP sessions and storage</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/laminas/laminas-soap.git">laminas/laminas-soap</a>
    </td>
    <td>library</td>
    <td></td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/laminas/laminas-stdlib.git">laminas/laminas-stdlib</a>
    </td>
    <td>library</td>
    <td>SPL extensions, array utilities, error handlers, and more</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/laminas/laminas-text.git">laminas/laminas-text</a>
    </td>
    <td>library</td>
    <td>Create FIGlets and text-based tables</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/laminas/laminas-uri.git">laminas/laminas-uri</a>
    </td>
    <td>library</td>
    <td>A component that aids in manipulating and validating » Uniform Resource Identifiers (URIs)</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/laminas/laminas-validator.git">laminas/laminas-validator</a>
    </td>
    <td>library</td>
    <td>Validation classes for a wide range of domains, and the ability to chain validators to create complex validation criteria</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/laminas/laminas-view.git">laminas/laminas-view</a>
    </td>
    <td>library</td>
    <td>Flexible view layer supporting and providing multiple view layers, helpers, and more</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/laminas/laminas-zendframework-bridge.git">laminas/laminas-zendframework-bridge</a>
    </td>
    <td>library</td>
    <td>Alias legacy ZF class names to Laminas Project equivalents.</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/nikic/PHP-Parser.git">nikic/php-parser</a>
    </td>
    <td>library</td>
    <td>A PHP parser written in PHP</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/tedious/JShrink.git">tedivm/jshrink</a>
    </td>
    <td>library</td>
    <td>Javascript Minifier built in PHP</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/tubalmartin/YUI-CSS-compressor-PHP-port.git">tubalmartin/cssmin</a>
    </td>
    <td>library</td>
    <td>A PHP port of the YUI CSS compressor</td>
  </tr>
  </tbody>
</table>

### LGPL-2.1-or-later

<table>
  <thead>
    <tr>
      <th>Name</th>
      <th>Type</th>
      <th>Description</th>
    </tr>
  </thead>
  <tbody>
  <tr>
    <td>
      <a href="https://github.com/ezyang/htmlpurifier.git">ezyang/htmlpurifier</a>
    </td>
    <td>library</td>
    <td>Standards compliant HTML filter written in PHP</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/php-amqplib/php-amqplib.git">php-amqplib/php-amqplib</a>
    </td>
    <td>library</td>
    <td>Formerly videlalvaro/php-amqplib.  This library is a pure PHP implementation of the AMQP protocol. It's been tested against RabbitMQ.</td>
  </tr>
  </tbody>
</table>

### MIT

<table>
  <thead>
    <tr>
      <th>Name</th>
      <th>Type</th>
      <th>Description</th>
    </tr>
  </thead>
  <tbody>
  <tr>
    <td>
      <a href="https://github.com/braintree/braintree_php.git">braintree/braintree_php</a>
    </td>
    <td>library</td>
    <td>Braintree PHP Client Library</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/brick/math.git">brick/math</a>
    </td>
    <td>library</td>
    <td>Arbitrary-precision arithmetic library</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/brick/varexporter.git">brick/varexporter</a>
    </td>
    <td>library</td>
    <td>A powerful alternative to var_export(), which can export closures and objects without __set_state()</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/ChristianRiesen/base32.git">christian-riesen/base32</a>
    </td>
    <td>library</td>
    <td>Base32 encoder/decoder according to RFC 4648</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/colinmollenhour/credis.git">colinmollenhour/credis</a>
    </td>
    <td>library</td>
    <td>Credis is a lightweight interface to the Redis key-value store which wraps the phpredis library when available for better performance.</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/composer/ca-bundle.git">composer/ca-bundle</a>
    </td>
    <td>library</td>
    <td>Lets you find a path to the system CA bundle, and includes a fallback to the Mozilla CA bundle.</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/composer/composer.git">composer/composer</a>
    </td>
    <td>library</td>
    <td>Composer helps you declare, manage and install dependencies of PHP projects. It ensures you have the right stack everywhere.</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/composer/metadata-minifier.git">composer/metadata-minifier</a>
    </td>
    <td>library</td>
    <td>Small utility library that handles metadata minification and expansion.</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/composer/pcre.git">composer/pcre</a>
    </td>
    <td>library</td>
    <td>PCRE wrapping library that offers type-safe preg_* replacements.</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/composer/semver.git">composer/semver</a>
    </td>
    <td>library</td>
    <td>Semver library that offers utilities, version constraint parsing and validation.</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/composer/spdx-licenses.git">composer/spdx-licenses</a>
    </td>
    <td>library</td>
    <td>SPDX licenses list and validation library.</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/composer/xdebug-handler.git">composer/xdebug-handler</a>
    </td>
    <td>library</td>
    <td>Restarts a process without Xdebug.</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/endroid/qr-code.git">endroid/qr-code</a>
    </td>
    <td>library</td>
    <td>Endroid QR Code</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/ezimuel/guzzlestreams.git">ezimuel/guzzlestreams</a>
    </td>
    <td>library</td>
    <td>Fork of guzzle/streams (abandoned) to be used with elasticsearch-php</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/ezimuel/ringphp.git">ezimuel/ringphp</a>
    </td>
    <td>library</td>
    <td>Fork of guzzle/RingPHP (abandoned) to be used with elasticsearch-php</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/fgrosse/PHPASN1.git">fgrosse/phpasn1</a>
    </td>
    <td>library</td>
    <td>A PHP Framework that allows you to encode and decode arbitrary ASN.1 structures using the ITU-T X.690 Encoding Rules.</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/guzzle/guzzle.git">guzzlehttp/guzzle</a>
    </td>
    <td>library</td>
    <td>Guzzle is a PHP HTTP client library</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/guzzle/promises.git">guzzlehttp/promises</a>
    </td>
    <td>library</td>
    <td>Guzzle promises library</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/guzzle/psr7.git">guzzlehttp/psr7</a>
    </td>
    <td>library</td>
    <td>PSR-7 message implementation that also provides common utility methods</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/justinrainbow/json-schema.git">justinrainbow/json-schema</a>
    </td>
    <td>library</td>
    <td>A library to validate a json schema.</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/thephpleague/flysystem.git">league/flysystem</a>
    </td>
    <td>library</td>
    <td>File storage abstraction for PHP</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/thephpleague/flysystem-aws-s3-v3.git">league/flysystem-aws-s3-v3</a>
    </td>
    <td>library</td>
    <td>AWS S3 filesystem adapter for Flysystem.</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/thephpleague/mime-type-detection.git">league/mime-type-detection</a>
    </td>
    <td>library</td>
    <td>Mime-type detection for Flysystem</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/Seldaek/monolog.git">monolog/monolog</a>
    </td>
    <td>library</td>
    <td>Sends your logs to files, sockets, inboxes, databases and various web services</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/jmespath/jmespath.php.git">mtdowling/jmespath.php</a>
    </td>
    <td>library</td>
    <td>Declaratively specify how to extract elements from a JSON document</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/paragonie/constant_time_encoding.git">paragonie/constant_time_encoding</a>
    </td>
    <td>library</td>
    <td>Constant-time Implementations of RFC 4648 Encoding (Base-64, Base-32, Base-16)</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/paragonie/random_compat.git">paragonie/random_compat</a>
    </td>
    <td>library</td>
    <td>PHP 5.x polyfill for random_bytes() and random_int() from PHP 7</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/MyIntervals/emogrifier.git">pelago/emogrifier</a>
    </td>
    <td>library</td>
    <td>Converts CSS styles into inline style attributes in your HTML code</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/PhpGt/CssXPath.git">phpgt/cssxpath</a>
    </td>
    <td>library</td>
    <td>Convert CSS selectors to XPath queries.</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/PhpGt/Dom.git">phpgt/dom</a>
    </td>
    <td>library</td>
    <td>The modern DOM API for PHP projects.</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/phpseclib/mcrypt_compat.git">phpseclib/mcrypt_compat</a>
    </td>
    <td>library</td>
    <td>PHP 5.x-8.x polyfill for mcrypt extension</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/phpseclib/phpseclib.git">phpseclib/phpseclib</a>
    </td>
    <td>library</td>
    <td>PHP Secure Communications Library - Pure-PHP implementations of RSA, AES, SSH2, SFTP, X.509 etc.</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/php-fig/container.git">psr/container</a>
    </td>
    <td>library</td>
    <td>Common Container Interface (PHP FIG PSR-11)</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/php-fig/event-dispatcher.git">psr/event-dispatcher</a>
    </td>
    <td>library</td>
    <td>Standard interfaces for event handling.</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/php-fig/http-client.git">psr/http-client</a>
    </td>
    <td>library</td>
    <td>Common interface for HTTP clients</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/php-fig/http-factory.git">psr/http-factory</a>
    </td>
    <td>library</td>
    <td>Common interfaces for PSR-7 HTTP message factories</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/php-fig/http-message.git">psr/http-message</a>
    </td>
    <td>library</td>
    <td>Common interface for HTTP messages</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/php-fig/log.git">psr/log</a>
    </td>
    <td>library</td>
    <td>Common interface for logging libraries</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/ralouphie/getallheaders.git">ralouphie/getallheaders</a>
    </td>
    <td>library</td>
    <td>A polyfill for getallheaders.</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/ramsey/collection.git">ramsey/collection</a>
    </td>
    <td>library</td>
    <td>A PHP library for representing and manipulating collections.</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/ramsey/uuid.git">ramsey/uuid</a>
    </td>
    <td>library</td>
    <td>A PHP library for generating and working with universally unique identifiers (UUIDs).</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/reactphp/promise.git">react/promise</a>
    </td>
    <td>library</td>
    <td>A lightweight implementation of CommonJS Promises/A for PHP</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/sabberworm/PHP-CSS-Parser.git">sabberworm/php-css-parser</a>
    </td>
    <td>library</td>
    <td>Parser for CSS Files written in PHP</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/Seldaek/jsonlint.git">seld/jsonlint</a>
    </td>
    <td>library</td>
    <td>JSON Linter</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/Seldaek/phar-utils.git">seld/phar-utils</a>
    </td>
    <td>library</td>
    <td>PHAR file format utilities, for when PHP phars you up</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/Spomky-Labs/aes-key-wrap.git">spomky-labs/aes-key-wrap</a>
    </td>
    <td>library</td>
    <td>AES Key Wrap for PHP.</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/Spomky-Labs/base64url.git">spomky-labs/base64url</a>
    </td>
    <td>library</td>
    <td>Base 64 URL Safe Encoding/Decoding PHP Library</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/Spomky-Labs/otphp.git">spomky-labs/otphp</a>
    </td>
    <td>library</td>
    <td>A PHP library for generating one time passwords according to RFC 4226 (HOTP Algorithm) and the RFC 6238 (TOTP Algorithm) and compatible with Google Authenticator</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/symfony/config.git">symfony/config</a>
    </td>
    <td>library</td>
    <td>Helps you find, load, combine, autofill and validate configuration values of any kind</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/symfony/console.git">symfony/console</a>
    </td>
    <td>library</td>
    <td>Eases the creation of beautiful and testable command line interfaces</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/symfony/css-selector.git">symfony/css-selector</a>
    </td>
    <td>library</td>
    <td>Converts CSS selectors to XPath expressions</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/symfony/debug.git">symfony/debug</a>
    </td>
    <td>library</td>
    <td>Provides tools to ease debugging PHP code</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/symfony/dependency-injection.git">symfony/dependency-injection</a>
    </td>
    <td>library</td>
    <td>Allows you to standardize and centralize the way objects are constructed in your application</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/symfony/deprecation-contracts.git">symfony/deprecation-contracts</a>
    </td>
    <td>library</td>
    <td>A generic function and convention to trigger deprecation notices</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/symfony/error-handler.git">symfony/error-handler</a>
    </td>
    <td>library</td>
    <td>Provides tools to manage errors and ease debugging PHP code</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/symfony/event-dispatcher.git">symfony/event-dispatcher</a>
    </td>
    <td>library</td>
    <td>Provides tools that allow your application components to communicate with each other by dispatching events and listening to them</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/symfony/event-dispatcher-contracts.git">symfony/event-dispatcher-contracts</a>
    </td>
    <td>library</td>
    <td>Generic abstractions related to dispatching event</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/symfony/filesystem.git">symfony/filesystem</a>
    </td>
    <td>library</td>
    <td>Provides basic utilities for the filesystem</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/symfony/finder.git">symfony/finder</a>
    </td>
    <td>library</td>
    <td>Finds files and directories via an intuitive fluent interface</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/symfony/http-client-contracts.git">symfony/http-client-contracts</a>
    </td>
    <td>library</td>
    <td>Generic abstractions related to HTTP clients</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/symfony/http-foundation.git">symfony/http-foundation</a>
    </td>
    <td>library</td>
    <td>Defines an object-oriented layer for the HTTP specification</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/symfony/http-kernel.git">symfony/http-kernel</a>
    </td>
    <td>library</td>
    <td>Provides a structured process for converting a Request into a Response</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/symfony/polyfill-ctype.git">symfony/polyfill-ctype</a>
    </td>
    <td>library</td>
    <td>Symfony polyfill for ctype functions</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/symfony/polyfill-intl-idn.git">symfony/polyfill-intl-idn</a>
    </td>
    <td>library</td>
    <td>Symfony polyfill for intl's idn_to_ascii and idn_to_utf8 functions</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/symfony/polyfill-intl-normalizer.git">symfony/polyfill-intl-normalizer</a>
    </td>
    <td>library</td>
    <td>Symfony polyfill for intl's Normalizer class and related functions</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/symfony/polyfill-mbstring.git">symfony/polyfill-mbstring</a>
    </td>
    <td>library</td>
    <td>Symfony polyfill for the Mbstring extension</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/symfony/polyfill-php72.git">symfony/polyfill-php72</a>
    </td>
    <td>library</td>
    <td>Symfony polyfill backporting some PHP 7.2+ features to lower PHP versions</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/symfony/polyfill-php73.git">symfony/polyfill-php73</a>
    </td>
    <td>library</td>
    <td>Symfony polyfill backporting some PHP 7.3+ features to lower PHP versions</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/symfony/polyfill-php80.git">symfony/polyfill-php80</a>
    </td>
    <td>library</td>
    <td>Symfony polyfill backporting some PHP 8.0+ features to lower PHP versions</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/symfony/polyfill-php81.git">symfony/polyfill-php81</a>
    </td>
    <td>library</td>
    <td>Symfony polyfill backporting some PHP 8.1+ features to lower PHP versions</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/symfony/process.git">symfony/process</a>
    </td>
    <td>library</td>
    <td>Executes commands in sub-processes</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/symfony/service-contracts.git">symfony/service-contracts</a>
    </td>
    <td>library</td>
    <td>Generic abstractions related to writing services</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/symfony/var-dumper.git">symfony/var-dumper</a>
    </td>
    <td>library</td>
    <td>Provides mechanisms for walking through any arbitrary PHP variable</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/thecodingmachine/safe.git">thecodingmachine/safe</a>
    </td>
    <td>library</td>
    <td>PHP core functions that throw exceptions instead of returning FALSE on error</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/web-token/jwt-framework.git">web-token/jwt-framework</a>
    </td>
    <td>symfony-bundle</td>
    <td>JSON Object Signing and Encryption library for PHP and Symfony Bundle.</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/webmozarts/assert.git">webmozart/assert</a>
    </td>
    <td>library</td>
    <td>Assertions to validate method input/output with nice error messages.</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/webonyx/graphql-php.git">webonyx/graphql-php</a>
    </td>
    <td>library</td>
    <td>A PHP port of GraphQL reference implementation</td>
  </tr>
  </tbody>
</table>

### OSL-3.0, AFL-3.0

<table>
  <thead>
    <tr>
      <th>Name</th>
      <th>Type</th>
      <th>Description</th>
    </tr>
  </thead>
  <tbody>
  <tr>
    <td>
      paypal/module-braintree-graph-ql
    </td>
    <td>magento2-module</td>
    <td>N/A</td>
  </tr>
  <tr>
    <td>
      temando/module-shipping-remover
    </td>
    <td>magento2-module</td>
    <td>Removes Temando multi-carrier shipping extension from Magento 2</td>
  </tr>
  </tbody>
</table>

### OSL-3.0

<table>
  <thead>
    <tr>
      <th>Name</th>
      <th>Type</th>
      <th>Description</th>
    </tr>
  </thead>
  <tbody>
  <tr>
    <td>
      temando/module-shipping
    </td>
    <td>metapackage</td>
    <td>Temando multi-carrier shipping extension for Magento 2</td>
  </tr>
  </tbody>
</table>

### PHP

<table>
  <thead>
    <tr>
      <th>Name</th>
      <th>Type</th>
      <th>Description</th>
    </tr>
  </thead>
  <tbody>
  <tr>
    <td>
      <a href="https://github.com/2tvenom/CBOREncode.git">2tvenom/cborencode</a>
    </td>
    <td>library</td>
    <td>CBOR encoder for PHP</td>
  </tr>
  </tbody>
</table>

### proprietary

<table>
  <thead>
    <tr>
      <th>Name</th>
      <th>Type</th>
      <th>Description</th>
    </tr>
  </thead>
  <tbody>
  <tr>
    <td>
      paypal/module-braintree-core
    </td>
    <td>magento2-module</td>
    <td>Fork from the Magento Braintree 2.2.0 module by Gene Commerce for PayPal.</td>
  </tr>
  </tbody>
</table>
