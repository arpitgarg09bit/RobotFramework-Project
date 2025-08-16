*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}      https://demowebshop.tricentis.com/register
${url1}     https://testautomationpractice.blogspot.com/


*** Test Cases ***
MyTest Case
    open browser    ${url}      ${browser}
    maximize browser window

    open browser    ${url1}      ${browser}
    maximize browser window

#    close browser           # this will close the second browser first then first one
    close all browsers          # this will clsoe all the browsers




*** Keywords ***
