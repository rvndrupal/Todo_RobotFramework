*** Settings ***
Library     SeleniumLibrary
Resource    recursos.robot
Library     Collections
Test Setup      Abrir setup  ${url}  chrome
Test Teardown   Cerrar setup



#  robot -d results  -i CasoUno  .\Excel3.robot

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
    Click  //a[@href='/index.php?option=com_users&view=registration&Itemid=588']

    ${rows}=   Leer numero de filas  Hoja1

    : FOR  ${i}  IN RANGE     1  ${rows}+1
    \   ${nombre}=   Leer celda  Hoja1  ${i}  1
    \   ${username}=   Leer celda  Hoja1  ${i}  2
    \   ${password}=   Leer celda  Hoja1  ${i}  3
    \   ${confirmpass}=   Leer celda  Hoja1  ${i}  4
    \   ${email}=   Leer celda  Hoja1  ${i}  5
    \   ${confirmemail}=   Leer celda  Hoja1  ${i}  6
    \   Texto   (//input[@type='text'])[1]  ${nombre}
    \   Texto   (//input[@type='text'])[2]  ${username}
    \   Texto   (//input[@type='password'])[1]  ${password}
    \   Texto   (//input[@type='password'])[2]  ${confirmpass}
    \   Texto   (//input[@type='email'])[1]  ${email}
    \   Texto   (//input[@type='email'])[2]  ${confirmemail}
    \   Click   //a[contains(@title,'Cancel')]




   
    
    
    
    
    


    


   
   

