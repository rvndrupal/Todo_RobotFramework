
***Settings***
Documentation   Prueba uno Amazon
Library     String
Library     Dialogs
Resource    ../recursos.robot
Library     ScreenCapLibrary

#robot -d result  quince.robot
#robot -d result  -i t001  -it002 quince.robot

***Variables***
${tiempo}   .5
${url}         http://testautomationpractice.blogspot.com/
${navegador}    chrome
${nav} =    Get Selection From User     Which browser?    chrome  firefox  
${dir}      Img
  


***Keywords***
Abrir navegador
    Open Browser    ${url}     ${navegador}


*** Test Cases ***
Test001 Prueba Uno
    [Tags]  t001
    Abrir navegador
    Maximizar
    Dormir Todos  .9

    Cerrar

Test002 Prueba Dos
    [Tags]  t002
    Abrir navegador
    Maximizar
    Dormir Todos  .2
    Texto   //input[contains(@id,'field1')]  Demo uno
    Texto   //input[contains(@id,'field2')]  Demo dos
    Dormir  .2
    Resultado  1   ${dir}/Demo.png   Segunda Prueba OK
    Obtener  (//h2[contains(@class,'title')])[1]
    Resultado  1  ${dir}/Obtener1.png  Texto a que se tiene.
    ${val}=     Obtener dos  New Windows
    Print  ${val}
    Resultado  1  ${dir}/Obtener2.png  Texto a que se tiene.


    Cerrar