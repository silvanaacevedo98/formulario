//////////////////////////////
# forma
//////////////////////////////
## Instale o Robot Framework e a biblioteca Selenium:
Certifique-se de ter o Robot Framework e a biblioteca Selenium instaladas. Você pode instalá-los usando pip:

pip instalar robotframework
pip instalar robotframework-seleniumlibrary


## Baixe um driver de navegador:
Você precisará de um driver para o navegador que está usando (por exemplo, ChromeDriver para Google Chrome). Você pode baixá-lo no site oficial do driver.


## Arquivos:
form.robot: Este arquivo conterá os testes do Robot Framework.
***Configurações***
Conjunto de documentação de teste para o formulário
Biblioteca SeleniumBiblioteca
Configuração do pacote Abra o navegador
Suíte Teardown Fechar navegador

***Variáveis***
${URL} caminho_para_seu_formulário.html
${BROWSER} Cromo
${DELAY} 2s

***Casos de teste***
Preencher formulário
     [Documentação] Preencha o formulário com dados de exemplo
     Abra o navegador ${URL} ${BROWSER}
     Definir velocidade do selênio ${DELAY}
     Texto de entrada id = campo1 Dados1
     Texto de entrada id = campo2 Dados2
     Texto de entrada id = campo3 Dados3
     Clique no botão xpath=//botão[contém(text(),'Enviar')]


__init__.py: Este arquivo é necessário para que o Python considere o diretório como um pacote. Você pode deixar em branco.

resources/ (diretório): Este diretório pode conter quaisquer recursos necessários para seus testes, como drivers de navegador.

## Execute testes:
Certifique-se de definir o caminho para o driver do Chrome (chromedriver.exe) na linha webdriver.Chrome(executable_path="path_to_your_chromedriver.exe") e o caminho para o formulário HTML em driver.get("path_to_your_form.html").
- formulário do robô.robot


## Além disso, a intenção era usar a biblioteca fakery para que os valores fossem aleatórios e sempre diferentes. Para isto:
pip instalar o falso. Além disso, você pode usar um gerenciador de pacotes para versionar o software e dependências, com miniconda podemos criar ambientes virtuais


Passo 1: Instale o Miniconda
Baixe e instale o Miniconda de seu site oficial de acordo com seu sistema operacional.
Etapa 2: Crie um novo ambiente virtual
Abra um terminal e crie um novo ambiente virtual. Você pode fazer isso com o seguinte comando, substituindo “myenv” pelo nome que desejar para o seu ambiente:

conda criar --name meuenv

Em sistemas Unix ou MacOS: source activate myenv
Em sistemas Windows: ative myenv


Instale pacotes e configure variáveis ​​de ambiente
conda instalar pacote1 pacote2
exportar MY_VARIABLE=valor # Unix ou MacOS
definir MY_VARIABLE = valor # Windows

Ou você pode fazer isso diretamente no arquivo Environment.yml:
nome: myenv
canais:
   - padrões
dependências:
   - pacote1
   - pacote2



//////////////////////////////
# Español - Formulario
/////////////////////////////
## Instalar Robot Framework y la biblioteca Selenium:
Asegúrate de tener Robot Framework y la biblioteca Selenium instalados. Puedes instalarlos utilizando pip:

pip install robotframework
pip install robotframework-seleniumlibrary


## Descargar un controlador de navegador:
Necesitarás un controlador para el navegador que estás utilizando (por ejemplo, ChromeDriver para Google Chrome). Puedes descargarlo desde el sitio web oficial del controlador.


## Archivos:
formulario.robot: Este archivo contendrá las pruebas de Robot Framework.
*** Settings ***
Documentation   Suite de prueba para el formulario
Library          SeleniumLibrary
Suite Setup      Abrir el navegador
Suite Teardown   Cerrar el navegador

*** Variables ***
${URL}           ruta_a_tu_formulario.html
${BROWSER}       Chrome
${DELAY}         2s

*** Test Cases ***
Llenar Formulario
    [Documentation]  Llenar el formulario con datos de ejemplo
    Open Browser  ${URL}  ${BROWSER}
    Set Selenium Speed  ${DELAY}
    Input Text    id=campo1    Dato1
    Input Text    id=campo2    Dato2
    Input Text    id=campo3    Dato3
    Click Button  xpath=//button[contains(text(),'Enviar')]


__init__.py: Este archivo es necesario para que Python considere el directorio como un paquete. Puedes dejarlo en blanco.

resources/ (directorio): Este directorio puede contener cualquier recurso que necesites para tus pruebas, como controladores de navegador.

## Ejecutar Pruebas:
Asegúrate de ajustar la ruta al controlador de Chrome (chromedriver.exe) en la línea webdriver.Chrome(executable_path="ruta_a_tu_chromedriver.exe") y la ruta al formulario HTML en driver.get("ruta_a_tu_formulario.html").
- robot formulario.robot


## Adicional la intencion era usar la libreria fakery para que los valores sean random y siempre distintos. Para esto:
pip install faker. Ademas se puede usar un gestor de paquetes para versionar el software y dependencias, con miniconda podemos crear entornos virtuales


Paso 1: Instalar Miniconda
Descarga e instala Miniconda desde su sitio web oficial según tu sistema operativo.
Paso 2: Crear un nuevo entorno virtual
Abre una terminal y crea un nuevo entorno virtual. Puedes hacer esto con el siguiente comando, reemplazando "myenv" con el nombre que desees para tu entorno:

conda create --name myenv

En sistemas Unix o MacOS: source activate myenv
En sistemas Windows: activate myenv


Instalar paquetes y configurar variables de entorno
conda install package1 package2
export MY_VARIABLE=value  # Unix o MacOS
set MY_VARIABLE=value    # Windows

O puedes hacerlo directamente en el archivo environment.yml:
name: myenv
channels:
  - defaults
dependencies:
  - package1
  - package2


