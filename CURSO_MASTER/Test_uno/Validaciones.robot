*** Settings ***
Library     SeleniumLibrary
Resource    recursos.robot
Library     Collections
Test Setup      Abrir setup  ${url}  chrome
Test Teardown   Cerrar setup


#  robot -d results  .\Validaciones.robot

*** Variable ***
${url}    https://thetestingworld.com/
${url2}   https://robotframework.org/Selenium2Library/Selenium2Library.html#Close%20All%20Browsers
${paso}   OK

*** Keywords ***




*** Test Case ***
# TC001 Validar uno
#     Validar imagen  (//img[@src='/images/resized/images/sampledata/slideshow/sl-1_960_400.jpg'])[2]  Se encuentra la imagen slider
#     Validar tener texto    //*[@id="Mod97"]/h3/span   PERFORMANCE TESTING JMETER   Se encontro el texto
#     Validar Texto  VIDEOS
#     Click   //a[contains(@href,'users&view=login&Itemid=587')]
#     Dormir  2
#     Validar campo texto  (//input[@type='text'])[1]
#     Validar Boton  //button[@type='submit']
#     Texto  (//input[@type='text'])[1]  Rodrigo
#     Validar checkbox  (//input[@class='inputbox'])[1]   Tiene check    
   

TC002 Validar dos
    Click  //a[contains(@href,'users&view=login&Itemid=587')]
    Texto  (//input[@type='text'])[1]  rodrigo
    Validar tener texto  //label[@id='username-lbl']    User Na   Tiene el texto rodrigo
    Texto   (//input[@size='25'])[2]    rorro
    Validar titulo  Login
    Validar elemento Enabled    (//input[@type='text'])[1]
    Validar elemento Focus     (//input[@size='25'])[2] 
    ${titulo}=      Obtener Titulo
    Log       ${titulo}
    

    

   




   

