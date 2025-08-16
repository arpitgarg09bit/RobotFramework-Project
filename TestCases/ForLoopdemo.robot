*** Settings ***
#Library    SeleniumLibrary


*** Variables ***
#${browser}  chrome
#${url}      https://testautomationpractice.blogspot.com/
#${url1}     https://www.bing.com/?toWww=1&redig=8C2A90EB516B4D069D9F76AED71C17F8

*** Test Cases ***
#Forloop1
#    FOR   ${i}        IN RANGE    1   10
#        log to console    ${i}
#    END

#ForLoop2
#    FOR     ${i}    IN    1 2 3 4 5 6 7 8 9
#        log to console      ${i}
#    END

ForLoop3iwithList
#    @{items}    create list    1  2  3   4   5
#    FOR     ${i}    IN    @{items}
#        log to console      ${i}
#    END

ForLoop4
    @{items}    create list   1  2  3   4   5
    FOR    ${i}    IN    @{items}
        log to console    ${i}
        exit for loop if     ${i}==3
    END






*** Keywords ***
