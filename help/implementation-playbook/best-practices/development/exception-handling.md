---
title: Exception handling best practices
description: Learn the recommended methods for logging exceptions when developing Adobe Commerce projects.
feature: Best Practices
role: Developer
---

# Exception handling best practices

Exceptions that are not written to the `exception.log` file with the exception model as context are not recognized and analyzed correctly in New Relic or other PSR-3 monolog-compatible log storage. Logging only a part of the exception (or logging it to the wrong file) leads to bugs in production when exceptions are overlooked.

## Correct exception handling

The following examples demonstrate correct exception handling.

### ![correct](../../../assets/yes.svg) Write to the exception log

Exceptions should always be logged in this way, regardless of further actions, unless there is a compelling reason not to.

This approach automatically saves the `$e->getMessage` to the log message and the `$e` object to the context, following the [PSR-3 context standard](https://www.php-fig.org/psr/psr-3/#13-context). This is done in `\Magento\Framework\Logger\Monolog::addRecord`.

```php
try {
    $this->productRepository->getById($sku);
} catch (Exception $e) {
    $this->logger->critical($e);
}
```

### ![correct](../../../assets/yes.svg) Mute signals

Some exceptions should not be logged because the exception is part of the intended operational flow. No follow-up action is necessary when the exception is encountered and so does not need to be logged and analyzed when it occurs. Add a comment with the reason for muting signals and that it is intentional. Combine with `phpcs:ignore`.

```php
try {
    $this->productRepository->deleteById($sku);
} catch (NoSuchEntityException $e) { // phpcs:ignore Magento2.CodeAnalysis.EmptyBlock.DetectedCatch
    // Product already removed
}
```

### ![correct](../../../assets/yes.svg) Downgrade exceptions

This approach follows the [PSR-3 context standard](https://www.php-fig.org/psr/psr-3/#13-context).

```php
try {
    $this->productRepository->getById($sku);
} catch (Exception $e) {
    $this->logger->debug($e->getMessage(), ['exception' => $e]);
}
```

### ![correct](../../../assets/yes.svg) Logging always comes first

This best practice prevents cases where another exception or fatal error is thrown before writing to the log.

```php
try {
    $this->productRepository->getById($sku);
} catch (Exception $e) {
    $this->logger->critical($e);
    $this->alternativeProcedure();
}
```

### ![correct](../../../assets/yes.svg) Log messages and the entire exception trace

This approach follows the [PSR-3 context standard](https://www.php-fig.org/psr/psr-3/#13-context).

```php
try {
    $this->productRepository->getById($sku);
} catch (Exception $e) {
    $this->logger->critical($e->getMessage(), ['exception' => $e, 'trace' => $e->getTrace()]);
}
```

## Incorrect exception handling

The following examples demonstrate incorrect exception handling.

### ![incorrect](../../../assets/no.svg) Logic before logging

This can lead to another exception or fatal error, which prevents the exception from being logged and should be replaced by [correct example](#correct-logging-always-comes-first).

```php
try {
    $this->productRepository->deleteById($sku);
} catch (NoSuchEntityException $e) {
    $this->alternativeProcedure();
    $this->logger->critical($e);
}
```

### ![incorrect](../../../assets/no.svg) Empty `catch`

This can be a sign of unintended muting and should be replaced by the [correct example](#correct-mute-signals).

```php
try {
    $this->productRepository->deleteById($sku);
} catch (NoSuchEntityException $e) {
}
```

### ![incorrect](../../../assets/no.svg) Double localization

If the caught localized exception is not translated yet, the problem should be resolved at the place where it is thrown the first time.

```php
try {
    $this->productRepository->getById($sku);
} catch (LocalizedException $e) {
    throw new LocalizedException(__($e->getMessage()));
}
```

### ![incorrect](../../../assets/no.svg) Log messages and trace to different log files

Logging the trace as a string to a log file introduces line breaks in the message, which is not compliant with PSR-3. The exception, including stack trace, must be part of the message context so that it is correctly saved with the massage in New Relic or other PSR-3 monolog-compatible log storage. This should be replaced by correct examples shown in [Write to the exception log](#correct-write-to-the-exception-log) or [Downgrade exceptions](#correct-downgrade-exceptions).

```php
try {
    $this->productRepository->getById($sku);
} catch (\Exception $e) {
    $this->logger->error($e->getMessage());
    $this->logger->debug($e->getTraceAsString());
}
```

### ![incorrect](../../../assets/no.svg) Downgrade exceptions without context

The exception is downgraded to an error, which does not allow an object to be passed, but only a string, hence the `getMessage()`. This causes the trace to be lost and should be replaced by the correct examples shown in [Write to the exception log](#correct-write-to-the-exception-log) or [Downgrade exceptions](#correct-downgrade-exceptions).

```php
try {
    $this->productRepository->getById($sku);
} catch (\Exception $e) {
    $this->logger->error($e->getMessage());
}
```

### ![incorrect](../../../assets/no.svg) Log only the message to the exception log

Instead of passing the object `$e`, only `$e->getMessage()` is passed. This causes the trace to be lost and should be replaced by the correct examples shown [Write to the exception log](#correct-write-to-the-exception-log) or [Downgrade exceptions](#correct-downgrade-exceptions).

```php
try {
    $this->productRepository->getById($sku);
} catch (\Exception $e) {
    $this->logger->critical($e->getMessage());
}
```

### ![incorrect](../../../assets/no.svg) Missing `// phpcs:ignore Magento2.CodeAnalysis.EmptyBlock.DetectedCatch`

Omitting the `phpcs:ignore` line triggers a warning in PHPCS and should not pass your CI. This should be replaced by the correct example shown in [Mute signals](#correct-mute-signals).

```php
try {
    $this->productRepository->deleteById($sku);
} catch (NoSuchEntityException $e) {
    // Product already removed
}
```
