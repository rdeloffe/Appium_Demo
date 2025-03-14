*** Settings ***
Library           AppiumLibrary

*** Variables ***
# Definition des capabilities
${REMOTE_URL}    http://127.0.0.1:4723
${PLATFORM_NAME}    Android
${PLATFORM_VERSION}    15
${DEVICE_NAME}    emulator-5554
${APP_PACKAGE}    com.google.android.calculator
${APP_ACTIVITY}    com.android.calculator2.Calculator
${AUTOMATION_NAME}    UiAutomator2

*** Keywords ***
Open Calculator
    Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME}    platformVersion=${PLATFORM_VERSION}    deviceName=${DEVICE_NAME}    appPackage=${APP_PACKAGE}    appActivity=${APP_ACTIVITY}    automationName=${AUTOMATION_NAME}

*** Test Cases ***
Test Open Calculator
    [Documentation]    Ouvrir l'application calculatrice
    Open Calculator
    Click Element    id=com.google.android.calculator:id/digit_1
    Click Element    id=com.google.android.calculator:id/op_add
    Click Element    id=com.google.android.calculator:id/digit_9
    Click Element    id=com.google.android.calculator:id/eq
    Element Text Should Be   id=com.google.android.calculator:id/result_final  10
    ${result}=    Get Text    id=com.google.android.calculator:id/result_final
    Log To Console    Le resultat affiché est : ${result}

