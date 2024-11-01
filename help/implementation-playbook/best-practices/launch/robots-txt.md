---
title: Best practices for configuring web crawlers
description: Learn how to pass instructions about your Adobe Commerce site to web crawlers using `robots.txt` and `sitemap.xml` files.
role: Developer
feature: Best Practices
exl-id: f3a81bab-a47a-46ad-b334-920df98c87ab
---

# Best practices for configuring web crawlers

This article provides best practices for using `robots.txt` and `sitemap.xml` files in Adobe Commerce, including configuration and security. These files instruct web crawlers (typically search engine robots) how to crawl pages on a website. Configuring these files can improve site performance and search engine optimization.

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

- Make sure that your project is using [`ece-tools`](https://experienceleague.adobe.com/en/docs/commerce-cloud-service/user-guide/release-notes/ece-tools-package) version 2002.0.12 or later.
- Use the Admin application to add content to the `robots.txt` file.

  >[!TIP]
  >
  >View the auto-generated `robots.txt` file for your store at `<domain.your.project>/robots.txt`.

- Use the Admin application to generate a `sitemap.xml` file.

  >[!IMPORTANT]
  >
  >Due to the read-only file system on Adobe Commerce on cloud infrastructure projects, you must specify the `pub/media` path before generating the file.

- Use a custom Fastly VCL snippet to redirect from the root of your site to the `pub/media/` location for both files:

   ```vcl
   {
     "name": "sitemaprobots_rewrite",
     "dynamic": "0",
     "type": "recv",
     "priority": "90",
     "content": "if ( req.url.path ~ \"^/?sitemap.xml$\" ) { set req.url = \"pub/media/sitemap.xml\"; } else if (req.url.path ~ \"^/?robots.txt$\") { set req.url = \"pub/media/robots.txt\";}"
   }
   ```

- Test the redirect by viewing the files in a web browser. For example, `<domain.your.project>/robots.txt` and `<domain.your.project>/sitemap.xml`. Make sure you are using the root path that you configured the redirect for and not a different path.

>[!INFO]
>
>See [Add site map and search engine robots](https://experienceleague.adobe.com/en/docs/commerce-cloud-service/user-guide/configure-store/robots-sitemap) for detailed instructions.


### Multi-site storefronts

You can set up and run several stores with a single implementation of Adobe Commerce on cloud infrastructure. See [Set up multiple websites or stores](https://experienceleague.adobe.com/en/docs/commerce-cloud-service/user-guide/configure-store/multiple-sites).

The same best practices for configuring the `robots.txt` and `sitemap.xml` files for [single-site storefronts](#single-site-storefronts) applies to multi-site storefronts with two important differences:

- Make sure that the `robots.txt` and `sitemap.xml` file names contain the names of the corresponding sites. For example:
  - `domaineone_robots.txt`
  - `domaintwo_robots.txt`
  - `domainone_sitemap.xml`
  - `domaintwo_sitemap.xml`

- Use a slightly modified custom Fastly VCL snippet to redirect from the root of your sites to the `pub/media` location for both files across your sites:

   ```vcl
   {
     "name": "sitemaprobots_rewrite",
     "dynamic": "0",
     "type": "recv",
     "priority": "90",
     "content": "if ( req.url.path == \"/robots.txt\" ) { if ( req.http.host ~ \"(domainone|domaintwo).com$\" ) { set req.url = \"pub/media/\" re.group.1 \"_robots.txt\"; }} else if ( req.url.path == \"/sitemap.xml\" ) { if ( req.http.host ~ \"(domainone|domaintwo).com$\" ) {  set req.url = \"pub/media/\" re.group.1 \"_sitemap.xml\"; }}"
   }
   ```

## Adobe Commerce on-premises

Use the Admin application to configure the `robots.txt` and `sitemap.xml` files to prevent bots from scanning and indexing unnecessary content (see [Search Engine Robots](https://experienceleague.adobe.com/docs/commerce-admin/marketing/seo/seo-overview.html#search-engine-robots)).

>[!TIP]
>
>For on-premises deployments, where you write the files depends on how you installed Adobe Commerce. Write the files to `/path/to/commerce/pub/media/` or `/path/to/commerce/media`, whichever is right for your installation.

## Security

Do not expose your Admin path in your `robots.txt` file. Having the Admin path exposed is a vulnerability for site hacking and potential loss of data. Remove the Admin path from the `robots.txt` file.

For steps to edit the `robots.txt` file and remove all entries of the Admin path, see [Marketing User Guide > SEO and Search > Search Engine Robots](https://experienceleague.adobe.com/docs/commerce-admin/marketing/seo/seo-overview.html#search-engine-robots).

>[!TIP]
>
>If you need help, [submit an Adobe Commerce Support ticket](https://experienceleague.adobe.com/docs/commerce-knowledge-base/kb/help-center-guide/magento-help-center-user-guide.html#submit-ticket).

## Additional information

- [Understanding websites, stores, and store views](https://experienceleague.adobe.com/en/docs/commerce-cloud-service/user-guide/configure-store/best-practices)
- [Adding websites](https://experienceleague.adobe.com/en/docs/commerce-admin/stores-sales/site-store/stores#add-websites)
- [Use Fastly to block malicious traffic for your Adobe Commerce sites](https://experienceleague.adobe.com/en/docs/commerce-cloud-service/user-guide/cdn/custom-vcl-snippets/fastly-vcl-blocking)
- [robots.txt gives a 404 error in Adobe Commerce on cloud infrastructure 2.3.x](https://experienceleague.adobe.com/docs/commerce-knowledge-base/kb/troubleshooting/miscellaneous/robots.txt-gives-404-error-magento-commerce-cloud-2.3.x.html)
