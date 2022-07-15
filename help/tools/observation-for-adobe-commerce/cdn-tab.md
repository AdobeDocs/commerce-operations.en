---
title: "The [!UICONTROL CDN] tab"
description: Learn about the [!UICONTROL CDN] tab of [!DNL Observation for Adobe Commerce].
---
# The [!UICONTROL CDN] tab

This tab has information that is focused on the [!DNL content delivery network (CDN)]. In the case of Adobe Commerce Cloud, this is the [!DNL Fastly] service.

## [!UICONTROL HIT rate]

![HIT rate](../../assets/tools/cdn-tab-1.png)

The [!UICONTROL HIT rate] frame shows the number of cacheable requests that resulted in [!UICONTROL HITS] at the last minute. This indicates successful caching. The arrow to the right will show the percentage above or below the same time a week ago.

## [!UICONTROL HIT Processing]

![HIT Processing](../../assets/tools/cdn-tab-2.png)

This [!UICONTROL HIT processing] box shows the number of cacheable requests that resulted in [!UICONTROL HITS] during the week.

## [!UICONTROL MISS rate]

![MISS rate](../../assets/tools/cdn-tab-3.png)

This [!UICONTROL MISS rate] box shows the number of misses of cacheable requests at the last minute. A miss is when the request is not cached, and the request has to be passed to the origin server to serve the content. The value to the right is the comparison of increase/decrease to the number of minutes per minute one week prior.

## [!UICONTROL MISS time]

![MISS time](../../assets/tools/cdn-tab-4.png)

## [!UICONTROL HIT Ratio]

![HIT Ratio](../../assets/tools/cdn-tab-5.png)

## [!UICONTROL Error Percentage]

![Error Percentage](../../assets/tools/cdn-tab-6.png)

The [!UICONTROL Error Percentage] box displays the value of the ERROR percentage of requests and shows the relative increase/decrease compared to the same time one week prior.

## [!UICONTROL Total Requests]

![Total Requests](../../assets/tools/cdn-tab-7.png)

## [!UICONTROL ERROR rate]

![Error rate](../../assets/tools/cdn-tab-8.png)

## [!UICONTROL Fastly Cache Average Response for selected time period in seconds]

![Fastly Cache Average Response for selected time period in seconds](../../assets/tools/cdn-tab-9.png)

The [!UICONTROL Fastly Cache Average Response] frame shows the duration in seconds of the cacheable requests, meaning that if a cache_response is a MISS, it displays the average for missed cached responses for the selected time.

## [!UICONTROL Fastly Cache Average Response for selected time period in seconds, faceted by POP]

![Fastly Cache Average Response for selected time period in seconds faceted by POP](../../assets/tools/cdn-tab-10.png)

## [!UICONTROL Total Bandwidth (All POPs) during the selected time frame, compared with 1 week ago (% increase/decrease)]

![Total Bandwidth (All POPs) during the selected time frame, compared with 1 week ago (% increase/decrease)](../../assets/tools/cdn-tab-11.png)

## [!UICONTROL Requests – Since selected time frame compared with one week ago]

![Requests – Since selected time frame compared with one week ago](../../assets/tools/cdn-tab-12.png)

The [!UICONTROL Requests – Since selected time frame compared with one week ago] frame is similar to the summary box for ‘Total Requests’ at the top but shows the prior weeks requests counts. These are all requests, not just cacheable requests (where is_cacheable is true).

## [!UICONTROL Response Count]

![Response Count](../../assets/tools/cdn-tab-13.png)

## [!UICONTROL Bandwidth by POP]

![Bandwidth by POP](../../assets/tools/cdn-tab-14.png)

## [!UICONTROL Top 5 URLs (5xx or 3xx status codes)]

![Top 5 URLs (5xx or 3xx status codes)](../../assets/tools/cdn-tab-15.gif)

The [!UICONTROL Top 5 URLs] view shows the top 5 URLs that are experiencing 5xx or 3xx error responses. Due to the space constraint, you’ll need to mouse over the URL to see the specific error code associated with that URL. (example in the red box of the figure above).

## [!UICONTROL Top 25 URLs (200 status)]

![Top 25 URLs (200 status)](../../assets/tools/cdn-tab-16.gif)

The [!UICONTROL Top 25 URLs] frame will show the URLs that returned a 200 status by count during the selected time frame.

## [!UICONTROL Duration by Response Status]

![Duration by Response Status](../../assets/tools/cdn-tab-17.png)

The [!UICONTROL Duration by Response Status] graph displays the error responses by count during the selected timeframe, faceted by the error status code.

## [!UICONTROL Duration by Response Status, top 25 urls]

![Duration by Response Status, top 25 urls](../../assets/tools/cdn-tab-18.gif)

The [!UICONTROL Duration by Response Status, top 25 URLs] graph shows the top 25 URLs by the duration of response in seconds. You may need to hover the mouse over the URL to see the entire path. Also, to remove all but one URL, click on that URL. You can then add other URLs back by clicking on them individually. If you wish to remove individual URLs, you can hold the key and click on each URL to remove them from the graph.

## [!UICONTROL Duration by Response Status, top 25 non-200 status]

![Duration by Response Status, top 25 non 200 status](../../assets/tools/cdn-tab-19.gif)

The [!UICONTROL Duration by Response Status, top 25 non-200 status] graph is similar to the last one except that the focus is on non-200 status codes or error status codes. It will show the error code and then the URL. You may need to hover the mouse over the URL to see the entire path. Also, to remove all but one URL, click on that URL. You can then add other URLs back by clicking on them individually. If you wish to remove individual URLs, you can hold the key and click on each URL to remove them from the graph.

## [!UICONTROL Error Count by POP timeline]

![Error Count by POP timeline](../../assets/tools/cdn-tab-20.png)

The [!UICONTROL Error Count by POP timeline] graph displays the error statuses’ count along the selected timeframe timeline, faceted by the error code.

## [!UICONTROL Duration by Response status, top 25 client IP, non-200 status]

![Duration by Response status, top 25 client IP, non 200 status](../../assets/tools/cdn-tab-21.gif)

The [!UICONTROL Duration by Response status, top 25 client IP, non 200 status] graph shows the IP addresses by the average duration across the selected time frame where there were status error codes.

## [!UICONTROL IP Frequency]

![IP Frequency](../../assets/tools/cdn-tab-22.jpeg)

The [!UICONTROL IP Frequency] frame counts the (‘MISS’ and ‘PASS’) statuses for each IP from the [!DNL Fastly] logs. Web requests with these statuses will reach the origin server and will add load to the server. It shows the top twenty addresses in frequency. This frame can be used to detect IP attacks or sources of heavy load on a website. This graph is also present on the summary tab and is placed here for easy comparison to more details on the [!DNL Fastly] log information displayed on this tab.

