*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/login_resources.robot
Suite Setup     Open my Browser
Suite Teardown  Close Browser
Test Template  Invalid Login
*** Test Cases ***
Right User Empty Password   admin@yourstore.com     ${EMPTY}
Right User Wrong Password   admin@yourstore.com     xyz
Wrong User Right Password   admn@yourstore.com     admin
Wrong User Empty Password   admn@yourstore.com      ${EMPTY}
Wrong User Wrong Password   admn@yourstore.com      xyz

*** Keywords ***
Invalid Login
    [Arguments]  ${username}    ${password}
    input username  ${username}
    input password  ${password}
    click login botton
    Error Message Should Visible