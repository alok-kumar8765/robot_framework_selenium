*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  http://www.practiceselenium.com/practice-form.html

*** Test Cases ***
Handling DropDowns and Lists
    open browser    ${url}   ${browser}
    maximize browser window


    #selecting radio button
    select radio button     sex     Female
    select radio button    exp     5

    #selecting check box
    select checkbox     BlackTea
    select checkbox     RedTea

    #select drop down
    select from list by label   continents  Australia
    sleep   3
    select from list by index   continents  6
    #select from list by value   continents  values

    #list box
    select from list by label   selenium_commands   Switch Commands
    select from list by label   selenium_commands   WebElement Commands
    unselect from list by label     selenium_commands   Switch Commands
*** Keywords ***