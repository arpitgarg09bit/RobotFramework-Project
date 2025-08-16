*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}      https://demowebshop.tricentis.com/register


*** Test Cases ***
RegTest
    open browser   ${url}   ${browser}
    maximize browser window
    ${timeout}  get selenium timeout       # to find default time out for selenium
    log to console    ${timeout}
    set selenium timeout    10 seconds    # if you want it should wait more than 5 sec by default so we have to put a script to wait
    wait until page contains    Register    # it will wait for the title to appear on page within  5sec
    select radio button    Gender   M
    input text    name:FirstName    Arpit
    input text    name:LastName     Garg
    input text    name:Email        abc@gmail.com
    input text    name:Password     ArpitGarg
    input text    name:ConfirmPassword      ArpitGarg

*** Keywords ***
