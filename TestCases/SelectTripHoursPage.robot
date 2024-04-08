*** Settings ***
Resource    ../Resources/Resource.robot

Test Setup    Open Website And Go To Search Trip Result
Test Teardown    Exit Test

*** Test Cases ***

Select Third Option In Travel Schedule
    [Documentation]    Select the third option of the hours available
    Click Choose Third Travel Button
