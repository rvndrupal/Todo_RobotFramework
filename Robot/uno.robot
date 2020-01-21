***Settings***
Documentation   Prueba uno Amazon
Library     String
Library     DateTime
Resource    ./recursoss.robot

#robot -d result  trece.robot

***Variables***
${url}         https://www.amazon.es/amazonprime?_encoding=UTF8&%2AVersion%2A=1&%2Aentries%2A=0
${navegador}    chrome
${dir}      Img


***Keywords***


*** Test Cases ***
001 Ventanas Alertas y Frames
    Abrir navegador    ${url}      ${navegador}
    Maximizar  
    Texto      //input[@name="field-keywords"]    beisbol
    Click  (//input[contains(@type,'submit')])[1]
    Pantalla         ${dir}/Capture1.png
    Click       (//img[contains(@src,'.jpg')])[9]
    Pantalla        ${dir}/Capture2.png
    Click       (//input[contains(@class,'a-button-input')])[1]
    Pantalla         ${dir}/Capture3.png

   
    
    

    Cerrar


