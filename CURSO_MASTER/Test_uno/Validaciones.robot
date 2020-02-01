*** Settings ***
Library     SeleniumLibrary
Resource    recursos.robot
Library     Collections

#  robot -d results  .\Validaciones.robot

*** Variable ***
${url}    https://thetestingworld.com/
${url2}   https://robotframework.org/Selenium2Library/Selenium2Library.html#Close%20All%20Browsers
${paso}   OK

*** Keywords ***




*** Test Case ***
TC001 Validar uno
    Abrir navegador  ${url}   chrome   
    Maximizar
    Validar imagen  (//img[@src='/images/resized/images/sampledata/slideshow/sl-1_960_400.jpg'])[2]  Se encuentra la imagen slider
    Validar tener texto    //*[@id="Mod97"]/h3/span   PERFORMANCE TESTING JMETER   Se encontro el texto
    Validar Texto  VIDEOS
    Click   //a[contains(@href,'users&view=login&Itemid=587')]
    Dormir  2
    Validar campo texto  (//input[@type='text'])[1]
    Validar Boton  //button[@type='submit']
    Texto  (//input[@type='text'])[1]  Rodrigo
    Validar checkbox  (//input[@class='inputbox'])[1]   Tiene check
     

    Dormir  4
    Cerrar Todos

   

