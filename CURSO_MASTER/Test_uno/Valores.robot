*** Settings ***
Library     SeleniumLibrary
Resource    recursos.robot
Library     Collections
Test Setup      Abrir setup  ${url}  chrome
Test Teardown   Cerrar setup


#  robot -d results  -i CasoUno  .\Valores.robot

#  robot -d results  -e CasoDos  .\Valores.robot  
#la -e sirve para decir todos menos

*** Variable ***
${url}    https://thetestingworld.com/
${url2}   https://robotframework.org/Selenium2Library/Selenium2Library.html#Close%20All%20Browsers
${url3}    https://www.w3schools.com/tags/tryit.asp?filename=tryhtml_select
${paso}   OK

*** Keywords ***




*** Test Case ***
TC001 Obtener valores de los Campos
    [Tags]  CasoUno
    Click  //a[contains(@href,'users&view=login&Itemid=587')]
    Texto  (//input[@type='text'])[1]  rodrigo
    Dormir  1
    ${valor}=   Obtener Value  (//input[@type='text'])[1]
    Log     ${valor}  
    ${text}=  Obtener Text  (//div[contains(.,'Make sure you dont miss interesting happenings by joining our newsletter program.')])[10]
    Log     ${text} 

# TC002 Obtener valores de una lista
#     [Tags]  CasoUno
#     ${items}=       Obtener todos los valores de la Lista       /html/body/select
#     Log    ${items}

   
   

