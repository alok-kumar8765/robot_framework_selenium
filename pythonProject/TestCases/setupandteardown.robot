*** Settings ***
Suite Setup     log to console  opening browser
Suite Teardown  log to console  closing browser
Test Setup  log to console  Login to application
Test Teardown  log to console  Logout from application

*** Test Cases ***
TC1 Prepaid Rrcharge
    log to console  This is prepaid rechage
TC2 Postpaid Rrcharge
    log to console  This is postpaid rechage
TC3 Search
    log to console  This is Search Test Case
TC4 Advance Search
    log to console  This is Adv Search