*** Settings ***
Library             seleniumlibrary

*** Variables ***
${URL}          http://automationpractice.com
${BROWSER}      chrome    

*** Keywords ***
### Setup e Teardown
Abrir navegador
    Open    Browser  ${URL}  ${BROWSER} 

Fechar navegador
    Close   Browser

Texto Passei Suite Teardown
    Log    Passei no Suite Teardown

Texto Passei Suite Setup
    Log    Passei no Suite Setup

Setup específico
    Log    Passei no Setup específico

Teardown específico
    Log    Passei no Teardown específico

### PASSO A PASSO ###
Dado que estou na página home do site
    Go to ${URL}
    Title Should Be     My Store


Quando eu pesquisar pelo produto "${PRODUTO}" no campo de pesquisa
    Input Text      id-search   ${PRODUTO}