*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/resources.robot

*** Variables ***
${browser}  chrome
${url}      https://testautomationpractice.blogspot.com/
#${url1}     https://www.bing.com/?toWww=1&redig=8C2A90EB516B4D069D9F76AED71C17F8

*** Test Cases ***
ScrollingTest
    open browser    ${url}      ${browser}
    maximize browser window
    # till until it achieve pixel no
#    execute javascript    window.scrollTo(0,2500)     # 0 represent horizontal and 2500 indicates vertical
    # till we find it element on web page
     scroll element into view    xpath://a[normalize-space()='Youtube']
#    execute javascript    window.scrollTo(0,document.body.scrollHeight)
#    sleep    5
#    execute javascript    window.scrollTo(0,-document.body.scrollHeight)


    sleep    3
    close all browsers

*** Keywords ***
