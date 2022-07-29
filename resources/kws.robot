*** Settings ***

Library    SeleniumLibrary

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

Devo ver um toaster com a mensagem
    [Arguments]    ${expect_message}

    Wait Until Element Contains      css:div[type='error'] p    ${expect_message}
    Close Browser
