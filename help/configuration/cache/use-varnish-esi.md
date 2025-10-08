---
title: Varnish ESI block
description: Learn about Varnish Edge Side Includes (ESI) and how to embed web pages for Adobe Commerce. Discover ESI block implementation and optimization.
badge: label="Contributed by Konstantin G." type="Informative" url="https://github.com/goivvy" tooltip="Konstantin G."
feature: Configuration, Cache
exl-id: 7dccafa5-df79-4690-be5c-ff774c66bb2a
---
# Varnish ESI block

Edge Side Includes (ESI) are special directives that you can use to include web pages in other web pages.

An example:

```html
<div>
  <esi:include src="http://domain.com/index.php/page_cache/block/esi/blocks"/>
</div>
```

Varnish fetches content from `http://domain.com/index.php/page_cache/block/esi/blocks` and replace the `<esi>` tag with it.

## Commerce and Varnish ESI

The Commerce framework creates an ESI tag when the following conditions are met:

- The caching application is set to `Varnish Cache`
- A XML layout `block` element is added with a `ttl` attribute

### Example

`cms_index_index.xml`:

```xml
  <referenceContainer name="content">
      <block class="Magento\Framework\View\Element\Template" template="Magento_Paypal::esi.phtml" ttl="30"/>
   </referenceContainer>
```

In the example above, the `block` element adds content from the `esi.phtml` template to a homepage and Varnish automatically updates it every 30 seconds.

## Limitations

Currently, Varnish does not support ESI over HTTPS so it automatically switches to HTTP.

`Magento\PageCache\Observer\ProcessLayoutRenderElement`:

```php
    private function _wrapEsi(
        \Magento\Framework\View\Element\AbstractBlock $block,
        \Magento\Framework\View\Layout $layout
    ) {
    ....
        // Varnish does not support ESI over HTTPS must change to HTTP
        $url = substr($url, 0, 5) === 'https' ? 'http' . substr($url, 5) : $url;
        return sprintf('<esi:include src="%s" />', $url);
    }
```
