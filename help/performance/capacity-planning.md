---
title: Capacity Planning
description: Learn about the steps necessary for capacity planning for  Adobe Commerce or Magento Open Source. 
---

## Capacity Planning

we are considering single node/instance/machine setup and try to figure out above configuration
capacity to handle traffic without break down. we are using universal formula to calculate server
performance under limited resource & capability

#### Website throughput (concurrent connection)

***1) Lets figure out maximum user simultaneously access website for given configuration***

**Example:**
````
Average PHP request time: 650ms
CPU cores: 4
Click frequency: 45 seconds

4/0.65 = 3 page views per second * 60*0.75 = 135 max simultaneous user

(Number of CPU cores / Average page Response Time in seconds) * 60 * User click
frequency in second = maximum simultaneous users

````

***2) Lets check maximum user on website simultaneously***

```
Number of max request per second * 60 * click frequency of user in seconds = max no. of simultaneous users
````
**Example: From Google Analytics **
```
Session duration 9 min 10 seconds = 9*60+10 = 550 sec.
Average click = 4.82
```

**Average session duration/page per session**
````
(550/4.82 = 114 sec) means average user click once every 2 min, it recommended to be 1.
````

***3) Lets check server capacity => how much traffic & load web server can handle***

```
Number of CPU cores/average time for page request(in seconds) = Max number of page requests per second
```
