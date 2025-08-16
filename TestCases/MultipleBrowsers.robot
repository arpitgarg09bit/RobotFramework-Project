*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}      https://www.google.com/
${url1}     https://www.bing.com/?toWww=1&redig=8C2A90EB516B4D069D9F76AED71C17F8


*** Test Cases ***
MultipleBrowserTest         # ( Switch between multiple tabs)
    open browser    ${url}      ${browser}
    maximize browser window
    sleep    3

    open browser    ${url1}      ${browser}
    maximize browser window

    switch browser    1
    ${title}    get title
    log to console    ${title}

    switch browser    2
    ${title1}    get title
    log to console    ${title1}

    sleep    3

    close all browsers

*** Keywords ***