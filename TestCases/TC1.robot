#every robot files contains 4 sections which are given below

#*** Settings ***
#Library  SeleniumLibrary
#
#*** Variables ***
#${Browser}    Chrome
#${URL}        https://admin-demo.nopcommerce.com/login?ReturnUrl=%2Fadmin%2F
#${USERNAME}   admin@yourstore.com
#${PASSWORD}   admin
#
#*** Test Cases ***
#LoginTest
#    Open Browser    ${URL}      ${Browser}
#    Login To Application
#    Sleep           2s
#    Close Browser
#
#*** Keywords ***
#Login To Application
#    Input Text      xpath://input[@id='Email']    ${USERNAME}
#    Input Text      xpath://input[@id='Password']   ${PASSWORD}
#    Click Element   xpath://button[normalize-space()='Log in']


*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}    Chrome
${url}        https://practicetestautomation.com/practice-test-login/
${username}   student
${password}   Password123

*** Test Cases ***
LoginTest
    open browser    ${url}      ${browser}
    maximize browser window
    login to application
    sleep    2s
    close browser

*** Keywords ***
login to application
    input text      xpath://input[@id='username']    ${username}
    input text      xpath://input[@id='password']   ${password}
    click element   xpath://button[@id='submit']



