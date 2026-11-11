# Salesforce Case Auto-Priority

An Apex trigger that automatically sets Case priority to High when the
subject contains "refund" or "unrecognized charge".

## Features
- Before-insert trigger on the Case object
- Apex test class with 3 tests, including a 200-record bulk test
- Dashboard: Cases by Priority, Status and Origin

## Files
- `CaseTrigger.trigger` - the trigger
- `CaseTriggerHandlerTest.cls` - the test class

## Screenshots
![Test results](test-results.png)
![Dashboard](dashboard.png)

## What I learned
- Before vs after triggers
- Bulk-safe Apex and governor limits
- Writing test classes and building dashboards

## Built with
Salesforce Developer Org, Apex
