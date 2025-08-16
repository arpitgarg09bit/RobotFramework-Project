*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/resources.robot

*** Variables ***
${browser}  chrome
${url}      https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
#${url1}     https://www.bing.com/?toWww=1&redig=8C2A90EB516B4D069D9F76AED71C17F8

*** Test Cases ***
Userkeywrods
#    launchBrowser                           # user defind keyword without argument
#    launchBrowser   ${url}          ${browser}   # user defind keyword with argument
    ${PageTitle}=   launchBrowser    ${url}          ${browser}
    log to console    ${PageTitle}
    log     ${PageTitle}
    wait until page contains    Login
    input text    xpath://input[@placeholder='Username']    Admin
    sleep    3s
    input text    xpath://input[@placeholder='Password']    admin123
    sleep    3

    close all browsers

*** Keywords ***
launchBrowser
    [Arguments]    ${appurl}    ${appbrowser}
    open browser    ${url}      ${browser}
    maximize browser window
    ${title}=     get title
    [Return]      ${title}