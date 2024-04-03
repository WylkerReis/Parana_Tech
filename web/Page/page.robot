*** Settings ***

Resource    ../base.robot

*** Keywords ***

Valida alteração URL 
    [Arguments]    ${keyword}  
    ${current_url}    Get Location  
    ${result}    Run Keyword And Return Status    Should Contain    ${current_url}    ${keyword}
    [Return]    ${result}