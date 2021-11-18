*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/loginKeywords.robot
*** Variables ***
${BROWSER}  chrome
${URL}  http://newtours.demoaut.com/
${user}     tutorial
${pwd}  tutorial

*** Test Cases ***
LoginTest
    open my browser ${URL}  ${BROWSER}
    Enter UserName  ${user}
    Enter Password  ${pwd}
    Click SignIn
    sleep   3
    Verify Successful Login
    close my browsers