# Salesforce Case Auto-Priority

An Apex trigger that automatically sets Case priority to **High** when the subject contains "refund" or "unrecognized charge".

## Why I built it
In my customer support and merchant operations work, refund and charge issues needed fast attention. This project automates that step in Salesforce.

## Features
- Before-insert trigger on the Case object
- Apex test class with 3 tests, including a 200-record bulk test
- Dashboard: Cases by Priority (add Status and Origin if you built them)

## How it works
1. A user creates a Case.
2. The trigger checks the Subject before the record is saved.
3. If it contains "refund" or "unrecognized charge", Priority is set to High.

## How to test
1. Create a Case with the subject "Refund not received" and Priority Low.
2. Save it. The Priority changes to High.
3. Create a Case with the subject "Where is my order". Priority stays Low.

## Files
- `CaseTrigger.trigger` - the trigger
- `CaseTriggerHandlerTest.cls` - the test class

## Screenshots
<img width="622" height="285" alt="Case Dashboard" src="https://github.com/user-attachments/assets/81e73d7f-3782-49aa-a5bc-0d282895e360" />
<img width="640" height="308" alt="Refund not received -Case  Status" src="https://github.com/user-attachments/assets/f18f5529-7c07-4940-a4ee-948587422bc6" />
<img width="640" height="317" alt="Test Case Status" src="https://github.com/user-attachments/assets/f0b215cf-b386-44a9-958d-77aab1f595db" />




## What I learned
- Before vs after triggers
- Bulk-safe Apex and governor limits
- Writing test classes and building dashboards

## Built with
Salesforce Developer Org, Apex
