*** Settings ***
Library  SeleniumLibrary
Variables  ../PageObjects/locators.py

*** Keywords ***
open my browser
    [Arguments]  ${URL} ${BROWSER}
    open browser     ${URL}  ${BROWSER}
    Maximize Browser Window
Enter User Name
    [Arguments]  ${username}
    Input Text   ${txt_logingUserName}   ${username}
Enter Password
    [Arguments]  ${password}
    Input Text   ${txt_loginPassword}   ${password}
Click SignIn
    click button    ${btn_signIn}

Verify Successful Login
    title should be     Find a Flight: Mercury Tours: