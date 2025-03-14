*** Settings ***
Library           AppiumLibrary
Resource    ../resources/lancement_mobile.resource
Resource    ../resources/calculator.resource

Test Setup  Open

*** Test Cases ***
Test 1
    Calculator

