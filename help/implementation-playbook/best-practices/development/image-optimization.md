---
title: Optimize images for a more responsive site
description: Learn the steps to optimize images and use Fastly image optimization to optimize response time on your Adobe Commerce sites.
role: Developer, Admin
feature: Best Practices
exl-id: ada8b987-97ed-4232-9e1b-7e0a791a0807
---
# Optimize images for a more responsive site

For Adobe Commerce on cloud infrastructure deployments, improve site response time by optimizing images before uploading them. Then, use Fastly image optimization to speed up image delivery and simplify maintenance of image source sets.

## Affected products and versions

[All supported versions](../../../release/versions.md) of:

Adobe Commerce on cloud infrastructure


## Optimize and compress images

Before uploading images to your Commerce sites, optimize and compress them to balance performance with viewing quality. This helps increase space and reduce page load times.

- PNG format delivers smaller sized images for images with large areas of solid color.
  
- JPEG format delivers smaller sized images for all other image types. Use the highest compression (without noticeable degradation). This is usually 60 to 80 percent.

## Enable and configure Fastly image optimization

After you set up the Fastly service for your Adobe Commerce Cloud project, see [Fastly image optimization](https://experienceleague.adobe.com/en/docs/commerce-cloud-service/user-guide/cdn/fastly-image-optimization) for instructions to enable and configure image optimization.

## Additional information

- [Set up Fastly](https://experienceleague.adobe.com/en/docs/commerce-cloud-service/user-guide/cdn/setup-fastly/fastly-configuration)
- [Poorly optimized images can lead to performance issues](https://experienceleague.adobe.com/docs/commerce-knowledge-base/kb/troubleshooting/miscellaneous/file-storage-low-specific-page-loads-are-slow.html)
