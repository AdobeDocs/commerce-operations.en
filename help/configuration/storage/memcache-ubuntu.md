---
title: Set up memcached on Ubuntu
description: Learn how to install and configure memcached on Ubuntu for Adobe Commerce caching. Discover setup instructions and optimization tips.
feature: Configuration, Cache, Storage
exl-id: 831193d2-3e81-472c-9b87-78a8d52959b4
---
# Set up memcached on Ubuntu

This section provides instructions to install memcached on Ubuntu.

>[!INFO]
>
>Adobe recommends using memcached version 3.0.5 or later.

Because PHP has no native support for memcache, you must install an extension for PHP to use it. There are two PHP extensions available and it is important to decode which to use:

- `memcache` (_no d_)—an older but popular extension that is not maintained regularly. 
The `memcache` extension currently _does not_ work with PHP 7. See [PHP documentation for memcache](https://www.php.net/manual/en/book.memcache.php).

   The exact name is `php5-memcache` for Ubuntu.

- `memcached` (_with a `d`_)—a newer and maintained extension that is compatible with PHP 7. See [PHP documentation for memcached](https://www.php.net/manual/en/book.memcached.php).

   The exact name is `php5-memcached` for Ubuntu.

## Install and configure memcached on Ubuntu

**To install and configure memcached on Ubuntu**:

1. As a user with `root` privileges, enter the following command:

   ```bash
   apt-get -y update
   ```

   ```bash
   apt-get -y install php5-memcached memcached
   ```

1. Change the memcached configuration setting for `CACHESIZE` and `-l`:

   1. Open `/etc/memcached.conf` in a text editor.
   1. Locate the `-m` parameter.
   1. Change its value to at least `1GB`
   1. Locate the `-l` parameter.
   1. Change its value to `127.0.0.1` or `localhost`
   1. Save your changes to `memcached.conf` and exit the text editor.
   1. Restart memcached.

      ```bash
      service memcached restart
      ```

1. Restart your web server.

   For Apache, `service apache2 restart`

1. Continue with the next section.

## Verify memcached works before installing Magento

Adobe recommends testing memcached to make sure it works before you install Commerce. Doing so takes only a few minutes and can simplify troubleshooting later.

### Verify memcached is recognized by the web server

To verify that memcached is recognized by the web server:

1. Create a `phpinfo.php` file in the web server's docroot:

   ```php
   <?php
   // Show all information, defaults to INFO_ALL
   phpinfo();
   ```

1. Go to that page in your web browser. For example:

   ```http
   http://192.0.2.1/phpinfo.php
   ```

1. Make sure memcached displays as follows:

   ![Confirm memcached is recognized by the web server](../../assets/configuration/memcache.png)

   Verify you are using memcached version 3.0.5 or later.

   If memcached does not display, restart the web server and refresh the browser page. If it still does not display, verify you installed the `php-pecl-memcached` extension.

### Verify memcached can cache data

This test uses a PHP script to verify that memcached can store and retrieve cache data.

For more information about this test, see [How To Install and Use Memcache on Ubuntu tutorial](https://www.digitalocean.com/community/tutorials/how-to-install-and-use-memcache-on-ubuntu-14-04).

Create `cache-test.php` in the web server's docroot with the following contents:

```php
$meminstance = new Memcached();

$meminstance->addServer("<memcached hostname or ip>", <memcached port>);

$result = $meminstance->get("test");

if ($result) {
    echo $result;
} else {
    echo "No matching key found. Refresh the browser to add it!";
    $meminstance->set("test", "Successfully retrieved the data!") or die("Could not save anything to memcached...");
}
```

Where `<memcached hostname or ip>` is either `localhost`, `127.0.0.1`, or the memcache hostname or IP address. The `<memcached port>` is the listen port; by default, `11211`.

Go to that page in a web browser. For example

```http
http://192.0.2.1/cache-test.php
```

The first time you go to the page, the following displays: `No matching key found. Refresh the browser to add it!`

Refresh the browser. The message changes to `Successfully retrieved the data!`

Finally, you can view the memcache keys using Telnet:

```bash
telnet localhost <memcache port>
```

At the prompt, enter

```shell
stats items
```

The result is similar to the following:

```
STAT items:2:number 1
STAT items:2:age 106
STAT items:2:evicted 0
STAT items:2:evicted_nonzero 0
STAT items:2:evicted_time 0
STAT items:2:outofmemory 0
STAT items:2:tailrepairs 0
STAT items:2:reclaimed 0
STAT items:2:expired_unfetched 0
STAT items:2:evicted_unfetched 0
```

Flush memcached storage and quit Telnet:

```shell
flush_all
```

```shell
quit
```

[Additional information about the Telnet test](https://darkcoding.net/software/memcached-list-all-keys/)
