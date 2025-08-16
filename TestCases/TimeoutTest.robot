*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}      https://demowebshop.tricentis.com/register


*** Test Cases ***
RegTest
    open browser   ${url}   ${browser}
    maximize browser window
    ${default_time of Implicit wait}    get selenium implicit wait
    log to console    ${default_time of Implicit wait}
    set selenium implicit wait    10    # as it allow for all the statement
    select radio button    Gender   M
    input text    name:FirstName    Arpit
    input text    name:LastName     Garg
    input text    name:Email        abc@gmail.com
    input text    name:Password     ArpitGarg
    input text    name:ConfirmPassword      ArpitGarg

*** Keywords ***
