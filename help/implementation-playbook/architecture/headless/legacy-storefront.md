---
title: Coupled Storefront Architecture
description: Learn about what a coupled storefront means within the context of headless Adobe Commerce architectures.
exl-id: 978e6853-4fbe-45b8-8e46-f491c6724fc6
---
# Coupled (legacy) Adobe Commerce storefront architecture

The current default deployment option for most commercial customers includes: 

- 100% feature support across B2B & B2C 
- Mature reference theme (Luma) that can be quickly deployed/customized 
- Mature SI partner implementation expertise 
- Fully compatible with commerce capabilities like Page Builder or Staging & Preview 
- Broad compatibility with extensions in Adobe Commerce Marketplace

![Diagram showing a coupled Adobe Commerce storefront architecture](../../../assets/playbooks/coupled-storefront-architecture.svg)

## Cons of legacy storefront

- **Not headless**—All part of the monolithic Adobe Commerce application. No separation of business logic and processes between the frontend and the backend.

- **Not PWA**—Although theme is responsive, site performance lags far behind best-in-class PWA.

- **Front-end architecture (Adobe Commerce UI components)**—Adobe Commerce/PHP specialists to build on legacy storefront.

Before we get into headless options, let’s start with the more familiar storefront architecture. If headless is decoupled, this would be the coupled storefront architecture, most commonly seen with our Luma demos.

This is where the storefront capabilities are tightly integrated with the core commerce services, not separated by that GraphQL API layer. So, there is a lot of business logic coupled into that theme. This approach is not headless, and it’s not PWA.

This is currently the most common option merchants use because it has 100% feature support with both B2B and B2C Commerce capabilities. The community is familiar with it, there is a mature ecosystem of expertise around it, and it has broad compatibility with Adobe Commerce Marketplace extensions.

However, it lacks the benefits we talked about earlier. Without separation of layers, there are many dependencies and potential points of failure when changes are made. It’s not as performant as a well-implemented PWA and if a merchant doesn’t have expertise in Adobe Commerce or PHP development, they will have to go find those resources.
