*** Setting ***
Library         SeleniumLibrary

*** Variables ***
${url}          http://www.lourencodemonaco.com.br/vvtest/  

*** Keywords ***
Nova sessão
    Open Browser        ${url}                  chrome

Encerra sessão
    Capture Page Screenshot
    Close Browser
