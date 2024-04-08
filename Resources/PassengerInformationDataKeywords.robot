*** Settings ***
Resource    Resource.robot
Variables    ../PageObjects/PassengerInformationDataLocators.py

*** Keywords ***

Select Available Seat
    [Documentation]    Select one of the available seats
    Wait Until Element Is Visible    ${firstSeatOptionButton}    15
    Click Button    ${firstSeatOptionButton}
    Wait Until Element Is Visible    ${seats_seatSelectedtitle}

Fill Information Data
    [Documentation]    fill the passenger data with the one given
    [Arguments]    ${firstName}    ${lastName}    ${email}
    Wait Until Element Is Visible    ${passenger_firstNameTextField}    15
    Input Text    ${passenger_firstNameTextField}    ${firstName}
    Wait Until Element Is Visible    ${passenger_lastNameTextField}
    Input Text    ${passenger_lastNameTextField}    ${lastName}
    Input Text    ${passenger_emailTextField}    ${email}
    
Click Continue Button In Payment
    [Documentation]    Click the "Continue" button un the payment section
    Wait Until Element Is Visible    ${passengerInformation_continueButton}
    Click Button    ${passengerInformation_continueButton}

Fill Passenger Data In Payment Information
    [Documentation]    Selected the "Use passenger data" toggle and add the phone number. *need to add time sleep because the element wasn clickeable if try it in the momment is visible
    [Arguments]    ${phoneNumber}
    Wait Until Element Is Visible    ${payment_usePassengerDataToggle}    20
    Sleep    2 seconds
    Click Element    ${payment_usePassengerDataToggle}
    Element Should Be Disabled    ${payment_firstNameTextField}
    Input Text    ${payment_phoneTextField}    ${phoneNumber}

Fill Card Information
    [Documentation]    Fill the card payment information
    [Arguments]    ${number}    ${expirationDate}    ${CVV}    ${name}
    Execute Javascript    window.scrollTo(0,document.body.scrollHeight)
    Wait Until Element Is Visible    ${iFrameCardNumber}
    
    #section to fill the card number
    Select Frame    ${iFrameCardNumber}
    Input Text    ${payment_cardNumberTextField}    ${number}
    Unselect Frame

    #section to fill the expiration date in the card
    Wait Until Element Is Visible    ${iFrameExpirationDate}
    Select Frame    ${iFrameExpirationDate}
    Input Text    ${payment_cardExpirationDateTextField}    ${expirationDate}
    Unselect Frame

    #Section to fill the security number in card
    Wait Until Element Is Visible    ${iFrameSecurityNumber}
    Select Frame    ${iFrameSecurityNumber}
    Input Text    ${payment_cardCVVTextField}    ${CVV}
    Unselect Frame

    Input Text    ${payment_cardNameTextField}    ${name}

