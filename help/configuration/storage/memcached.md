---
title: Use memcached for session storage
description: Learn about using memcached for Commerce session storage.
feature: Configuration, Cache, Storage
exl-id: 24077929-e732-4579-8d7d-717a4902fc64
---
# Use memcached for session storage

Memcached is a general-purpose, distributed memory caching system. It is often used to speed up dynamic database-driven websites by caching data and objects in RAM to reduce the number of times an external data source (such as a database or API) must be read.

Memcached provides a large hash table that can be distributed across multiple machines. When the table is full, subsequent inserts cause older data to be purged in least recently used (LRU) order. The size of this hash table is often very large. (Source: [memcached.org](https://www.memcached.org/))

Commerce uses memcached for session storage but not for page caching. For page caching, we recommend [Redis](../cache/redis-pg-cache.md) or [Varnish](../cache/config-varnish.md).

**To configure Commerce to use memcached**:

1. Open `<your install dir>/app/etc/env.php` in a text editor.
1. Locate the following:

   ```php
   'session' =>
       array (
       'save' => 'files',
   ),
   ```

1. Change it as follows:

   ```php
   'session' =>
       array (
         'save' => 'memcached',
         'save_path' => '<memcache ip or host>:<memcache port>'
   ),
   ```

   memcached has optional startup parameters that are beyond the scope of this guide. You can find more information about them in the [memcached](https://www.php.net/manual/en/memcached.sessions.php) documentation, source code, and changelogs.

1. Continue with the next section.

**To verify memcached works with Commerce**:

1. Delete the contents of the following directories under your Commerce installation directory:

   ```bash
   rm -rf var/cache/* var/page_cache/* var/session/*
   ```

1. Go to any page on the storefront.

1. Log in to the Admin and browse to several pages.

   If no errors display, congratulations! memcached is working! You can optionally look at memcached storage as discussed in the next step.

   If errors display (such as an HTTP 500 (Internal Server Error)), enable developer mode and diagnose the issue. Make sure that memcached is running, configured properly, and that `env.php` has no syntax errors.

1. (Optional.) Use Telnet to look at memcached storage.

   ```bash
   telnet <memcached host or ip> <memcached port>
   ```

   ```bash
   stats items
   ```

   The results display similar to the following:

   ```
   STAT items:3:number 1
   STAT items:3:age 7714
   STAT items:3:evicted 0
   STAT items:3:evicted_nonzero 0
   STAT items:3:evicted_time 0
   STAT items:3:outofmemory 0
   STAT items:3:tailrepairs 0

   [Look at the keys in more detail](https://darkcoding.net/software/memcached-list-all-keys/)
   ```
