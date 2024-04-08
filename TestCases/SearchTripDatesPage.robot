*** Settings ***
Resource    ../Resources/Resource.robot

Test Setup    Open Website
Test Teardown    Exit Test

*** Test Cases ***

Select Correct Destination
    [Documentation]    Select available destination dates
    Select First Option Origin Place
    Select First Option Destination Place
    Select Tomorrow Button in When Option
    Click Search Tickets Date Button