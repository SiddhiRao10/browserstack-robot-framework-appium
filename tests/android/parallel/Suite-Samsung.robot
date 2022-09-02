*** Settings ***
Library    AppiumLibrary
Resource   ../../common/KeywordsFile.robot

*** Variables ***
${APP_ID}=     "bs://dc9ea895eb05114744edb24f2639b6b6057a35bf"

*** Test Cases ***
Test Wiki app
    Open app
    Search for keyword in wiki app
    Validate wiki test
    Close app

*** Keywords ***
Open app
    open application    app=${APP_ID}   remote_url=${REMOTE_URL}    device=Samsung Galaxy S21 Plus  os_version=11.0   name=parallel_test_samsung   build=browserstack-robot-framework
    IMPLICIT WAIT    5