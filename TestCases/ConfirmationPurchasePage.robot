*** Settings ***
Resource    ../Resources/Resource.robot

Test Setup    Open Website And Go To Purchase Confirmation
Test Teardown    Exit Test

*** Test Cases ***

Testing Successful Ticket Purchase
    [Documentation]    Make sure the ticket buton to download is available after purchase
    Verify Successful Purchase Download Tickets Button