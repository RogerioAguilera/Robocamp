*** Settings ***
Documentation     Login
Library     SeleniumLibrary

*** Test Cases ***
Login do Administrador
    Acesso a página Login
    Submeto minhas credenciais    admin@zepalheta.com.br     pwd123
    Devo ver a área logada

*** Keywords ***
Acesso a página Login
    Open Browser    http://zepalheta-web:3000/    chrome
    Maximize Browser Window

Submeto minhas credenciais   
    [Arguments]    ${email}    ${password}

    Input Text        id:txtEmail                       ${email}
    Input Password    css:input[placeholder="Senha"]    ${password}
    Click Element     xpath://button[text()='Entrar']

Devo ver a área logada
    Wait Until Page Contains      Aluguéis    5 
    Close Browser
