*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
TestingFrames
    open browser    https://www.selenium.dev/selenium/docs/api/java/index.html?overview-summary.html     chrome
    maximize browser window
    ${allLinkCount}=    get element count   xpath://a
    log to console  ${allLinkCount}

    @{linkitems}    create list
    : FOR   ${i}    IN RANGE    1   ${allLinkCount}
    \   ${linktext}=    get text    xpath:(//a)[$(i)]
    \   log to console  ${linktext}
    close browser
*** Keywords ***