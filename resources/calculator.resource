*** Settings ***
Library           AppiumLibrary

*** Variables ***
# Definition des capabilities
${result}=    Get Text    id=com.google.android.calculator:id/result_final

*** Keywords ***
Calculator
    Click Element    id=com.google.android.calculator:id/digit_1
    Click Element    id=com.google.android.calculator:id/op_add
    Click Element    id=com.google.android.calculator:id/digit_9
    Click Element    id=com.google.android.calculator:id/eq
    Element Text Should Be   id=com.google.android.calculator:id/result_final  10
    Log To Console    Le resultat affiché est : ${result}