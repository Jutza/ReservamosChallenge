In this project I used robotframework, Selenium with Python.

I divide the files in different documents:

    "Page Object" has all the locator for every screen visited

    "Resources" has all the keywords used in the test cases

    "TestCases" has the test case for every screen

Right now i only have 1 test case (inside every File in TestCases´s Directory) for every screen where i did the steps
require it in the document, but the part of the Keywords (inside Resources´ Directory) is the modular one, you can use
the parts for create another test cases with the same steps and reuse them.

There is a Resource.robot file and there is all the basic configuration for all the test cases, and the test suites will
be execute in the start of tests.



------------------------STEPS TO RUN THE TEST CASE--------------------------------

Install Python (if you dont have it already)

    3.9.11 was used to run

Install Selenium

    pip install selenium

Install Robotframework

    pip install robotframework

Install Selenium Library

	pip install --upgrade robotframework-selenium2library

In the console inside the project you will execute the following command

    robot -t "Testing Successful Ticket Purchase" TestCases/ConfirmationPurchasePage.robot

----------------------------------------------------******--------------------------------------------------------------

 You can run the tests for screen right now if required, modifying with the following command

    robot -t "Test Case Name" TestCases/TESTCASEFILE.robot
