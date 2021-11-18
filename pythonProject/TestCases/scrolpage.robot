
*** Settings ***
Library  SeleniumLibrary


*** Test Cases ***
Scrool Test
    open browser    https://www.countries-ofthe-world.com/flags-of-the-world.html   chrome
    maximize browser window
#    execute javascript  window.scrollTo(0,2500)
    execute javascript  window.scrollTo(0,document.body.scrollHeight)   #up to down
    sleep   2
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)   #down to up
#    scroll element into view    xpath://*[@id='content']/div[2]/div[2]/table[1]/tbody/tr[86]/td[1]/img