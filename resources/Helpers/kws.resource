*** Settings ***


Library      SeleniumLibrary

*** Variables ***

${TXT_EMAIL}           admin@zepalheta.com.br
${TXT_PASS}             pwd123 
${BASE_URL}             http://zepalheta-web:3000
${INPUT_EMAIL}        xpath=//input[@id='txtEmail'] 
${INPUT_PASS}         xpath=//input[@placeholder='Senha']  
${BTN_ENTRAR}         xpath=(//button[normalize-space()='Entrar'])[1]
    
