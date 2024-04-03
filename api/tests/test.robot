*** Settings ***

Resource    ../base.robot


*** Test Cases ***
CT-P: Realizar POST no endpoint /users/1/posts
    [Tags]             POST users
    [Documentation]    id:1
    Quando realizo POST no endpoint users

CT-P: Realizar GET no endpoint /users/1/get
    [Tags]             GET users
    [Documentation]    id:2
    Quando realizo GET no endpoint users

CT-P: Realizar PUT no endpoint /users/1
    [Tags]             PUT users
    [Documentation]    id:3
    Quando realizo PUT no endpoint users

CT-P: Realizar DELETE no endpoint /users/1
    [Tags]             DELETE users
    [Documentation]    id:4
    Quando realizo DELETE no endpoint users