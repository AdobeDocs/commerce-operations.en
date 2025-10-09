---
title: '[!DNL Cloud Automated Patching Service (CAPS)] Best Practices Guide'
description: Learn best practices for using [!DNL Cloud Automated Patching Service (CAPS)] effectively and safely
hide: yes
---
# [!DNL Cloud Automated Patching Service (CAPS)] best practices guide

Following best practices is essential for successful and safe patch operations with [!DNL CAPS]. This guide provides comprehensive best practices for effective patch operations, environment management, and operational excellence.

## Pre-Patch Best Practices

### Environment Readiness

**Best Practice:** Always prepare your environment thoroughly before applying patches to ensure successful operations and minimize risks.

Before applying patches, ensure your environment is properly prepared:

* Adobe Commerce Cloud Account
  * Active Adobe Commerce Cloud subscription
  * Valid Adobe Commerce license
  * Repository access credentials configured
  * Project and environment permissions

#### Environment resources

* Available environment slots for temporary testing
* Sufficient storage, CPU, and memory resources
* Network access to Adobe repositories
* Stable parent environment for synchronization

#### Production environment preparation (for production patching)

* Maintenance mode can be enabled
* Cron jobs can be disabled
* Maintenance window procedures established
* Rollback procedures documented
* Stakeholder communication plan ready

## Patch application best practices

### Timing and scheduling

**Best Practice:** Schedule patch operations during low-traffic periods and coordinate with stakeholders to minimize business impact.

**Choose the right time for patch application:**

* **Low-Traffic Periods**
  * Schedule patches during off-peak hours
  * Avoid applying patches during high-traffic events
  * Plan for potential downtime during validation

* **Production Environment Considerations**
  * **Maintenance Windows** - Schedule production patches during planned maintenance windows
  * **Customer Communication** - Notify customers about maintenance mode and expected downtime
  * **Team Coordination** - Ensure all team members are aware of the maintenance schedule
  * **Rollback Preparation** - Have team members available for immediate rollback if needed

### Monitoring and validation

**During patch operations:**

* **Monitor Progress**
  * Watch the operation status in real-time
  * Pay attention to any warnings or errors
  * Do not interrupt the process once started

* **Validate Results**
  * Test critical functionality after successful application
  * Check performance metrics for any degradation
  * Verify security measures remain intact

## Post-patch best practices

### Verification and testing

**Best Practice:** Always verify patch application success through comprehensive testing and monitoring to ensure system stability and functionality.

**After successful patch application:**

* **Functional Testing**
  * Test all critical business processes
  * Verify checkout and payment flows
  * Check admin panel functionality

* **Performance Monitoring**
  * Monitor page load times
  * Check database performance
  * Watch for any resource usage spikes

* **Security Validation**
  * Verify security features are working
  * Check for any new security vulnerabilities
  * Test authentication and authorization

## Production environment best practices

### Pre-production testing

**Best Practice:** Never apply patches directly to production without thorough testing in pre-production environments that mirror production configuration.

**Always test patches before production deployment:**

* **Test Environment Setup**
  * Use staging or integration environments for testing
  * Ensure test environment mirrors production configuration
  * Test with production-like data when possible

* **Comprehensive Testing**
  * Test all critical business processes
  * Verify checkout and payment flows
  * Check admin panel functionality
  * Test any custom integrations

* **Performance Testing**
  * Monitor performance impact of patches
  * Check for any performance degradation
  * Verify resource usage remains acceptable

### Risk mitigation

**Minimize risks during production patching:**

* **Communication Plan**
  * Notify customers about maintenance windows
  * Keep stakeholders informed of progress
  * Have escalation procedures ready

* **Rollback Strategy**
  * Know how to quickly revert patches if needed
  * Have team members available for immediate response
  * Document rollback procedures

* **Monitoring and Alerting**
  * Set up monitoring for post-patch issues
  * Have alerting for critical failures
  * Monitor performance metrics closely

## Summary of key best practices

### Critical best practices for [!DNL CAPS] success

* **Always test in pre-production** before applying patches to production environments
* **Enable maintenance mode and disable cron jobs** for production patch operations
* **Monitor operations closely** and have rollback procedures ready
* **Document all patch operations** and maintain comprehensive records
* **Follow proper change management** procedures and get appropriate approvals
* **Keep environments synchronized** and maintain proper resource allocation
* **Establish clear support procedures** and maintain team training
* **Regularly review and improve** your patch management processes
