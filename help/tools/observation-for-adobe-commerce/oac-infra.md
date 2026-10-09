---
title: The [!DNL Infra] tab
description: The [!DNL Infra] tab isolates issues and causes of infrastructure problems.
exl-id: 45f24177-3264-4848-99bc-951be32c1f7b
feature: Configuration, Observability
product_v2:
  - id: eadea719-cf89-469b-a6fd-a236a7138047
    internal-label: Commerce
feature_v2:
  - id: dac87252-6066-4d6e-a9d2-f6d84c323de7
    internal-label: Configuration
  - id: 4239b8a6-e74f-567d-a7a5-b98b9ead0ea4
    internal-label: Observability
role_v2:
  - id: c66ffd68-0f65-42bb-aa23-b4020f12e0bd
    internal-label: Admin
  - id: ff6a42d2-313e-452e-93a6-792e4fad9ff8
    internal-label: Developer
level_v2:
  - id: d378ca77-2da1-4f39-ad92-1917fe974a38
    internal-label: Experienced
---
# The [!DNL Infra] tab

The **[!DNL Infra]** tab isolates issues and causes of infrastructure problems. Further are described the frames you can see on the tab.

## [!UICONTROL Service Alerts – Infrastructure Alerts by Application name]

![Service alerts](../../assets/tools/observation-for-adobe-commerce/service-alerts.jpg)

The **[!UICONTROL Service Alerts – Infrastructure Alerts by Application name]** graph shows the service alerts collected by the [!DNL New Relic] infrastructure agent. This will show service restarts, many associated with deployments.

## [!UICONTROL Inode usage by mount]

![Inode usage by mount](../../assets/tools/observation-for-adobe-commerce/inode-usage-mount.jpg)

The **[!UICONTROL Inode usage by mount]** frame shows [!DNL inode] usage by mount across the selected timeframe. Even though there may be plenty of storage free, if a node runs out of [!DNL inodes], it will show a lack of available storage. Removing files (especially small ones) will free up both space and make [!DNL inodes] available.

## [!UICONTROL vCPU tier view over timeline GREATER 2 weeks]

![vCPU tier view over timeline GREATER 2 weeks](../../assets/tools/observation-for-adobe-commerce/vCPU-tier.jpg)

The **[!UICONTROL vCPU tier view over timeline GREATER 2 weeks]** frame shows vCPU tier view across the selected timeframe of more than two weeks. This frame looks at the number of vCPUs assigned to the [!DNL New Relic] application name shown.

## [!UICONTROL vCPU tier view over timeline]

![vCPU tier view over timeline](../../assets/tools/observation-for-adobe-commerce/vcpu-tier-24.jpg)

The **[!UICONTROL vCPU tier view over timeline]** frame shows vCPU tier view across the selected timeframe of more than 24 hours. This frame looks at the number of vCPUs assigned to the [!DNL New Relic] application name shown. It will show both cluster upsizes and downsizes.

## [!UICONTROL vCPU tier view over timeline BY NODE]

![vCPU tier view over timeline by NODE](../../assets/tools/observation-for-adobe-commerce/infra_by_node.png)

The **[!UICONTROL vCPU tier view over timeline BY NODE]** frame shows vCPU tier views across the selected timeframe by node. This frame is helpful in detecting loss of node(s) or when nodes are upsized or downsized. vCPU tier view over timeline BY NODE, should look at timeline LESS than 24 hours.

## [!UICONTROL Instance details]

![Instance details](../../assets/tools/observation-for-adobe-commerce/instance-details.jpg)

The **[!UICONTROL Instance details]** table shows instance details of each [!DNL New Relic] application.

## [!UICONTROL Logging, if there is a broken line for a node, it indicates non-responsive node during that time period]

![non-responsive-node](../../assets/tools/observation-for-adobe-commerce/non-responsive-node.jpg)

The **[!UICONTROL Logging, if there is a broken line for a node, it indicates non-responsive node during that time period]** frame shows non-responsive nodes across a time period.
