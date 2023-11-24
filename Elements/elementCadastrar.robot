*** Settings ***
Library          SeleniumLibrary

*** Variables ***
${ID_CADASTRAR}     register
${TYPE_CADASTRAR}   submit
${DELAY}            5s

*** Keywords ***
ElementCadastrar
    [Arguments]  ${id}  ${type}
    [Return]  ${css_selector}
    ${css_selector} =  Set Variable  css=[id="${id}"][type="${type}"]
    [Return]  ${css_selector}

*** Keywords ***
Hacer Clic en Cadastrar
    ${cadastrar} =  ElementCadastrar  ${ID_CADASTRAR}  ${TYPE_CADASTRAR}
    Wait Until Element Is Visible  ${cadastrar}  timeout=${DELAY}
    Click Element  ${cadastrar}

