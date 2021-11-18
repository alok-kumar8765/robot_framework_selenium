
*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/resources.robot
*** Variables ***
${url}      http://google.com/
${browser}  chrome

*** Test Cases ***
TC1
    ${PageTitle}=    LaunchBrowser   ${url}  ${browser}
    log to console  ${Pagetitle}
    log     ${Pagetitle}
#    input text  name:userName   mercury
#    input text  name:password   mercury

    close browser

