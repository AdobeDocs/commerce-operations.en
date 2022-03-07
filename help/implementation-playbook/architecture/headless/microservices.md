---
title: Adobe Commerce Microservices
description: Be able to differentiate between headless and microservices as it pertains to Adobe Commerce.
exl-id: 078e0e8e-7acc-4913-8b78-585a950f3f5e
---
# Headless and microservices

It is important not to confuse headless with microservices. A lot of the time, we hear conversations about microservices in the same sentence as headless. They are completely different things. They can be used together, but they’re completely different concepts.

A microservices architecture is a term used to describe the practice of breaking up an application into a collection of smaller, loosely coupled services. Microservices enable individual backend services to be:

- **Isolated from one another**—For example, the pricing service has no dependency on the catalog service.

- **Deployed a la carte**—Customers deploy only the parts of the application that they need.

- **Scale independently**—Resources can be assigned to high-demand services, such as inventory lookup.

- **Autonomously developed**—Can be developed and deployed independently of one another.

Microservices have nothing to do with chopping the head off of the commerce stack or the APIs. When we think about those commerce services in the core code that are in the back office of Adobe Commerce, it’s about isolating those services from one another. So, a microservices architecture is loosely breaking up all of those services like the pricing services, catalog service, and inventory service, and making each one isolated from another.

Microservices can be scaled independently and developed autonomously. Microservices are akin to a multi-tenant SaaS development process. A lot of modern multi-tenant SaaS products are developed using a multi-service approach. Even Adobe’s own SaaS products, like Order Management, the new AI-driven Product Recommendations tool, and other SaaS components of Adobe Commerce are being developed using a microservices approach. To be very clear, Adobe Commerce 2.4.x is not a microservices architecture, but rather a headless architecture.
