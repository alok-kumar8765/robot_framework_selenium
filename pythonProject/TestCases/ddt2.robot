*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/login_resources.robot
Library  DataDriver     C:/Users/Alok kumar/PycharmProjects/pythonProject/TestData/LoginData.xlsx
Suite Setup     Open my Browser
Suite Teardown      Close Browser
Test Template       Invalid login
*** Test Cases ***
LoginTestwithExcel  using   ${username}     ${password}

*** Keywords ***
Invalid login
    [Arguments]  ${username}    ${password}
    input username  ${username}
    input password  ${password}
    click login botton
    Error Message Should Visible