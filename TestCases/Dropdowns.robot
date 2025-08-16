*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}      https://testautomationpractice.blogspot.com/


*** Test Cases ***
Handling dropdown and Lists
    open browser   ${url}   ${browser}
    maximize browser window
#   select from list by label    country    United Kingdom       ( lable means visible text)
#    sleep    5s
#    select from list by index    country    5
#    sleep    2s
    #select from list by value   that does not dispaly key and value that was enclosed in options tag

    # we have to use fro lists
    select from list by label    Colors     green
    select from list by index    Colors     7


*** Keywords ***
