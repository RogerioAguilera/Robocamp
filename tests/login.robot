*** Settings ***
Documentation     Login

Resource    ../resources/base.robot
Resource    ../resources/hooks.robot

# executa uma ou mais Keywords após a execução de todos os steps de cada caso de teste

Test Setup        Start Session
Test Teardown    Finish Session

*** Test Cases ***
Login do Administrador
    Acesso a página Login
    Submeto minhas credenciais    admin@zepalheta.com.br     pwd123
    Devo ver a área logada