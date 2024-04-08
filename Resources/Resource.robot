*** Settings ***
Library    SeleniumLibrary
Resource    SearchTripDatesKeywords.robot
Resource    SelectTripHoursKeywords.robot
Resource    PassengerInformationDataKeywords.robot
Resource    ConfirmationPurchaseKeywords.robot

*** Variables ***

${BROWSER}    Chrome
${URL}    https://roll-bits.reservamos-saas.com/

*** Keywords ***

#test suite for the base tests (in SearchTripDatesPage)
Open Website
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Set Browser Implicit Wait    10 Seconds
    Element Should Be Visible    ${buyTicketsTitle}

#test teardown for every test
Exit Test
    Close All Browsers

#Test suite for the test in SelectTripHoursPage
Open Website And Go To Search Trip Result
    Open Website
    Select First Option Origin Place
    Select First Option Destination Place
    Select Tomorrow Button in When Option
    Click Search Tickets Date Button

#Test Suite for the test in PassengerInformationDataPage
Open Website And Go To Payment
    Open Website And Go To Search Trip Result
    Click Choose Third Travel Button

#Test suite for the tests in ConfirmationPurchasePage
Open Website And Go To Purchase Confirmation
    Open Website And Go To Payment
    Select Available Seat
    Click Continue Button In Payment
    Fill Information Data    John    Doe    JhonDoe@gmail.com
    Click Continue Button In Payment
    Fill Passenger Data In Payment Information    6623568956
    Fill Card Information    2222 4000 7000 0005    03/30    737    John Snow
    Click Continue Button In Payment
