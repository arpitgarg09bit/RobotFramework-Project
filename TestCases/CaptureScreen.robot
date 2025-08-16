*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}      https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
#${url1}     https://www.bing.com/?toWww=1&redig=8C2A90EB516B4D069D9F76AED71C17F8

*** Test Cases ***
LoginTC
    open browser    ${url}      ${browser}
    maximize browser window
    wait until page contains    Login
    input text    xpath://input[@placeholder='Username']        Admin
    set selenium speed    2
    input text    xpath://input[@placeholder='Password']        admin123
    capture element screenshot      xpath://*[@id="app"]/div[1]/div/div[1]/div/div[1]/img     C:/Users/arpgar01/PycharmProjects/PythonProject1/TestProject/Logo.png
    capture page screenshot         C:/Users/arpgar01/PycharmProjects/PythonProject1/TestProject/LoginTC.png


    sleep    2

    close all browsers

*** Keywords ***