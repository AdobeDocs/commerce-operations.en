---
title: Optimize images for a more responsive site
description: Learn the steps to optimize images and use Fastly image optimization to optimize response time on your Adobe Commerce sites.
role: Developer, Admin
feature: Best Practices
exl-id: ada8b987-97ed-4232-9e1b-7e0a791a0807
product_v2:
  - id: eadea719-cf89-469b-a6fd-a236a7138047
    internal-label: Commerce
feature_v2:
  - id: cdfd3bc1-dc23-5cf0-b965-d3c0c55cde67
    internal-label: Best Practices
role_v2:
  - id: ff6a42d2-313e-452e-93a6-792e4fad9ff8
    internal-label: Developer
  - id: c66ffd68-0f65-42bb-aa23-b4020f12e0bd
    internal-label: Admin
level_v2:
  - id: d378ca77-2da1-4f39-ad92-1917fe974a38
    internal-label: Experienced
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

After you set up the Fastly service for your Adobe Commerce Cloud project, see [Fastly image optimization](https://experienceleague.adobe.com/en/docs/commerce-on-cloud/user-guide/cdn/fastly-image-optimization) for instructions to enable and configure image optimization.

## Additional information

- [Set up Fastly](https://experienceleague.adobe.com/en/docs/commerce-on-cloud/user-guide/cdn/setup-fastly/fastly-configuration)
- [Poorly optimized images can lead to performance issues](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/troubleshooting/miscellaneous/file-storage-low-specific-page-loads-are-slow)
