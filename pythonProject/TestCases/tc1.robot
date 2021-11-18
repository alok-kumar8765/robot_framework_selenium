*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demo.nopcommerce.com/

*** Test Cases ***
LoginTest
    open browser       ${url}   ${browser}
    loginToApplicaation
    close browser


*** Keywords ***
loginToApplicaation
    click link  xpath://a[@class='ico-login']
    input text  id:Email    alok.kumarlove20@gmail.com
    input text  id:Password  Test@123456
    click element   xpath://button[@class='button-1 login-button']
