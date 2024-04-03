*** Settings ***
Resource           ../base.robot
Suite Setup        Open Browser    ${URL}    ${BROWSER}
Suite Teardown     Close Browser

*** Test Cases ***
CT-P: Clicar em todos os botões da tela 
    [Tags]             Click botões tela
    [Documentation]    id:1
    Dado que estou na tela inicial 
    Quando clicar em todos os botões
    Então deverá ser permitido clicar em todos os botões 
    
CT-P: Clicar em todos os botões edit e delet da grid
    [Tags]             Click botões grid 
    [Documentation]    id:2
    Dado que estou na tela inicial 
    Quando clicar em todos os botões editar e deletar
    Então deverá ser permitido clicar em todos os botões