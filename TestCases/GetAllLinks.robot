*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}      https://testautomationpractice.blogspot.com/
#${url1}     https://www.bing.com/?toWww=1&redig=8C2A90EB516B4D069D9F76AED71C17F8

*** Test Cases ***
GETALLLINKS
    open browser    ${url}      ${browser}
    maximize browser window
    # to find the no of links
    ${GETELEMENTCOUNT}      get element count    xpath://a
    log to console    ${GETELEMENTCOUNT}

    # to extract the linktext
    @{Linkitems}    create list
    FOR    ${i}     IN RANGE   1    ${GETELEMENTCOUNT}
        ${Linktext}=     get text    xpath:(//a)[${i}]
        log to console    ${Linktext}
    END






*** Keywords ***
