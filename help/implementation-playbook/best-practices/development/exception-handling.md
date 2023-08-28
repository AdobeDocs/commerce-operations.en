---
title: Exception handling best practices
description: Learn the recommended methods for logging exceptions when developing Adobe Commerce projects.
feature: Best Practices
role: Developer
---

# Exception handling best practices

If an exception is not written to the `exception.log` file with the exception model as context, it is not recognized and analyzed correctly in New Relic or other PSR-3 monolog-compatible log storage. Logging only a part of the exception (or logging it to the wrong file) leads to bugs in production when exceptions are overlooked.

## Correct exception handling

The following checklist provides examples to demonstrate correct exception handling.

### ![correct](../../../assets/yes.svg) Write to the exception log

Write to the exception log using the following pattern, regardless of further actions, unless there is a compelling reason not to.

```php
try {
    $this->productRepository->getById($sku);
} catch (Exception $e) {
    $this->logger->critical($e);
}
```

This approach automatically saves the `$e->getMessage` to the log message and the `$e` object to the context, following the [PSR-3 context standard](https://www.php-fig.org/psr/psr-3/#13-context). This is done in `\Magento\Framework\Logger\Monolog::addRecord`.

### ![correct](../../../assets/yes.svg) Mute signals

Mute signals by not logging exceptions that are part of the intended operations flow. No follow-up action is necessary when the exception is encountered, so it does not need to be logged and analyzed when it occurs. Add a comment indicating the reason for muting signals and that it is intentional. Combine with `phpcs:ignore`.

```php
try {
    $this->productRepository->deleteById($sku);
} catch (NoSuchEntityException $e) { // phpcs:ignore Magento2.CodeAnalysis.EmptyBlock.DetectedCatch
    // Product already removed
}
```

### ![correct](../../../assets/yes.svg) Downgrade exceptions

Downgrade exceptions by following the [PSR-3 context standard](https://www.php-fig.org/psr/psr-3/#13-context).

```php
try {
    $this->productRepository->getById($sku);
} catch (Exception $e) {
    $this->logger->debug($e->getMessage(), ['exception' => $e]);
}
```

### ![correct](../../../assets/yes.svg) Logging always comes first

As a best practice logging always comes first in the code to prevent cases where another exception or fatal error is thrown before writing to the log.

```php
try {
    $this->productRepository->getById($sku);
} catch (Exception $e) {
    $this->logger->critical($e);
    $this->alternativeProcedure();
}
```

### ![correct](../../../assets/yes.svg) Log messages and the entire exception trace

Log messages and the entire exception trace by following the [PSR-3 context standard](https://www.php-fig.org/psr/psr-3/#13-context).

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

Logic before logging can lead to another exception or fatal error, which prevents the exception from being logged and should be replaced by [correct example](#correct-logging-always-comes-first).

```php
try {
    $this->productRepository->deleteById($sku);
} catch (NoSuchEntityException $e) {
    $this->alternativeProcedure();
    $this->logger->critical($e);
}
```

### ![incorrect](../../../assets/no.svg) Empty `catch`

Empty `catch` blocks can be a sign of unintended muting and should be replaced by the [correct example](#correct-mute-signals).

```php
try {
    $this->productRepository->deleteById($sku);
} catch (NoSuchEntityException $e) {
}
```

### ![incorrect](../../../assets/no.svg) Double localization

If the caught localized exception is not translated yet, resolve the problem at the place where the exception is thrown the first time.

```php
try {
    $this->productRepository->getById($sku);
} catch (LocalizedException $e) {
    throw new LocalizedException(__($e->getMessage()));
}
```

### ![incorrect](../../../assets/no.svg) Log messages and trace to different log files

The following code incorrectly logs the stack trace for an exception as a string to a log file. 

```php
try {
    $this->productRepository->getById($sku);
} catch (\Exception $e) {
    $this->logger->error($e->getMessage());
    $this->logger->debug($e->getTraceAsString());
}
```

This approach introduces line breaks in the message, which is not compliant with PSR-3. The exception, including stack trace, must be part of the message context to ensure that it is saved correctly with the message in New Relic or other PSR-3 monolog-compatible log storage.

Fix this problem by replacing the code following the correct examples shown in [Write to the exception log](#correct-write-to-the-exception-log) or [Downgrade exceptions](#correct-downgrade-exceptions).

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
