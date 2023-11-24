*** Settings ***
Library          SeleniumLibrary

*** Variables ***
${ID_SENHA}     password
${NAME_SENHA}   password

*** Keywords ***
ElementSenha
    ${Senha} =  ElementSenha  ${ID_SENHA}  ${NAME_SENHA}
    [Return]  ${Senha}