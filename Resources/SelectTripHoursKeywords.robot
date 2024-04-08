*** Settings ***
Resource    Resource.robot
Variables    ../PageObjects/SelectTripHoursLocators.py

*** Keywords ***

Click Choose Third Travel Button
    [Documentation]    Click search button in selection destination screen
    Wait Until Element Is Visible    ${searchResultsThirdOptionButton}
    Click Button    ${searchResultsThirdOptionButton}