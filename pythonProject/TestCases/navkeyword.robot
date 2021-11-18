*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
TestingNav
    open browser    https://www.google.com/     chrome
    maximize browser window

    ${location} =   get location
    log to console      ${location}

    go to    https://www.bing.com/

    ${location} =   get location
    log to console      ${location}

    go back

    ${location} =   get location
    log to console      ${location}

    close browser

*** Keywords ***