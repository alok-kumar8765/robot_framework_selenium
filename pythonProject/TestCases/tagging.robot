*** Settings ***

*** Test Cases ***
TC1 User Registration Test
    [tags]  regression
    log to console  This is user reg test
    log to console  user reg over
TC2 Login Test
    [tags]  sanity
    log to console  This is login test
    log to console  login test is over
TC3 Change User Setting
    [tags]  regression
    log to console  This is user change setting test
    log to console  user setting chane over
TC4 Logout Test
    [tags]  sanity
    log to console  This is logout test
    log to console  logout over
#    run on terminal robot --include=sanity TestCases/tagging.robot