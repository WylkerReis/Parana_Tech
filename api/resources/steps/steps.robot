*** Settings ***

Resource    variables.robot
Resource    ../../base.robot
Resource    ../routes/routes.robot



*** Keywords ***

Quando realizo POST no endpoint users
    POST users

Quando realizo GET no endpoint users
    GET users

Quando realizo PUT no endpoint users
    PUT users

Quando realizo DELETE no endpoint users
    DELETE users

