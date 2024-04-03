*** Variables ***
${BASE_URL}   https://jsonplaceholder.typicode.com
${POST_USERS_ENDPOINT}  /users/1/posts
${GET_USERS_ENDPOINT}   /users
${GET_USERS_ENDPOINT}   /users
${PUT_USERS_ENDPOINT}   /users/1
${DELETE_USERS_ENDPOINT}   /users/1

${SCHEMA_FILE}        C:\\WylkerReis\\Parana_Tech\\api\\resources\\schemas.json

# ${GET_USERS_SCHEMA}   {"type": "array", "items": {"type": "object", "properties": {"id": {"type": "integer"}, "name": {"type": "string"}, "username": {"type": "string"}, "email": {"type": "string", "format": "email"}, "address": {"type": "object", "properties": {"street": {"type": "string"}, "suite": {"type": "string"}, "city": {"type": "string"}, "zipcode": {"type": "string", "pattern": "^[0-9]{5}(-[0-9]{4})?$"}, "geo": {"type": "object", "properties": {"lat": {"type": "string", "pattern": "^-?([1-8]?[1-9]|[1-9]0)\.{1}\d{1,6}$"}, "lng": {"type": "string", "pattern": "^-?(([-+]?)([0-9]{1,3})((\.)([0-9]{1,6}))?)$"}}, "required": ["lat", "lng"]}, "required": ["street", "suite", "city", "zipcode", "geo"]}, "phone": {"type": "string"}, "website": {"type": "string"}, "company": {"type": "object", "properties": {"name": {"type": "string"}, "catchPhrase": {"type": "string"}, "bs": {"type": "string"}}, "required": ["name", "catchPhrase", "bs"]}}, "required": ["id", "name", "username", "email", "address", "phone", "website", "company"]}}}
${POST_USERS_SCHEMA}  {'type': 'object'}
${PUT_USERS_SCHEMA}   {'type': ['object' , 'boolean']}
${GET_USERS_SCHEMA}    ${SCHEMA_FILE}
