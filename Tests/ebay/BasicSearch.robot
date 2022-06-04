*** Settings ***
Documentation  Basic Search Functionality
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
Verify basic search functionality for eBay
    [Documentation]  This test case verifies the basic search
    [Tags]  Functional

    Open Browser  https://www.ebay.com  chrome
    Maximize Browser Window

    Input Text  xpath://*[@id="gh-ac"]    mobile
    Press Keys  xpath://*[@id="gh-btn"]   RETURN

    Press Keys  name:this-is-name   RETURN
    Press Keys  css:#gh-btn  RETURN
    Page Should Contain  results for mobile
    Close Browser

*** Keywords ***
