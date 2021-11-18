*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
TestingFrames
    open browser    https://www.selenium.dev/selenium/docs/api/java/index.html?overview-summary.html     chrome
    maximize browser window
    #select frame
    select frame    packageListFrame    #specify id name or xpath
    click link   org.openqa.selenium
    unselect frame

    #select second frame
    select frame    packageFrame
    click link  WebDriver
    unselect frame

    select frame    classFrame
    click link  Help
    unselect frame

    close browser

*** Keywords ***