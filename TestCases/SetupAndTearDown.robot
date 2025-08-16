*** Settings ***
Library    SeleniumLibrary

Suite Setup     log to console   Opening Browser
Suite Teardown  log to console   Closing Browser

Test Setup    log to console    Login to application
Test Teardown    log to console     Logout from application


*** Variables ***
#${browser}  chrome
#${url}      https://demowebshop.tricentis.com/register
#${url1}     https://demo.automationtesting.in/Windows.html


*** Test Cases ***
TC1 Prepaid Recharge
    log to console    this is prepaid recharge test case

TC2 Postpaid Recharge
    log to console    this is postpaid recharge test case

TC3 Search Testcase
    log to console    this is search test case

TC4 Advance Search
    log to console    this is advance search test case


*** Keywords ***