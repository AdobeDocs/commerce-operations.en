---
title: Self-hosting Adobe Commerce disaster recovery
description: Learn about self-hosting disaster recovery ideas and concepts and best practices to consider.
landing-page-description: Learn some disaster recovery concepts and things to consider when hosting Adobe Commerce on your own.
short-description: Learn strategies and disaster recovery concepts for hosting Adobe Commerce yourself.
kt: 11420
doc-type: tutorial
audience: all
last-substantial-update: 2023-04-13

---

# Self-hosting Adobe Commerce Disaster Recovery ideas

Disaster recovery for this article encompasses a failed deployment. Although the entire process may not be the same, similar principles apply. A disaster may be due to a failed production deployment, server becoming non-responsive, discovery of an exploit and many other scenarios. Where the recovery process for a failed deployment may only require two simple steps, a recovery from an exploit may be much more challenging. Due to the complexity of environments, hosting variations, and other complexities this article provides ideas and concepts but you are required to continue the investigation on your own. This way you can make sure you design a strategy that suits your business needs.

## Practice recovery process often

Practice, Practice, Practice. There is a reason why practices appear first on the disaster recovery list. It is far to easy to set up a recovery plan but never execute it. If you do not practice enough, you are prone to errors, missed steps, and likely make an actual recovery take longer. The cadence for your practice recovery is up to you and your business partners. Making the recovery process an annual event might be good enough, but a deep conversation with those decision makers in your company should include several key topics. These topics help them understand why practicing is important and should be expected. Here are a few topics that help get the conversation started:

* Practicing reduces the actual downtime when an event happens for real. If a practice dry run takes down your site for one hour a year, it may reduce the actual downtime of a real event by several hours. It is not uncommon for a recovery of a site to take eight hours or longer. By practicing this event often you can reduce the amount of time each phase takes, and you are able to recover faster.
* Scheduled downtime for these practice runs can coincide with server patches, inventory adjustments or anything else that should be done on a regular schedule.
* Practice different scenarios instead of the same one. Take the time occasionally, to do a full recovery from a previous date. This includes things such as finding and using an archived copy of the database, rolling back the code to match the date. An easier one could be a recovery from failed deployment, where you simply must roll back to the previous commit.
* Verify that the recovery process actually works, sometimes the archived databases can become corrupt. By doing so, it ensures that everything can be recovered and is functional. Finding and restoring an old DB takes time, it should be known how long this part of the process may be.
* Validate that all changes in configurations are documented. This ensures that any recovery from an older database gets any new configuration changes must be functional. For example, if your API key changed to your payment processor in the past few days. By having a good change management process, finding these key updates make the process go as planned.

## DB backups

Database backups should be fairly regular. It is not uncommon to have hourly, daily, weekly, and monthly snapshots. The backups should eventually be moved to long-term storage. This long-term storage can happen whenever the business or technology team decides enough time has passed that a speedy recovery from them is probably no longer needed. A recovery from a long-term storage adds time to the recovery process, so care should be used in deciding when this should occur. The database backups should be automated and not rely on human interaction. This ensures you have enough of them to provide a secure and predictable recovery process. This also helps in any forensic activities, if such an activity is necessary, is feasible and reliable. You might find a need for forensic research after an exploit is detected, or when trying to diagnose when a credit card fraud activity occurred or even perhaps when someone joined your website. There is no limit to how you use these backups but having a good cadence of backups are your saving grace when you actually need it.

The following is an example of a data retention policy:

* Every eight hours. The backups should be easily accessible.
* Daily backups for the last seven days and should be readily accessible. A copy of them could be a candidate for being moved offsite.
* Weekly backups for the past four weeks consider moving offsite.
* monthly backups for the past three months moved offsite.
* Older backups are moved to long-term storage offsite.

## Infrastructure as code

This methodology means that you have tools and code in place to rebuild parts or the entire infrastructure for your project. This may be needed when a server experiences issues and must be taken out of use. Being able to quickly bring a new server online, deploy the code, make any PHP, Nginx or Apache configurations, and whatever else, automatically means less downtime. Even well-documented steps in a run book are easier to set up, to execute the steps takes much longer. Also, consider the human error that can occur while under stress to bring an unresponsive site back online. 

## Secondary database 

Using a secondary database can be useful for a few reasons, here are a few:

* Warm standby if there is primary drive failure
* Allow for ready requests from application
* Allow for mysqldump to occur and allow for normal transactions to happen without locking the database
* Allows for access of data from an external data source without reducing the websites ability to transact information for customer request.

The secondary database can be used as a `warm standby`. This may come into play when you are considering how to recover from a primary database failure. Promoting the secondary database to primary is lower in complexity than rebuilding and restoring a database to a newly created Mysql instance. This reduces the actual downtime during a recovery operation.

 There is the opportunity to divert some of the requests to the secondary database. If this method is used, making the secondary database read-only is suggested. By allowing the Adobe Commerce application to use this secondary database for read operations helps by taking some of the read requests and allowing the secondary database to respond. However, this change only accounts for 30-50% of all requests, but any load you can take away from the primary database is a victory. 

## Create a deployment plan that includes a rollback

Every deployment should include a rollback plan. Yes, every deployment. If you plan for it, you are never surprised and are ready for the bad event. Sometimes the most simple code updates can catastrophically fail for any reason.

Consider this true story of a team that committed a small, simple pull request to execute a schema change in the database. As the deployment went from 1 minute, to 5, then 10, and the team became more worried. What they failed to verify and consider up to this point was any discrepancy from the production database as compared to the staging database. They had a common practice to remove all customer data when refreshing the staging environment with a copy of production. This meant that all their testing and QA prior to this reflected the deployment should take just a few minutes to complete. In reality, they had over 20 million customers and this small schema change was taking an exceptionally long time to complete. Because they had no idea how long this was going to actually take, they were compelled to terminate the mysql process and roll back the deployment. 

Preparing for a rollback process for a deployment takes just a few minutes because the overall process is going to be similar. However you should take the time to document exactly what commit you would reset the HEAD of the git repository back to. You should document exactly what db snapshot to use or where to find the current one if that is always in the same place. Have defined times when the status of the deployment must be discussed and when things automatically take effect. For example if any deployment takes longer than 15 minutes, ask the project manager and other stake holders if things should continue. However, automatically execute the rollback process and notify all stakeholders if the process takes 45 minutes regardless if there is hesitation from the project manager and architect for the project.

Make sure that several people are involved with the entire process and every phase. Having mid level developers review the deployment process, rollback procedure and location for files is a great way to get them involved. They will eventually be performing the steps so having them understand the entire process is key to long-term success. Make sure that everyone is empowered to call off a deployment. Giving your team this amount of say is empowering and rewarding. If a junior developer truly feels that something is missing, they should feel compelled to speak up and let their caution be heard. Let the architect and project managers confirm or mitigate their fear. It is important to have a strong team that is looking out for the project and keeping their track record of flawless deployments.

## Verify access to Domain Name management, DMS, SSL, WAF 

Because domain names expire, DNS records can be accidentally modified, SSL certificates can expire, and so much more; making sure you have the ability to log in and verify that connectivity should happen often. Doing this simple check every quarter keeps you confident that you know exactly where things are located, especially in an emergency. Do not assume that your DNS is managed in your registrar just to find out you have it managed in Amazon. These records are not frequently used, so forgetting where they are is a high probability. Do not trust written documentation for usernames and passwords alone. Log in to each one and verify the configurations that you are looking for are actually managed there. Too often things change during management turnover or company acquisition and only one person knows what happened, because they are the ones who did the update. They were not aware that you relied on a shared word document what the location is, the username and the password. Find a checking process that makes sense for you and your organization, but doing this every three to six months is a good starting point.

{{$include /help/_includes/hosting-related-links.md}}
