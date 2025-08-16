*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}      https://demowebshop.tricentis.com/register


*** Test Cases ***
RegTest
    ${speed}=   get selenium speed    # this will tell you what the default speed time
    log to console    ${speed}
    open browser   ${url}   ${browser}
    maximize browser window
    set selenium speed    2 seconds    # by using it will implment will all the scripts

#    sleep    3
    select radio button    Gender   M
    input text    name:FirstName    Arpit
    input text    name:LastName     Garg
    input text    name:Email        abc@gmail.com
    input text    name:Password     ArpitGarg
    input text    name:ConfirmPassword      ArpitGarg
    ${speed}=   get selenium speed    # this will tell you what the default speed time
    log to console    ${speed}




*** Keywords ***
