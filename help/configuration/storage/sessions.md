---
title: Session storage location
description: Learn about session storage locations and file management in Adobe Commerce. Discover storage logic and configuration options.
feature: Configuration, Storage
exl-id: 43cab98a-5b68-492e-b891-8db4cc99184e
---
# Session storage location

This topic discusses how to locate where your session files are stored. The system uses the following logic to store session files:

- If you configured memcached, sessions are stored in RAM; see [Use memcached for session storage](memcached.md).
- If you configured Redis, sessions are stored on the Redis server; see [Use Redis for session storage](../cache/redis-session.md).
- If you are using the default file-based session storage, we store sessions in the following locations in the order shown:

  1. Directory defined in [`env.php`](#example-in-envphp)
  1. Directory defined in [`php.ini`](#example-in-phpini)
  1. `<magento_root>/var/session` directory

## Example in `env.php`

A sample snippet from `<magento_root>/app/etc/env.php` follows:

```php
 'session' => [
     'save' => 'files',
     'save_path' => '/var/www/session'
 ],
```

The preceding example stores session files in `/var/www/session`

## Example in `php.ini`

As a user with `root` privileges, open your `php.ini` file and search for the value of `session.save_path`. This identifies where sessions are stored.

## Manage session size

See the [Session management](https://experienceleague.adobe.com/en/docs/commerce-admin/systems/security/security-session-management) in the _User guide_.

## Garbage collection configuration

To clean up expired sessions, the system calls the `gc` (_garbage collection_) handler randomly according to a probability that is calculated by the `gc_probability / gc_divisor` directive. For example, if you set these directives to `1/100` respectively, it means a probability of `1%` (_probability of one call of garbage collection per 100 requests_).

The garbage collection handler uses the `gc_maxlifetime` directive—the number of seconds after which the sessions are seen as _garbage_ and potentially cleaned up.

On some operating systems (Debian/Ubuntu), the default `session.gc_probability` directive is `0`, which prevents the garbage collection handler from running.

You can overwrite the `session.gc_` directives from the `php.ini` file in the `<magento_root>/app/etc/env.php` file:

```php
 'session' => [
     'save' => 'db',
     'gc_probability' => 1,
     'gc_divisor' => 1000,
     'gc_maxlifetime' => 1440
 ],
```

The configuration varies, depending on the traffic and specific needs of the merchant's website.
