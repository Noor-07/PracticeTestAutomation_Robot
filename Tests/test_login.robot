*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/common_keywords.robot

*** Test Cases ***
#This is Valid & Positive Login Test
Login Test
    Open Login Page
    Login
    Page Should Contain    Congratulations
    [Teardown]    Close Browser

#This is InValid & Negetive Username Test
Negetive Username Test
    Open Login Page
    Negetive Username
    Page Should Contain    Your username is invalid!
    [Teardown]    Close Browser

#This is InValid & Negetive Password Test
Negetive Password Test
    Open Login Page
    Negetive Password
    Page Should Contain    Your password is invalid!
    [Teardown]    Close Browser

Logout Test
    Open Login Page
    Login
    Logout
    Page Should Contain    Test login
    [Teardown]    Close Browser