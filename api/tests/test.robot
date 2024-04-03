*** Settings ***
Resource    ../resources/steps/variables.robot
Resource    ../base.robot
Resource    ../resources/routes/routes.robot
Resource    ../resources/steps/steps.robot

*** Test Cases ***
CT-P: Realizar post no endpoint users
    [Tags]             Post users
    [Documentation]    id:1

    Quando realizo POST no endpoint users