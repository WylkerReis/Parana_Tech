*** Settings ***
Documentation    Arquivo com as rotas da API jsonplaceholder.typicode.com/users
Library          RequestsLibrary
Library          JSONSchemaLibrary
Resource         ../steps/steps.robot

*** Keywords ***    
# Método POST
Quando realizo POST
    [Documentation]  Testa o verbo POST do endpoint /users
    {data}  Create Dictionary  name=JohnDoe  username=johndoe  email=johndoe@example.com
    ${headers}  Create Dictionary  Content-Type=application/json
    ${response}  Post Request  ${BASE_URL}${POST_USERS_ENDPOINT}  json=${data}  headers=${headers}
    Should Be Equal As Strings  ${response.status_code}  201
    Validate Json Schema  ${response.text}  ${POST_USERS_SCHEMA}
    Set Global Variable    ${resp_criar}
