*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
TestingTabbedWindow
    open browser    http://demo.automationtesting.in/Windows.html     chrome
    maximize browser window
    click element   xpath://*[@id="Tabbed"]/a/button
    select window   title=Selenium #title of new age or url
    click element   xpath://*[@id='container']/header/div/div/div[2]/ul/li[4]/a

    close all browsers

*** Keywords ***