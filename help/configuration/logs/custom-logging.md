---
title: Custom logging
description: Learn how to investigate errors using custom logging.
feature: Configuration, Logs
exl-id: 6c94ebcf-70df-4818-a17b-32512eba516d
---
# Custom logging overview

Logs provide visibility into system processes; for example, debugging information that assists you with understanding when an error occurred or what lead to the error.

This topic focuses on file-based logging, although Commerce provides the flexibility to store logs in the database as well.

Adobe recommends using centralized application logging for the following reasons:

- It allows storage of logs on a server other than the application server and decreases disk I/O operations, simplifying support of the application server.

- It makes processing of logs data more effective by using special tools—such as [Logstash](https://www.elastic.co/products/logstash), [Logplex](https://devcenter.heroku.com/articles/logplex), or [fluentd](https://www.fluentd.org/)—without impact to a production server.

    >[!INFO]
    >
    >Adobe does not recommend or endorse any particular logging solution.

## PSR-3 compliance

The [PSR-3 standard](https://docs.laminas.dev/laminas-log/) defines a common PHP interface for logging libraries. The main goal of PSR-3 is to allow libraries to receive a `Psr\Log\LoggerInterface` object and write logs to it in a simple and universal way.

This provides the ability for the implementation to be replaced easily without worry that such replacement may break the application code. It also guarantees a custom component will work even when the log implementation is changed in a future version of the system.

## Monolog

Commerce 2 complies with the PSR-3 standard. By default, Commerce uses [Monolog](https://github.com/Seldaek/monolog). Monolog implemented as a preference for `Psr\Log\LoggerInterface` in the Commerce application [`di.xml`](https://github.com/magento/magento2/blob/2.4/app/etc/di.xml#L9).

Monolog is a popular PHP logging solution with a wide range of handlers that enable you to build advanced logging strategies. Following is a summary of how Monolog works.

A Monolog _logger_ is a channel that has its own set of _handlers_. Monolog has many handlers, including:

- Log to files and syslog
- Send alerts and e-mails
- Log specific servers and networked logging
- Logging in development (integration with FireBug and Chrome Logger, among others)
- Log to the database

Each handler can either process the input message and stop propagation or pass the control to the next handler in a chain.

Log messages can be processed in many different ways. For example, you can store all debug information into a file on disk, put the messages with higher log levels into a database, and finally send messages with log level "critical" by e-mail.

Other channels can have a different set of handlers and logic.

