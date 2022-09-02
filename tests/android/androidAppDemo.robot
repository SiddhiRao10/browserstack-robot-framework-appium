*** Settings ***
Library    AppiumLibrary
Resource   ../common/KeywordsFile.robot

*** Variables ***
${APP_ID}=     "bs://dc9ea895eb05114744edb24f2639b6b6057a35bf"   #hashed id value can be hard coded here instead of fetching as environment variable.

*** Test Cases ***
Test Sample app
    Open app
    Close app

*** Keywords ***
Open app
    open application    app=${APP_ID}   remote_url=${REMOTE_URL}    device=Samsung Galaxy S22   name=single_test   build=browserstack-robot-framework
    IMPLICIT WAIT    5