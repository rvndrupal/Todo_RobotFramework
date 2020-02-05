*** Settings ***
Library     SeleniumLibrary
Resource    recursos.robot
Library     Collections
Test Setup      Abrir setup  ${url}  chrome
Test Teardown   Cerrar setup



#  robot -d results  -i CasoUno  .\Excel2.robot

#  robot -d results  -e CasoDos  .\Valores.robot  
#la -e sirve para decir todos menos

#pip install openpyxl

*** Variable ***
${url}    https://thetestingworld.com/


*** Keywords ***

    

   



*** Test Case ***
TC001 Obtener valores de Excel  
    [Tags]  CasoUno
    [Documentation]     Obtener valores de Excel DOS
    Click  //a[contains(@href,'users&view=login&Itemid=587')]

    ${rows}=   Leer numero de filas  Hoja1

    : FOR  ${i}  IN RANGE     1  ${rows}+1
    \   ${username}=   Leer celda  Hoja1  ${i}  1
    \   ${password}=   Leer celda  Hoja1  ${i}  2
    \   Texto  (//input[@type='text'])[1]  ${username}
    \   Texto   (//input[contains(@size,'25')])[2]  ${password}
    \   Click  //button[@type='submit']




   
    
    
    
    
    


    


   
   

