*** Settings ***
Library          SeleniumLibrary

*** Variables ***
${ID_NOME}     name
${NAME_NOME}   name

*** Keywords ***
ElementNome
    ${nome} =  ElementNome  ${ID_NOME}  ${NAME_NOME}
    Wait Until Element Is Visible  ${nome}  timeout=${DELAY}
    [Return]  ${nome}
