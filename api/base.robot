*** Settings ***

Resource         resources/steps/steps.robot
Resource         resources/routes/routes.robot
Resource         resources/steps/variables.robot

Library          resources/inputs/inputs.py    WITH NAME     Inputs
Library          RequestsLibrary
Library          JSONSchemaLibrary
Library          JSONLibrary

*** Variables ***
${BROWSER}        Chrome
${URL}            https://the-internet.herokuapp.com/challenging_dom