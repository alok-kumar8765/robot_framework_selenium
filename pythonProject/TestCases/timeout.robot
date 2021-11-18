*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
RegTest
    ${speed}=   get selenium speed
    log to console ${speed}
    open browser    http://demowebshop.tricentis.com/register   chrome
    maximize browser window

    ${time}= get selenium timeout
    log to console ${time}

    set selenium timeout    10 seconds
    wait until page contains    Register

    #selecting radio button
    select radio button     Gender     M


    input text  name:FirstName  Lucifer
    input text  name:LastName  Morning Star
    input text  name:Email  lux.luther8765@gmail.com
    input text  name:Password  Test@123
    input text  name:ConfirmPassword  Test@123

    ${speed}=   get selenium speed
    log to console ${speed}

*** Keywords ***