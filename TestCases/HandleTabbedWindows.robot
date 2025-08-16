*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
#${url}      https://demowebshop.tricentis.com/register
${url1}     https://demo.automationtesting.in/Windows.html


*** Test Cases ***
HandleTabbedWindows         # ( Switch between multiple tabs)
#    open browser    ${url}      ${browser}
#    maximize browser window

    open browser    ${url1}      ${browser}
    maximize browser window
    click element    xpath://*[@id="Tabbed"]/a/button
    switch window    title=Selenium
    click element    xpath://*[@id="main_navbar"]/ul/li[4]/a/span
    sleep             3
    close all browsers

*** Keywords ***