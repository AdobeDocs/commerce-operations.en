---
title: Custom cron job and cron group reference
description: Learn how to customize crons using cron groups and crontabs in Adobe Commerce. Discover custom module setup and scheduled task configuration.
exl-id: 16e342ff-aa94-4e31-8c75-dfea1ef02706
---
# Customizing crons reference

This topic helps you set up crontabs and optionally cron groups for custom modules. If your custom module needs to schedule tasks periodically, you must set up a crontab for that module. A _crontab_ is a cron job configuration.

Optionally, you can set up a custom group, which among other things enables you to run cron jobs defined in that group independently of other cron jobs.

For a step-by-step tutorial, see [Configure custom cron jobs and cron groups (tutorial)](custom-cron-tutorial.md).

For an overview about cron jobs, see [Configure cron jobs](../cli/configure-cron-jobs.md).

## Configure cron groups

This section discusses how to optionally create a cron group for a custom module. If you do not need to do this, continue with the next section.

A _cron group_ is a logical group that enables you to easily run cron for more than one process at a time. Most Commerce modules use the `default` cron group; some modules use the `index` group.

If you are implementing cron for a custom module, you can choose to use the `default` group or a different group.

**To configure a cron group for your module**:

Create a `crontab.xml` file in your module directory:

```text
<your component base dir>/<vendorname>/module-<name>/etc/crontab.xml
```

For one group, the file should have the following contents:

```xml
<?xml version="1.0"?>
<config xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="urn:magento:module:Magento_Cron:etc/crontab.xsd">
    <group id="<group_name>">
        <job name="<job_name>" instance="<classpath>" method="<method>">
            <schedule><time></schedule>
        </job>
    </group>
</config>
```

Where:

|Value|Description|
|---|---|
|`group_name`|Name of the cron group. The group name does not have to be unique. You can run cron for one group at a time.|
|`job_name`|Unique ID for this cron job.|
|`classpath`|Class to be instantiated (classpath).|
|`method`|Method in `classpath` to call.|
|`time`|Schedule in cron format. Omit this parameter if the schedule is defined in the Commerce database or other storage.|

The resulting `crontab.xml` with two groups may look like this:

```xml
<?xml version="1.0"?>
<config xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="urn:magento:module:Magento_Cron:etc/crontab.xsd">
    <group id="default">
        <job name="<job_1_name>" instance="<classpath>" method="<method_name>">
            <schedule>* * * * *</schedule>
        </job>
        <job name="<job_2_name>" instance="<classpath>" method="<method_name>">
            <schedule>* * * * *</schedule>
        </job>
    </group>
    <group id="index">
        <job name="<job_3_name>" instance="<classpath>" method="<method_name>">
            <schedule>* * * * *</schedule>
        </job>
        <job name="<job_4_name>" instance="<classpath>" method="<method_name>">
            <schedule>* * * * *</schedule>
        </job>
    </group>
</config>
```

As an example, see [Magento_Customer crontab.xml](https://github.com/magento/magento2/blob/2.4/app/code/Magento/Customer/etc/crontab.xml).

### Specifying Cron group options

You may declare a new group and specify its configuration options (all of which run in store view scope) via the `cron_groups.xml` file, located in:

```text
<your component base dir>/<vendorname>/module-<name>/etc/cron_groups.xml
```

Below is an example of the `cron_groups.xml` file:

```xml
<?xml version="1.0"?>
<config xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="urn:magento:module:Magento_Cron:etc/cron_groups.xsd">
    <group id="<group_name>">
        <schedule_generate_every>1</schedule_generate_every>
        <schedule_ahead_for>4</schedule_ahead_for>
        <schedule_lifetime>2</schedule_lifetime>
        <history_cleanup_every>10</history_cleanup_every>
        <history_success_lifetime>60</history_success_lifetime>
        <history_failure_lifetime>600</history_failure_lifetime>
        <use_separate_process>1</use_separate_process>
    </group>
</config>
```

Where:

| Option                     | Description                                                                                            |
| -------------------------- | ------------------------------------------------------------------------------------------------------ |
| `schedule_generate_every`  | Frequency (in minutes) that schedules are written to the `cron_schedule` table.                        |
| `schedule_ahead_for`       | Time (in minutes) in advance that schedules are written to the `cron_schedule` table.                  |
| `schedule_lifetime`        | Window of time (in minutes) that a cron job must start or the cron job is considered missed ("too late" to run). |
| `history_cleanup_every`    | Time (in minutes) that cron history is kept in the database.                                           |
| `history_success_lifetime` | Time (in minutes) that the record of successfully completed cron jobs is kept in the database.        |
| `history_failure_lifetime` | Time (in minutes) that the record of failed cron jobs is kept in the database.                        |
| `use_separate_process`     | Run this cron group's jobs in a separate php process                                             |

## Disable a cron job

Cron jobs do not have a `disable` feature like we have for [observers](https://developer.adobe.com/commerce/php/development/components/events-and-observers/#observers). However, a cron job can be disabled by using the following technique: `schedule` a time that contains a date which will never happen.

For example, disable the `visitor_clean` cron job which defined in `Magento_Customer` module:

```xml
...
<group id="default">
    <job name="visitor_clean" instance="Magento\Customer\Model\Visitor" method="clean">
        <schedule>0 0 * * *</schedule>
    </job>
</group>
...
```

To disable the `visitor_clean` cron job, create a custom module and rewrite the `visitor_clean` cron job `schedule`:

```xml
...
<group id="default">
    <job name="visitor_clean" instance="Magento\Customer\Model\Visitor" method="clean">
        <schedule>0 0 30 2 *</schedule>
    </job>
</group>
...
```

Now, the `visitor_clean` cron job has been set to run at 00:00 on the 30th of February - at the date which will never occur.
