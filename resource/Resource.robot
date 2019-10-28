*** Settings ***
Library             Selenium

### SETUP roda Keyword antes da suite ou antes de um Teste (Before)
Suite Setup         Texto Passei por aki     
Test Setup          Abrir navegador

### TEARDOWN roda keyword depois de uma suite ou teste (After)
Suite Teardown      Texto Passei por aki
Test Teardown       Fechar navegador

*** Variables ***
${URL}          http://automationpractice.com
${BROWSER}      chrome    

*** Keywords ***
### Setup e Teardown
Abrir navegador
    Open Browser  ${URL}  ${BROWSER} 

Fechar navegador
    Close Browser

Texto Passei Suite Teardown
    Print "Passei no Suite Teardown"

Texto Passei Suite Setup
    Print "Passei no Suite Setup"