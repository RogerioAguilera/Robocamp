*** Settings ***
Documentation           Suíte de testes da área de login
Library    SeleniumLibrary

Resource        ../resources/base.resource
Suite Setup      Deve acessar o site
Suite Teardown   Fechar o sistema

*** Test Cases ***
CT001 - Teste de Login Válido
    [Tags]    LoginSuccess
    Inserir minhas credenciais com sucesso
    Fechar o sistema

CT002 - Teste de Login Inválido
    [Tags]    PassIncorrect
    Inserir credencial de email não existente
    Fechar o sistema
