*** Settings ***
Resource    ../Resources/Resource.robot


Test Setup    Open Website And Go To Payment
Test Teardown    Exit Test


*** Test Cases ***

Complete Trip Purchase
    [Documentation]    fill all the information of the passenger to purchase the ticket
    Select Available Seat
    Click Continue Button In Payment
    Fill Information Data    John    Doe    JhonDoe@gmail.com
    Click Continue Button In Payment
    Fill Passenger Data In Payment Information    6623568956
    Fill Card Information    2222 4000 7000 0005    03/30    737    John Snow
    Click Continue Button In Payment