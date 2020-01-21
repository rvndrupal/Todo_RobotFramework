***Settings***
Documentation   Prueba uno Amazon
Library     String
Resource    ./recursos.robot

#robot -d result  trece.robot

***Variables***
@{items}    7   8   9   10   11   12    13
${buscar}   xpath=(//span[contains(.,'Amazon México')])[3]
${tiempo}   .5
#${url}          http://testautomationpractice.blogspot.com  para las alertas caso uno
${url}         https://www.amazon.es/amazonprime?_encoding=UTF8&%2AVersion%2A=1&%2Aentries%2A=0
${navegador}    chrome


***Keywords***


*** Test Cases ***
001 Ventanas Alertas y Frames
    Abrir navegador    ${url}      ${navegador}
    Input Text    //input[@name="field-keywords"]    beisbol
    Click Element    xpath=(//img[@class="s-image"])[9]
    Click Element    xpath=(//input[@class="a-button-input"])[6]
    Click Element    xpath=(//input[@class="a-button-input"])[7]
    Click Element    //input[@name="submit.add-to-cart"]
    Click Element    //img[@class="sc-product-image"]
    

    Cerrar


