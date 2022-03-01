---
title: "[!DNL Upgrade Compatibility Tool] Developer Information"
description: Customize the [!DNL Upgrade Compatibility Tool] using the API index integration.
---

# [!DNL Upgrade Compatibility Tool] developer information

{{commerce-only}}

This topic contains information for developers who work closely with the Adobe Commerce code and want to learn detailed information about the [!DNL Upgrade Compatibility Tool]. You can use this knowledge to customize the tool's components.

## Adobe Commerce API index integration

Adobe Commerce API index integration is an internal integration solution that encompasses a set of tools to explore Adobe Commerce extensions developed by Adobe, Adobe Commerce Partners, and third-party vendors based on static code analysis.

The integration with the Adobe Commerce API index is done through:

`sut\Domain\MRay\MRayInterface`

It is implemented through the `config/services.yaml` file. Its value decides where the response of methods `api()` and `modules()` comes from.

Edit this file to customize the response according to your installation. Replace the value assigned to `sut\Domain\MRay\MRayInterface`:

### Example of a custom value

`sut\Domain\MRay\MRayInterface : "@sut_mray_mock"`

In the previous example, the [!DNL Upgrade Compatibility Tool] uses `@sut_mray_mock` as the `MRayInterface` implementation. The responses from the `api()` and `modules()` methods come from the following files:

- `dev/mray_mock_files/api.json`
- `dev/mray_mock_files/modules.json`

>[!NOTE]
>
>When you change the `services.yaml` file, delete the `var/cache/` folder to correctly apply the changes.

## Unit testing

To run the unit tests, execute one of the following commands:

- `vendor/bin/phpunit tests/unit`
- `vendor/bin/phpunit -c tests/unit/phpunit.xml.dist tests/unit`
- `vendor/bin/phpunit -c tests/unit/phpunit.xml.dist --testsuite=unit-tests`

## Integration testing

To run the integration tests, execute one of the following commands:

- `vendor/bin/phpunit -c tests/integration/phpunit.xml.dist tests/integration`
- `vendor/bin/phpunit -c tests/integration/phpunit.xml.dist --testsuite=integration-tests`

## Acceptance testing

1. Before executing acceptance tests, you must set the Adobe Commerce URL in the `phpunit` configuration file.
1. Copy the default `tests/acceptance/phpunit.xml` file (without the .dist suffix).
1. Change the `TESTS_BASE_URL` value to point to the Adobe Commerce URL that you want to test.
1. To run the acceptance tests, execute one of the following commands:

   - `vendor/bin/phpunit -c tests/acceptance/phpunit.xml tests/acceptance`
   - `vendor/bin/phpunit -c tests/acceptance/phpunit.xml --testsuite=acceptance-tests`

## GraphQL unit testing and ESLint code analysis

### Requirements

>[!NOTE]
>
>You must have Node.js on your system, see the [Node.js documentation](https://nodejs.dev/learn/how-to-install-nodejs).

The following instructions are for MacOS systems:

1. Open a terminal and navigate to the root directory of the project.
1. Install project dependencies:

   ```bash
   npm install
   ```

### GraphQL unit testing

The [Jest](https://jestjs.io/docs/getting-started) framework was used to create these JS unit tests:

The tests are inside `dev/tests/Js`.

The string schemas for testing are inside `dev/tests/Acceptance/_files/graphql_schemas`.

Run unit tests or `jest` as follows:

```bash
./node_modules/.bin/jest --verbose --rootDir=dev/tests/Js/
```

### ESLint code analysis

[ESLint](https://eslint.org/docs/user-guide/getting-started) is a static code analysis tool for identifying problematic patterns found in JavaScript code, with the goal of making code more consistent and avoiding bugs.

Run `eslint` code analysis as follows:

```bash
./node_modules/.bin/eslint -c dev/tests/Static/.eslintrc --rulesdir vendor/magento/magento-coding-standard/eslint/rules path/to/analyse
```

## Complexity score

The **complexity score** is a figure that indicates how difficult an upgrade from the current version to the new one might be. Lower numbers indicate easier upgrades.

>[!NOTE]
>
>Complexity scores range between 0 and ∞.

This score is based on the results extracted from the analysis:

- Number of issues identified
- Severity of issues identified

The [!DNL Upgrade Compatibility Tool] calculates this score according to the complexity score formula below.

### Complexity score formula

`Complexity Score = (Critical issues * 3) + (Errors *2) + Warnings`

>[!WARNING]
>
>These are absolute values.
