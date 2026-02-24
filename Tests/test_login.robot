*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/common_keywords.robot
*** Test Cases ***
Login Test
    Open Login Page
    Login
    Page Should Contain    Congratulations
    [Teardown]    Close Browser

Logout Test
    Open Login Page
    Login
    Logout
    Page Should Contain    Test login
    [Teardown]    Close Browser