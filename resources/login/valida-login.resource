*** Settings ***

Library      SeleniumLibrary
Resource     ../Helpers/kws.resource       


*** Keywords ***

Deve acessar o site
    Open Browser            ${BASE_URL}           chrome
    Sleep    3

Inserir minhas credenciais com sucesso
    Input Text            ${INPUT_EMAIL}          ${TXT_EMAIL}  
    Input Password         ${INPUT_PASS}          ${TXT_PASS}
    Sleep    3
    Click Button     ${BTN_ENTRAR}

Inserir credencial de email não existente
    Input Text             ${INPUT_EMAIL}          ${TXT_EMAIL_INCORRECT}
    Input Password         ${INPUT_PASS}          ${TXT_PASS}
    Sleep    3
    Click Button     ${BTN_ENTRAR}
    Sleep    3
    Click Element    ${TOASTER_FAIL}
    Sleep     4

    

Fechar o sistema
    Sleep    5
    Close Browser


