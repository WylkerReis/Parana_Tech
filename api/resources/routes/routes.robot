*** Settings ***
Documentation    Arquivo com as rotas da API jsonplaceholder.typicode.com/users
Resource         ../../base.robot

Library    OperatingSystem

*** Keywords *** 

# Método POST
POST users
    [Documentation]  Testa o verbo POST do endpoint /users
    ${headers}       Create Dictionary  Content-Type=application/json
    ${json}          Retorna Body Post
    ${response}      POST     ${BASE_URL}/${POST_USERS_ENDPOINT}  json=${json}  headers=${headers}
    Should Be Equal As Strings  ${response.status_code}  201
    Set Global Variable    ${response}

# Método GET 
GET users
    [Documentation]  Testa o verbo GET do endpoint /users
    ${response}  GET  ${BASE_URL}${GET_USERS_ENDPOINT}
    Should Be Equal As Strings  ${response.status_code}  200
    # ${schema} =   Get File   ${SCHEMA_FILE}
    # ${schema_json} =  Evaluate  json.loads('''${schema}''')  json
    # Validate Json By Schema    ${response.text}    ${schema}

# Método PUT
PUT users
    [Documentation]  Testa o verbo PUT do endpoint /users
    ${response}  PUT  ${BASE_URL}${PUT_USERS_ENDPOINT}
    Should Be Equal As Strings  ${response.status_code}  200
    # Validate Json By Schema   ${response.text}    ${PUT_USERS_SCHEMA}

# Método DELETE
DELETE users
    [Documentation]  Testa o verbo DELETE do endpoint /users
    ${response}  DELETE  ${BASE_URL}${DELETE_USERS_ENDPOINT}
    Should Be Equal As Strings  ${response.status_code}  200
