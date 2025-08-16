*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}      https://testautomationpractice.blogspot.com/
#${url1}     https://www.bing.com/?toWww=1&redig=8C2A90EB516B4D069D9F76AED71C17F8

*** Test Cases ***
TableOperations
    open browser    ${url}      ${browser}
    maximize browser window
    # no of rows in a table
    ${NoofRows}     get element count    xpath://table[@name='BookTable']/tbody/tr
    log to console    ${NoofRows}
    ${columns}     get element count    xpath://table[@name='BookTable']/tbody/tr[1]/th
    log to console    ${columns}
    ${data}        get text            xpath://table[@name='BookTable']/tbody/tr[5]/td[1]
    log to console    ${data}

    # validations
    table column should contain    xpath://table[@name='BookTable']     2   Author
    table row should contain       xpath://table[@name='BookTable']     4   Learn JS
    table cell should contain      xpath://table[@name='BookTable']    5   2   Mukesh
    table header should contain    xpath://table[@name='BookTable']     BookName








*** Keywords ***
