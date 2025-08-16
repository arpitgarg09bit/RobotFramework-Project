*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
#${url}      https://demowebshop.tricentis.com/register
${url1}     https://demoqa.com/nestedframes


*** Test Cases ***
TestingFrames
#    open browser    ${url}      ${browser}
#    maximize browser window

    open browser    ${url1}      ${browser}
    maximize browser window

    select frame    frame1

    select frame    Child Iframe


*** Keywords ***