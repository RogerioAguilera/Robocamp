*** Settings ***
Documentation            Fazer login no site Zé Palheta
Library    SeleniumLibrary

Resource        ../resources/base.resource
Suite Setup      Deve acessar o site
Suite Teardown   Fechar o sistema

*** Test Cases ***
Testes da área de login
    Inserir minhas credenciais com sucesso
    Fechar o sistema

