***Settings***
Documentation   Prueba uno Amazon
Library     String
Library     DateTime
Resource    ./recursoss.robot
Library     ScreenCapLibrary


#robot -d result  uno.robot

***Variables***
${url}         https://www.amazon.es/amazonprime?_encoding=UTF8&%2AVersion%2A=1&%2Aentries%2A=0
${url2}        https://testautomationpractice.blogspot.com
${navegador}    chrome
${dir}      Img
${archivos}     "C:\Users\Rodrigo\Documents\INFOTEC\Documentos"


***Keywords***


*** Test Cases ***
# 001 Ventanas Alertas y Frames
#     Video Iniciar  
#     Dormir  1
#     Abrir navegador    ${url}      ${navegador}
#     Maximizar  
#     Texto      //input[@name="field-keywords"]    beisbol
#     Click  (//input[contains(@type,'submit')])[1]
#     Pantalla         ${dir}/Capture1.png
#     Click       (//img[contains(@src,'.jpg')])[9]
#     Pantalla        ${dir}/Capture2.png
#     Click       (//input[contains(@class,'a-button-input')])[1]
#     Pantalla         ${dir}/Capture3.png
#     Video Finalizar
#     Cerrar

002 Cargar un archivo
    Abrir navegador     ${url2}     ${navegador}
    Maximizar
    Dormir Todos  1
    Scroll  0  700
    Click     //*[@id="q21"]/div/input
    

    Cerrar


