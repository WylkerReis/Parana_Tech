
*** Variables ***
${BASE_URL}   https://jsonplaceholder.typicode.com
${GET_USERS_ENDPOINT}   /users
${POST_USERS_ENDPOINT}  /users
${PUT_USERS_ENDPOINT}   /users/1
${DELETE_USERS_ENDPOINT}   /users/1

${GET_USERS_SCHEMA}   {'type': 'array', 'items': {'type': 'object'}}
${POST_USERS_SCHEMA}  {'type': 'object'}
${PUT_USERS_SCHEMA}   {'type': 'object'}
${DELETE_USERS_SCHEMA}   {}
