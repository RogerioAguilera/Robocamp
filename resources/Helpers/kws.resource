*** Settings ***


Library      SeleniumLibrary

*** Variables ***

${TXT_EMAIL}               admin@zepalheta.com.br
${TXT_EMAIL_INCORRECT}     fail@zepalheta.com.br
${TXT_PASS}             pwd123 
${BASE_URL}             http://zepalheta-web:3000
${INPUT_EMAIL}        xpath=//input[@id='txtEmail'] 
${INPUT_PASS}         xpath=//input[@placeholder='Senha']  
${BTN_ENTRAR}         xpath=(//button[normalize-space()='Entrar'])[1]
${TOASTER_FAIL}       xpath=//div[@type='error']
    
