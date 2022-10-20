---
title: Best practices for configuring `robots.txt` and `sitemap.xml` files
description: Learn how to pass instructions about your Adobe Commerce site to web crawlers.
role: Developer
feature-set: Commerce
feature: Best Practices
---

# Best practices for configuring `robots.txt` and `sitemap.xml` files

This article provides best practices for using `robots.txt` and `sitemap.xml` files in Adobe Commerce, including configuration and security. These files instruct web robots (typically search engine robots) how to crawl pages on a website. Configuring these files can improve site performance and search engine optimization.

>[!NOTE]
>
>These best practices apply to projects using the native Adobe Commerce storefront only. They do not apply to Adobe Commerce projects that use other storefront solutions (for example, Adobe Experience Manager, headless).

## Affected products and versions

[All supported versions](../../../release/versions.md) of:

- Adobe Commerce on cloud infrastructure
- Adobe Commerce on-premises

## Adobe Commerce on cloud infrastructure

A default Adobe Commerce project contains a hierarchy that includes a single website, store, and store view. For more complex implementations, you can create additional websites, stores, and store views for a _multi-site_ storefront.

### Single-site storefronts

Follow these best practices when configuring the `robots.txt` and `sitemap.xml` files for single-site storefronts:

- Make sure that your project is using [`ece-tools`](https://devdocs.magento.com/cloud/release-notes/ece-release-notes.html) version 2002.0.12 or later.
- Use the Admin application to add content to the `robots.txt` file.

  >[!TIP]
  >
  >View the auto-generated `robots.txt` file for your store at `<domain.your.project>/robots.txt`.

- Use the Admin application to generate a `sitemap.xml` file.

  >[!IMPORTANT]
  >
  >Due to the read-only file system on Adobe Commerce on cloud infrastructure projects, you must specify the `/media/` path before generating the file.

- Use a custom Fastly VCL snippet to redirect from the root of your site to the `/media/` location for both files:

   ```vcl
   {
     "name": "sitemaprobots_rewrite",
     "dynamic": "0",
     "type": "recv",
     "priority": "90",
     "content": "if ( req.url.path ~ \"^/?sitemap.xml$\" ) { set req.url = \"/media/sitemap.xml\"; } else if (req.url.path ~ \"^/?robots.txt$\") { set req.url = \"/media/robots.txt\";}"
   }
   ```

>[!INFO]
>
>See [Add site map and search engine robots](https://devdocs.magento.com/cloud/trouble/robots-sitemap.html) for detailed instructions.


### Multi-site storefronts

You can set up and run several stores with a single implementation of Adobe Commerce on cloud infrastructure. See [Set up multiple websites or stores](https://devdocs.magento.com/cloud/project/project-multi-sites.html).

The same best practices for configuring the `robots.txt` and `sitemap.xml` files for [single-site storefronts](#single-site-storefronts) applies to multi-site storefronts with two important differences:

- Make sure that the `robots.txt` and `sitemap.xml` file names contain the names of the corresponding sites. For example:
  - `domaineone_robots.txt`
  - `domaintwo_robots.txt`
  - `domainone_sitemap.xml`
  - `domaintwo_sitemap.xml`

- Use a slightly modified custom Fastly VCL snippet to redirect from the root of your sites to the `/media/` location for both files across your sites:

   ```vcl
   {
     "name": "sitemaprobots_rewrite",
     "dynamic": "0",
     "type": "recv",
     "priority": "90",
     "content": "if ( req.url.path ~ \"^/?sitemap.xml$\" ) { set req.url = \"/media/sitemap.xml\"; } else if (req.url.path ~ \"^/?robots.txt$\") { set req.url = \"/media/robots.txt\";}"
   }
   ```

## Adobe Commerce on-premises

Use the Admin application to configure the `robots.txt` and `sitemap.xml` files to prevent bots from scanning and indexing unnecessary content (see [Search Engine Robots](https://experienceleague.adobe.com/docs/commerce-admin/marketing/seo/seo-overview.html#search-engine-robots)).

## Security

Do not expose your Admin path in your `robots.txt` file. Having the Admin path exposed is a vulnerability for site hacking and potential loss of data. Remove the Admin path from the `robots.txt` file.

For steps to edit the `robots.txt` file and remove all entries of the Admin path, see [Marketing User Guide > SEO and Search > Search Engine Robots](https://experienceleague.adobe.com/docs/commerce-admin/marketing/seo/seo-overview.html#search-engine-robots).

>[!TIP]
>
>If you need help, [submit an Adobe Commerce Support ticket](https://support.magento.com/hc/en-us/articles/360000913794#submit-ticket).

## Additional information

- [Understanding websites, stores, and store views](https://devdocs.magento.com/cloud/configure/configure-best-practices.html#sites)
- [Adding websites](https://docs.magento.com/user-guide/stores/stores-all-create-website.html)
- [Use Fastly to block malicious traffic for your Adobe Commerce sites](https://devdocs.magento.com/cloud/cdn/fastly-vcl-blocking.html)
- [robots.txt gives a 404 error in Adobe Commerce on cloud infrastructure 2.3.x](https://support.magento.com/hc/en-us/articles/360040594911)
