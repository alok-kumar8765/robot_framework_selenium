*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
testCapture
    open browser    https://opensource-demo.orangehrmlive.com/     chrome
    maximize browser window

    input text  id:txtUsername  Admin
    input text  id:txtPassword  admin123

    capture element screenshot  xpath://*[@id='divLogo']/img    logo.png
    capture page screenshot     full_page.png

    close browser

*** Keywords ***