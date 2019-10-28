*** Settings ***
Library     Selenium    # Não temos nenhuma Kwyword do selenium nesse projeto
Resource    ../resource/Resource.robot

### SETUP roda Keyword antes da suite ou antes de um Teste (Before)
Suite Setup         Texto Passei Suite Setup     
Test Setup          Abrir navegador

### TEARDOWN roda keyword depois de uma suite ou teste (After)
Suite Teardown      Texto Passei Suite Teardown
Test Teardown       Fechar navegador

*** Test Cases ***
Cenário 01: Pesquisar Produtos Existentes
    [Setup]         Setup específico
    Dado que estou na página home do site
    Quando eu pesquisar pelo produto "Blouse"
    Então o produto "Blouse" deve ser listado na página de resultado da busca
    [Teardown]      Teardown específico
Cenário 02:P esquisar Produtos Não Existentes
    Dado que estou na página home do site
    Quando eu pesquisar pelo produto "produtoNãoExistente"
    Então a página deve exibir a mensagem "No results were found for your search "produtoNãoExistente""

*** Keywords ***