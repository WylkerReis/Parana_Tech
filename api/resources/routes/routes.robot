*** Settings ***
Documentation    Arquivo com as rotas da API jsonplaceholder.typicode.com/users
Resource         ../../base.robot

*** Keywords *** 

# Método POST
POST users
    [Documentation]  Testa o verbo POST do endpoint /users
    ${headers}       Create Dictionary  Content-Type=application/json
    ${json}          Retorna Body Post
    ${response}      POST     ${BASE_URL}${POST_USERS_ENDPOINT}  json=${json}  headers=${headers}
    Should Be Equal As Strings  ${response.status_code}  201
    Validate Json By Schema File    ${response.json()}    ${SCHEMAS_DIR}/post_users.json
    Set Global Variable    ${response}

# Método GET 
GET users
    [Documentation]  Testa o verbo GET do endpoint /users
    ${response}  GET  ${BASE_URL}${GET_USERS_ENDPOINT}
    Should Be Equal As Strings  ${response.status_code}  200
    Validate Json By Schema File    ${response.json()}    ${SCHEMAS_DIR}/get_users.json

# Método PUT
PUT users
    [Documentation]  Testa o verbo PUT do endpoint /users
    ${response}  PUT  ${BASE_URL}${PUT_USERS_ENDPOINT}
    Should Be Equal As Strings  ${response.status_code}  200
    Validate Json By Schema File    ${response.json()}    ${SCHEMAS_DIR}/put_users.json

# Método DELETE
DELETE users
    [Documentation]  Testa o verbo DELETE do endpoint /users
    ${response}  DELETE  ${BASE_URL}${DELETE_USERS_ENDPOINT}
    Should Be Equal As Strings  ${response.status_code}  200
    Validate Json By Schema File    ${response.json()}    ${SCHEMAS_DIR}/delete_users.json
