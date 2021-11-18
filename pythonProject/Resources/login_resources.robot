*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${LOGIN URL}=   https://admin-demo.nopcommerce.com
${BROWSER}=     chrome
*** Keywords ***
Open my Browser
    open browser    ${LOGIN URL}    ${BROWSER}
    maximize browser window

Close Browser
    close all browsers

Open Login Page
    go to   ${LOGIN URL}

Input username
    [Arguments]  ${username}
    input text  id:Email    ${username}

Input password
    [Arguments]     ${password}
    input text      id:Password     ${password}

click login botton
    click element   xpath://button[@class='button-1 login-button']
Click Logout Button
    click link  Logout

Error Message Should Visible
    page should contain     Login was unsuccessful
Dashboard Page should be visible
    page should contain     Dashboard