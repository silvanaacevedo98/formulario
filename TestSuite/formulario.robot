*** Settings ***
Documentation   Suite de prueba para el formulario
Library          SeleniumLibrary
Suite Setup      Abrir el navegador
Suite Teardown   Cerrar el navegador
Resource        resources

*** Variables ***
${URL}           https://cadastro-de-usuarios.s3.us-east-1.amazonaws.com/index.html
${BROWSER}       Chrome
${DELAY}         2s


*** Test Cases ***
Test Nome Registro Fallido
    Open Browser  ${URL}  Chrome
    Set Selenium Speed  ${DELAY}
    ${formulario} =  Formulario

    Input Text  ${formulario.nome}     dgw
    Input Text  ${formulario.email}    email@example.com
    Input Text  ${formulario.senha}    password123
    Click Element  ${formulario.cadastrar}

   Log  Registro falló porque el nombre es incorrecto.

Test Nome Registro Correcto   
    Open Browser  ${URL}  Chrome
    Set Selenium Speed  ${DELAY}
    ${formulario} =  Formulario

    Input Text  ${formulario.nome}     Jao da Silva
    Input Text  ${formulario.email}    email@example.com
    Input Text  ${formulario.senha}    password123
    Click Element  ${formulario.cadastrar}

   Log  Registro falló porque el nombre es incorrecto.

Test Nome Registro Vazio   
    Open Browser  ${URL}  Chrome
    Set Selenium Speed  ${DELAY}
    ${formulario} =  Formulario

    Input Text  ${formulario.nome}     Jao da Silva
    Input Text  ${formulario.email}    email@example.com
    Input Text  ${formulario.senha}    password123
    Click Element  ${formulario.cadastrar}
    [Teardown]  Close Browser
   Log  Registro falló porque el nombre es incorrecto. 

#### Esta é uma pequena amostra devido ao tempo que tenho.
## Gostaria de terminar e validar todos os campos mas preciso de mais tempo.
##Vou deixar os cenários pensados.

Test ok
    Nome de registro de teste ok
    Nome de registro de teste ok- email ok
    Nome de registro de teste ok- email ok- senha ok

Teste malsucedido
    Test registro nombre no ok 
    Test registro nombre no ok- email no ok
    Test registro nombre no ok- email ok - contraseña ok
    Test registro nombre no ok- email no ok - contraseña ok

Test vazio
    Nome do teste vazio - e-mail incorreto - senha vazia
    Teste nome vazio - e-mail vazio - senha vazia
    Nome do teste vazio - e-mail ok - senha vazia
    Teste nome vazio - e-mail não ok - senha ok   

Casuística:
nome com comprimento mínimo e máximo de caracteres excedido de acordo com as políticas propostas para o aplicativo.
e-mail com caracteres incorretos ou formato incorreto.
senha com comprimento mínimo e máximo permitido ou caracteres especiais, injeção de sql html.



