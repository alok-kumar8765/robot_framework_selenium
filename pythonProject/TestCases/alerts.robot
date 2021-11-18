*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
Handlinglerts
    open browser    http://testautomationpractice.blogspot.com/     chrome
    maximize browser window

    click element   xpath://*[@id='HTML9']/div[1]/button
    sleep   3
#    handle alert    accept
#    handle alert    dismiss
#    handle alert    leave
     alert should be present    Press a button!
#     alert should not be present    Press a button!
     close browser

*** Keywords ***