*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}      https://practicetestautomation.com/practice-test-login/

*** Keywords ***
open my browser                          # user defined keyword
    open browser    ${url}      ${browser}
    maximize browser window
Close Browsers                      # user defined keyword
    close all browsers
Open Login Page                     # user defined keyword
    go to   ${url}
Input username                     # user defined keyword
    [Arguments]     ${username}
    input text    xpath://input[@id='username']  ${username}
    sleep    3
Input password                      # user defined keyword
    [Arguments]     ${password}
    input text    xpath://input[@id='password']   ${password}
    sleep    2
Click Login Button                       # user defined keyword
    click element    xpath://button[@id='submit']

Error message should be visible
    page should contain    Your password is invalid!
Dashboard page should be visible
    page should contain    Dashboard

