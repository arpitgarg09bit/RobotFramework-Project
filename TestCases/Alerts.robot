*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  headlesschrome
#${url}      https://demowebshop.tricentis.com/register
${url1}     https://testautomationpractice.blogspot.com/


*** Test Cases ***
MyTest Case
#    open browser    ${url}      ${browser}
#    maximize browser window

    open browser    ${url1}      ${browser}
    maximize browser window
    set selenium speed    2 seconds
    click element    xpath://button[@id='confirmBtn']     # opens alert
#    handle alert     accept                                # will close the pop up by using ok button
#    handle alert     dismiss                               # will close the pop up by using ok button
#    handle alert    leave                                      # it will open the alert and will wait
    alert should be present    Press a button!                  # Verify the title


*** Keywords ***