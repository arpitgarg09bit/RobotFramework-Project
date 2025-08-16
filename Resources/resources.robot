*** Settings ***
Library    SeleniumLibrary


*** Keywords ***
launchBrowser
    [Arguments]    ${appurl}    ${appbrowser}
    open browser    ${url}      ${browser}
    maximize browser window
    ${title}=     get title
    [Return]      ${title}