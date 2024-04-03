*** Settings ***
Resource    ../base.robot

*** Keywords ***

Quando clicar em todos os botões
    Click Element     ${primeiro_botao}
    Click Element     ${segundo_botao}
    Click Element     ${terceiro_botao}

Quando clicar em todos os botões editar e deletar
    FOR    ${index}    IN RANGE    1    11
        Click Element    ${edit_button}
        Valida alteração URL    edit
        Click Element    ${delete_button}
        Valida alteração URL    delete
    END

Dado que estou na tela inicial 
    Wait Until Element Is Visible       ${tela_inicial}

Então deverá ser permitido clicar em todos os botões 
    Wait Until Element Is Enabled    ${primeiro_botao}
    Wait Until Element Is Enabled    ${segundo_botao}
    Wait Until Element Is Enabled    ${terceiro_botao}
    Wait Until Element Is Enabled    ${edit_button}
    Wait Until Element Is Enabled    ${delete_button}