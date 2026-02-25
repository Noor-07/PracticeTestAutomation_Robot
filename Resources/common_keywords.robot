*** Settings ***
Library    SeleniumLibrary
Resource   locators.robot

*** Variables ***
${URL}        https://practicetestautomation.com/practice-test-login/
${BROWSER}    chrome

*** Keywords ***
Open Login Page
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

Login
    Input Text      ${USERNAME_FIELD}    student
    Input Text      ${PASSWORD_FIELD}    Password123
    Click Element   ${LOGIN_FIELD}

Negetive Username
    Input Text      ${USERNAME_FIELD}    incorrectUser
    Input Text      ${PASSWORD_FIELD}    Password123
    Click Element   ${LOGIN_FIELD}

Negetive Password
    Input Text      ${USERNAME_FIELD}    student
    Input Text      ${PASSWORD_FIELD}    incorrectPassword
    Click Element   ${LOGIN_FIELD}
Logout
    Click Element   ${LOGOUT_FIELD}