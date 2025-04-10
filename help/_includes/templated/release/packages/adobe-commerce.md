# Adobe Commerce packages

<!-- The 'packages' variable contains the 'packages' node of the '_data/codebase/commerce/composer_lock.json' file
 -->

<!-- The 'packages-dev' variable contains the 'packages-dev' node of the '_data/codebase/commerce/composer_lock.json' file
 -->

<!-- The 'product' variable contains data of the 'magento/product-enterprise-edition' package
 -->

<!-- The edition variable contains `commerce` value from the _data/names.yml file
 -->

Adobe Commerce uses Composer to manage PHP packages.

The `composer.json` file declares the list of packages, whereas the `composer.lock` file stores a complete list of the packages (a full version of each package and its dependencies) used to build an installation of Adobe Commerce.

The following reference documentation is generated from the `composer.lock` file, and it covers required packages included in Adobe Commerce 2.4.8.

## Dependencies

`magento/product-enterprise-edition 2.4.8` has the following dependencies:

- adobe-commerce/extensions-metapackage: 2.0.1
- colinmollenhour/cache-backend-file: ^1.4
- colinmollenhour/cache-backend-redis: ^1.16
- colinmollenhour/credis: ^1.15
- colinmollenhour/php-redis-session-abstract: ^2.0
- composer/composer: ^2.0, !=2.2.16
- duosecurity/duo_api_php: ^1.1
- duosecurity/duo_universal_php: ^1.0
- elasticsearch/elasticsearch: ^8.15
- ext-bcmath: *
- ext-ctype: *
- ext-curl: *
- ext-dom: *
- ext-ftp: *
- ext-gd: *
- ext-hash: *
- ext-iconv: *
- ext-intl: *
- ext-mbstring: *
- ext-openssl: *
- ext-pdo_mysql: *
- ext-simplexml: *
- ext-soap: *
- ext-sodium: *
- ext-spl: *
- ext-xsl: *
- ext-zip: *
- ezyang/htmlpurifier: ^4.17
- guzzlehttp/guzzle: ^7.5
- laminas/laminas-captcha: ^2.18
- laminas/laminas-code: ^4.13
- laminas/laminas-di: ^3.15
- laminas/laminas-escaper: ^2.13
- laminas/laminas-eventmanager: ^3.11
- laminas/laminas-feed: ^2.22
- laminas/laminas-filter: ^2.33
- laminas/laminas-http: ^2.15
- laminas/laminas-i18n: ^2.17
- laminas/laminas-modulemanager: ^2.11
- laminas/laminas-mvc: ^3.6
- laminas/laminas-permissions-acl: ^2.10
- laminas/laminas-servicemanager: ^3.16
- laminas/laminas-soap: ^2.10
- laminas/laminas-stdlib: ^3.11
- laminas/laminas-uri: ^2.9
- laminas/laminas-validator: ^2.23
- league/flysystem: ^3.0
- league/flysystem-aws-s3-v3: ^3.0
- lib-libxml: *
- magento/composer: ^1.10.1-beta1
- magento/composer-dependency-version-audit-plugin: ^0.1
- magento/framework-foreign-key: 100.4.7
- magento/magento-composer-installer: >=0.4.0
- magento/magento-zf-db: ^3.21
- magento/magento2-ee-base: 2.4.8
- [magento/module-admin-gws](https://developer.adobe.com/commerce/php/module-reference/module-admin-gws/): 100.4.8
- [magento/module-admin-gws-configurable-product](https://developer.adobe.com/commerce/php/module-reference/module-admin-gws-configurable-product/): 100.4.5
- [magento/module-admin-gws-staging](https://developer.adobe.com/commerce/php/module-reference/module-admin-gws-staging/): 100.4.5
- [magento/module-advanced-catalog](https://developer.adobe.com/commerce/php/module-reference/module-advanced-catalog/): 100.4.5
- [magento/module-advanced-checkout](https://developer.adobe.com/commerce/php/module-reference/module-advanced-checkout/): 100.4.8
- [magento/module-advanced-rule](https://developer.adobe.com/commerce/php/module-reference/module-advanced-rule/): 100.4.5
- [magento/module-advanced-sales-rule](https://developer.adobe.com/commerce/php/module-reference/module-advanced-sales-rule/): 100.4.5
- [magento/module-application-server](https://developer.adobe.com/commerce/php/module-reference/module-application-server/): 100.4.1
- [magento/module-application-server-new-relic](https://developer.adobe.com/commerce/php/module-reference/module-application-server-new-relic/): 100.4.1
- [magento/module-application-server-performance-monitor](https://developer.adobe.com/commerce/php/module-reference/module-application-server-performance-monitor/): 100.4.1
- [magento/module-application-server-state-monitor](https://developer.adobe.com/commerce/php/module-reference/module-application-server-state-monitor/): 100.4.1
- [magento/module-application-server-state-monitor-graph-ql](https://developer.adobe.com/commerce/php/module-reference/module-application-server-state-monitor-graph-ql/): 100.4.1
- [magento/module-async-order](https://developer.adobe.com/commerce/php/module-reference/module-async-order/): 100.4.4
- [magento/module-async-order-graph-ql](https://developer.adobe.com/commerce/php/module-reference/module-async-order-graph-ql/): 100.4.3
- [magento/module-aws-s3-customer-custom-attributes](https://developer.adobe.com/commerce/php/module-reference/module-aws-s3-customer-custom-attributes/): 100.4.5
- [magento/module-aws-s3-gift-card-import-export](https://developer.adobe.com/commerce/php/module-reference/module-aws-s3-gift-card-import-export/): 100.4.5
- [magento/module-aws-s3-scheduled-import-export](https://developer.adobe.com/commerce/php/module-reference/module-aws-s3-scheduled-import-export/): 100.4.5
- [magento/module-banner](https://developer.adobe.com/commerce/php/module-reference/module-banner/): 101.2.8
- [magento/module-banner-customer-segment](https://developer.adobe.com/commerce/php/module-reference/module-banner-customer-segment/): 100.4.6
- [magento/module-banner-graph-ql](https://developer.adobe.com/commerce/php/module-reference/module-banner-graph-ql/): 100.4.4
- [magento/module-banner-staging](https://developer.adobe.com/commerce/php/module-reference/module-banner-staging/): 100.4.2
- [magento/module-bundle-import-export-staging](https://developer.adobe.com/commerce/php/module-reference/module-bundle-import-export-staging/): 100.4.5
- [magento/module-bundle-staging](https://developer.adobe.com/commerce/php/module-reference/module-bundle-staging/): 100.4.8
- [magento/module-catalog-event](https://developer.adobe.com/commerce/php/module-reference/module-catalog-event/): 101.1.7
- [magento/module-catalog-import-export-staging](https://developer.adobe.com/commerce/php/module-reference/module-catalog-import-export-staging/): 100.4.5
- [magento/module-catalog-inventory-staging](https://developer.adobe.com/commerce/php/module-reference/module-catalog-inventory-staging/): 100.4.6
- [magento/module-catalog-permissions](https://developer.adobe.com/commerce/php/module-reference/module-catalog-permissions/): 100.4.8
- [magento/module-catalog-permissions-graph-ql](https://developer.adobe.com/commerce/php/module-reference/module-catalog-permissions-graph-ql/): 100.4.6
- [magento/module-catalog-rule-staging](https://developer.adobe.com/commerce/php/module-reference/module-catalog-rule-staging/): 100.4.8
- [magento/module-catalog-staging](https://developer.adobe.com/commerce/php/module-reference/module-catalog-staging/): 100.4.8
- [magento/module-catalog-staging-graph-ql](https://developer.adobe.com/commerce/php/module-reference/module-catalog-staging-graph-ql/): 100.4.7
- [magento/module-catalog-url-rewrite-staging](https://developer.adobe.com/commerce/php/module-reference/module-catalog-url-rewrite-staging/): 100.4.7
- [magento/module-checkout-address-search](https://developer.adobe.com/commerce/php/module-reference/module-checkout-address-search/): 100.4.7
- [magento/module-checkout-address-search-gift-registry](https://developer.adobe.com/commerce/php/module-reference/module-checkout-address-search-gift-registry/): 100.4.4
- [magento/module-checkout-staging](https://developer.adobe.com/commerce/php/module-reference/module-checkout-staging/): 100.4.7
- [magento/module-cms-staging](https://developer.adobe.com/commerce/php/module-reference/module-cms-staging/): 100.4.8
- [magento/module-configurable-product-staging](https://developer.adobe.com/commerce/php/module-reference/module-configurable-product-staging/): 100.4.7
- [magento/module-custom-attribute-management](https://developer.adobe.com/commerce/php/module-reference/module-custom-attribute-management/): 100.4.7
- [magento/module-customer-balance](https://developer.adobe.com/commerce/php/module-reference/module-customer-balance/): 100.4.8
- [magento/module-customer-balance-graph-ql](https://developer.adobe.com/commerce/php/module-reference/module-customer-balance-graph-ql/): 100.4.5
- [magento/module-customer-custom-attributes](https://developer.adobe.com/commerce/php/module-reference/module-customer-custom-attributes/): 100.4.8
- [magento/module-customer-custom-attributes-graph-ql](https://developer.adobe.com/commerce/php/module-reference/module-customer-custom-attributes-graph-ql/): 100.4.1
- [magento/module-customer-finance](https://developer.adobe.com/commerce/php/module-reference/module-customer-finance/): 100.4.5
- [magento/module-customer-segment](https://developer.adobe.com/commerce/php/module-reference/module-customer-segment/): 102.1.8
- [magento/module-customer-segment-graph-ql](https://developer.adobe.com/commerce/php/module-reference/module-customer-segment-graph-ql/): 100.4.1
- [magento/module-deferred-total-calculating](https://developer.adobe.com/commerce/php/module-reference/module-deferred-total-calculating/): 100.4.3
- [magento/module-downloadable-staging](https://developer.adobe.com/commerce/php/module-reference/module-downloadable-staging/): 100.4.7
- [magento/module-elasticsearch-catalog-permissions](https://developer.adobe.com/commerce/php/module-reference/module-elasticsearch-catalog-permissions/): 100.4.4
- [magento/module-elasticsearch-catalog-permissions-graph-ql](https://developer.adobe.com/commerce/php/module-reference/module-elasticsearch-catalog-permissions-graph-ql/): 100.4.3
- [magento/module-enterprise](https://developer.adobe.com/commerce/php/module-reference/module-enterprise/): 100.4.6
- [magento/module-gift-card](https://developer.adobe.com/commerce/php/module-reference/module-gift-card/): 101.3.8
- [magento/module-gift-card-account](https://developer.adobe.com/commerce/php/module-reference/module-gift-card-account/): 101.2.8
- [magento/module-gift-card-account-graph-ql](https://developer.adobe.com/commerce/php/module-reference/module-gift-card-account-graph-ql/): 100.4.6
- [magento/module-gift-card-graph-ql](https://developer.adobe.com/commerce/php/module-reference/module-gift-card-graph-ql/): 100.4.8
- [magento/module-gift-card-import-export](https://developer.adobe.com/commerce/php/module-reference/module-gift-card-import-export/): 100.4.5
- [magento/module-gift-card-staging](https://developer.adobe.com/commerce/php/module-reference/module-gift-card-staging/): 100.4.5
- [magento/module-gift-message-staging](https://developer.adobe.com/commerce/php/module-reference/module-gift-message-staging/): 100.4.5
- [magento/module-gift-registry](https://developer.adobe.com/commerce/php/module-reference/module-gift-registry/): 101.2.8
- [magento/module-gift-registry-graph-ql](https://developer.adobe.com/commerce/php/module-reference/module-gift-registry-graph-ql/): 100.4.4
- [magento/module-gift-wrapping](https://developer.adobe.com/commerce/php/module-reference/module-gift-wrapping/): 101.2.7
- [magento/module-gift-wrapping-graph-ql](https://developer.adobe.com/commerce/php/module-reference/module-gift-wrapping-graph-ql/): 100.4.5
- [magento/module-gift-wrapping-staging](https://developer.adobe.com/commerce/php/module-reference/module-gift-wrapping-staging/): 100.4.5
- [magento/module-google-optimizer-staging](https://developer.adobe.com/commerce/php/module-reference/module-google-optimizer-staging/): 100.4.5
- [magento/module-google-tag-manager](https://developer.adobe.com/commerce/php/module-reference/module-google-tag-manager/): 100.4.8
- [magento/module-grouped-product-staging](https://developer.adobe.com/commerce/php/module-reference/module-grouped-product-staging/): 100.4.6
- [magento/module-import-csv](https://developer.adobe.com/commerce/php/module-reference/module-import-csv/): 100.4.2
- [magento/module-import-csv-api](https://developer.adobe.com/commerce/php/module-reference/module-import-csv-api/): 100.4.2
- [magento/module-import-json](https://developer.adobe.com/commerce/php/module-reference/module-import-json/): 100.4.1
- [magento/module-import-json-api](https://developer.adobe.com/commerce/php/module-reference/module-import-json-api/): 100.4.1
- [magento/module-invitation](https://developer.adobe.com/commerce/php/module-reference/module-invitation/): 100.4.7
- [magento/module-layered-navigation-staging](https://developer.adobe.com/commerce/php/module-reference/module-layered-navigation-staging/): 100.4.5
- [magento/module-logging](https://developer.adobe.com/commerce/php/module-reference/module-logging/): 101.2.8
- [magento/module-login-as-customer-logging](https://developer.adobe.com/commerce/php/module-reference/module-login-as-customer-logging/): 100.4.8
- [magento/module-login-as-customer-website-restriction](https://developer.adobe.com/commerce/php/module-reference/module-login-as-customer-website-restriction/): 100.4.6
- [magento/module-media-content-catalog-staging](https://developer.adobe.com/commerce/php/module-reference/module-media-content-catalog-staging/): 100.4.5
- [magento/module-msrp-staging](https://developer.adobe.com/commerce/php/module-reference/module-msrp-staging/): 100.4.6
- [magento/module-multicoupon](https://developer.adobe.com/commerce/php/module-reference/module-multicoupon/): 100.4.1
- [magento/module-multicoupon-graph-ql](https://developer.adobe.com/commerce/php/module-reference/module-multicoupon-graph-ql/): 100.4.1
- [magento/module-multicoupon-ui](https://developer.adobe.com/commerce/php/module-reference/module-multicoupon-ui/): 100.4.1
- [magento/module-multiple-wishlist](https://developer.adobe.com/commerce/php/module-reference/module-multiple-wishlist/): 100.4.8
- [magento/module-multiple-wishlist-graph-ql](https://developer.adobe.com/commerce/php/module-reference/module-multiple-wishlist-graph-ql/): 100.4.4
- [magento/module-payment-staging](https://developer.adobe.com/commerce/php/module-reference/module-payment-staging/): 100.4.5
- [magento/module-persistent-history](https://developer.adobe.com/commerce/php/module-reference/module-persistent-history/): 100.4.5
- [magento/module-price-permissions](https://developer.adobe.com/commerce/php/module-reference/module-price-permissions/): 100.4.4
- [magento/module-product-video-staging](https://developer.adobe.com/commerce/php/module-reference/module-product-video-staging/): 100.4.5
- [magento/module-promotion-permissions](https://developer.adobe.com/commerce/php/module-reference/module-promotion-permissions/): 100.4.5
- [magento/module-quote-commerce-graph-ql](https://developer.adobe.com/commerce/php/module-reference/module-quote-commerce-graph-ql/): 100.4.1
- [magento/module-quote-gift-card-options](https://developer.adobe.com/commerce/php/module-reference/module-quote-gift-card-options/): 100.4.5
- [magento/module-quote-staging](https://developer.adobe.com/commerce/php/module-reference/module-quote-staging/): 100.4.5
- [magento/module-reminder](https://developer.adobe.com/commerce/php/module-reference/module-reminder/): 101.2.7
- [magento/module-remote-storage-commerce](https://developer.adobe.com/commerce/php/module-reference/module-remote-storage-commerce/): 100.4.4
- [magento/module-resource-connections](https://developer.adobe.com/commerce/php/module-reference/module-resource-connections/): 100.4.5
- [magento/module-review-staging](https://developer.adobe.com/commerce/php/module-reference/module-review-staging/): 100.4.5
- [magento/module-reward](https://developer.adobe.com/commerce/php/module-reference/module-reward/): 101.2.8
- [magento/module-reward-graph-ql](https://developer.adobe.com/commerce/php/module-reference/module-reward-graph-ql/): 100.4.7
- [magento/module-reward-staging](https://developer.adobe.com/commerce/php/module-reference/module-reward-staging/): 100.4.5
- [magento/module-rma](https://developer.adobe.com/commerce/php/module-reference/module-rma/): 101.2.8
- [magento/module-rma-graph-ql](https://developer.adobe.com/commerce/php/module-reference/module-rma-graph-ql/): 100.4.7
- [magento/module-rma-staging](https://developer.adobe.com/commerce/php/module-reference/module-rma-staging/): 100.4.5
- [magento/module-sales-archive](https://developer.adobe.com/commerce/php/module-reference/module-sales-archive/): 101.0.6
- [magento/module-sales-rule-staging](https://developer.adobe.com/commerce/php/module-reference/module-sales-rule-staging/): 100.4.7
- [magento/module-scalable-checkout](https://developer.adobe.com/commerce/php/module-reference/module-scalable-checkout/): 100.4.7
- [magento/module-scalable-inventory](https://developer.adobe.com/commerce/php/module-reference/module-scalable-inventory/): 100.4.6
- [magento/module-scalable-oms](https://developer.adobe.com/commerce/php/module-reference/module-scalable-oms/): 100.4.6
- [magento/module-scheduled-import-export](https://developer.adobe.com/commerce/php/module-reference/module-scheduled-import-export/): 101.2.8
- [magento/module-search-staging](https://developer.adobe.com/commerce/php/module-reference/module-search-staging/): 100.4.6
- [magento/module-staging](https://developer.adobe.com/commerce/php/module-reference/module-staging/): 101.2.8
- [magento/module-staging-graph-ql](https://developer.adobe.com/commerce/php/module-reference/module-staging-graph-ql/): 100.4.5
- [magento/module-support](https://developer.adobe.com/commerce/php/module-reference/module-support/): 101.2.7
- [magento/module-swat](https://developer.adobe.com/commerce/php/module-reference/module-swat/): 100.4.6
- [magento/module-target-rule](https://developer.adobe.com/commerce/php/module-reference/module-target-rule/): 101.2.8
- [magento/module-target-rule-graph-ql](https://developer.adobe.com/commerce/php/module-reference/module-target-rule-graph-ql/): 100.4.5
- [magento/module-versions-cms](https://developer.adobe.com/commerce/php/module-reference/module-versions-cms/): 101.2.8
- [magento/module-versions-cms-page-cache](https://developer.adobe.com/commerce/php/module-reference/module-versions-cms-page-cache/): 100.4.4
- [magento/module-versions-cms-url-rewrite](https://developer.adobe.com/commerce/php/module-reference/module-versions-cms-url-rewrite/): 100.4.6
- [magento/module-versions-cms-url-rewrite-graph-ql](https://developer.adobe.com/commerce/php/module-reference/module-versions-cms-url-rewrite-graph-ql/): 100.4.4
- [magento/module-visual-merchandiser](https://developer.adobe.com/commerce/php/module-reference/module-visual-merchandiser/): 100.4.8
- [magento/module-webapi-rest-gws](https://developer.adobe.com/commerce/php/module-reference/module-webapi-rest-gws/): 100.4.0
- [magento/module-website-restriction](https://developer.adobe.com/commerce/php/module-reference/module-website-restriction/): 100.4.7
- [magento/module-weee-staging](https://developer.adobe.com/commerce/php/module-reference/module-weee-staging/): 100.4.5
- [magento/module-wishlist-gift-card](https://developer.adobe.com/commerce/php/module-reference/module-wishlist-gift-card/): 100.4.4
- [magento/module-wishlist-gift-card-graph-ql](https://developer.adobe.com/commerce/php/module-reference/module-wishlist-gift-card-graph-ql/): 100.4.4
- magento/page-builder-commerce: 1.7.5
- magento/product-community-edition: 2.4.8
- magento/security-package-ee: 1.0.3
- magento/theme-adminhtml-spectrum: 100.4.3
- magento/zend-cache: ^1.16
- magento/zend-db: ^1.16
- magento/zend-pdf: ^1.16
- monolog/monolog: ^3.6
- opensearch-project/opensearch-php: ^2.3
- pelago/emogrifier: ^7.0
- php: ~8.2.0||~8.3.0||~8.4.0
- php-amqplib/php-amqplib: ^3.2
- phpseclib/mcrypt_compat: ^2.0
- phpseclib/phpseclib: ^3.0
- psr/log: ^2 || ^3
- ramsey/uuid: ^4.2
- symfony/console: ^6.4
- symfony/intl: ^6.4
- symfony/mailer: ^6.4
- symfony/mime: ^6.4
- symfony/process: ^6.4
- symfony/string: ^6.4
- tedivm/jshrink: ^1.4
- tubalmartin/cssmin: ^4.1
- web-token/jwt-framework: ^3.4
- webonyx/graphql-php: ^15.0
- wikimedia/less.php: ^5.0

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
      <a href="https://github.com/opensearch-project/opensearch-php.git">opensearch-project/opensearch-php</a>
    </td>
    <td>library</td>
    <td>PHP Client for OpenSearch</td>
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
      <a href="https://github.com/opentelemetry-php/api.git">open-telemetry/api</a>
    </td>
    <td>library</td>
    <td>API for OpenTelemetry PHP.</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/opentelemetry-php/context.git">open-telemetry/context</a>
    </td>
    <td>library</td>
    <td>Context implementation for OpenTelemetry PHP.</td>
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
    <td>PHP port of the LESS processor</td>
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
      <a href="https://github.com/colinmollenhour/php-redis-session-abstract.git">colinmollenhour/php-redis-session-abstract</a>
    </td>
    <td>library</td>
    <td>A Redis-based session handler with optimistic locking</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/duosecurity/duo_universal_php.git">duosecurity/duo_universal_php</a>
    </td>
    <td>library</td>
    <td>A PHP implementation of the Duo Universal SDK.</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/firebase/php-jwt.git">firebase/php-jwt</a>
    </td>
    <td>library</td>
    <td>A simple library to encode and decode JSON Web Tokens (JWT) in PHP. Should conform to the current spec.</td>
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
      <a href="https://github.com/laminas/laminas-filter.git">laminas/laminas-filter</a>
    </td>
    <td>library</td>
    <td>Programmatically filter and normalize data and files</td>
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
      <a href="https://github.com/laminas/laminas-i18n.git">laminas/laminas-i18n</a>
    </td>
    <td>library</td>
    <td>Provide translations for your application, and filter and validate internationalized values</td>
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
      <a href="https://github.com/laminas/laminas-permissions-acl.git">laminas/laminas-permissions-acl</a>
    </td>
    <td>library</td>
    <td>Provides a lightweight and flexible access control list (ACL) implementation for privileges management</td>
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
      <a href="https://github.com/laminas/laminas-translator.git">laminas/laminas-translator</a>
    </td>
    <td>library</td>
    <td>Interfaces for the Translator component of laminas-i18n</td>
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
      <a href="https://github.com/marc-mabe/php-enum.git">marc-mabe/php-enum</a>
    </td>
    <td>library</td>
    <td>Simple and fast implementation of enumerations with native PHP</td>
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
      <a href="https://github.com/phpfui/recaptcha.git">phpfui/recaptcha</a>
    </td>
    <td>library</td>
    <td>Client library for Google's reCAPTCHA for PHP 8.4 and higher</td>
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

### BSD-3-Clause-Modification

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
      <a href="https://github.com/colinmollenhour/Cm_Cache_Backend_Redis.git">colinmollenhour/cache-backend-redis</a>
    </td>
    <td>magento-module</td>
    <td>Zend_Cache backend using Redis with full support for tags.</td>
  </tr>
  </tbody>
</table>

### ISC

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
      <a href="https://github.com/paragonie/sodium_compat.git">paragonie/sodium_compat</a>
    </td>
    <td>library</td>
    <td>Pure PHP implementation of libsodium; uses the PHP extension if it exists</td>
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
      <a href="https://github.com/composer/class-map-generator.git">composer/class-map-generator</a>
    </td>
    <td>library</td>
    <td>Utilities to scan PHP code and generate class maps.</td>
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
      <a href="https://github.com/doctrine/lexer.git">doctrine/lexer</a>
    </td>
    <td>library</td>
    <td>PHP Doctrine Lexer parser library that can be used in Top-Down, Recursive Descent Parsers.</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/egulias/EmailValidator.git">egulias/email-validator</a>
    </td>
    <td>library</td>
    <td>A library for validating emails against several RFCs</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/elastic/elastic-transport-php.git">elastic/transport</a>
    </td>
    <td>library</td>
    <td>HTTP transport PHP library for Elastic products</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/elastic/elasticsearch-php.git">elasticsearch/elasticsearch</a>
    </td>
    <td>library</td>
    <td>PHP Client for Elasticsearch</td>
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
      <a href="https://github.com/jsonrainbow/json-schema.git">justinrainbow/json-schema</a>
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
      <a href="https://github.com/thephpleague/flysystem-local.git">league/flysystem-local</a>
    </td>
    <td>library</td>
    <td>Local filesystem adapter for Flysystem.</td>
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
      <a href="https://github.com/php-http/discovery.git">php-http/discovery</a>
    </td>
    <td>composer-plugin</td>
    <td>Finds and installs PSR-7, PSR-17, PSR-18 and HTTPlug implementations</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/php-http/httplug.git">php-http/httplug</a>
    </td>
    <td>library</td>
    <td>HTTPlug, the HTTP client abstraction for PHP</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/php-http/promise.git">php-http/promise</a>
    </td>
    <td>library</td>
    <td>Promise used for asynchronous HTTP requests</td>
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
    <td>Modern DOM API.</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/PhpGt/PropFunc.git">phpgt/propfunc</a>
    </td>
    <td>library</td>
    <td>Property accessor and mutator functions.</td>
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
      <a href="https://github.com/php-fig/cache.git">psr/cache</a>
    </td>
    <td>library</td>
    <td>Common interface for caching libraries</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/php-fig/clock.git">psr/clock</a>
    </td>
    <td>library</td>
    <td>Common interface for reading the clock.</td>
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
    <td>PSR-17: Common interfaces for PSR-7 HTTP message factories</td>
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
      <a href="https://github.com/MyIntervals/PHP-CSS-Parser.git">sabberworm/php-css-parser</a>
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
      <a href="https://github.com/Seldaek/signal-handler.git">seld/signal-handler</a>
    </td>
    <td>library</td>
    <td>Simple unix signal handler that silently fails where signals are not supported for easy cross-platform development</td>
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
      <a href="https://github.com/Spomky-Labs/otphp.git">spomky-labs/otphp</a>
    </td>
    <td>library</td>
    <td>A PHP library for generating one time passwords according to RFC 4226 (HOTP Algorithm) and the RFC 6238 (TOTP Algorithm) and compatible with Google Authenticator</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/Spomky-Labs/pki-framework.git">spomky-labs/pki-framework</a>
    </td>
    <td>library</td>
    <td>A PHP framework for managing Public Key Infrastructures. It comprises X.509 public key certificates, attribute certificates, certification requests and certification path validation.</td>
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
      <a href="https://github.com/symfony/http-client.git">symfony/http-client</a>
    </td>
    <td>library</td>
    <td>Provides powerful methods to fetch HTTP resources synchronously or asynchronously</td>
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
      <a href="https://github.com/symfony/intl.git">symfony/intl</a>
    </td>
    <td>library</td>
    <td>Provides access to the localization data of the ICU library</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/symfony/mailer.git">symfony/mailer</a>
    </td>
    <td>library</td>
    <td>Helps sending emails</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/symfony/mime.git">symfony/mime</a>
    </td>
    <td>library</td>
    <td>Allows manipulating MIME messages</td>
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
      <a href="https://github.com/symfony/polyfill-intl-grapheme.git">symfony/polyfill-intl-grapheme</a>
    </td>
    <td>library</td>
    <td>Symfony polyfill for intl's grapheme_* functions</td>
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
      <a href="https://github.com/symfony/polyfill-php82.git">symfony/polyfill-php82</a>
    </td>
    <td>library</td>
    <td>Symfony polyfill backporting some PHP 8.2+ features to lower PHP versions</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/symfony/polyfill-php83.git">symfony/polyfill-php83</a>
    </td>
    <td>library</td>
    <td>Symfony polyfill backporting some PHP 8.3+ features to lower PHP versions</td>
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
      <a href="https://github.com/symfony/string.git">symfony/string</a>
    </td>
    <td>library</td>
    <td>Provides an object-oriented API to strings and deals with bytes, UTF-8 code points and grapheme clusters in a unified way</td>
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
      <a href="https://github.com/symfony/var-exporter.git">symfony/var-exporter</a>
    </td>
    <td>library</td>
    <td>Allows exporting any serializable PHP data structure to plain PHP code</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/symfony/yaml.git">symfony/yaml</a>
    </td>
    <td>library</td>
    <td>Loads and dumps YAML files</td>
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
      paypal/module-braintree-customer-balance
    </td>
    <td>magento2-module</td>
    <td>N/A</td>
  </tr>
  <tr>
    <td>
      paypal/module-braintree-gift-card
    </td>
    <td>magento2-module</td>
    <td>N/A</td>
  </tr>
  <tr>
    <td>
      paypal/module-braintree-gift-card-account
    </td>
    <td>magento2-module</td>
    <td>N/A</td>
  </tr>
  <tr>
    <td>
      paypal/module-braintree-gift-wrapping
    </td>
    <td>magento2-module</td>
    <td>N/A</td>
  </tr>
  <tr>
    <td>
      paypal/module-braintree-graph-ql
    </td>
    <td>magento2-module</td>
    <td>N/A</td>
  </tr>
  <tr>
    <td>
      paypal/module-braintree-reward
    </td>
    <td>magento2-module</td>
    <td>N/A</td>
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

### Proprietary

<table>
  <thead>
    <tr>
      <th>Name</th>
      <th>Type</th>
      <th>Description</th>
    </tr>
  </thead>
  <tbody>
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
