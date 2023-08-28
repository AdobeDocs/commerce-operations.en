---
title: Catalog image resizing best practices
description: Learn how to prevent performance degradation before a production launch of your Adobe Commerce site.
feature: Best Practices
role: Developer
---

# Catalog image resizing best practices

All catalog images should be resized before a store goes into production. Failing to resize images before production forces image resizing during page load, which significantly reduces site speed and increases server load in the first days to weeks after launch.

## The slow way

Use the default CLI command to resize all images:

```bash
bin/magento catalog:images:resize
```

The disadvantages of this approach include:

- The process is single-threaded
- The process resizes images that have already been resized
- The process cannot be interrupted, which can take days

## The fast(er) way

Asynchronous image resizing was introduced in Adobe Commerce 2.4 and can resize images faster.

1. On every web server, start some extra queue handlers temporarily (twice the number of physical processors per server):

   ```bsh
   for i in {1.."$((2 * `nproc --all`))"};do bin/magento queue:consumers:start media.storage.catalog.image.resize &;done;
   ```

1. Verify that the queue handlers are running:

   ```bash
   pgrep -fl media.storage.catalog.image.resize
   ```

1. Fill the queue with all image resize requests:

   ```bash
   bin/magento catalog:images:resize --async
   ```

1. After all images are resized, terminate the process:

   ```bash
   pkill -f media.storage.catalog.image.resize
   ```

## The fast way

There is another way of resizing images using the frontend.

The advantages of this approach include:

- The process is multi-threaded
- The process is multi-server (if you have multiple web nodes, a load balancer, and shared disk space for the `media/` directory)
- The process skips images that have already been resized

This approach resizes 100,000 images in less than 8 hours, whereas the CLI command takes 6 days to complete.

1. Log in to the server.
1. Navigate to `pub/media/catalog/product` and make a note of one of the hashes (for example, 0047d83143a5a3a4683afdf1116df680).
1. In the following examples, replace `www.example.com` with the domain of your store and replace the hash with the one you noted.

>[!BEGINTABS]

   >[!TAB sed]
   
   ```bash
   cd pub/
   find ./media/catalog/product -path ./media/catalog/product/cache -prune -o -type f -print | sed 's~./media/catalog/product/~https://www.example.com/media/catalog/product/cache/0047d83143a5a3a4683afdf1116df680/~g' > images.txt
   ```

   >[!TAB siege]

   The disadvantage of `siege` is that it visits all URLs in the 10 times if concurrency is set to 10.

   ```bash
   siege --file=./images.txt --user-agent="image-resizer" --no-follow --no-parser --concurrent=10 --reps=once
   ```

   >[!TAB curl]

   ```bash
   xargs -0 -n 1 -P 10 curl -X HEAD -s -w "%{http_code} %{time_starttransfer} %{url_effective}\n" < <(tr \\n \\0 <images.txt)
   ```
   
   The `-P` argument determines the number of threads.

   >[!TAB bash one-liner]

   The one-liner for the `find/curl` example, in case you can run `curl` from the same machine the images are on:

   ```bash
   find ./media/catalog/product -path ./media/catalog/product/cache -prune -o -type f -print | sed 's~./media/catalog/product/~https://www.example.com/media/catalog/product/cache/0047d83143a5a3a4683afdf1116df680/~g' | xargs -n 1 -P 10 curl -X HEAD -s -w "%{http_code} %{time_starttransfer} %{url_effective}\n"
   ```

   Again, replace `www.example.com` with your website's domain and set `-P` to the number of threads your server can handle without crashing.

>[!ENDTABS]

   The output returns a list of all product images in the store. You can crawl the images (with `siege` or any other crawler) using all servers and processor cores available to you and generate the resize cache at significantly greater speed than other approaches.
   
   Visiting one image cache URL generates all image sizes in the background if they do not yet exist. Also, it skips files that have already resized.
