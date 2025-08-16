*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}      https://www.google.com/
${url1}     https://www.bing.com/?toWww=1&redig=8C2A90EB516B4D069D9F76AED71C17F8

*** Test Cases ***
NavigationalKeywords
    open browser    ${url}      ${browser}
    maximize browser window
    ${Location}     get location
    log to console    ${Location}
    sleep    2

    go to    ${url1}
    ${Location}     get location
    log to console    ${Location}
    sleep    2

    go back
    ${Location}     get location
    log to console    ${Location}
    sleep    2

    close all browsers

*** Keywords ***