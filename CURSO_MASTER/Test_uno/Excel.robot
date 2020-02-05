*** Settings ***
Library     SeleniumLibrary
Resource    recursos.robot
Library     Collections
Library     DataDriver  LoginData.xlsx      sheet_name=Hoja1
Test Setup      Abrir setup  ${url}  chrome
Test Teardown   Cerrar setup
Test Template   Invalid Login


#  robot -d results  -i CasoUno  .\Excel.robot

#  robot -d results  -e CasoDos  .\Valores.robot  
#la -e sirve para decir todos menos
#Instalar robotframework-datadriver
#pip install robotframework-datadriver
#pip install -U robotframework-datadriver[XLS]

*** Variable ***
${url}    https://admin-demo.nopcommerce.com/


*** Keywords ***
Invalid Login
    [Arguments]     ${username}     ${password}
    #[Tags]  CasoUno
    [Documentation]     Obtenr valores de Excel
    Texto  (//input[@data-val='true'])[1]   ${username}
    Texto  //input[contains(@id,'Password')]  ${password}
    Click  //input[@type='submit']




*** Test Case ***
TC001 Obtener valores de Excel  using   ${username}  and   ${password}
    
    


    


   
   

