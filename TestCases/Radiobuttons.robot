*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}      https://testautomationpractice.blogspot.com/


*** Test Cases ***
Testing Radio Buttons and Check Boxes
    open browser   ${url}   ${browser}
    maximize browser window
    select radio button    gender   female


#    select checkbox    monday
#    unselect checkbox  monday

# but in radio button we have to pass key and value pair but in checkbox expects only one argument


*** Keywords ***
