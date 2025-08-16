*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}      https://practicetestautomation.com/practice-test-login/

*** Test Cases ***
TestingInputBox
    open browser    ${url}  ${browser}
    maximize browser window
    title should be    Test Login | Practice Test Automation
    ${"Username_text"}   set variable    //input[@id='username']
#    element should be visible    ${"Username_text"}
#    element should be enabled    ${"Username_text"}
     element should not be visible    ${"Username_text"} # negative test case
    input text  ${"Username_text"}  student
    sleep    5
    clear element text    ${"Username_text"}
    sleep    5
    close browser

*** Keywords ***

