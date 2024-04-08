*** Settings ***
Resource    Resource.robot
Variables    ../PageObjects/SearchTripDatesLocators.py

*** Keywords ***
Select First Option Origin Place
    [Documentation]    Select the first option of travel origin place appearing in dropdown
    Wait Until Element Is Visible    ${originTextField}
    Click Element    ${originTextField}
    Click Element    ${firstOptionOriginDropDown}
    Wait Until Element Is Visible    ${firstOptionDestinationDropdown}

Select First Option Destination Place
    [Documentation]    Select the first option of where to travel place appearing in dropdown
    Wait Until Element Is Visible    ${firstOptionDestinationDropdown}
    Click Element    ${firstOptionDestinationDropdown}

Select Tomorrow Button in When Option
    [Documentation]    In the section oo "¿cuando viajas?" select the "Mañana" button
    Wait Until Element Is Visible    ${travelTomorrowButton}
    Click Button    ${travelTomorrowButton}
    Element Should Be Visible    ${cleanDateButton}

Click Search Tickets Date Button
    [Documentation]    click the button for search the places selected
    Click Button    ${searchTripButton}
    Wait Until Element Is Visible    ${searchResultDateSelected}
    
