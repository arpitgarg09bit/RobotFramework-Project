*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/Locators.py


*** Keywords ***
Open my Browser
    [Arguments]    ${SiteURL}   ${Browser}
    open browser    ${SiteURL}   ${Browser}
    maximize browser window

Enter Username
    [Arguments]    ${username}
    input text    ${txt_Username}   ${username}

Enter Password
    [Arguments]    ${password}
    input text    ${txt_Password}   ${password}

Login Button
    click button    ${btn_Login}

Verify successful login
    title should be    OrangeHRM

close my browsers
    close all browsers