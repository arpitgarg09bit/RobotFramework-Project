*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}      https://swisnl.github.io/jQuery-contextMenu/demo.html
#${url1}     https://www.bing.com/?toWww=1&redig=8C2A90EB516B4D069D9F76AED71C17F8

*** Test Cases ***
MouseActions
    open browser    ${url}      ${browser}
    maximize browser window
    open context menu    xpath://span[@class='context-menu-one btn btn-neutral']       # right click action for context open context menu

    # double click

    go to    https://testautomationpractice.blogspot.com/
    maximize browser window
    double click element    xpath://button[normalize-space()='Copy Text']

    # drag and drop
    go to    https://demoqa.com/droppable
    maximize browser window
    drag and drop       id:draggable    id:droppable
    capture page screenshot    id:simpleDropContainer   screenhot.png


    sleep    3

    close all browsers

*** Keywords ***