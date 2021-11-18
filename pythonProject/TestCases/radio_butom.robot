*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  http://www.practiceselenium.com/practice-form.html

*** Test Cases ***
Testing Radio Buttons and CHeck Boxes
    open browser    ${url}   ${browser}
    maximize browser window
    set selenium speed  1

    #selecting radio button
    select radio button     sex     Female
    select radio button    exp     5

    #selecting check box
    select checkbox     BlackTea
    select checkbox     RedTea

    unselect checkbox   BlackTea

*** Keywords ***