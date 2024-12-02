---
title: Password hashing
description: Read about password hashing strategies and implementation.
feature: Configuration, Security
exl-id: 2865d041-950a-4d96-869c-b4b35f5c4120
---
# Password hashing

Currently, Commerce uses its own strategy for password hashing, based on different native PHP hashing algorithms. Commerce supports multiple algorithms like `MD5`, `SHA256`, or `Argon 2ID13`. If the Sodium extension is installed (installed by default in PHP 7.3), then `Argon 2ID13` is chosen as the default hashing algorithm. Otherwise, `SHA256` is the default. Commerce can use the native PHP `password_hash` function with Argon 2i algorithm support.

To avoid compromising older passwords that have been hashed with outdated algorithms like `MD5`, the current implementation provides a method to upgrade the hash without changing the original password. In general, the password hash has the following format:

```text
password_hash:salt:version<n>:version<n>
```

Where `version<n>`...`version<n>` represents all the hash algorithms versions used on the password. Also, the salt is always stored together with the password hash, so we can restore the entire chain of algorithms. An example looks like:

```text
a853b06f077b686f8a3af80c98acfca763cf10c0e03597c67e756f1c782d1ab0:8qnyO4H1OYIfGCUb:1:2
```

The first part represents the password hash. The second, `8qnyO4H1OYIfGCUb` is the salt. The last two are the different hash algorithms: 1 is `SHA256` and 2 is `Argon 2ID13`. This means that the customer's password was originally hashed with `SHA256` and after that, the algorithm was updated with `Argon 2ID13` and the hash was rehashed with Argon.

## Upgrade hash strategy

Consider what the hash upgrade mechanism looks like. Assume that originally, a password was hashed with `MD5` and then the algorithm was updated multiple times with Argon 2ID13. The following diagram shows the hash upgrade flow.

![Hash upgrade workflow](../../assets/configuration/hash-upgrade-algorithm.png)

Each hash algorithm uses the previous password hash to generate a new hash. Commerce does not store the original, raw password.

![Hash upgrade strategy](../../assets/configuration/hash-upgrade-strategy.png)

As discussed above, the password hash might have multiple hash versions applied to the original password.
Here is how the password verification mechanism works during a customer authentication.

```php
def verify(password, hash):
    restored = password

    hash_map = extract(hash)
    # iterate through all versions specified in the received hash [md5, sha256, argon2id13]
    for version in hash_map.get_versions():
        # generate new hash based on password/previous hash, salt and version
        restored = hash_func(salt . restored, version)

    # extract only password hash from the hash:salt:version chain
    hash = hash_map.get_hash()

    return compare(restored, hash)
```

Since Commerce stores all used password hashes versions together with the password hash, we can restore the whole hash chain during the password verification. The hash verification mechanism is similar to the hash upgrade strategy: based on versions stored together with the password hash, the algorithm generates hashes from the provided password and returns the comparison result between hashed password and the database-stored hash.

## Implementation

The `\Magento\Framework\Encryption\Encryptor` class is responsible for password hash generation and verification. The [`bin/magento customer:hash:upgrade`](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/cli-reference/commerce-on-premises#customerhashupgrade) command upgrades a customer password hash to the latest hash algorithm.
