*** Settings ***
Library    AppiumLibrary
Resource   ../common/KeywordsFile.robot

*** Variables ***
${APP_ID}=     %{BROWSERSTACK_APP_URL}   #hashed id value can be hard coded here instead of fetching as environment variable.

*** Test Cases ***
Test Sample app
    Open app

*** Keywords ***
Open app
    open application    app=${APP_ID}   remote_url=${REMOTE_URL}   platformName=android   platformVersion=12.0   deviceName=Samsung Galaxy S22   name=single_test   build=browserstack-robot-framework
    IMPLICIT WAIT    5

*** Test Cases ***
Sample app is launched successfully from Bitrise
    Validate sample test
    Close app