*** Settings ***



*** Test Cases ***
TC1 User Registration Test
    [Tags]  sanity
    log to console    This is user registration test
    log to console    user registration is over

TC2 Login Test
    [Tags]  sanity                # we have to put tags for grouping test cases
    log to console    This is login test
    log to console    login test is over

TC3 Change user settings
    [Tags]  regression
    log to console     This is changing user setting test
    log to console     Change user setting test case over

TC4 Logout Test
    [Tags]  sanity
    log to console    This is logout test
    log to console    logout test case over

# this is command to execute robot --include=sanity TestCases\Tagging.robot
# this is command to execute robot -i sanity -i regression TestCases\Tagging.robot
# this is command to execute robot -e regression -i regression TestCases\Tagging.robot    e stands for exclue test *** test cases ***



