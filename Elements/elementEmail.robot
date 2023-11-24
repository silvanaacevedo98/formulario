*** Settings ***
Library          SeleniumLibrary

*** Variables ***
${ID_EMAIL}     email
${NAME_EMAIL}   email

*** Keywords ***
ElementEmail
    ${email} =  ElementEmail  ${ID_EMAIL}  ${NAME_EMAIL}
    [Return]  ${email}