*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
RegTest
    open browser    http://demowebshop.tricentis.com/register   chrome
    maximize browser window

    sleep   5 seconds
    open browser    http://automationpractice.com/index.php     chrome
    maximize browser window

    close all browsers
*** Keywords ***