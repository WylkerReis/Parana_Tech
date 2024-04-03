*** Settings ***

Resource    variables.robot
Resource    ../../base.robot
Resource    ../routes/routes.robot



*** Keywords ***
Quando realizo POST no endpoint users
    POST users