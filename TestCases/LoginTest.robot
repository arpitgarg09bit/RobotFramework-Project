*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/LoginKeywords.robot


*** Variables ***
${browser}  chrome
${SiteUrl}      https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
#${url1}     https://www.bing.com/?toWww=1&redig=8C2A90EB516B4D069D9F76AED71C17F8
#${username}     Admin
#${password}     admin123

*** Test Cases ***
LoginTest
    open browser    ${SiteUrl}      ${browser}
    maximize browser window
    wait until page contains    Login
    Enter Username    Admin     # we can use by variable eg above if we have more field to input
    sleep    2
    Enter Password    admin123
    sleep    2
    Login Button
    sleep    3
    Verify successful login
    close my browsers


*** Keywords ***