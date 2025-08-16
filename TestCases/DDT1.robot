*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/login_resources.robot
Suite Setup    open my browser
Suite Teardown  Close Browsers
Test Template    Invalid login

#*** Variables ***
#${browser}  chrome
#${url}      https://admin-demo.nopcommerce.com/login?ReturnUrl=%2Fadmin%2F

*** Test Cases ***              username               password

Right user empty password       student              ${EMPTY}
Right user wrong password       student                 xyz
Wrong user right password       student1                Password123
Wrong user empty password       student1                  ${EMPTY}
Wrong user wrong password       student1                  admin23


*** Keywords ***
Invalid login
    [Arguments]    ${username}      ${password}
    Input username  ${username}
    Input password    ${password}
    Click Login Button
    Error message should be visible
