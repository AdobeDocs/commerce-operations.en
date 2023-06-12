# Cloud packages for Adobe Commerce

<!-- The 'packages' variable contains the 'packages' node of the '_data/codebase/cloud/composer_lock_beta.json' file
 -->

<!-- The 'packages-dev' variable contains the 'packages-dev' node of the '_data/codebase/cloud/composer_lock_beta.json' file
 -->

<!-- The 'product' variable contains data of the 'magento/magento-cloud-metapackage' package
 -->

<!-- The edition variable contains `cloud` value from the _data/names.yml file
 -->

Adobe Commerce on cloud infrastructure uses Composer to manage PHP packages.

The `composer.json` file declares the list of packages, whereas the `composer.lock` file stores a complete list of the packages (a full version of each package and its dependencies) used to build an installation of Adobe Commerce or Magento Open Source.

The following reference documentation is generated from the `composer.lock` file, and it covers required packages included in Adobe Commerce on cloud infrastructure 2.4.7.

## Dependencies

`magento/magento-cloud-metapackage 2.4.7` has the following dependencies:

```config
fastly/magento2: ^1.2.34
magento/ece-tools: ^2002.1.0
magento/module-paypal-on-boarding: ~100.5.0
magento/product-enterprise-edition: >=2.4.7 <2.4.8
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
      elasticsearch/elasticsearch
    </td>
    <td>library</td>
    <td>PHP Client for Elasticsearch</td>
  </tr>
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
      <a href="https://github.com/colinmollenhour/php-redis-session-abstract.git">colinmollenhour/php-redis-session-abstract</a>
    </td>
    <td>library</td>
    <td>A Redis-based session handler with optimistic locking</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/fastly/fastly-magento2.git">fastly/magento2</a>
    </td>
    <td>magento2-module</td>
    <td>Fastly CDN Module for Magento 2.4.x</td>
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
      <a href="https://github.com/laminas/laminas-crypt.git">laminas/laminas-crypt</a>
    </td>
    <td>library</td>
    <td>Strong cryptography tools and password hashing</td>
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
      <a href="https://github.com/laminas/laminas-file.git">laminas/laminas-file</a>
    </td>
    <td>library</td>
    <td>Locate PHP classfiles</td>
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
      <a href="https://github.com/laminas/laminas-mail.git">laminas/laminas-mail</a>
    </td>
    <td>library</td>
    <td>Provides generalized functionality to compose and send both text and MIME-compliant multipart e-mail messages</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/laminas/laminas-math.git">laminas/laminas-math</a>
    </td>
    <td>library</td>
    <td>Create cryptographically secure pseudo-random numbers, and manage big integers</td>
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
      <a href="https://github.com/laminas/laminas-oauth.git">laminas/laminas-oauth</a>
    </td>
    <td>library</td>
    <td></td>
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
      <a href="https://github.com/doctrine/annotations.git">doctrine/annotations</a>
    </td>
    <td>library</td>
    <td>Docblock Annotations Parser</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/doctrine/deprecations.git">doctrine/deprecations</a>
    </td>
    <td>library</td>
    <td>A small layer on top of trigger_error(E_USER_DEPRECATED) or PSR-3 logging with options to disable all deprecations or selectively for packages.</td>
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
      <a href="https://github.com/FriendsOfPHP/proxy-manager-lts.git">friendsofphp/proxy-manager-lts</a>
    </td>
    <td>library</td>
    <td>Adding support for a wider range of PHP versions to ocramius/proxy-manager</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/bzikarsky/gelf-php.git">graylog2/gelf-php</a>
    </td>
    <td>library</td>
    <td>A php implementation to send log-messages to a GELF compatible backend like Graylog2.</td>
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
      <a href="https://github.com/illuminate/collections.git">illuminate/collections</a>
    </td>
    <td>library</td>
    <td>The Illuminate Collections package.</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/illuminate/config.git">illuminate/config</a>
    </td>
    <td>library</td>
    <td>The Illuminate Config package.</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/illuminate/contracts.git">illuminate/contracts</a>
    </td>
    <td>library</td>
    <td>The Illuminate Contracts package.</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/illuminate/macroable.git">illuminate/macroable</a>
    </td>
    <td>library</td>
    <td>The Illuminate Macroable package.</td>
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
      <a href="https://github.com/briannesbitt/Carbon.git">nesbot/carbon</a>
    </td>
    <td>library</td>
    <td>An API extension for DateTime that supports 281 different languages.</td>
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
      <a href="https://github.com/php-fig/simple-cache.git">psr/simple-cache</a>
    </td>
    <td>library</td>
    <td>Common interfaces for simple caching</td>
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
    <td>Provides a PHP replacement layer for the C intl extension that includes additional data from the ICU library</td>
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
      <a href="https://github.com/symfony/proxy-manager-bridge.git">symfony/proxy-manager-bridge</a>
    </td>
    <td>symfony-bridge</td>
    <td>Provides integration for ProxyManager with various Symfony components</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/symfony/serializer.git">symfony/serializer</a>
    </td>
    <td>library</td>
    <td>Handles serializing and deserializing data structures, including object graphs, into array structures or other formats like XML and JSON.</td>
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
      <a href="https://github.com/symfony/translation.git">symfony/translation</a>
    </td>
    <td>library</td>
    <td>Provides tools to internationalize your application</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/symfony/translation-contracts.git">symfony/translation-contracts</a>
    </td>
    <td>library</td>
    <td>Generic abstractions related to translation</td>
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
      <a href="https://github.com/symfony/yaml.git">symfony/yaml</a>
    </td>
    <td>library</td>
    <td>Loads and dumps YAML files</td>
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
  <tr>
    <td>
      <a href="https://github.com/zordius/lightncandy.git">zordius/lightncandy</a>
    </td>
    <td>library</td>
    <td>An extremely fast PHP implementation of handlebars ( http://handlebarsjs.com/ ) and mustache ( http://mustache.github.io/ ).</td>
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
