*** Settings ***
Library     SeleniumLibrary
Resource    recursos.robot
Library     Collections

#  robot -d results  .\Condicional.robot

*** Variable ***
${url}    https://thetestingworld.com/index.php?option=com_users&view=registration&Itemid=588
${url2}   https://robotframework.org/Selenium2Library/Selenium2Library.html#Close%20All%20Browsers
${paso}   OK

*** Keywords ***




*** Test Case ***
# TC001 Caso uno 
#     Abrir navegador  ${url}   chrome   
#     Texto    (//input[@type='text'])[1]   Rodrigo
#     Run Keyword If  '${paso}'=='OK'   Continuar  
#     Dormir  1
#     Run Keyword If  '${paso}'=='NO'   Cerrar   
     


# TC002 Caso dos
#     [Tags]   T2   
#     Continuar
#     Esperar Iniciar Forzar  2
#     Print Variable  Esta caso dos
#     recursos.Texto  (//input[@type='tex'])[2]  Villanueva
#     Dormir   1

# TC003 Cerrar
#     Continuar 
#     Abrir navegador  ${url}   chrome
#     Texto   (//input[@type='password'])[1]   rorro
#     Dormir  4
#     Cerrar Todos

# TC004 CAMBIAR NAVEGADOR
#     Abrir navegador   ${url}    chrome
#     Cambiar navegador  ${url2}
#     recursos.Dormir  1
#     Regresar navegador
#     recursos.Dormir  1
#     Cerrar Todos


# TC005 Opciones Mause
#     Abrir navegador   ${url}    chrome
#     recursos.Maximizar
#     Menu emergente  //a[contains(@href,'content&view=article&id=145&Itemid=576')]
#     recursos.Dormir  3
#     #Doble click  //a[contains(@href,'users&view=login&Itemid=587')]
#     Mause down      //a[contains(@href,'users&view=login&Itemid=587')]
#     recursos.Dormir  3
#     Cerrar Todos

# TC006 Opciones Teclado
#     Abrir navegador   ${url}    chrome
#     recursos.Maximizar
#     recursos.Click  //a[contains(@href,'users&view=login&Itemid=587')]
#     Texto tab    (//input[@type='text'])[1]  
#     recursos.Dormir  3
   
#     Cerrar Todos

# TC007 VERIFICAR OBJETOS
#     Abrir navegador   ${url}    chrome
#     recursos.Maximizar
#     Verificar texto  VIDEOS   3
#     Verificar elemento  (//span[contains(.,'TRAINING')])[1]  3
#     Run Keyword If      '${paso}'=='OK'     Cerrar Todos
   

TC008 MULTIPLES NAVEGADORES
    Abrir navegador   ${url}    chrome
    recursos.Maximizar
    Verificar texto  VIDEOS   3
    Verificar elemento  (//span[contains(.,'TRAINING')])[1]  3
    Run Keyword If      '${paso}'=='OK'     Print     Ok
    ${urlob}=      Obtener Url
    Print   La url: ${urlob}
    Dormir  1
   
    
    

   
    
    


   