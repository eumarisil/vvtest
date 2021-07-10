*** Settings ***
Resource        base.robot

Test Setup      Nova sessão
Test Teardown   Encerra sessão

*** Test Cases ***
Should Fill Form
    Title Should Be                 VV Test – Página de teste da Via Varejo
    Go To                           ${url}/pesquisa
    Input Text                      id:nf-field-5                                   Olivia
    Input Text                      id:nf-field-6                                   Souza
    Input Text                      id:nf-field-7                                   olivia@teste.com
    Input Text                      id:nf-field-8                                   olivia@teste.com
    Mouse Down                      id:nf-label-field-13
    Click Element                   id:nf-label-class-field-10-1
    Select From List By Label       id:nf-field-11                                  Menos de 5 anos
    Mouse Down                      id:nf-label-field-15
    Select From List By Label       id:nf-field-12                                  Sou mega chato
    Click Element                   id:nf-label-class-field-13-1
    Input Text                      id:nf-field-14                                  Python
    Click Element                   id:nf-field-16
    Wait Until Page Contains        Your form has been successfully submitted.      5
