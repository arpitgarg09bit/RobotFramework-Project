*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/login_resources.robot
Library    DataDriver   ../TestData/LoginData.xlsx  sheet_name=Sheet1

Suite Setup    open my browser
Suite Teardown  Close Browsers
Test Template    Invalid login

*** TEST CASES ***
LoginTestwithExcel  using    ${username}    and    ${password}



*** Keywords ***
Invalid login
    [Arguments]    ${username}      ${password}
    Input username  ${username}
    Input password    ${password}
    Click Login Button
    Error message should be visible