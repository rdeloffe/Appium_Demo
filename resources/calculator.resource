*** Settings ***
Library           AppiumLibrary

*** Variables ***
# Définition des capacités ou d'autres variables globales si nécessaires

*** Keywords ***
Calculator
    Click Element    id=com.google.android.calculator:id/digit_1
    Click Element    id=com.google.android.calculator:id/op_add
    Click Element    id=com.google.android.calculator:id/digit_9
    Click Element    id=com.google.android.calculator:id/eq
    Wait Until Element Is Visible    id=com.google.android.calculator:id/result_final    timeout=10s
    ${result}=    Get Text    id=com.google.android.calculator:id/result_final
    Log To Console    Le résultat affiché est : ${result}
