*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Open Login Page
    Open Browser    https://practicetestautomation.com/practice-test-login/    chrome
    Sleep    3s
    Close Browser