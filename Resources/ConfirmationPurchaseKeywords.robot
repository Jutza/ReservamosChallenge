*** Settings ***
Resource    Resource.robot
Variables    ../PageObjects/ConfirmationPurchaseLocators.py

*** Keywords ***

Verify Successful Purchase Download Tickets Button
    Wait Until Element Is Visible    ${payment_downloadTicketsButton}    60
    Sleep    2 seconds